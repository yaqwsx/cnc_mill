EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microcontrollers
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:power_connection-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 16
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9700 500  1400 850 
U 57A7F9AD
F0 "connections" 60
F1 "connections.sch" 60
$EndSheet
$Sheet
S 1800 2450 1600 1550
U 57A70FB3
F0 "power_supply_nets" 60
F1 "power_supply_nets.sch" 60
F2 "AC_IN1" I L 1800 2900 50 
F3 "AC_IN2" I L 1800 3000 50 
F4 "PC_PWR1" O L 1800 3250 50 
F5 "PC_PWR2" O L 1800 3350 50 
F6 "24V" O R 3400 2550 50 
F7 "GND_24V" U R 3400 2650 50 
F8 "ESTOP_HARD" I R 3400 3950 50 
F9 "R_SPINDLE_PWR" I R 3400 3700 50 
F10 "R_SPINDLE_SOFT" I R 3400 3600 50 
F11 "R_SPINDLE_DISCHARGE" I R 3400 3500 50 
F12 "SPINDLE_PWR_HV" O R 3400 2800 50 
F13 "SPINDLE_GND" U R 3400 3000 50 
F14 "SPINDLE_PWR_LV" O R 3400 2900 50 
F15 "R_STEPPER_PWR" I R 3400 3800 50 
F16 "STEPPER_GND" U R 3400 3250 50 
F17 "STEPPER_PWR" O R 3400 3150 50 
$EndSheet
$Sheet
S 7100 950  850  750 
U 57A736D4
F0 "X_stepper_driver" 50
F1 "stepper_driver.sch" 50
F2 "GND" I L 7100 1050 50 
F3 "STEP" I L 7100 1150 50 
F4 "DIR" I L 7100 1250 50 
F5 "ENABLE" I L 7100 1350 50 
F6 "VCC" I L 7100 1500 50 
F7 "PGND" I L 7100 1600 50 
F8 "A+" O R 7950 1100 50 
F9 "A-" O R 7950 1200 50 
F10 "B+" O R 7950 1300 50 
F11 "B-" O R 7950 1400 50 
$EndSheet
$Sheet
S 8250 950  850  750 
U 57A78E02
F0 "X_stepper_motor" 50
F1 "stepper_motor.sch" 50
F2 "A+" I L 8250 1100 50 
F3 "A-" I L 8250 1200 50 
F4 "B+" I L 8250 1300 50 
F5 "B-" I L 8250 1400 50 
$EndSheet
Wire Wire Line
	7950 1100 8250 1100
Wire Wire Line
	7950 1200 8250 1200
Wire Wire Line
	7950 1300 8250 1300
Wire Wire Line
	7950 1400 8250 1400
$Sheet
S 7100 1850 850  750 
U 57A7C8DD
F0 "Y_stepper_driver" 50
F1 "stepper_driver.sch" 50
F2 "GND" I L 7100 1950 50 
F3 "STEP" I L 7100 2050 50 
F4 "DIR" I L 7100 2150 50 
F5 "ENABLE" I L 7100 2250 50 
F6 "VCC" I L 7100 2400 50 
F7 "PGND" I L 7100 2500 50 
F8 "A+" O R 7950 2000 50 
F9 "A-" O R 7950 2100 50 
F10 "B+" O R 7950 2200 50 
F11 "B-" O R 7950 2300 50 
$EndSheet
$Sheet
S 8250 1850 850  750 
U 57A7C8E3
F0 "Y_stepper_motor" 50
F1 "stepper_motor.sch" 50
F2 "A+" I L 8250 2000 50 
F3 "A-" I L 8250 2100 50 
F4 "B+" I L 8250 2200 50 
F5 "B-" I L 8250 2300 50 
$EndSheet
Wire Wire Line
	7950 2000 8250 2000
Wire Wire Line
	7950 2100 8250 2100
Wire Wire Line
	7950 2200 8250 2200
Wire Wire Line
	7950 2300 8250 2300
