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
Sheet 3 16
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch_DPST SW1
U 1 1 57A72DD4
P 1350 1650
F 0 "SW1" H 1650 1700 50  0000 C CNN
F 1 "Switch_DPST" H 1650 1600 50  0001 C CNN
F 2 "" H 1350 1650 50  0000 C CNN
F 3 "" H 1350 1650 50  0000 C CNN
	1    1350 1650
	1    0    0    -1  
$EndComp
$Comp
L Diode_Bridge D3
U 1 1 57A72E68
P 7100 4350
F 0 "D3" H 6850 4650 50  0000 C CNN
F 1 "Diode_Bridge" H 7450 4000 50  0001 C CNN
F 2 "" H 7100 4350 50  0000 C CNN
F 3 "" H 7100 4350 50  0000 C CNN
	1    7100 4350
	1    0    0    -1  
$EndComp
$Comp
L Switch_DPST SW2
U 1 1 57A72EB2
P 1350 1650
F 0 "SW2" H 1650 1700 50  0000 C CNN
F 1 "Switch_DPST" H 1650 1600 50  0001 C CNN
F 2 "" H 1350 1650 50  0000 C CNN
F 3 "" H 1350 1650 50  0000 C CNN
	1    1350 1650
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 57A72EBB
P 2150 1650
F 0 "D1" H 2150 1750 50  0000 C CNN
F 1 "LED" H 2150 1550 50  0001 C CNN
F 2 "" H 2150 1650 50  0000 C CNN
F 3 "" H 2150 1650 50  0000 C CNN
	1    2150 1650
	0    -1   -1   0   
$EndComp
$Comp
L FUSE F1
U 1 1 57A72EC4
P 1900 1450
F 0 "F1" H 2000 1500 50  0000 C CNN
F 1 "FUSE" H 1800 1400 50  0001 C CNN
F 2 "" H 1900 1450 50  0000 C CNN
F 3 "" H 1900 1450 50  0000 C CNN
	1    1900 1450
	1    0    0    -1  
$EndComp
$Comp
L FUSE F2
U 1 1 57A72ECB
P 1900 1850
F 0 "F2" H 2000 1900 50  0000 C CNN
F 1 "FUSE" H 1800 1800 50  0001 C CNN
F 2 "" H 1900 1850 50  0000 C CNN
F 3 "" H 1900 1850 50  0000 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
$Comp
L TR1-SO8 T3
U 1 1 57A72ED9
P 6300 2500
F 0 "T3" H 6300 2750 50  0000 C CNN
F 1 "TR1-SO8" H 6300 2200 50  0001 C CNN
F 2 "" H 6300 2500 50  0000 C CNN
F 3 "" H 6300 2500 50  0000 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
$Comp
L Diode_Bridge D2
U 1 1 57A72EE0
P 7100 2500
F 0 "D2" H 6850 2800 50  0000 C CNN
F 1 "Diode_Bridge" H 7450 2150 50  0001 C CNN
F 2 "" H 7100 2500 50  0000 C CNN
F 3 "" H 7100 2500 50  0000 C CNN
	1    7100 2500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57A72EE7
P 7900 2500
F 0 "R1" V 7980 2500 50  0000 C CNN
F 1 "R" V 7900 2500 50  0000 C CNN
F 2 "" V 7830 2500 50  0000 C CNN
F 3 "" H 7900 2500 50  0000 C CNN
	1    7900 2500
	0    1    1    0   
$EndComp
$Comp
L FINDER-36.11-4301 RL3
U 1 1 57A72EEE
P 7950 1950
F 0 "RL3" H 8400 2100 50  0000 L CNN
F 1 "FINDER-36.11-4301" H 8400 2000 50  0001 L CNN
F 2 "" H 7950 1950 50  0000 C CNN
F 3 "" H 7950 1950 50  0000 C CNN
	1    7950 1950
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 57A72EF5
P 8250 2750
F 0 "C3" H 8275 2850 50  0000 L CNN
F 1 "C" H 8275 2650 50  0000 L CNN
F 2 "" H 8288 2600 50  0000 C CNN
F 3 "" H 8250 2750 50  0000 C CNN
	1    8250 2750
	1    0    0    -1  
$EndComp
$Comp
L AZ850P1-x RL2
U 1 1 57A72F1B
P 5600 3850
F 0 "RL2" H 6450 4000 50  0000 L CNN
F 1 "AZ850P1-x" H 6450 3900 50  0001 L CNN
F 2 "" H 5600 3850 50  0000 C CNN
F 3 "" H 5600 3850 50  0000 C CNN
	1    5600 3850
	0    1    1    0   
