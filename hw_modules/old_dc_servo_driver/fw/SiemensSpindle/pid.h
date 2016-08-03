#pragma once

// Author: Jan 'yaqwsx' Mrázek

#include "fixed.h"

struct PidDebugInfo {
	float p, i, d;
	float integrator;
};

template<class T>
class Pid {
public:
	Pid(float p = 1, float i = 0, float d = 0, float low_clamp = 0,
		float high_clamp = 1000)
		: p(p), i(i), d(d), low_clamp(low_clamp), high_clamp(high_clamp),
		  integrator(0), last_input(0)
		{ }
	
	void set_p(float val) {
		p = T(val);
	}
	
	void set_i(float val) {
		i = T(val);
	}
	
	void set_d(float val) {
		d = T(val);
	}
	
	void reset() {
		integrator = T(0);
		last_input = T(0);
	}
	
	void set_clamp(float low, float high) {
		low_clamp = T(low);
		high_clamp = T(high);
	}
	
	T react(T input, T desired_value) {
		T error(desired_value - input);
		auto tmp = i * error;
		integrator += tmp;
		
		if (integrator > high_clamp)
			integrator = high_clamp;
		if (integrator < low_clamp)
			integrator = low_clamp;
			
		T output(p * error + integrator - d * (input - last_input));
		
		if (output > high_clamp)
			output = high_clamp;
		if (output < low_clamp)
			output = low_clamp;
			
		last_input = input;
		
		return output;
	}
	
	PidDebugInfo get_debug_info() {
		return { p.to_float(), i.to_float(), d.to_float(), integrator.to_float() };
	}
	
private:
	T p, i, d;
	T low_clamp, high_clamp;
	T integrator;
	T last_input;
};