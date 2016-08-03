#pragma once

// Author: Jan 'yaqwsx' Mrázek

#include "utility.h"
#include "fixed.h"

enum class TimerMode {NORMAL, PHASE_PWM_8, PHASE_PWM_9,
	PHASE_PWM_10, CTC, FAST_PWM_8, FAST_PWM_9, FAST_PWM_10,
	PHASE_FREQ_PWM, PHASE_PWM, FAST_PWM};
enum class CompareMode {NORMAL, TOGGLE, CLEAR, SET};
enum class TopValue {NONE, V_ICR1, V_OCR1A};
enum class ClockSource { NO_CLOCK, C1, C8, C64, C256, C1024,
	EXT_FALLING, EXT_RISING };

namespace atmega8 {
	struct Timer1Impl {
		static void set_mode(TimerMode mode, TopValue val = TopValue::NONE) {
			TCCR1A &= ~combine8(WGM10, WGM11);
			TCCR1B &= ~combine8(WGM12, WGM13);
			switch(mode) {
			case TimerMode::NORMAL:
				break;
			case TimerMode::PHASE_PWM_8:
				TCCR1A |= combine8(WGM10);
				break;
			case TimerMode::PHASE_PWM_9:
				TCCR1A |= combine8(WGM11);
				break;
			case TimerMode::PHASE_PWM_10:
				TCCR1A |= combine8(WGM10, WGM11);
				break;
			case TimerMode::CTC:
				switch(val) {
				case TopValue::V_OCR1A:
					TCCR1B |= combine8(WGM12);
					break;
				case TopValue::V_ICR1:
					TCCR1B |= combine8(WGM12, WGM13);
				default:
					die("unsupported timer conf");
				}
				break;
			case TimerMode::FAST_PWM_8:
				TCCR1A |= combine8(WGM10);
				TCCR1B |= combine8(WGM12);
				break;
			case TimerMode::FAST_PWM_9:
				TCCR1A |= combine8(WGM11);
				TCCR1B |= combine8(WGM12);
				break;
			case TimerMode::FAST_PWM_10:
				TCCR1A |= combine8(WGM10, WGM11);
				TCCR1B |= combine8(WGM12);
				break;
			case TimerMode::PHASE_FREQ_PWM:
				switch(val) {
				case TopValue::V_ICR1:
					TCCR1B |= combine8(WGM13);
					break;
				case TopValue::V_OCR1A:
					TCCR1B |= combine8(WGM13);
					TCCR1A |= combine8(WGM10);
					break;
				default:
					die("unsupported timer conf");
				}
				break;	
			case TimerMode::PHASE_PWM:
				switch(val) {
				case TopValue::V_ICR1:
					TCCR1B |= combine8(WGM13);
					TCCR1A |= combine8(WGM11);
					break;
				case TopValue::V_OCR1A:
					TCCR1A |= combine8(WGM10, WGM11);
					TCCR1B |= combine8(WGM13);
				default:
					die("unsupported timer conf");
				}
				break;
			case TimerMode::FAST_PWM:
				switch(val) {
				case TopValue::V_ICR1:
					TCCR1B |= combine8(WGM12, WGM13);
					TCCR1A |= combine8(WGM11);
					break;
				case TopValue::V_OCR1A:
					TCCR1A |= combine8(WGM10, WGM11);
					TCCR1B |= combine8(WGM12, WGM13);
					break;
				default:
					die("unsupported timer conf");	
				}
				break;
			}
		}
		
		static void set_compare_a(CompareMode mode) {
			TCCR1A &= ~((1 << COM1A1) | (1 << COM1A0));
			switch(mode) {
			case CompareMode::NORMAL:
				break;
			case CompareMode::TOGGLE:
				TCCR1A |= 1 << COM1A0;
				break;
			case CompareMode::CLEAR:
				TCCR1A |= 1 << COM1A1;
				break;
			case CompareMode::SET:
				TCCR1A |= (1 << COM1A0) | (1 << COM1A1);
				break;
			}
		}
		
