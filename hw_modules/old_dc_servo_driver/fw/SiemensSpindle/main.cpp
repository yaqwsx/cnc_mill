/*
 * SiemensSpindle.cpp
 *
 * Created: 04.12.2015 11:53:38
 * Author : email
 */ 

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include "uart.h"
#include "adc.h"
#include "timer.h"
#include "pid.h"

using FixedType = Fixed<16, 16>;
using UartConfig = Uart<atmega8::Uart, 256, 256>;
using AdcType = SingleSampleAdc<atmega8::Adc>;
using PwmType = PhaseFrequencyPWM<atmega8::Timer1>;

struct MotorReport {
	uint16_t rpm_reachable;
	uint16_t rpm_real;
	uint32_t output;
	PidDebugInfo pid;
};

struct SystemState {
	Pid<FixedType> motor_pid;
	uint16_t rpm_command;
	uint16_t rpm_reachable;
	uint16_t watchdog_count;
	uint8_t  skip_count;
	
	const uint16_t  SAFE_ITERS = 1000;
	const uint8_t   SKIP = 50;
	
	void reset() {
		motor_pid.reset();
		rpm_command = rpm_reachable = 0;
		watchdog_count = skip_count = 0;
	}
	
	bool watchdog_step(bool cmd) {
		if (cmd) {
			watchdog_count = 0;
			return false;
		}
		watchdog_count++;
		return watchdog_count >= SAFE_ITERS;
	}
	
	bool step() {
		skip_count++;
		if (skip_count >= SKIP) {
			skip_count = 0;
			return true;
		}
		return false;
	}
};

const uint16_t  MOTOR_PWM_FREQ = 20000;
const uint16_t  LOOP_FREQ = 400;
const uint16_t  PWM_TOP = F_CPU / (2 * MOTOR_PWM_FREQ);
const uint16_t  MOTOR_ACCEL = 2000 / LOOP_FREQ;

const double    REF_VOLTAGE = 5.0;
const double    RPM_PER_VOLT = 2.0 / 0.02 / 0.11;
const FixedType ADC_TO_RPM(REF_VOLTAGE * RPM_PER_VOLT / 1024); // * ADC value

UartConfig uart(19200);
PwmType pwm_output(ClockSource::C1, PWM_TOP);
AdcType adc(AdcRef::AREF);

static volatile bool g_compute_flag = false;

// Error handling
void trap(const char* msg) {
	//uart.send(msg);
}

ISR(USART_RXC_vect) {
	UartConfig::rx_isr_routine();
}

ISR(USART_TXC_vect) {
	UartConfig::tx_isr_routine();
}

ISR(TIMER2_COMP_vect) {
	g_compute_flag = true;
}

bool receive_msg(UartConfig& uart, uint8_t* buffer) {
	uint8_t avail = uart.available();
	if (avail < 2)
		return false;
		
	/*while(uart.get() != 0x80 && avail > 1) {
		avail--;
	}
	
	if (avail == 1)
		return false;*/
	if (uart.get() != 0x80)
		return false;
		
	uint8_t size = uart.get() + 1;
	while (uart.available() < size); // Wait for data
	uart.get(buffer, size);
	
	return true;
}

bool run_settings_cycle(SystemState& s, UartConfig& uart) {
	if (g_compute_flag) {
		g_compute_flag = false;
		if(s.step()) {
			uint8_t buffer[] = { 0x80, 1, 'I', 'S' };
			uart.send(buffer, sizeof(buffer));
		}
	}
	
	uint8_t buffer[32];
	while(receive_msg(uart, buffer)) {
		switch(buffer[0]) {
		case 'P':
			s.motor_pid.set_p(*((float*)(buffer + 1)));
			break;
		case 'I':
			s.motor_pid.set_i(*((float*)(buffer + 1)));
			break;
		case 'D':
			s.motor_pid.set_d(*((float*)(buffer + 1)));
			break;
		case 'S':
			return true;
		default: // Ignore everything else
			break;
		}
	}
		
	return false;
}