$EndComp
$Comp
L TR1-SO8 T1
U 1 1 57A72F22
P 6200 4350
F 0 "T1" H 6200 4600 50  0000 C CNN
F 1 "TR1-SO8" H 6200 4050 50  0001 C CNN
F 2 "" H 6200 4350 50  0000 C CNN
F 3 "" H 6200 4350 50  0000 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode_Bridge D4
U 1 1 57A72F29
P 7100 4350
F 0 "D4" H 6850 4650 50  0000 C CNN
F 1 "Diode_Bridge" H 7450 4000 50  0001 C CNN
F 2 "" H 7100 4350 50  0000 C CNN
F 3 "" H 7100 4350 50  0000 C CNN
	1    7100 4350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57A72F37
P 8200 4600
F 0 "C1" H 8225 4700 50  0000 L CNN
F 1 "C" H 8225 4500 50  0000 L CNN
F 2 "" H 8238 4450 50  0000 C CNN
F 3 "" H 8200 4600 50  0000 C CNN
	1    8200 4600
	1    0    0    -1  
$EndComp
$Comp
L FUSE F3
U 1 1 57A72F40
P 4850 2200
F 0 "F3" H 4950 2250 50  0000 C CNN
F 1 "FUSE" H 4750 2150 50  0001 C CNN
F 2 "" H 4850 2200 50  0000 C CNN
F 3 "" H 4850 2200 50  0000 C CNN
	1    4850 2200
	1    0    0    -1  
$EndComp
$Comp
L FUSE F5
U 1 1 57A72F47
P 4850 4050
F 0 "F5" H 4950 4100 50  0000 C CNN
F 1 "FUSE" H 4750 4000 50  0001 C CNN
F 2 "" H 4850 4050 50  0000 C CNN
F 3 "" H 4850 4050 50  0000 C CNN
	1    4850 4050
	1    0    0    -1  
$EndComp
$Comp
L FUSE F6
U 1 1 57A72F4E
P 4850 4450
F 0 "F6" H 4950 4500 50  0000 C CNN
F 1 "FUSE" H 4750 4400 50  0001 C CNN
F 2 "" H 4850 4450 50  0000 C CNN
F 3 "" H 4850 4450 50  0000 C CNN
	1    4850 4450
	1    0    0    -1  
$EndComp
$Comp
L FUSE F4
U 1 1 57A72F55
P 4850 2600
F 0 "F4" H 4950 2650 50  0000 C CNN
F 1 "FUSE" H 4750 2550 50  0001 C CNN
F 2 "" H 4850 2600 50  0000 C CNN
F 3 "" H 4850 2600 50  0000 C CNN
	1    4850 2600
	1    0    0    -1  
$EndComp
$Comp
L TR1-SO8 T2
U 1 1 57A73CF0
P 6200 5700
F 0 "T2" H 6200 5950 50  0000 C CNN
F 1 "TR1-SO8" H 6200 5400 50  0001 C CNN
F 2 "" H 6200 5700 50  0000 C CNN
F 3 "" H 6200 5700 50  0000 C CNN
	1    6200 5700
	1    0    0    -1  
$EndComp
$Comp
L Diode_Bridge D5
U 1 1 57A73CF6
P 7100 5700
F 0 "D5" H 6850 6000 50  0000 C CNN
F 1 "Diode_Bridge" H 7450 5350 50  0001 C CNN
F 2 "" H 7100 5700 50  0000 C CNN
F 3 "" H 7100 5700 50  0000 C CNN
	1    7100 5700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57A73D03
P 8200 5950
F 0 "C2" H 8225 6050 50  0000 L CNN
F 1 "C" H 8225 5850 50  0000 L CNN
F 2 "" H 8238 5800 50  0000 C CNN
F 3 "" H 8200 5950 50  0000 C CNN
	1    8200 5950
	1    0    0    -1  
$EndComp
$Comp
L FUSE F7
U 1 1 57A73D0B
P 4850 5500
F 0 "F7" H 4950 5550 50  0000 C CNN
F 1 "FUSE" H 4750 5450 50  0001 C CNN
F 2 "" H 4850 5500 50  0000 C CNN
F 3 "" H 4850 5500 50  0000 C CNN
	1    4850 5500
	1    0    0    -1  
$EndComp
$Comp
L FUSE F8
U 1 1 57A73D11
P 4850 5900
F 0 "F8" H 4950 5950 50  0000 C CNN
F 1 "FUSE" H 4750 5850 50  0001 C CNN
F 2 "" H 4850 5900 50  0000 C CNN
F 3 "" H 4850 5900 50  0000 C CNN
	1    4850 5900
	1    0    0    -1  