$Sheet
S 7100 2750 850  750 
U 57A7DDE6
F0 "Z_stepper_driver" 50
F1 "stepper_driver.sch" 50
F2 "GND" I L 7100 2850 50 
F3 "STEP" I L 7100 2950 50 
F4 "DIR" I L 7100 3050 50 
F5 "ENABLE" I L 7100 3150 50 
F6 "VCC" I L 7100 3300 50 
F7 "PGND" I L 7100 3400 50 
F8 "A+" O R 7950 2900 50 
F9 "A-" O R 7950 3000 50 
F10 "B+" O R 7950 3100 50 
F11 "B-" O R 7950 3200 50 
$EndSheet
$Sheet
S 8250 2750 850  750 
U 57A7DDEC
F0 "Z_stepper_motor" 50
F1 "stepper_motor.sch" 50
F2 "A+" I L 8250 2900 50 
F3 "A-" I L 8250 3000 50 
F4 "B+" I L 8250 3100 50 
F5 "B-" I L 8250 3200 50 
$EndSheet
Wire Wire Line
	7950 2900 8250 2900
Wire Wire Line
	7950 3000 8250 3000
Wire Wire Line
	7950 3100 8250 3100
Wire Wire Line
	7950 3200 8250 3200
$Sheet
S 4150 850  2050 6650
U 57AB49CD
F0 "pc_breakout" 50
F1 "pc_breakout.sch" 50
F2 "24V" I L 4150 2550 50 
F3 "GND" I L 4150 2650 50 
F4 "SPINDLE_PWR_HV" I L 4150 2800 50 
F5 "PINDLE_PWR_LV" I L 4150 2900 50 
F6 "SPINDLE_PWR_GND" I L 4150 3000 50 
F7 "STEPPER_PWR" I L 4150 3150 50 
F8 "STEPPER_GND" I L 4150 3250 50 
F9 "R_SPINDLE_DICHARGE" O L 4150 3500 50 
F10 "R_SPINDLE_SOFT" O L 4150 3600 50 
F11 "R_SPINDLE_PWR" O L 4150 3700 50 
F12 "R_STEPPER_PWR" O L 4150 3800 50 
F13 "12V" O L 4150 2450 50 
F14 "GND" O R 6200 1050 50 
F15 "X_STEP" O R 6200 1150 50 
F16 "X_DIR" O R 6200 1250 50 
F17 "X_ENABLE" O R 6200 1350 50 
F18 "GND" O R 6200 1950 50 
F19 "Y_STEP" O R 6200 2050 50 
F20 "Y_DIR" O R 6200 2150 50 
F21 "Y_ENABLE" O R 6200 2250 50 
F22 "GND" O R 6200 2850 50 
F23 "Z_STEP" O R 6200 2950 50 
F24 "Z_DIR" O R 6200 3050 50 
F25 "Z_ENABLE" O R 6200 3150 50 
F26 "GND" O R 6200 3750 50 
F27 "A_STEP" O R 6200 3850 50 
F28 "A_DIR" O R 6200 3950 50 
F29 "A_ENABLE" O R 6200 4050 50 
F30 "GND" O R 6200 4650 50 
F31 "B_STEP" O R 6200 4750 50 
F32 "B_DIR" O R 6200 4850 50 
F33 "B_ENABLE" O R 6200 4950 50 
F34 "5V" O L 4150 2350 50 
F35 "ESTOP_SOFT" I L 4150 4850 50 
F36 "SPINDLE4" O L 4150 5550 50 
F37 "SPINDLE3" O L 4150 5650 50 
F38 "SPINDLE2" O L 4150 5750 50 
F39 "SPINDLE1" O L 4150 5850 50 
F40 "ENCODER_A" I L 4150 6200 50 
F41 "ENCODER_B" I L 4150 6300 50 
F42 "TACHO+" I L 4150 6400 50 
F43 "TACHO-" I L 4150 6500 50 
F44 "TOOL_PROBE" I L 4150 6850 50 
F45 "PIECE_PROBE" I L 4150 7200 50 
F46 "PIECE_PROBE_EN" I L 4150 7300 50 
F47 "TOOL_PROBE_EN" I L 4150 6950 50 
F48 "TEMPERATURE" T R 6200 5600 50 
$EndSheet
Wire Wire Line
	3400 2550 4150 2550