// Runs motor control cycle and returns reachable rpm, real_rpm and output power
template <class AD, class PID, class PWM>
MotorReport run_motor_cycle(uint16_t rpm_command, uint16_t rpm_reachable,
AD& adc, PID& pid, PWM& out)
{
	adc.change_channel(7);
	adc.start_conversion();
	
	if (rpm_command > rpm_reachable) {
		rpm_reachable += MOTOR_ACCEL;
		if (rpm_reachable > rpm_command)
		rpm_reachable = rpm_command;
		} else {
		if (rpm_reachable > MOTOR_ACCEL) {
			rpm_reachable -= MOTOR_ACCEL;
			if (rpm_reachable < rpm_command)
			rpm_reachable = rpm_command;
			} else {
			rpm_reachable = 0;
		}
	}
	
	uint16_t tacho_value = adc.result();
	FixedType rpm = ADC_TO_RPM * tacho_value;
	
	FixedType output = pid.react(rpm, FixedType(rpm_reachable));
	out.set_raw(output.to_unsigned());
	
	return { rpm_reachable, static_cast<uint16_t>(rpm.to_unsigned()), output.to_unsigned(), pid.get_debug_info() };
}

bool run_main_cycle(SystemState& s, UartConfig& uart, AdcType& adc,
	PwmType& pwm_output)
{
	uint8_t buffer[32];
	bool cmd = false;
	while(receive_msg(uart, buffer)) {
		switch(buffer[0]) { // Check command
		case 'R': // RPMs
			s.rpm_command = *((uint16_t*)(buffer + 1));
			cmd = true;
			break;
		case 'B':
			return true;
		default: // Ignore everything else
			break;
		}
	}
	
	if (g_compute_flag) {
		g_compute_flag = false;	
		MotorReport report = run_motor_cycle(s.rpm_command, s.rpm_reachable,
			adc, s.motor_pid, pwm_output);
		s.rpm_reachable = report.rpm_reachable;
		
		if (s.step()) {
			uint8_t buffer[3 + sizeof(MotorReport)] = { 0x80, sizeof(MotorReport), 'R' };
			*((MotorReport*)(buffer + 3)) = report;
			uart.send(buffer, sizeof(buffer));
		}
		
		if (s.watchdog_step(cmd)) {
			return true;
		}
	}
	
	return false;
}

int main(void)
{
	// Init output pins - ToDo: rework
	DDRD |= combine8(1);
	DDRB |= combine8(1);
	
	// Init timer2 to run the main compute loop, ToDo: rework
	TCCR2 |= combine8(WGM21); // CTC mode
	TIMSK |= combine8(OCIE2); // Interrupt
	TCCR2 |= combine8(CS22, CS21); // Start time at F_CPU / 128
	OCR2   = F_CPU / 256 / LOOP_FREQ;
		
	sei();
	
	SystemState state;
	state.reset();
	state.motor_pid.set_clamp(0, PWM_TOP);
	
    while (true) {
		pwm_output.set_raw(0);
		state.reset();
		
		uint8_t state_change[] = { 0x80, 1, 'N', 'S' };
		uart.send(state_change, sizeof(state_change));
		while(!run_settings_cycle(state, uart)) { }
		
		state_change[sizeof(state_change) - 1] = 'M';
		uart.send(state_change, sizeof(state_change));
		while(!run_main_cycle(state, uart, adc, pwm_output)) {
			/*if (g_compute_flag) {
				// Send error
				uint8_t buffer[] = { 0x80, 6, 'E', 'N', 'O', 'T', 'I', 'M', 'M' };
				uart.send(buffer, sizeof(buffer));
			}*/
		}
		state_change[sizeof(state_change) - 1] = 'R';
		uart.send(state_change, sizeof(state_change));
    }
}

