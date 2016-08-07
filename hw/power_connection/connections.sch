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
Sheet 2 16
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3450 1450 0    50   Input ~ 0
SPINDLE_PWR+
Text GLabel 3450 1550 0    50   Input ~ 0
SPINDLE_PWR-
Text GLabel 3450 1800 0    50   Input ~ 0
STEPPER_PWR+
Text GLabel 3450 1950 0    50   Input ~ 0
STEPPER_PWR-
Text GLabel 3450 2200 0    50   Input ~ 0
+24V
Text GLabel 3450 2350 0    50   Input ~ 0
GND
Text Notes 2150 2350 1    50   ~ 0
Voltage sensing & power
Text Notes 2550 1850 1    50   ~ 0
(isolated)
Text Notes 2550 2350 1    50   ~ 0
power
Text Notes 2300 1200 0    100  ~ 20
PC Breakout
Text GLabel 3450 2600 0    50   Input ~ 0
STEP_X
Text GLabel 3450 2700 0    50   Input ~ 0
DIR_X
Text GLabel 3450 2800 0    50   Input ~ 0
EN_X
Text GLabel 3450 3000 0    50   Input ~ 0
STEP_Y
Text GLabel 3450 3100 0    50   Input ~ 0
DIR_Y
Text GLabel 3450 3200 0    50   Input ~ 0
EN_Y
Text GLabel 3450 3400 0    50   Input ~ 0
STEP_Z
Text GLabel 3450 3500 0    50   Input ~ 0
DIR_Z
Text GLabel 3450 3600 0    50   Input ~ 0
EN_Z
Text GLabel 3450 3800 0    50   Input ~ 0
STEP_A
Text GLabel 3450 3900 0    50   Input ~ 0
DIR_A
Text GLabel 3450 4000 0    50   Input ~ 0
EN_A
Text GLabel 3450 4200 0    50   Input ~ 0
STEP_B
Text GLabel 3450 4300 0    50   Input ~ 0
DIR_B
Text GLabel 3450 4400 0    50   Input ~ 0
EN_B
Text Notes 2200 3650 1    50   ~ 0
Steppers
Text Notes 2600 2750 1    50   ~ 0
X
Text Notes 2600 3150 1    50   ~ 0
Y
Text Notes 2600 3550 1    50   ~ 0
Z
Text Notes 2600 3950 1    50   ~ 0
A
Text Notes 2600 4350 1    50   ~ 0
B
Text GLabel 3450 4650 0    50   Input ~ 0
SPINDLE_ENC_A
Text GLabel 3450 4750 0    50   Input ~ 0
SPINDLE_ENC_B
Text GLabel 3450 4900 0    50   Input ~ 0
TACHO
Text GLabel 3450 5150 0    50   Input ~ 0
SPINDLE_OUT1
Text GLabel 3450 5250 0    50   Input ~ 0
SPINDLE_OUT2
Text GLabel 3450 5350 0    50   Input ~ 0
SPINDLE_OUT3
Text Notes 2200 5150 1    50   ~ 0
Spindle
Text Notes 2600 4950 1    50   ~ 0
Feedback
Text Notes 2600 5350 1    50   ~ 0
Power
Text GLabel 3450 5550 0    50   Input ~ 0
HOME_X
Text GLabel 3450 5650 0    50   Input ~ 0
HOME_Y
Text GLabel 3450 5750 0    50   Input ~ 0
HOME_Z
Text GLabel 3450 5850 0    50   Input ~ 0
HOME_A
Text GLabel 3450 5950 0    50   Input ~ 0
HOME_B
Text GLabel 3450 6150 0    50   Input ~ 0
TOOL_PROBE
Text GLabel 3450 6350 0    50   Input ~ 0
PIECE_PROBE
Text GLabel 3450 6250 0    50   Input ~ 0
TOOL_PROBE_EN
Text GLabel 3450 6450 0    50   Input ~ 0
PIECE_PROBE_EN
Text GLabel 3450 6650 0    50   Input ~ 0
ESTOP_IN
Text GLabel 3450 6850 0    50   Input ~ 0
TEMPERATURE
Text Notes 2200 6400 1    50   ~ 0
Inputs
Text Notes 2600 5900 1    50   ~ 0
Homing
Text Notes 2600 6400 1    50   ~ 0
Probe
Text GLabel 3450 7150 0    60   Input ~ 0
R_SOFT_START
Text GLabel 3450 7050 0    60   Input ~ 0
R_SPINDLE_PWR
Text GLabel 3450 7250 0    50   Input ~ 0
R_SPINDLE_DISCHARGE
Text GLabel 3450 7350 0    50   Input ~ 0
R_STEPPER_PWR
Text Notes 2250 7350 1    50   ~ 0
Power\ncontrol
$Comp
L DS18B20 U1
U 1 1 57A820D8
P 4800 7350
F 0 "U1" H 4650 7600 50  0000 C CNN
F 1 "DS18B20" H 4800 7100 50  0000 C CNN
F 2 "" H 4650 7600 50  0000 C CNN
F 3 "" H 4650 7600 50  0000 C CNN
	1    4800 7350
	0    1    1    0   
