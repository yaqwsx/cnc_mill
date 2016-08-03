// 
// Simple DC servo motor driver
// Author: Jan 'yaqwsx' Mrázek
// https://github.com/yaqwsx
//

// STM32PLUS includes
#include <config/stm32plus.h>
#include <config/string.h>
#include <config/usart.h>
#include <timing/MillisecondTimer.h>

// Atoms includes
#include <atoms/numeric/fixed.h>
#include <atoms/numeric/value.h>
#include <atoms/numeric/rolling_average.h>
#include <atoms/communication/packet.h>
#include <atoms/control/pid.h>

// STL includes
#include <cstdint>

using namespace stm32plus;
using namespace atoms;

// Define our types
using FixedType = Fixed<16, 16>;
using PidFixed  = Pid<FixedType>;
using AppPacket = Packet<StaticU8<0x80>, SizeU8, CommandU8, BoundedData<48>>;

// Define 'magic' constants
const uint16_t PWM_TOP      = 1920;
const uint16_t SAMPLE_COUNT = 20;

uint32_t DEBUG_speed_value;


struct SystemConfiguration {
    PidFixed::Config pid_configuration = { 0, 0, 0, 0, 1 };
    FixedType acceleration = 1000, decceleration = 1000; 
        
    const uint32_t  WATCHDOG_TOP    = 3000;
    const uint32_t  RESPONSE_PRES   = 50;
    const uint16_t  TICKS_PER_ROT   = 600;
    const uint16_t  MAINLOOP_FREQ   = 1000;
};

struct SystemState {
    PidFixed motor_pid;
    FixedType command_rpm;
    Value<FixedType, Accelerated> current_rpm;
    RollingAverage<uint16_t, SAMPLE_COUNT> encoder_steps;
    uint16_t last_position;
    
    
    uint16_t watchdog;       // Watchdog for commands
    uint16_t response_count; // Counter for backreport
    
    SystemState(const SystemConfiguration& c)
        : motor_pid(c.pid_configuration)
        , command_rpm(0)
        , current_rpm(0, { c.acceleration, c.decceleration })
        , last_position(0)
        , watchdog(0)
        , response_count(0) {}
    
    void reset() {
        motor_pid.reset();
        command_rpm    = 0; 
        watchdog       = 0;
        response_count = 0;
        current_rpm.reset(0);
    }
    
    bool response_step(uint16_t top) {
        response_count++;
        if (response_count >= top) {
            response_count = 0;
            return true;
        }
        return false;
    }
    
    bool watchdog_step(bool cmd, uint16_t top) {
        if (!cmd)
            watchdog++;
        else
            watchdog = 0;
        if (watchdog == top)
            return false;
        return true;
    }
};

// Handles incoming communication
// Return true if loop should continue
template <class UartOut, class UartIn>
bool config_loop(volatile bool& flag, SystemConfiguration& config,
    SystemState& state, UartOut& uart_out, UartIn& uart_in)
{
    // Handle synchronization message
    if (flag) {
        flag = false;
        if (state.response_step(config.RESPONSE_PRES)) {  
            AppPacket packet;
            packet.set_command('C');
            uart_out.write(packet.get_raw(), packet.get_size());
        }
    }
    // Handle input message
    if (uart_in.available()) {
        AppPacket in;
        while (!in.push_byte(uart_in.read()));
        switch (in.get_command()) {
        case 'P':
            config.pid_configuration.p = FixedType(
                in.get<float>(0) / config.MAINLOOP_FREQ);
            break;
        case 'I':
            config.pid_configuration.i = FixedType(
                in.get<float>(0) / config.MAINLOOP_FREQ);
            break;
        case 'D':
            config.pid_configuration.d = FixedType(
                in.get<float>(0) / config.MAINLOOP_FREQ);
            break;
        case 'S':
            return false;
        default:
            break;
        }
    }
    return true;
}