Wire Wire Line
	3400 2650 4150 2650
Wire Wire Line
	3400 2800 4150 2800
Wire Wire Line
	3400 2900 4150 2900
Wire Wire Line
	3400 3000 4150 3000
Wire Wire Line
	3400 3150 4150 3150
Wire Wire Line
	3400 3250 4150 3250
Wire Wire Line
	3400 3500 4150 3500
Wire Wire Line
	3400 3600 4150 3600
Wire Wire Line
	3400 3700 4150 3700
Wire Wire Line
	3400 3800 4150 3800
Wire Notes Line
	4150 2750 5150 2750
Wire Notes Line
	5150 2750 5150 3300
Wire Notes Line
	5150 3300 4150 3300
Text Notes 5050 3150 1    50   ~ 0
Isolated
Wire Notes Line
	5350 2300 5350 3900
Wire Notes Line
	5350 3900 4150 3900
Text Notes 5300 2700 3    50   ~ 0
power & power control
Wire Wire Line
	4000 3250 4000 750 
Wire Wire Line
	4000 750  6950 750 
Wire Wire Line
	6950 750  6950 5200
Wire Wire Line
	6950 1600 7100 1600
Connection ~ 4000 3250
Wire Wire Line
	6950 2500 7100 2500
Connection ~ 6950 1600
Wire Wire Line
	6950 3400 7100 3400
Connection ~ 6950 2500
Wire Wire Line
	3950 3150 3950 700 
Wire Wire Line
	3950 700  7000 700 
Wire Wire Line
	7000 700  7000 5100
Wire Wire Line
	7000 1500 7100 1500
Connection ~ 3950 3150
Wire Wire Line
	7000 2400 7100 2400
Connection ~ 7000 1500
Wire Wire Line
	7000 3300 7100 3300
Connection ~ 7000 2400
Wire Wire Line
	6200 1050 7100 1050
Wire Wire Line
	6200 1150 7100 1150
Wire Wire Line
	6200 1250 7100 1250
Wire Wire Line
	6200 1350 7100 1350
Wire Wire Line
	6200 1950 7100 1950
Wire Wire Line
	6200 2050 7100 2050
Wire Wire Line
	6200 2150 7100 2150
Wire Wire Line
	6200 2250 7100 2250
Wire Wire Line
	6200 2850 7100 2850
Wire Wire Line
	6200 2950 7100 2950
Wire Wire Line
	6200 3050 7100 3050
Wire Wire Line
	6200 3150 7100 3150
$Sheet
S 7100 3650 850  750 
U 57B290FE
F0 "A_stepper_driver" 50
F1 "stepper_driver.sch" 50
F2 "GND" I L 7100 3750 50 
F3 "STEP" I L 7100 3850 50 
F4 "DIR" I L 7100 3950 50 
F5 "ENABLE" I L 7100 4050 50 
F6 "VCC" I L 7100 4200 50 
F7 "PGND" I L 7100 4300 50 
F8 "A+" O R 7950 3800 50 
F9 "A-" O R 7950 3900 50 
F10 "B+" O R 7950 4000 50 
F11 "B-" O R 7950 4100 50 
$EndSheet
$Sheet
S 8250 3650 850  750 
U 57B29104
F0 "A_stepper_motor" 50
F1 "stepper_motor.sch" 50
F2 "A+" I L 8250 3800 50 
F3 "A-" I L 8250 3900 50 
F4 "B+" I L 8250 4000 50 
F5 "B-" I L 8250 4100 50 
$EndSheet
Wire Wire Line
	7950 3800 8250 3800
Wire Wire Line
	7950 3900 8250 3900
Wire Wire Line
	7950 4000 8250 4000
Wire Wire Line
	7950 4100 8250 4100
Wire Wire Line
	6950 4300 7100 4300
Wire Wire Line
	7000 4200 7100 4200
Wire Wire Line
	6200 3750 7100 3750
Wire Wire Line
	6200 3850 7100 3850
