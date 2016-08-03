EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CONN_02X25 P10
U 1 1 56E3FABF
P 7550 2350
F 0 "P10" H 7550 3650 50  0000 C CNN
F 1 "CONN_02X25" V 7550 2350 50  0000 C CNN
F 2 "Connect:IDC_Header_Straight_50pins" H 7550 1000 50  0000 C CNN
F 3 "" H 7550 1600 50  0000 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P1
U 1 1 56E4070C
P 2200 1400
F 0 "P1" H 2200 1750 50  0000 C CNN
F 1 "CONN_01X06" V 2300 1400 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-6pol" H 2200 1850 50  0000 C CNN
F 3 "" H 2200 1400 50  0000 C CNN
	1    2200 1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 56E407BC
P 2200 2400
F 0 "P2" H 2200 2750 50  0000 C CNN
F 1 "CONN_01X06" V 2300 2400 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-6pol" H 2200 2850 50  0000 C CNN
F 3 "" H 2200 2400 50  0000 C CNN
	1    2200 2400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X06 P3
U 1 1 56E40822
P 2200 3350
F 0 "P3" H 2200 3700 50  0000 C CNN
F 1 "CONN_01X06" V 2300 3350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-6pol" H 2200 3800 50  0000 C CNN
F 3 "" H 2200 3350 50  0000 C CNN
	1    2200 3350
	-1   0    0    1   
$EndComp
Text GLabel 2400 1650 2    60   Input ~ 0
STEP_X
Text GLabel 2400 1450 2    60   Input ~ 0
DIR_X
Text GLabel 2400 1250 2    60   Input ~ 0
ENA_X
$Comp
L GND #PWR01
U 1 1 56E40B82
P 2950 1550
F 0 "#PWR01" H 2950 1300 50  0001 C CNN
F 1 "GND" H 2950 1400 50  0000 C CNN
F 2 "" H 2950 1550 50  0000 C CNN
F 3 "" H 2950 1550 50  0000 C CNN
	1    2950 1550
	1    0    0    -1  
$EndComp
Text GLabel 2400 2650 2    60   Input ~ 0
STEP_Y
Text GLabel 2400 2450 2    60   Input ~ 0
DIR_Y
Text GLabel 2400 2250 2    60   Input ~ 0
ENA_Y
$Comp
L GND #PWR02
U 1 1 56E40D9A
P 2950 2550
F 0 "#PWR02" H 2950 2300 50  0001 C CNN
F 1 "GND" H 2950 2400 50  0000 C CNN
F 2 "" H 2950 2550 50  0000 C CNN
F 3 "" H 2950 2550 50  0000 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
Text GLabel 2400 3600 2    60   Input ~ 0
STEP_Z
Text GLabel 2400 3400 2    60   Input ~ 0
DIR_Z
Text GLabel 2400 3200 2    60   Input ~ 0
ENA_Z
$Comp
L GND #PWR03
U 1 1 56E4193B
P 8050 3550
F 0 "#PWR03" H 8050 3300 50  0001 C CNN
F 1 "GND" H 8050 3400 50  0000 C CNN
F 2 "" H 8050 3550 50  0000 C CNN
F 3 "" H 8050 3550 50  0000 C CNN
	1    8050 3550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 56E41BFD
P 2950 3500
F 0 "#PWR04" H 2950 3250 50  0001 C CNN
F 1 "GND" H 2950 3350 50  0000 C CNN
F 2 "" H 2950 3500 50  0000 C CNN
F 3 "" H 2950 3500 50  0000 C CNN
	1    2950 3500
	1    0    0    -1  
$EndComp
Text GLabel 7300 3550 0    60   Input ~ 0
PWR
Text GLabel 7300 1150 0    60   Input ~ 0
STEP_X
Text GLabel 7300 1250 0    60   Input ~ 0
DIR_X
Text GLabel 7300 1450 0    60   Input ~ 0
HOME_X
Text GLabel 7300 1350 0    60   Input ~ 0
ENA_X
Wire Wire Line
	2400 1150 2800 1150
Wire Wire Line
	2800 1150 2800 1550
Wire Wire Line
	2800 1350 2400 1350
Wire Wire Line
	2400 1550 2950 1550
Connection ~ 2800 1350
Connection ~ 2800 1550
Wire Wire Line
	2400 2150 2800 2150
Wire Wire Line
	2800 2150 2800 2550
Wire Wire Line
	2800 2350 2400 2350
Wire Wire Line
	2400 2550 2950 2550
Connection ~ 2800 2350
Connection ~ 2800 2550
Wire Wire Line
	7800 1150 7800 3550
Connection ~ 7800 1250
Connection ~ 7800 1350
Connection ~ 7800 1450
Connection ~ 7800 1550
Connection ~ 7800 1650
Connection ~ 7800 1750
Connection ~ 7800 1850
Connection ~ 7800 1950
Connection ~ 7800 2050
Connection ~ 7800 2150
Connection ~ 7800 2250
Connection ~ 7800 2350
Connection ~ 7800 2450
Connection ~ 7800 2550
Connection ~ 7800 2650
Connection ~ 7800 2750
Connection ~ 7800 2850
Connection ~ 7800 2950
Connection ~ 7800 3050
Connection ~ 7800 3150
Connection ~ 7800 3250
Connection ~ 7800 3350
Connection ~ 7800 3450
Wire Wire Line
	7800 3550 8050 3550
Wire Wire Line
	2400 3100 2800 3100
Wire Wire Line
	2800 3100 2800 3500
Wire Wire Line
	2800 3300 2400 3300