$EndComp
Text Notes 9900 4300 0    60   ~ 0
48V @ 20A
Text Notes 9900 5650 0    60   ~ 0
24V @ 1 A
$Comp
L R R2
U 1 1 57A72E37
P 9450 2750
F 0 "R2" V 9530 2750 50  0000 C CNN
F 1 "R" V 9450 2750 50  0000 C CNN
F 2 "" V 9380 2750 50  0000 C CNN
F 3 "" H 9450 2750 50  0000 C CNN
	1    9450 2750
	1    0    0    -1  
$EndComp
Text Notes 10000 2450 0    60   ~ 0
320V @ 4A
$Comp
L FINDER-36.11.4001 RL4
U 1 1 57A75F7E
P 8950 1950
F 0 "RL4" H 9400 2100 50  0000 L CNN
F 1 "FINDER-36.11.4001" H 9400 2000 50  0001 L CNN
F 2 "" H 8950 1950 50  0000 C CNN
F 3 "" H 8950 1950 50  0000 C CNN
	1    8950 1950
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 57A848C7
P 9450 3750
F 0 "C4" H 9475 3850 50  0000 L CNN
F 1 "C" H 9475 3650 50  0000 L CNN
F 2 "" H 9488 3600 50  0000 C CNN
F 3 "" H 9450 3750 50  0000 C CNN
	1    9450 3750
	1    0    0    -1  
$EndComp
$Comp
L TR1-SO8 T4
U 1 1 57A85A3C
P 7650 3400
F 0 "T4" H 7650 3650 50  0000 C CNN
F 1 "TR1-SO8" H 7650 3100 50  0001 C CNN
F 2 "" H 7650 3400 50  0000 C CNN
F 3 "" H 7650 3400 50  0000 C CNN
	1    7650 3400
	1    0    0    -1  
$EndComp
Text Notes 9950 4000 0    61   ~ 0
15V @ 100mA
$Comp
L Diode_Bridge D6
U 1 1 57A8482D
P 8800 3600
F 0 "D6" H 8550 3900 50  0000 C CNN
F 1 "Diode_Bridge" H 9150 3250 50  0001 C CNN
F 2 "" H 8800 3600 50  0000 C CNN
F 3 "" H 8800 3600 50  0000 C CNN
	1    8800 3600
	-1   0    0    1   
$EndComp
Text HLabel 1050 1450 0    61   Input ~ 0
AC_IN1
Text HLabel 1050 1850 0    61   Input ~ 0
AC_IN2
Text HLabel 2450 2250 3    61   Output ~ 0
PC_PWR1
Text HLabel 2600 2250 3    61   Output ~ 0
PC_PWR2
Text HLabel 9900 5700 2    61   Output ~ 0
24V
$Comp
L AZ850P1-x RL?
U 1 1 57A93630
P 3650 1250
F 0 "RL?" H 4500 1400 50  0000 L CNN
F 1 "AZ850P1-x" H 4500 1300 50  0001 L CNN
F 2 "" H 3650 1250 50  0000 C CNN
F 3 "" H 3650 1250 50  0000 C CNN
	1    3650 1250
	0    1    1    0   
$EndComp
Connection ~ 2600 1450
Wire Wire Line
	2600 2250 2600 1450
Connection ~ 9450 4050
Wire Wire Line
	9950 4050 9450 4050
Wire Wire Line
	9450 3600 9200 3600
Wire Wire Line
	9450 4100 9450 3900
Wire Wire Line
	9450 2900 9450 3600
Wire Wire Line
	8400 4100 9450 4100
Wire Wire Line
	8400 3600 8400 4100
Wire Wire Line
	7950 4000 8800 4000
Wire Wire Line
	7950 3600 7950 4000
Wire Wire Line
	7950 3200 8800 3200
Wire Wire Line
	7350 3300 7350 3600
Wire Wire Line
	5800 3300 7350 3300
Wire Wire Line
	6000 3200 7350 3200
Wire Wire Line
	6600 2100 7100 2100
Wire Wire Line
	6600 2300 6600 2100
Wire Wire Line
	6000 2700 6000 3200
Connection ~ 5800 2300
Wire Wire Line
	5800 2300 5800 3300
Wire Wire Line
	5700 2700 6000 2700
Wire Wire Line
	5700 2300 6000 2300
Wire Wire Line
	6600 2900 7100 2900
Wire Wire Line
	6600 2700 6600 2900
Wire Wire Line
	9450 2050 9250 2050
Wire Wire Line
	9450 2600 9450 2050
Connection ~ 9450 3000
Wire Wire Line
	2900 5900 4600 5900
Wire Wire Line
	5100 5900 5900 5900
Wire Wire Line
	3050 5500 4600 5500