Wire Wire Line
	6200 3950 7100 3950
Wire Wire Line
	6200 4050 7100 4050
$Sheet
S 7100 4550 850  750 
U 57B29774
F0 "B_stepper_driver" 50
F1 "stepper_driver.sch" 50
F2 "GND" I L 7100 4650 50 
F3 "STEP" I L 7100 4750 50 
F4 "DIR" I L 7100 4850 50 
F5 "ENABLE" I L 7100 4950 50 
F6 "VCC" I L 7100 5100 50 
F7 "PGND" I L 7100 5200 50 
F8 "A+" O R 7950 4700 50 
F9 "A-" O R 7950 4800 50 
F10 "B+" O R 7950 4900 50 
F11 "B-" O R 7950 5000 50 
$EndSheet
$Sheet
S 8250 4550 850  750 
U 57B2977A
F0 "B_stepper_motor" 50
F1 "stepper_motor.sch" 50
F2 "A+" I L 8250 4700 50 
F3 "A-" I L 8250 4800 50 
F4 "B+" I L 8250 4900 50 
F5 "B-" I L 8250 5000 50 
$EndSheet
Wire Wire Line
	7950 4700 8250 4700
Wire Wire Line
	7950 4800 8250 4800
Wire Wire Line
	7950 4900 8250 4900
Wire Wire Line
	7950 5000 8250 5000
Wire Wire Line
	6950 5200 7100 5200
Wire Wire Line
	7000 5100 7100 5100
Wire Wire Line
	6200 4650 7100 4650
Wire Wire Line
	6200 4750 7100 4750
Wire Wire Line
	6200 4850 7100 4850
Wire Wire Line
	6200 4950 7100 4950
Connection ~ 7000 3300
Connection ~ 7000 4200
Connection ~ 6950 3400
Connection ~ 6950 4300
$Sheet
S 1800 5700 650  850 
U 57B78799
F0 "spindle" 50
F1 "spingle.sch" 50
F2 "M+" I R 2450 5850 50 
F3 "M-" I R 2450 5750 50 
F4 "+5V" I R 2450 6100 50 
F5 "GND" I R 2450 6000 50 
F6 "A" O R 2450 6200 50 
F7 "B" O R 2450 6300 50 
F8 "TACHO+" O R 2450 6400 50 
F9 "TACHO-" O R 2450 6500 50 
$EndSheet
Wire Notes Line
	6200 1000 5550 1000
Wire Notes Line
	5550 1000 5550 5350
Text Notes 5650 3300 1    50   ~ 0
steppers
Wire Notes Line
	5350 2300 4150 2300
Wire Wire Line
	4150 2350 3850 2350
Wire Wire Line
	3700 2450 4150 2450
$Comp
L +5V #PWR?
U 1 1 57BAE618
P 3850 2350
F 0 "#PWR?" H 3850 2200 50  0001 C CNN
F 1 "+5V" H 3865 2523 50  0000 C CNN
F 2 "" H 3850 2350 50  0000 C CNN
F 3 "" H 3850 2350 50  0000 C CNN
	1    3850 2350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 57BAE926
P 3700 2450
F 0 "#PWR?" H 3700 2300 50  0001 C CNN
F 1 "+12V" H 3715 2623 50  0000 C CNN
F 2 "" H 3700 2450 50  0000 C CNN
F 3 "" H 3700 2450 50  0000 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR?
U 1 1 57BB163B
P 3550 2550
F 0 "#PWR?" H 3550 2400 50  0001 C CNN
F 1 "+24V" H 3565 2723 50  0000 C CNN
F 2 "" H 3550 2550 50  0000 C CNN
F 3 "" H 3550 2550 50  0000 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2250 3450 2650
Connection ~ 3450 2650
$Comp
L GND #PWR?
U 1 1 57BBFA84
P 3450 2250
F 0 "#PWR?" H 3450 2000 50  0001 C CNN
F 1 "GND" H 3455 2077 50  0000 C CNN
F 2 "" H 3450 2250 50  0000 C CNN
F 3 "" H 3450 2250 50  0000 C CNN
	1    3450 2250
	-1   0    0    1   