$EndComp
$Comp
L DS18B20 U2
U 1 1 57A821CF
P 5850 7350
F 0 "U2" H 5700 7600 50  0000 C CNN
F 1 "DS18B20" H 5850 7100 50  0000 C CNN
F 2 "" H 5700 7600 50  0000 C CNN
F 3 "" H 5700 7600 50  0000 C CNN
	1    5850 7350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR10
U 1 1 57A82446
P 5750 7050
F 0 "#PWR10" H 5750 6800 50  0001 C CNN
F 1 "GND" H 5750 6900 50  0000 C CNN
F 2 "" H 5750 7050 50  0000 C CNN
F 3 "" H 5750 7050 50  0000 C CNN
	1    5750 7050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR9
U 1 1 57A8245E
P 4700 7050
F 0 "#PWR9" H 4700 6800 50  0001 C CNN
F 1 "GND" H 4700 6900 50  0000 C CNN
F 2 "" H 4700 7050 50  0000 C CNN
F 3 "" H 4700 7050 50  0000 C CNN
	1    4700 7050
	-1   0    0    1   
$EndComp
$Comp
L SPST SW8
U 1 1 57A825B2
P 4200 6650
F 0 "SW8" H 4200 6750 50  0000 C CNN
F 1 "SPST" H 4200 6550 50  0000 C CNN
F 2 "" H 4200 6650 50  0000 C CNN
F 3 "" H 4200 6650 50  0000 C CNN
	1    4200 6650
	1    0    0    -1  
$EndComp
$Comp
L SPST SW11
U 1 1 57A825DA
P 5350 6650
F 0 "SW11" H 5350 6750 50  0000 C CNN
F 1 "SPST" H 5350 6550 50  0000 C CNN
F 2 "" H 5350 6650 50  0000 C CNN
F 3 "" H 5350 6650 50  0000 C CNN
	1    5350 6650
	1    0    0    -1  
$EndComp
Text GLabel 5850 6650 2    50   Input ~ 0
+5V
$Comp
L SPST SW6
U 1 1 57A8279A
P 6400 6050
F 0 "SW6" H 6400 6150 50  0000 C CNN
F 1 "SPST" H 6400 5950 50  0000 C CNN
F 2 "" H 6400 6050 50  0000 C CNN
F 3 "" H 6400 6050 50  0000 C CNN
	1    6400 6050
	1    0    0    -1  
$EndComp
$Comp
L SPST SW7
U 1 1 57A827E3
P 6400 6400
F 0 "SW7" H 6400 6500 50  0000 C CNN
F 1 "SPST" H 6400 6300 50  0000 C CNN
F 2 "" H 6400 6400 50  0000 C CNN
F 3 "" H 6400 6400 50  0000 C CNN
	1    6400 6400
	1    0    0    -1  
$EndComp
$Comp
L SPST SW9
U 1 1 57A82A74
P 5850 5500
F 0 "SW9" H 5850 5600 50  0000 C CNN
F 1 "SPST" H 5850 5400 50  0000 C CNN
F 2 "" H 5850 5500 50  0000 C CNN
F 3 "" H 5850 5500 50  0000 C CNN
	1    5850 5500
	1    0    0    -1  
$EndComp
$Comp
L SPST SW4
U 1 1 57A82B6E
P 4550 5800
F 0 "SW4" H 4550 5900 50  0000 C CNN
F 1 "SPST" H 4550 5700 50  0000 C CNN
F 2 "" H 4550 5800 50  0000 C CNN
F 3 "" H 4550 5800 50  0000 C CNN
	1    4550 5800
	1    0    0    -1  
