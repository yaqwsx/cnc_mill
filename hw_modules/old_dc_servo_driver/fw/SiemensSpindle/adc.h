#pragma once

// Author: Jan 'yaqwsx' Mrázek

#include "utility.h"

enum class AdcRef { AREF, AVCC, INTERNAL };

namespace atmega8 {
	struct AdcImpl {
		static void enable() { ADCSRA |= 1 << ADEN; }
		static void disable() { ADCSRA &= ~(1 << ADEN); }
		static void enable_isr() { ADCSRA |= 1 << ADIE; }
		static void disable_isr() { ADCSRA &= ~(1 << ADIE);}
		static void start_conversion() { ADCSRA |= 1 << ADSC; }
		static bool conversion_in_progress() { return ADCSRA & (1 << ADSC); }
		static void start_free_run() { ADCSRA |= 1 << ADFR; }
		static void stop_free_run() { ADCSRA &= ~(1 << ADFR); }
		static uint16_t get_result() { return ADC; }
		static void set_source(AdcRef r) {
			ADMUX &= ~((1 << REFS1) | (1 << REFS0));
			switch(r) {
			case AdcRef::AREF:
				ADMUX |= 1 << REFS1;
			case AdcRef::AVCC:
				ADMUX |= 1 << REFS0;
			default:
				break;
			}
		}
		
		static void set_prescale(Prescale p) {
			ADCSRA &= ~(0b11111000);
			ADCSRA |= static_cast<uint8_t>(p);
		}
		
		static void change_channel(uint8_t channel) {
			ADMUX &= 0b11110000;
			ADMUX |= channel;
		}
	};
	
	using Adc = Peripheral<AdcImpl>;
}

template<class ADC_T>
class SingleSampleAdc {
public:
	SingleSampleAdc(AdcRef source, Prescale p = Prescale::P128) {
		if (!start(source, p))
			die("Adc already in usage!");
	}
	
	~SingleSampleAdc() {
		stop();
	}
	
	bool start(AdcRef source, Prescale p = Prescale::P128) {
		if (!ADC_T::acquire())
			return false;
				
		ADC_T::set_source(source);
		ADC_T::set_prescale(p);
		ADC_T::disable_isr();
		ADC_T::stop_free_run();
		ADC_T::enable();
		
		return true;
	}
	
	void stop() {
		ADC_T::disable();
		ADC_T::release();
	}
	
	void change_channel(uint8_t channel) {
		ADC_T::change_channel(channel);
	}
	
	void start_conversion() {
		ADC_T::start_conversion();
	}
	
	bool complete() {
		return !ADC_T::conversion_in_progress();
	}
	
	uint16_t result() {
		while(ADC_T::conversion_in_progress());
		return ADC_T::get_result();
	}
	
	uint16_t sample(uint8_t channel) {
		ADC_T::change_channel(channel);
		ADC_T::start_conversion();
		while(ADC_T::conversion_in_progress());
		return ADC_T::get_result();
	}
};