$EndComp
$Comp
L Switch_DPST SW?
U 1 1 57BDAFFC
P 3100 4650
F 0 "SW?" H 3100 5115 50  0000 C CNN
F 1 "E-STOP" H 3100 5024 50  0000 C CNN
F 2 "" H 3100 4650 50  0000 C CNN
F 3 "" H 3100 4650 50  0000 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR?
U 1 1 57BE2FB2
P 2650 4450
F 0 "#PWR?" H 2650 4300 50  0001 C CNN
F 1 "+24V" H 2665 4623 50  0000 C CNN
F 2 "" H 2650 4450 50  0000 C CNN
F 3 "" H 2650 4450 50  0000 C CNN
	1    2650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4450 2800 4450
Wire Wire Line
	3400 4450 3650 4450
Wire Wire Line
	3650 4450 3650 3950
Wire Wire Line
	3650 3950 3400 3950
$Comp
L +5V #PWR?
U 1 1 57BE9AB9
P 2650 4850
F 0 "#PWR?" H 2650 4700 50  0001 C CNN
F 1 "+5V" H 2665 5023 50  0000 C CNN
F 2 "" H 2650 4850 50  0000 C CNN
F 3 "" H 2650 4850 50  0000 C CNN
	1    2650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4850 2650 4850
Wire Wire Line
	3400 4850 4150 4850
$Comp
L SW_DIP_x1 S?
U 1 1 57C58CC5
P 6500 1650
F 0 "S?" H 6500 1875 50  0000 C CNN
F 1 "HOME_X" H 6500 1784 50  0000 C CNN
F 2 "" H 6450 1650 50  0000 C CNN
F 3 "" H 6450 1650 50  0000 C CNN
	1    6500 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 57C59194
P 6800 1650
F 0 "#PWR?" H 6800 1500 50  0001 C CNN
F 1 "+5V" H 6815 1823 50  0000 C CNN
F 2 "" H 6800 1650 50  0000 C CNN
F 3 "" H 6800 1650 50  0000 C CNN
	1    6800 1650
	-1   0    0    1   
$EndComp
$Comp
L SW_DIP_x1 S?
U 1 1 57C602BE
P 6500 2550
F 0 "S?" H 6500 2775 50  0000 C CNN
F 1 "HOME_Y" H 6500 2684 50  0000 C CNN
F 2 "" H 6450 2550 50  0000 C CNN
F 3 "" H 6450 2550 50  0000 C CNN
	1    6500 2550
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x1 S?
U 1 1 57C6242D
P 6500 3450
F 0 "S?" H 6500 3675 50  0000 C CNN
F 1 "HOME_Z" H 6500 3584 50  0000 C CNN
F 2 "" H 6450 3450 50  0000 C CNN
F 3 "" H 6450 3450 50  0000 C CNN
	1    6500 3450
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x1 S?
U 1 1 57C62767
P 6500 4350
F 0 "S?" H 6500 4575 50  0000 C CNN
F 1 "HOME_A" H 6500 4484 50  0000 C CNN
F 2 "" H 6450 4350 50  0000 C CNN
F 3 "" H 6450 4350 50  0000 C CNN
	1    6500 4350
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x1 S?
U 1 1 57C63FF6
P 6500 5250
F 0 "S?" H 6500 5475 50  0000 C CNN
F 1 "HOME_B" H 6500 5384 50  0000 C CNN
F 2 "" H 6450 5250 50  0000 C CNN
F 3 "" H 6450 5250 50  0000 C CNN
	1    6500 5250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 57C66F6C