$EndComp
$Comp
L SPST SW10
U 1 1 57A82BAF
P 5850 5800
F 0 "SW10" H 5850 5900 50  0000 C CNN
F 1 "SPST" H 5850 5700 50  0000 C CNN
F 2 "" H 5850 5800 50  0000 C CNN
F 3 "" H 5850 5800 50  0000 C CNN
	1    5850 5800
	1    0    0    -1  
$EndComp
$Comp
L SPST SW5
U 1 1 57A82BF3
P 4550 6100
F 0 "SW5" H 4550 6200 50  0000 C CNN
F 1 "SPST" H 4550 6000 50  0000 C CNN
F 2 "" H 4550 6100 50  0000 C CNN
F 3 "" H 4550 6100 50  0000 C CNN
	1    4550 6100
	1    0    0    -1  
$EndComp
Text GLabel 9300 5450 2    50   Input ~ 0
M+
Text GLabel 9300 5550 2    50   Input ~ 0
M-
Text GLabel 9300 5150 2    50   Input ~ 0
TACHO+
Text GLabel 9300 5250 2    50   Input ~ 0
TACHO-
Text GLabel 9300 4850 2    50   Input ~ 0
GND
Text GLabel 9300 4950 2    50   Input ~ 0
+5V
Text GLabel 9300 4650 2    50   Input ~ 0
ENC_A
Text GLabel 9300 4750 2    50   Input ~ 0
ENC_B
Text Notes 9850 4800 3    100  ~ 20
Spindle
Text GLabel 8350 5450 0    50   Input ~ 0
M+
Text GLabel 8350 5550 0    50   Input ~ 0
M-
$Comp
L GND #PWR13
U 1 1 57A84132
P 9000 5250
F 0 "#PWR13" H 9000 5000 50  0001 C CNN
F 1 "GND" H 9000 5100 50  0000 C CNN
F 2 "" H 9000 5250 50  0000 C CNN
F 3 "" H 9000 5250 50  0000 C CNN
	1    9000 5250
	1    0    0    -1  
$EndComp
Text GLabel 7200 5150 2    50   Input ~ 0
IN_1
Text GLabel 7200 5250 2    50   Input ~ 0
IN_2
Text GLabel 7200 5350 2    50   Input ~ 0
IN_3
Text GLabel 7600 5050 3    50   Input ~ 0
SPINDLE_PWR-
Text GLabel 7750 5050 3    50   Input ~ 0
SPINDLE_PWR+
Text GLabel 7900 5050 3    50   Input ~ 0
SPINDLE_PWR2
Text Notes 7300 5850 0    100  ~ 20
Spindle cont
$Comp
L SPST SW3
U 1 1 57A82A37
P 4550 5500
F 0 "SW3" H 4550 5600 50  0000 C CNN
F 1 "SPST" H 4550 5400 50  0000 C CNN
F 2 "" H 4550 5500 50  0000 C CNN
F 3 "" H 4550 5500 50  0000 C CNN
	1    4550 5500
	1    0    0    -1  
$EndComp
Wire Notes Line
	3450 950  3450 6000
Wire Notes Line
	2050 950  2050 7450
Wire Wire Line
	3450 1450 10850 1450
Wire Wire Line
	3650 1450 3650 500 
Wire Wire Line
	3450 1800 9100 1800
Wire Wire Line
	3950 1800 3950 500 
Wire Wire Line
	3450 1950 9000 1950
Wire Wire Line
	4050 1950 4050 500 
Wire Wire Line
	3450 2200 4300 2200
Wire Wire Line
	4300 2200 4300 500 
Wire Wire Line
	3450 2350 4400 2350
Wire Wire Line
	4400 2350 4400 500 
Wire Notes Line
	2300 1350 2300 7450
Wire Notes Line
	3450 2100 2300 2100
Wire Notes Line
	3450 4100 2300 4100
Wire Notes Line
	3450 3700 2300 3700
Wire Notes Line
	3450 3300 2300 3300
Wire Notes Line
	3450 2900 2300 2900
Wire Notes Line
	3450 5050 2300 5050
Wire Notes Line
	3450 5950 3450 7000
Wire Notes Line
	3450 6550 2300 6550
Wire Notes Line
	3450 6050 2300 6050
Wire Notes Line
	3450 6750 2300 6750
Wire Notes Line
	3450 950  2050 950 
Wire Notes Line
	2050 1350 3450 1350