Wire Wire Line
	5100 5500 5900 5500
Connection ~ 8200 6200
Connection ~ 8200 5700
Wire Wire Line
	8200 6200 8200 6100
Wire Wire Line
	8200 5700 8200 5800
Wire Wire Line
	7500 5700 9900 5700
Wire Wire Line
	6700 6200 9950 6200
Wire Wire Line
	6700 5700 6700 6200
Wire Wire Line
	6500 6100 6500 5900
Wire Wire Line
	7100 6100 6500 6100
Wire Wire Line
	6500 5300 7100 5300
Wire Wire Line
	6500 5500 6500 5300
Wire Wire Line
	5300 4450 5100 4450
Wire Wire Line
	5300 4050 5100 4050
Connection ~ 8200 4850
Connection ~ 8200 4350
Wire Wire Line
	8200 4850 8200 4750
Wire Wire Line
	8200 4350 8200 4450
Wire Wire Line
	7500 4350 9900 4350
Wire Wire Line
	6700 4850 9950 4850
Wire Wire Line
	6700 4350 6700 4850
Wire Wire Line
	6500 4750 6500 4550
Wire Wire Line
	7100 4750 6500 4750
Wire Wire Line
	6500 3950 7100 3950
Wire Wire Line
	6500 4150 6500 3950
Wire Wire Line
	8250 1750 8650 1750
Connection ~ 8650 2500
Wire Wire Line
	8650 2150 8650 2500
Connection ~ 8250 3000
Wire Wire Line
	8250 3000 8250 2900
Connection ~ 8250 2500
Wire Wire Line
	8050 2500 10000 2500
Wire Wire Line
	8250 2250 8250 2600
Connection ~ 7600 2500
Wire Wire Line
	7650 2500 7600 2500
Wire Wire Line
	7650 2150 7650 2500
Wire Wire Line
	7500 2500 7750 2500
Wire Wire Line
	6700 3000 10000 3000
Wire Wire Line
	6700 2500 6700 3000
Connection ~ 2450 1850
Wire Wire Line
	2450 1850 2450 2250
Wire Wire Line
	2150 1450 3350 1450
Wire Wire Line
	2150 1850 3350 1850
Wire Wire Line
	2900 5900 2900 1850
Connection ~ 2900 1850
Wire Wire Line
	3050 5500 3050 1450
Connection ~ 3050 1450
Text HLabel 3350 1050 0    61   UnSpc ~ 0
GND_24V
Text HLabel 3950 1050 2    61   UnSpc ~ 0
ESTOP_HARD
$Comp
L AZ850P1-x RL1
U 1 1 57A72ED2
P 5400 2000
F 0 "RL1" H 6250 2150 50  0000 L CNN
F 1 "AZ850P1-x" H 6250 2050 50  0001 L CNN
F 2 "" H 5400 2000 50  0000 C CNN
F 3 "" H 5400 2000 50  0000 C CNN
	1    5400 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 1550 4300 1550
Wire Wire Line
	3950 1950 3950 4450
Wire Wire Line
	3950 4450 4600 4450
Wire Wire Line
	4600 2600 3950 2600
Connection ~ 3950 2600
Wire Wire Line
	4300 1550 4300 4050
Wire Wire Line
	4300 4050 4600 4050
Wire Wire Line
	4600 2200 4300 2200
Connection ~ 4300 2200
Text HLabel 5100 1800 0    61   UnSpc ~ 0
GND_24V
Text HLabel 5300 3650 0    61   UnSpc ~ 0
GND_24V
Text HLabel 9950 6200 2    61   UnSpc ~ 0
GND_24V
Text HLabel 5700 1800 2    61   Input ~ 0
R_SPINDLE_PWR
Text HLabel 8450 1550 1    61   UnSpc ~ 0
GND_24V
Wire Wire Line
	8450 1550 8450 1750
Connection ~ 8450 1750
Text HLabel 7650 1750 0    61   Input ~ 0
R_SPINDLE_SOFT
Text HLabel 9250 1750 2    61   Input ~ 0
R_SPINDLE_DISCHARGE
Text HLabel 10000 2500 2    61   Output ~ 0
SPINDLE_PWR_HV
Text HLabel 10000 3000 2    61   UnSpc ~ 0
SPINDLE_GND
Text HLabel 9950 4050 2    61   Output ~ 0
SPINDLE_PWR_LV
Text HLabel 5900 3650 2    61   Input ~ 0
R_STEPPER_PWR
Text HLabel 9950 4850 2    61   UnSpc ~ 0
STEPPER_GND
Text HLabel 9900 4350 2    61   Output ~ 0
STEPPER_PWR
$EndSCHEMATC