P 6800 2550
F 0 "#PWR?" H 6800 2400 50  0001 C CNN
F 1 "+5V" H 6815 2723 50  0000 C CNN
F 2 "" H 6800 2550 50  0000 C CNN
F 3 "" H 6800 2550 50  0000 C CNN
	1    6800 2550
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 57C6728F
P 6800 3450
F 0 "#PWR?" H 6800 3300 50  0001 C CNN
F 1 "+5V" H 6815 3623 50  0000 C CNN
F 2 "" H 6800 3450 50  0000 C CNN
F 3 "" H 6800 3450 50  0000 C CNN
	1    6800 3450
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 57C675AC
P 6800 4350
F 0 "#PWR?" H 6800 4200 50  0001 C CNN
F 1 "+5V" H 6815 4523 50  0000 C CNN
F 2 "" H 6800 4350 50  0000 C CNN
F 3 "" H 6800 4350 50  0000 C CNN
	1    6800 4350
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 57C69A4D
P 6800 5250
F 0 "#PWR?" H 6800 5100 50  0001 C CNN
F 1 "+5V" H 6815 5423 50  0000 C CNN
F 2 "" H 6800 5250 50  0000 C CNN
F 3 "" H 6800 5250 50  0000 C CNN
	1    6800 5250
	-1   0    0    1   
$EndComp
Wire Notes Line
	5550 5350 6200 5350
$Sheet
S 2850 5300 950  600 
U 57C8B4BE
F0 "spindle_driver" 50
F1 "spindle_driver.sch" 50
F2 "M+" O L 2850 5850 50 
F3 "M-" O L 2850 5750 50 
F4 "CTRL1" I R 3800 5850 50 
F5 "CTRL2" I R 3800 5750 50 
F6 "CTRL3" I R 3800 5650 50 
F7 "CTRL4" I R 3800 5550 50 
F8 "GND" I L 2850 5350 50 
F9 "+15V" I L 2850 5450 50 
F10 "+320V" I L 2850 5550 50 
$EndSheet
Wire Notes Line
	3800 5450 3300 5450
Wire Notes Line
	3300 5450 3300 5900
Text Notes 3450 5850 1    50   ~ 0
Isolated
Wire Wire Line
	3900 3000 3900 5200
Wire Wire Line
	3900 5200 2700 5200
Wire Wire Line
	2700 5200 2700 5350
Wire Wire Line
	2700 5350 2850 5350
Connection ~ 3900 3000
Wire Wire Line
	3850 2900 3850 5150
Wire Wire Line
	3850 5150 2650 5150
Wire Wire Line
	2650 5150 2650 5450
Wire Wire Line
	2650 5450 2850 5450
Connection ~ 3850 2900
Wire Wire Line
	3800 2800 3800 5100
Wire Wire Line
	3800 5100 2600 5100
Wire Wire Line
	2600 5100 2600 5550
Wire Wire Line
	2600 5550 2850 5550
Connection ~ 3800 2800
Wire Wire Line
	2850 5750 2450 5750
Wire Wire Line
	2450 5850 2850 5850
$Comp
L GND #PWR?
U 1 1 57CA082A
P 2450 6000
F 0 "#PWR?" H 2450 5750 50  0001 C CNN
F 1 "GND" V 2455 5872 50  0000 R CNN
F 2 "" H 2450 6000 50  0000 C CNN
F 3 "" H 2450 6000 50  0000 C CNN
	1    2450 6000
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 57CA496F
P 2450 6100
F 0 "#PWR?" H 2450 5950 50  0001 C CNN
F 1 "+5V" V 2465 6228 50  0000 L CNN
F 2 "" H 2450 6100 50  0000 C CNN
F 3 "" H 2450 6100 50  0000 C CNN
	1    2450 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 6200 2450 6200
Wire Wire Line
	2450 6300 4150 6300
Wire Wire Line
	4150 6400 2450 6400
Wire Wire Line
	2450 6500 4150 6500
Wire Wire Line
	3800 5550 4150 5550
Wire Wire Line
	3800 5650 4150 5650
Wire Wire Line
	3800 5750 4150 5750
Wire Wire Line
	3800 5850 4150 5850
Wire Notes Line
	4150 5500 4900 5500
Wire Notes Line
	4900 5500 4900 6550
Wire Notes Line
	4900 6550 4150 6550
Text Notes 4800 6200 1    50   ~ 0
Spindle
$Comp
L CONN_01X02 P?
U 1 1 57CE7195
P 1350 2950
F 0 "P?" H 1269 2675 50  0000 C CNN
F 1 "AC_INPUT @ 230V" H 1269 2766 50  0000 C CNN
F 2 "" H 1350 2950 50  0000 C CNN
F 3 "" H 1350 2950 50  0000 C CNN
	1    1350 2950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 57CE78C7