Wire Notes Line
	3450 1350 3450 1300
Wire Notes Line
	3450 2500 2050 2500
Wire Notes Line
	3450 5450 2050 5450
Wire Notes Line
	3450 4550 2050 4550
Wire Notes Line
	3450 6950 2050 6950
Wire Notes Line
	2050 7450 3450 7450
Wire Notes Line
	3450 7450 3450 6950
Wire Wire Line
	3450 7350 3650 7350
Wire Wire Line
	3650 7350 3650 7750
Wire Wire Line
	3450 7250 3750 7250
Wire Wire Line
	3750 7250 3750 7750
Wire Wire Line
	3450 7150 3850 7150
Wire Wire Line
	3850 7150 3850 7750
Wire Wire Line
	3450 7050 3950 7050
Wire Wire Line
	3950 7050 3950 7750
Wire Wire Line
	3450 6850 5950 6850
Wire Notes Line
	5100 7350 5150 7350
Wire Notes Line
	5200 7350 5250 7350
Wire Notes Line
	5300 7350 5350 7350
Wire Notes Line
	5400 7350 5450 7350
Wire Wire Line
	4900 6850 4900 7050
Wire Wire Line
	5950 6850 5950 7050
Connection ~ 4900 6850
Connection ~ 5950 6950
Wire Wire Line
	4800 7050 4800 6850
Connection ~ 4800 6850
Wire Wire Line
	5850 7050 5850 6850
Connection ~ 5850 6850
Wire Wire Line
	3700 6650 3450 6650
Wire Wire Line
	4700 6650 4850 6650
Wire Notes Line
	9300 4550 9950 4550
Wire Notes Line
	9950 4550 9950 5650
Wire Notes Line
	9950 5650 9300 5650
Wire Notes Line
	9300 5650 9300 4550
Wire Wire Line
	9300 4650 3450 4650
Wire Wire Line
	3450 4750 9300 4750
Wire Wire Line
	3450 4900 8650 4900
Wire Wire Line
	8650 4900 8650 5150
Wire Wire Line
	8650 5150 9300 5150
Wire Wire Line
	8350 5450 9300 5450
Wire Wire Line
	8350 5550 9300 5550
Wire Wire Line
	9300 4850 9000 4850
Wire Wire Line
	9000 4850 9000 5250
Wire Wire Line
	9000 5250 9300 5250
Wire Notes Line
	7200 5050 8350 5050
Wire Notes Line
	7200 5050 7200 5950
Wire Notes Line
	7200 5950 8000 5950
Wire Notes Line
	8350 5050 8350 5950
Wire Notes Line
	8350 5950 7950 5950
Wire Wire Line
	7200 5350 3450 5350
Wire Wire Line
	3450 5250 7200 5250
Wire Wire Line
	7200 5150 3450 5150
Text GLabel 4550 2600 2    50   Input ~ 0
STEP
Text GLabel 4550 2700 2    50   Input ~ 0
DIR
Text GLabel 4550 2800 2    50   Input ~ 0
EN
Text GLabel 4950 2350 3    50   Input ~ 0
GND
Text GLabel 5050 2350 3    50   Input ~ 0
+VCC
Text GLabel 5500 2500 0    50   Input ~ 0
A+
Text GLabel 5500 2600 0    50   Input ~ 0
A-
Text GLabel 5500 2700 0    50   Input ~ 0
B+
Text GLabel 5500 2800 0    50   Input ~ 0
B-
Wire Notes Line
	4550 2350 5500 2350
Text GLabel 6000 2500 2    50   Input ~ 0
A+
Text GLabel 6000 2600 2    50   Input ~ 0
A-
Text GLabel 6000 2700 2    50   Input ~ 0
B+
Text GLabel 6000 2800 2    50   Input ~ 0
B-
Wire Wire Line
	5500 2500 6000 2500
Wire Wire Line
	5500 2600 6000 2600
Wire Wire Line
	5500 2700 6000 2700
Wire Wire Line
	5500 2800 6000 2800
Text Notes 6350 2200 3    100  ~ 20
MOTOR X
Text Notes 5000 2800 0    100  ~ 20
X
Wire Notes Line
	4550 2350 4550 2900
Wire Notes Line
	4550 2900 5500 2900
Wire Notes Line
	5500 2900 5500 2350
Wire Notes Line
	6000 2900 6400 2900