template <class UartIn, class UartOut, class Encoder, class PWM>
bool motor_loop(volatile bool& flag, const SystemConfiguration& config,
    SystemState& state, UartOut& uart_out, UartIn& uart_in, Encoder& encoder,
    PWM& pwm_output)
{
     bool cmd = false;
    // Handle input message
    if (uart_in.available()) {
        AppPacket in;
        while (!in.push_byte(uart_in.read()));
        switch (in.get_command()) {
        case 'R':
            state.command_rpm = FixedType(in.get<uint16_t>(0));
            cmd = true;
            break;
        case 'B':
            return false;
        default:
            break;
        }
    }
    // Handle synchronization message
    if (flag) {
        flag = false;
        
        // Run motor cycle
        state.current_rpm = state.command_rpm;
        
        // Get new position
        uint16_t position = encoder.getCounter();
        uint16_t diff;
        if (position > state.last_position)
            diff = position - state.last_position;
        else
            diff = state.last_position - position;
        if (diff > config.TICKS_PER_ROT / 2)
            diff = config.TICKS_PER_ROT - diff;
        state.encoder_steps.push(diff);
        state.last_position = position;
        
        // Calculate current speed
        uint32_t temp = 60 * state.encoder_steps.get_sum() * config.MAINLOOP_FREQ
            / (SAMPLE_COUNT * config.TICKS_PER_ROT);
        DEBUG_speed_value = temp;
        FixedType speed(temp);
        FixedType output = state.motor_pid.step(speed, state.current_rpm);
        output *= PWM_TOP;
        
        pwm_output.setCompare(output.to_unsigned());
        
        if (state.response_step(config.RESPONSE_PRES)) {       
            AppPacket packet;
            packet.set_command('R');
            packet.push<uint16_t>(temp);
            packet.push<uint16_t>(state.current_rpm.get().to_unsigned());
            packet.push<uint16_t>(output.to_unsigned());
            packet.push<float>(config.pid_configuration.p.to_float());
            packet.push<float>(config.pid_configuration.i.to_float());
            packet.push<float>(config.pid_configuration.d.to_float());
            packet.push<uint16_t>(diff);
            uart_out.write(packet.get_raw(), packet.get_size());
        }
    }
    else {
        cmd = true;
    } 
    
    // Handle watchdog
    return state.watchdog_step(cmd, config.WATCHDOG_TOP);
}

// This loop sets a flag bit, which marks a main loop should run
volatile bool g_compute_flag = false;
void flag_loop(TimerEventType tet, uint8_t /*timer_number*/) {
    if (tet != TimerEventType::EVENT_UPDATE)
        return;
    g_compute_flag = true;     
}

int main() {
    // Initialize peripherals
    Nvic::initialise();
	MillisecondTimer::initialise();   
   
    Usart1_Remap2<>::Parameters usart_params(115200);
    usart_params.usart_flowControl = USART_HardwareFlowControl_RTS_CTS;
    Usart1_Remap2<> usart(usart_params);
    UsartPollingOutputStream output_stream(usart);
    UsartPollingInputStream  input_stream(usart);
    
    SystemConfiguration system_configuration;
    SystemState         system_state(system_configuration);
    
    GpioA<DefaultDigitalInputFeature<5>> indexPin;
    Exti5 indexExti(EXTI_Mode_Interrupt, EXTI_Trigger_Rising, indexPin[5]);
    
    Timer3<
	   Timer3GpioFeature<               // TI1/TI2 are CH1_IN and CH2_IN, set them up
	     TIMER_REMAP_NONE,              // the GPIO input will not be remapped
	     TIM3_CH1_IN,                   // channel 1 = TI1
	     TIM3_CH2_IN                    // channel 2 = TI2
	   >,
	   TimerEncoderFeature<             // we're using the quadrature encoder feature
	     EncoderCounterEdge::Input1,    // count on TI1 edges with direction according to TI2
	     EncoderPolarity::Rising,       // TI1 polarity
	     EncoderPolarity::Rising        // TI2 polarity
	   >
	> encoder;
   
    encoder.manageEncoderReset(indexExti, 333);
	encoder.initialiseEncoderCounter(system_configuration.TICKS_PER_ROT);
	encoder.enablePeripheral(); 
    
    Timer14<
        Timer14InternalClockFeature,
        Timer14InterruptFeature
    > mainloop_timer;
    
    mainloop_timer.TimerInterruptEventSender.insertSubscriber(
        TimerInterruptEventSourceSlot::bind(flag_loop));
    mainloop_timer.setTimeBaseByFrequency(100000, 100000ul / system_configuration.MAINLOOP_FREQ);
    mainloop_timer.clearPendingInterruptsFlag(TIM_IT_Update);
    mainloop_timer.enableInterrupts(TIM_IT_Update);
    mainloop_timer.enablePeripheral();
    
    Timer1<
        Timer1InternalClockFeature,
        TimerChannel2Feature<>,
        Timer1GpioFeature<
            TIMER_REMAP_NONE,
            TIM1_CH2_OUT>
    > pwm_output;
    
    pwm_output.setTimeBaseByFrequency(48000000, PWM_TOP);
    pwm_output.initCompareForPwmOutput(0, TIM_OCMode_PWM1, TIM_OCPolarity_Low);
    pwm_output.enablePeripheral();
    
    uint16_t value = 0;
    while (true) {
        pwm_output.setCompare(0);
        while(config_loop(g_compute_flag, system_configuration, system_state,
            output_stream, input_stream));
        system_state = SystemState(system_configuration);
        while (motor_loop(g_compute_flag, system_configuration, system_state,
            output_stream, input_stream, encoder, pwm_output));
        /*if (!g_compute_flag)
            continue;
        value += 50;
        if (value >= 1920)
            value = 0;
        pwm_output.setCompare(value);
        g_compute_flag = false;
        outputStream << StringUtil::Ascii(encoder.getCounter()) << "\n";*/
    }
}