P 950 3300
F 0 "P?" H 869 3025 50  0000 C CNN
F 1 "PC_POWER_PLUG" H 869 3116 50  0000 C CNN
F 2 "" H 950 3300 50  0000 C CNN
F 3 "" H 950 3300 50  0000 C CNN
	1    950  3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2900 1800 2900
Wire Wire Line
	1800 3000 1550 3000
Wire Wire Line
	1150 3250 1800 3250
Wire Wire Line
	1800 3350 1150 3350
$Comp
L SW_DIP_x1 S?
U 1 1 57CFCFD1
P 2650 6850
F 0 "S?" H 2650 7075 50  0000 C CNN
F 1 "TOOL_PROBE" H 2650 6984 50  0000 C CNN
F 2 "" H 2600 6850 50  0000 C CNN
F 3 "" H 2600 6850 50  0000 C CNN
	1    2650 6850
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x1 S?
U 1 1 57CFE1B4
P 1350 7200
F 0 "S?" H 1350 7425 50  0000 C CNN
F 1 "PIECE_PROBE" H 1350 7334 50  0000 C CNN
F 2 "" H 1300 7200 50  0000 C CNN
F 3 "" H 1300 7200 50  0000 C CNN
	1    1350 7200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 57D17559
P 3450 6950
F 0 "P?" H 3369 6625 50  0000 C CNN
F 1 "CONN_01X03" H 3369 6716 50  0000 C CNN
F 2 "" H 3450 6950 50  0000 C CNN
F 3 "" H 3450 6950 50  0000 C CNN
	1    3450 6950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 57D17CB1
P 2200 7300
F 0 "P?" H 2119 6975 50  0000 C CNN
F 1 "CONN_01X03" H 2119 7066 50  0000 C CNN
F 2 "" H 2200 7300 50  0000 C CNN
F 3 "" H 2200 7300 50  0000 C CNN
	1    2200 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 6950 3050 6950
Wire Wire Line
	2350 6950 2350 6850
Wire Wire Line
	2900 6950 2900 7050
Wire Wire Line
	2900 7050 3050 7050
Connection ~ 2900 6950
Wire Wire Line
	2950 6850 3050 6850
Wire Wire Line
	1750 7200 1650 7200
Wire Wire Line
	1050 7300 1750 7300
Wire Wire Line
	1050 7300 1050 7200
Wire Wire Line
	1650 7300 1650 7400
Wire Wire Line
	1650 7400 1750 7400
Connection ~ 1650 7300
Wire Wire Line
	3650 6850 4150 6850
Wire Wire Line
	3650 6950 4150 6950
Wire Wire Line
	4150 7200 2400 7200
Wire Wire Line
	2400 7300 4150 7300
$Comp
L +5V #PWR?
U 1 1 57D1DDE8
P 3650 7050
F 0 "#PWR?" H 3650 6900 50  0001 C CNN
F 1 "+5V" V 3665 7178 50  0000 L CNN
F 2 "" H 3650 7050 50  0000 C CNN
F 3 "" H 3650 7050 50  0000 C CNN
	1    3650 7050
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 57D1E195
P 2400 7400
F 0 "#PWR?" H 2400 7250 50  0001 C CNN
F 1 "+5V" V 2415 7528 50  0000 L CNN
F 2 "" H 2400 7400 50  0000 C CNN
F 3 "" H 2400 7400 50  0000 C CNN
	1    2400 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 57D20278
P 1950 7300
F 0 "P?" H 2028 7341 50  0000 L CNN
F 1 "CONN_01X03" H 2028 7250 50  0000 L CNN
F 2 "" H 1950 7300 50  0000 C CNN
F 3 "" H 1950 7300 50  0000 C CNN
	1    1950 7300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 57D2963E