Wire Notes Line
	6400 2900 6400 2150
Wire Notes Line
	6400 2150 6000 2150
Wire Notes Line
	6000 2150 6000 2900
Text GLabel 6500 3000 2    50   Input ~ 0
STEP
Text GLabel 6500 3100 2    50   Input ~ 0
DIR
Text GLabel 6500 3200 2    50   Input ~ 0
EN
Text GLabel 6900 2750 3    50   Input ~ 0
GND
Text GLabel 7000 2750 3    50   Input ~ 0
+VCC
Text GLabel 7450 2900 0    50   Input ~ 0
A+
Text GLabel 7450 3000 0    50   Input ~ 0
A-
Text GLabel 7450 3100 0    50   Input ~ 0
B+
Text GLabel 7450 3200 0    50   Input ~ 0
B-
Wire Notes Line
	6500 2750 7450 2750
Text GLabel 7950 2900 2    50   Input ~ 0
A+
Text GLabel 7950 3000 2    50   Input ~ 0
A-
Text GLabel 7950 3100 2    50   Input ~ 0
B+
Text GLabel 7950 3200 2    50   Input ~ 0
B-
Wire Wire Line
	7450 2900 7950 2900
Wire Wire Line
	7450 3000 7950 3000
Wire Wire Line
	7450 3100 7950 3100
Wire Wire Line
	7450 3200 7950 3200
Text Notes 8300 2600 3    100  ~ 20
MOTOR Y
Text Notes 6950 3200 0    100  ~ 20
Y
Wire Notes Line
	6500 2750 6500 3300
Wire Notes Line
	6500 3300 7450 3300
Wire Notes Line
	7450 3300 7450 2750
Wire Notes Line
	7950 3300 8350 3300
Wire Notes Line
	8350 3300 8350 2550
Wire Notes Line
	8350 2550 7950 2550
Wire Notes Line
	7950 2550 7950 3300
Text GLabel 8600 3400 2    50   Input ~ 0
STEP
Text GLabel 8600 3500 2    50   Input ~ 0
DIR
Text GLabel 8600 3600 2    50   Input ~ 0
EN
Text GLabel 9000 3150 3    50   Input ~ 0
GND
Text GLabel 9100 3150 3    50   Input ~ 0
+VCC
Text GLabel 9550 3300 0    50   Input ~ 0
A+
Text GLabel 9550 3400 0    50   Input ~ 0
A-
Text GLabel 9550 3500 0    50   Input ~ 0
B+
Text GLabel 9550 3600 0    50   Input ~ 0
B-
Wire Notes Line
	8600 3150 9550 3150
Text GLabel 10050 3300 2    50   Input ~ 0
A+
Text GLabel 10050 3400 2    50   Input ~ 0
A-
Text GLabel 10050 3500 2    50   Input ~ 0
B+
Text GLabel 10050 3600 2    50   Input ~ 0
B-
Wire Wire Line
	9550 3300 10050 3300
Wire Wire Line
	9550 3400 10050 3400
Wire Wire Line
	9550 3500 10050 3500
Wire Wire Line
	9550 3600 10050 3600
Text Notes 10400 3000 3    100  ~ 20
MOTOR Z
Text Notes 9050 3600 0    100  ~ 20
Z
Wire Notes Line
	8600 3150 8600 3700
Wire Notes Line
	8600 3700 9550 3700
Wire Notes Line
	9550 3700 9550 3150
Wire Notes Line
	10050 3700 10450 3700
Wire Notes Line
	10450 3700 10450 2950
Wire Notes Line
	10450 2950 10050 2950
Wire Notes Line
	10050 2950 10050 3700
Text GLabel 4550 2500 2    50   Input ~ 0
GND
Text GLabel 6500 2900 2    50   Input ~ 0
GND
Text GLabel 8600 3300 2    50   Input ~ 0
GND
Wire Wire Line
	3450 3000 6500 3000
Wire Wire Line
	6500 3100 3450 3100
Wire Wire Line
	3450 3200 6500 3200
Wire Wire Line
	8600 3400 3450 3400
Wire Wire Line
	3450 3500 8600 3500
Wire Wire Line
	3450 3600 8600 3600
Wire Wire Line
	3450 2600 4550 2600
Wire Wire Line
	3450 2700 4550 2700
Wire Wire Line
	3450 2800 4550 2800