		static void set_compare_b(CompareMode mode) {
			TCCR1A &= ~((1 << COM1B1) || (1 << COM1B0));
			switch(mode) {
			case CompareMode::NORMAL:
				break;
			case CompareMode::TOGGLE:
				TCCR1A |= 1 << COM1B0;
				break;
			case CompareMode::CLEAR:
				TCCR1A |= 1 << COM1B1;
				break;
			case CompareMode::SET:
				TCCR1A |= (1 << COM1B0) | (1 << COM1B1);
				break;
			}
		}
		
		static void set_clock(ClockSource source) {
			TCCR1B &= ~combine8(CS10, CS11, CS12);
			switch(source) {
			case ClockSource::NO_CLOCK:
				break;	
			case ClockSource::C1:
				TCCR1B |= combine8(CS10);
				break;
			case ClockSource::C8:
				TCCR1B |= combine8(CS11);
				break;
			case ClockSource::C64:
				TCCR1B |= combine8(CS10, CS11);
				break;
			case ClockSource::C256:
				TCCR1B |= combine8(CS12);
				break;
			case ClockSource::C1024:
				TCCR1B |= combine8(CS10, CS12);
				break;
			case ClockSource::EXT_FALLING:
				TCCR1B |= combine8(CS11, CS12);
				break;
			case ClockSource::EXT_RISING:
				TCCR1B |= combine8(CS10, CS11, CS12);
				break;
			}
		}
		
		static uint16_t get_value() {
			return TCNT1;
		}
		
		static void set_value(uint16_t val) {
			TCNT1 = val;
		}
		
		static uint16_t get_compare_a() {
			return OCR1A;
		}
		
		static void set_compare_a(uint16_t val) {
			OCR1A = val;
		}
		
		static uint16_t get_compare_b() {
			return OCR1B;
		}
		
		static void set_compare_b(uint16_t val) {
			OCR1B = val;
		}
		
		static uint16_t get_input() {
			return ICR1;
		}
		
		static void set_input(uint16_t val) {
			ICR1 = val;
		}
	};
	
	using Timer1 = Peripheral<Timer1Impl>;
}

template <class TIMER>
class PhaseFrequencyPWM {
public:
	PhaseFrequencyPWM(ClockSource s, uint16_t top, bool polarity = false, TopValue reg = TopValue::V_ICR1) {
		if (!start(s, top, polarity, reg))
			die("Timer already in use");
	}
	
	~PhaseFrequencyPWM() {
		stop();
	}
	
	bool start(ClockSource s, uint16_t top, bool polarity = false, TopValue reg = TopValue::V_OCR1A) {
		if (!TIMER::acquire())
			return false;
		TIMER::set_mode(TimerMode::PHASE_FREQ_PWM, reg);
		TIMER::set_clock(s);
		
		if (reg == TopValue::V_OCR1A) {
			TIMER::set_compare_a(top);
		} else {
			TIMER::set_input(top);
		}
		
		if (polarity) {
			TIMER::set_compare_a(CompareMode::SET);
		} else {
			TIMER::set_compare_a(CompareMode::CLEAR);
		}
		
		top_value = top;
		top_register = reg;
		
		return true;
	}
	
	void stop() {
		TIMER::release();
	}
	
	void set_raw(uint16_t value) {
		if (value > top_value)
			value = top_value;
		if (top_register == TopValue::V_ICR1)
			OCR1A = value;
		else if (top_register == TopValue::V_OCR1A) {
			ICR1 = value;
		}
	}
	
	// Expect value in range <0, 1>
	template<bit_width_type I, bit_width_type F>
	void set_percentage(const Fixed<I, F>& value) {
		uint32_t val = static_cast<uint32_t>(top_value) * value.raw();
		val >>= F;
		set_raw(val);
	}
private:
	TopValue top_register;
	uint16_t top_value;	
};