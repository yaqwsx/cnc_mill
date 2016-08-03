#pragma once

// Author: Jan 'yaqwsx' Mrázek

#include <stdint.h>

/// RingBuffer. All operations are unsafe - 
/// it is a user responsibility to operate
/// the buffer in bounds
template <class BaseType, uint16_t SIZE>
class RingBuffer {
public:
	RingBuffer() : read_pos(0), write_pos(0) { }
		
	bool empty() {
		return read_pos == write_pos;
	}
	
	uint16_t free() {
		if (read_pos < write_pos) {
			return SIZE - write_pos + read_pos - 1;
		}
		return write_pos - read_pos - 1;
	}
	
	uint16_t size() {
		if (read_pos <= write_pos) {
			return write_pos - read_pos;
		}
		return SIZE + write_pos - read_pos;
	}
	
	void push(BaseType v) {
		buffer[write_pos] = v;
		advance(write_pos);
	}
	
	BaseType pop() {
		BaseType v = buffer[read_pos];
		advance(read_pos);
		return v;
	}
	
	void push(BaseType* source, uint16_t len) {
		// ToDo: Implement more efficiently
		for (uint16_t i = 0; i != len; i++ )
			push(source[i]);	
	}
	
	void pop(BaseType* target, uint16_t len) {
		// ToDo: Implement more efficiently
		for (uint16_t i = 0; i != len; i++ )
			target[i] = pop();
	}
	
	void blocking_pop(BaseType* target, uint16_t len) {
		// ToDo: Implement more efficiently
		for (uint16_t i = 0; i != len; i++ ) {
			while(read_pos == write_pos);
			target[i] = pop();
		}
	}
	
	void clear() {
		read_pos = write_pos = 0;
	}
private:
	volatile BaseType buffer[SIZE];
	volatile uint16_t read_pos;
	volatile uint16_t write_pos;
	
	static void advance(volatile uint16_t& pos) {
		pos++;
		if (pos >= SIZE)
			pos = 0;
	}
};
