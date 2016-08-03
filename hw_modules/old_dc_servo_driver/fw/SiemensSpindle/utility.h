#pragma once

// Author: Jan 'yaqwsx' Mrázek

void trap(const char*);

void die(const char* c = 0) {
	if (c)
		trap(c);
	while(true);
}

enum class Prescale {
	P1 = 1, P2 = 2, P4 = 4, P8 = 8, P16 = 16,
	P32 = 32, P64 = 64, P128 = 128, P256 = 256
};


template<class P>
class Peripheral : public P {
public:
	static bool acquire() {
		if (lock)
			return false;
		lock = true;
		return true;
	}
	
	static void release() {
		lock = false;
	}
private:
	static bool lock;
};

template <class P>
bool Peripheral<P>::lock = false;

// Sugar for register setup
template <class T>
T combine(int arg) {
	return T(1) << arg;
}

template <class T, class...Args>
T combine(int arg, Args...args) {
	return (T(1) << arg) | combine<T>(args...);
}

template <class...Args>
uint8_t combine8(Args...args) {
	return combine<uint8_t>(args...);
}