Wire Wire Line
	2400 3500 2950 3500
Connection ~ 2800 3300
Connection ~ 2800 3500
Text GLabel 7300 1750 0    60   Input ~ 0
STEP_Y
Text GLabel 7300 1850 0    60   Input ~ 0
DIR_Y
Text GLabel 7300 2050 0    60   Input ~ 0
HOME_Y
Text GLabel 7300 1950 0    60   Input ~ 0
ENA_Y
Text GLabel 7300 2350 0    60   Input ~ 0
STEP_Z
Text GLabel 7300 2450 0    60   Input ~ 0
DIR_Z
Text GLabel 7300 2650 0    60   Input ~ 0
HOME_Z
Text GLabel 7300 2550 0    60   Input ~ 0
ENA_Z
Text GLabel 7300 3450 0    60   Input ~ 0
ESTOP_IN
Text GLabel 7300 3350 0    60   Input ~ 0
ESTOP_OUT
Text GLabel 7300 3250 0    60   Input ~ 0
PROBE_IN
$Comp
L CONN_01X02 P6
U 1 1 56E42F74
P 3850 1350
F 0 "P6" H 3850 1500 50  0000 C CNN
F 1 "CONN_01X02" V 3950 1350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 3850 1750 50  0000 C CNN
F 3 "" H 3850 1350 50  0000 C CNN
	1    3850 1350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 56E430D9
P 3850 2350
F 0 "P7" H 3850 2500 50  0000 C CNN
F 1 "CONN_01X02" V 3950 2350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 3850 2750 50  0000 C CNN
F 3 "" H 3850 2350 50  0000 C CNN
	1    3850 2350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 56E43119
P 3850 3300
F 0 "P8" H 3850 3450 50  0000 C CNN
F 1 "CONN_01X02" V 3950 3300 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 3850 3700 50  0000 C CNN
F 3 "" H 3850 3300 50  0000 C CNN
	1    3850 3300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 56E434A2
P 4050 1400
F 0 "#PWR05" H 4050 1150 50  0001 C CNN
F 1 "GND" H 4050 1250 50  0000 C CNN
F 2 "" H 4050 1400 50  0000 C CNN
F 3 "" H 4050 1400 50  0000 C CNN
	1    4050 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56E434C4
P 4050 2400
F 0 "#PWR06" H 4050 2150 50  0001 C CNN
F 1 "GND" H 4050 2250 50  0000 C CNN
F 2 "" H 4050 2400 50  0000 C CNN
F 3 "" H 4050 2400 50  0000 C CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56E43605
P 4050 3350
F 0 "#PWR07" H 4050 3100 50  0001 C CNN
F 1 "GND" H 4050 3200 50  0000 C CNN
F 2 "" H 4050 3350 50  0000 C CNN
F 3 "" H 4050 3350 50  0000 C CNN
	1    4050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1300 4350 1300
Wire Wire Line
	4050 2300 4350 2300
Wire Wire Line
	4050 3250 4350 3250
Text GLabel 4350 1300 2    60   Input ~ 0
HOME_X
Text GLabel 4350 2300 2    60   Input ~ 0
HOME_Y
Text GLabel 4350 3250 2    60   Input ~ 0
HOME_Z
$Comp
L CONN_01X02 P4
U 1 1 56E47488
P 2200 4400
F 0 "P4" H 2200 4550 50  0000 C CNN
F 1 "CONN_01X02" V 2300 4400 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 2200 4800 50  0000 C CNN
F 3 "" H 2200 4400 50  0000 C CNN
	1    2200 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 56E476EF
P 2400 4450
F 0 "#PWR08" H 2400 4200 50  0001 C CNN
F 1 "GND" H 2400 4300 50  0000 C CNN
F 2 "" H 2400 4450 50  0000 C CNN
F 3 "" H 2400 4450 50  0000 C CNN
	1    2400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4350 2850 4350
Text GLabel 2850 4350 2    60   Input ~ 0
ESTOP_IN
$Comp
L CONN_01X02 P9
U 1 1 56E48B1D
P 4350 4400
F 0 "P9" H 4350 4550 50  0000 C CNN
F 1 "CONN_01X02" V 4450 4400 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 4350 4800 50  0000 C CNN
F 3 "" H 4350 4400 50  0000 C CNN
	1    4350 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 56E48B88
P 4550 4450
F 0 "#PWR09" H 4550 4200 50  0001 C CNN
F 1 "GND" H 4550 4300 50  0000 C CNN
F 2 "" H 4550 4450 50  0000 C CNN
F 3 "" H 4550 4450 50  0000 C CNN
	1    4550 4450
	1    0    0    -1  
$EndComp
Text GLabel 4550 4350 2    60   Input ~ 0
ESTOP_OUT
$Comp
L CONN_01X02 P5
U 1 1 56E48E12
P 2200 5400
F 0 "P5" H 2200 5550 50  0000 C CNN
F 1 "CONN_01X02" V 2300 5400 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 2200 5800 50  0000 C CNN
F 3 "" H 2200 5400 50  0000 C CNN
	1    2200 5400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 56E48E68
P 2400 5450
F 0 "#PWR010" H 2400 5200 50  0001 C CNN
F 1 "GND" H 2400 5300 50  0000 C CNN
F 2 "" H 2400 5450 50  0000 C CNN
F 3 "" H 2400 5450 50  0000 C CNN
	1    2400 5450
	1    0    0    -1  
$EndComp
Text GLabel 2850 5350 2    60   Input ~ 0
PROBE_IN
Wire Wire Line
	2400 5350 2850 5350
$EndSCHEMATC