P 3250 6950
F 0 "P?" H 3328 6991 50  0000 L CNN
F 1 "CONN_01X03" H 3328 6900 50  0000 L CNN
F 2 "" H 3250 6950 50  0000 C CNN
F 3 "" H 3250 6950 50  0000 C CNN
	1    3250 6950
	1    0    0    -1  
$EndComp
Wire Notes Line
	4150 6800 5000 6800
Wire Notes Line
	5000 6800 5000 7350
Wire Notes Line
	5000 7350 4150 7350
Text Notes 4950 7200 1    50   ~ 0
Probes
$Comp
L DS18B20 U?
U 1 1 57D39A22
P 7000 6150
F 0 "U?" V 6897 6378 50  0000 L CNN
F 1 "DS18B20" V 6988 6378 50  0000 L CNN
F 2 "" H 6850 6400 50  0000 C CNN
F 3 "" H 6850 6400 50  0000 C CNN
	1    7000 6150
	0    1    1    0   
$EndComp
$Comp
L DS18B20 U?
U 1 1 57D3B73C
P 7800 6150
F 0 "U?" V 7697 6378 50  0000 L CNN
F 1 "DS18B20" V 7788 6378 50  0000 L CNN
F 2 "" H 7650 6400 50  0000 C CNN
F 3 "" H 7650 6400 50  0000 C CNN
	1    7800 6150
	0    1    1    0   
$EndComp
$Comp
L DS18B20 U?
U 1 1 57D3BB10
P 8600 6150
F 0 "U?" V 8497 6378 50  0000 L CNN
F 1 "DS18B20" V 8588 6378 50  0000 L CNN
F 2 "" H 8450 6400 50  0000 C CNN
F 3 "" H 8450 6400 50  0000 C CNN
	1    8600 6150
	0    1    1    0   
$EndComp
$Comp
L DS18B20 U?
U 1 1 57D3BEEB
P 9400 6150
F 0 "U?" V 9297 6378 50  0000 L CNN
F 1 "DS18B20" V 9388 6378 50  0000 L CNN
F 2 "" H 9250 6400 50  0000 C CNN
F 3 "" H 9250 6400 50  0000 C CNN
	1    9400 6150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D3F2FC
P 6900 5850
F 0 "#PWR?" H 6900 5600 50  0001 C CNN
F 1 "GND" H 6905 5677 50  0000 C CNN
F 2 "" H 6900 5850 50  0000 C CNN
F 3 "" H 6900 5850 50  0000 C CNN
	1    6900 5850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D4122D
P 7700 5850
F 0 "#PWR?" H 7700 5600 50  0001 C CNN
F 1 "GND" H 7705 5677 50  0000 C CNN
F 2 "" H 7700 5850 50  0000 C CNN
F 3 "" H 7700 5850 50  0000 C CNN
	1    7700 5850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D415F2
P 8500 5850
F 0 "#PWR?" H 8500 5600 50  0001 C CNN
F 1 "GND" H 8505 5677 50  0000 C CNN
F 2 "" H 8500 5850 50  0000 C CNN
F 3 "" H 8500 5850 50  0000 C CNN
	1    8500 5850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D419B7
P 9300 5850
F 0 "#PWR?" H 9300 5600 50  0001 C CNN
F 1 "GND" H 9305 5677 50  0000 C CNN
F 2 "" H 9300 5850 50  0000 C CNN
F 3 "" H 9300 5850 50  0000 C CNN
	1    9300 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 5600 9500 5600
Wire Wire Line
	9500 5600 9500 5850
Wire Wire Line
	9400 5600 9400 5850
Connection ~ 9400 5600
Wire Wire Line
	8700 5850 8700 5600
Connection ~ 8700 5600
Wire Wire Line
	8600 5850 8600 5600
Connection ~ 8600 5600
Wire Wire Line
	7900 5850 7900 5600
Connection ~ 7900 5600
Wire Wire Line
	7800 5850 7800 5600
Connection ~ 7800 5600
Wire Wire Line
	7100 5850 7100 5600
Connection ~ 7100 5600
Wire Wire Line
	7000 5850 7000 5600
Connection ~ 7000 5600
$EndSCHEMATC
