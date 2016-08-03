#pragma once

// Author: Jan 'yaqwsx' Mrázek

#include "ring_buffer.h"
#include "utility.h"

enum class Parity { NONE, EVEN, ODD };
enum class StopBits { ONE, TWO };
enum class ByteSize { FIVE, SIX, SEVEN, EIGHT, NINE };

namespace atmega8 {
	struct UartImpl {
		static void enable_rx() { UCSRB |= 1 << RXEN; }
		static void disable_rx() { UCSRB &= ~(1 << RXEN); }
		static void enable_tx() { UCSRB |= 1 << TXEN; }
		static void disable_tx() { UCSRB &= ~(1 << TXEN); }
		static void enable_rx_isr() { UCSRB |= 1 << RXCIE; }
		static void disable_rx_isr() { UCSRB &= ~(1 << RXCIE); }
		static void enable_tx_isr() { UCSRB |= 1 << TXCIE; }
		static void disable_tx_isr() { UCSRB &= ~(1 << TXCIE); }
		static void parity(Parity p) {
			UCSRC &= ~combine8(UPM1, UPM0) | combine8(URSEL);
			switch (p) {
			case Parity::EVEN:
				UCSRC |= combine8(UPM1, URSEL);
				break;
			case Parity::ODD:
				UCSRC |= combine8(UPM1, UPM0, URSEL);
				break;
			case Parity::NONE:
				break;
			}
		}
		static void stop_bits(StopBits b) {
			if (b == StopBits::ONE) {
				UCSRC &= ~combine8(USBS) | combine8(URSEL);
			}
			else {
				UCSRC |= combine8(USBS, URSEL);
			}
		}
		
		static void byte_size(ByteSize s) {
			UCSRC &= ~combine8(UCSZ0, UCSZ1, UCSZ2) | combine8(URSEL);
			switch(s) {
			case ByteSize::NINE:
				UCSRC |= (1 << UCSZ2) | (1 << UCSZ1) | (1 << UCSZ0);
				break;
			case ByteSize::EIGHT:
				UCSRC |= (1 << UCSZ1) | (1 << UCSZ0);
				break;
			case ByteSize::SEVEN:
				UCSRC |= (1 << UCSZ1);
				break;
			case ByteSize::SIX:
				UCSRC |= (1 << UCSZ0);
				break;
			case ByteSize::FIVE:
				break;
			}
		}
		
		static void set_ubrr(uint16_t v) { UBRRL = v; UBRRH = v >> 8; }		
		static uint16_t get_ubrr() { return UBRRL | UBRRH << 8; }		
		static uint8_t read() { return UDR; }
		static void write(uint8_t v) { UDR = v; }
	};
	using Uart = Peripheral<UartImpl>;
}

template <class UART, uint16_t TX_SIZE, uint16_t RX_SIZE>
class Uart {
public:
	Uart() { }
	
	Uart(uint32_t baudrate, ByteSize b = ByteSize::EIGHT,
		Parity p = Parity::NONE, StopBits s = StopBits::ONE)
	{
		if(!start(baudrate, b, p, s))
			die("Uart already in usage!");
	}
	
	~Uart() {
		stop();
	}
	
	bool start (uint32_t baudrate, ByteSize b = ByteSize::EIGHT,
		Parity p = Parity::NONE, StopBits s = StopBits::ONE)
	{
		if (!UART::acquire())
			return false;
			
		UART::enable_rx();
		UART::enable_tx();
		UART::byte_size(b);
		UART::parity(p);
		UART::stop_bits(s);
		
		UART::set_ubrr(((F_CPU / (baudrate * 16UL))) - 1);
		
		UART::enable_rx_isr();
		UART::enable_tx_isr();
		
		rx_buffer.clear();
		tx_buffer.clear();
		
		return true;
	}
	
	void stop() {
		UART::disable_tx_isr();
		UART::disable_rx_isr();
		UART::disable_rx();
		UART::disable_tx();
		UART::release();
	}
	
	void send(const char* c) {
		while (*c != 0) {
			tx_buffer.push(*c);
			c++;
		}
		process_send();
	}
	
	void send(const uint8_t* c, uint16_t size) {
		for (uint16_t i = 0; i != size; i++)
			tx_buffer.push(c[i]);
		process_send();
	}
	
	void send(const int8_t* c, uint16_t size) {
		for (uint16_t i = 0; i != size; i++)
			tx_buffer.push(reinterpret_cast<uint8_t>(c[i]));
		process_send();
	}
	
	uint8_t get() {
		return rx_buffer.pop();
	}
	
	void get(uint8_t* destination, uint16_t count) {
		rx_buffer.blocking_pop(destination, count);
	}
	
	uint16_t available() {
		return rx_buffer.size();
	}
	
	uint16_t pending() {
		return tx_buffer.size();
	}
		
	static void rx_isr_routine() {
		rx_buffer.push(UART::read());
	}
	
	static void tx_isr_routine() {
		if (!tx_buffer.empty()) {
			UART::write(tx_buffer.pop());
		}
	}
		
private:
	static RingBuffer<uint8_t, RX_SIZE> rx_buffer;
	static RingBuffer<uint8_t, TX_SIZE> tx_buffer;
	
	static void process_send() {
		UART::write(tx_buffer.pop());
	}
};

template <class UART, uint16_t TX_SIZE, uint16_t RX_SIZE>
RingBuffer<uint8_t, RX_SIZE> Uart<UART, TX_SIZE, RX_SIZE>::rx_buffer;

template <class UART, uint16_t TX_SIZE, uint16_t RX_SIZE>
RingBuffer<uint8_t, TX_SIZE> Uart<UART, TX_SIZE, RX_SIZE>::tx_buffer;