$Comp
L GND #PWR8
U 1 1 57A8A5AB
P 4550 2500
F 0 "#PWR8" H 4550 2250 50  0001 C CNN
F 1 "GND" H 4550 2350 50  0000 C CNN
F 2 "" H 4550 2500 50  0000 C CNN
F 3 "" H 4550 2500 50  0000 C CNN
	1    4550 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR11
U 1 1 57A8A5D7
P 6500 2900
F 0 "#PWR11" H 6500 2650 50  0001 C CNN
F 1 "GND" H 6500 2750 50  0000 C CNN
F 2 "" H 6500 2900 50  0000 C CNN
F 3 "" H 6500 2900 50  0000 C CNN
	1    6500 2900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR12
U 1 1 57A8A603
P 8600 3300
F 0 "#PWR12" H 8600 3050 50  0001 C CNN
F 1 "GND" H 8600 3150 50  0000 C CNN
F 2 "" H 8600 3300 50  0000 C CNN
F 3 "" H 8600 3300 50  0000 C CNN
	1    8600 3300
	0    1    1    0   
$EndComp
Wire Notes Line
	4800 2350 4800 2900
Wire Notes Line
	6750 2750 6750 3300
Wire Notes Line
	8850 3150 8850 3700
Wire Wire Line
	5050 1800 5050 2350
Connection ~ 3950 1800
Wire Wire Line
	4950 1950 4950 2350
Connection ~ 4050 1950
Wire Wire Line
	7000 1800 7000 2750
Connection ~ 5050 1800
Wire Wire Line
	9100 1800 9100 3150
Connection ~ 7000 1800
Wire Wire Line
	6900 1950 6900 2750
Connection ~ 4950 1950
Wire Wire Line
	9000 1950 9000 3150
Connection ~ 6900 1950
Text GLabel 3450 1650 0    50   Input ~ 0
SPINDLE_PWR2
Wire Wire Line
	3450 1550 10700 1550
Wire Wire Line
	3750 1550 3750 500 
Wire Wire Line
	3450 1650 11000 1650
Wire Wire Line
	3850 1650 3850 500 
Wire Wire Line
	10850 1450 10850 4200
Wire Wire Line
	10850 4200 7750 4200
Wire Wire Line
	7750 4200 7750 5050
Connection ~ 3650 1450
Wire Wire Line
	10700 1550 10700 4050
Wire Wire Line
	10700 4050 7600 4050
Wire Wire Line
	7600 4050 7600 5050
Connection ~ 3750 1550
Wire Wire Line
	11000 1650 11000 4350
Wire Wire Line
	11000 4350 7900 4350
Wire Wire Line
	7900 4350 7900 5050
Connection ~ 3850 1650
Wire Wire Line
	4050 5500 4050 5550
Wire Wire Line
	4050 5550 3450 5550
Wire Wire Line
	5350 5500 5350 5650
Wire Wire Line
	5350 5650 3450 5650
Wire Wire Line
	4050 5800 4050 5750
Wire Wire Line
	4050 5750 3450 5750
Wire Wire Line
	3450 5850 4000 5850
Wire Wire Line
	4000 5850 4000 5950
Wire Wire Line
	4000 5950 5350 5950
Wire Wire Line
	5350 5950 5350 5800
Wire Wire Line
	4050 6100 3850 6100
Wire Wire Line
	3850 6100 3850 5950
Wire Wire Line
	3850 5950 3450 5950
Text GLabel 5050 5500 2    50   Input ~ 0
+5V
Text GLabel 5050 5800 2    50   Input ~ 0
+5V
Text GLabel 5050 6100 2    50   Input ~ 0
+5V
Text GLabel 6350 5500 2    50   Input ~ 0
+5V
Text GLabel 6350 5800 2    50   Input ~ 0
+5V
Wire Wire Line
	3450 6150 4000 6150
Wire Wire Line
	4000 6150 4000 6250
Wire Wire Line
	4000 6250 5900 6250
Wire Wire Line
	5900 6250 5900 6050
Wire Wire Line
	3450 6350 5900 6350
Wire Wire Line
	5900 6350 5900 6400
Text GLabel 6900 6050 2    50   Input ~ 0
+5V
Text GLabel 6900 6400 2    50   Input ~ 0
+5V
Text GLabel 3450 6450 2    50   Input ~ 0
+5V
Text GLabel 3450 6250 2    50   Input ~ 0
+5V
$EndSCHEMATC
