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
LIBS:yaqwsx
LIBS:stepper_breakout-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
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
L Constant_Current U1
U 1 1 5815D805
P 5250 3300
AR Path="/58164368/5815D805" Ref="U1"  Part="1" 
AR Path="/5816543B/5815D805" Ref="U2"  Part="1" 
AR Path="/58169975/5815D805" Ref="U3"  Part="1" 
AR Path="/58169F0D/5815D805" Ref="U4"  Part="1" 
AR Path="/5816B53A/5815D805" Ref="U5"  Part="1" 
AR Path="/5816C16F/5815D805" Ref="U6"  Part="1" 
AR Path="/5816D689/5815D805" Ref="U7"  Part="1" 
AR Path="/5816F537/5815D805" Ref="U8"  Part="1" 
F 0 "U6" H 5250 3150 60  0000 C CNN
F 1 "NSI45030" H 5250 3450 60  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 5250 3300 60  0001 C CNN
F 3 "" H 5250 3300 60  0001 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR017
U 1 1 5815D80C
P 4800 3150
AR Path="/58164368/5815D80C" Ref="#PWR017"  Part="1" 
AR Path="/5816543B/5815D80C" Ref="#PWR019"  Part="1" 
AR Path="/58169975/5815D80C" Ref="#PWR021"  Part="1" 
AR Path="/58169F0D/5815D80C" Ref="#PWR023"  Part="1" 
AR Path="/5816B53A/5815D80C" Ref="#PWR025"  Part="1" 
AR Path="/5816C16F/5815D80C" Ref="#PWR027"  Part="1" 
AR Path="/5816D689/5815D80C" Ref="#PWR029"  Part="1" 
AR Path="/5816F537/5815D80C" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4800 3000 50  0001 C CNN
F 1 "+12V" H 4800 3290 50  0000 C CNN
F 2 "" H 4800 3150 50  0000 C CNN
F 3 "" H 4800 3150 50  0000 C CNN
	1    4800 3150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5815D815
P 7300 3300
AR Path="/58164368/5815D815" Ref="R4"  Part="1" 
AR Path="/5816543B/5815D815" Ref="R6"  Part="1" 
AR Path="/58169975/5815D815" Ref="R8"  Part="1" 
AR Path="/58169F0D/5815D815" Ref="R10"  Part="1" 
AR Path="/5816B53A/5815D815" Ref="R12"  Part="1" 
AR Path="/5816C16F/5815D815" Ref="R14"  Part="1" 
AR Path="/5816D689/5815D815" Ref="R16"  Part="1" 
AR Path="/5816F537/5815D815" Ref="R18"  Part="1" 
F 0 "R14" V 7380 3300 50  0000 C CNN
F 1 "220R" V 7300 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7230 3300 50  0001 C CNN
F 3 "" H 7300 3300 50  0000 C CNN
	1    7300 3300
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5815D81C
P 7100 3550
AR Path="/58164368/5815D81C" Ref="R3"  Part="1" 
AR Path="/5816543B/5815D81C" Ref="R5"  Part="1" 
AR Path="/58169975/5815D81C" Ref="R7"  Part="1" 
AR Path="/58169F0D/5815D81C" Ref="R9"  Part="1" 
AR Path="/5816B53A/5815D81C" Ref="R11"  Part="1" 
AR Path="/5816C16F/5815D81C" Ref="R13"  Part="1" 
AR Path="/5816D689/5815D81C" Ref="R15"  Part="1" 
AR Path="/5816F537/5815D81C" Ref="R17"  Part="1" 
F 0 "R13" V 7180 3550 50  0000 C CNN
F 1 "1k" V 7100 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7030 3550 50  0001 C CNN
F 3 "" H 7100 3550 50  0000 C CNN
	1    7100 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5815D825
P 7600 3300
AR Path="/58164368/5815D825" Ref="#PWR018"  Part="1" 
AR Path="/5816543B/5815D825" Ref="#PWR020"  Part="1" 
AR Path="/58169975/5815D825" Ref="#PWR022"  Part="1" 
AR Path="/58169F0D/5815D825" Ref="#PWR024"  Part="1" 
AR Path="/5816B53A/5815D825" Ref="#PWR026"  Part="1" 
AR Path="/5816C16F/5815D825" Ref="#PWR028"  Part="1" 
AR Path="/5816D689/5815D825" Ref="#PWR030"  Part="1" 
AR Path="/5816F537/5815D825" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 7600 3050 50  0001 C CNN
F 1 "GND" H 7600 3150 50  0000 C CNN
F 2 "" H 7600 3300 50  0000 C CNN
F 3 "" H 7600 3300 50  0000 C CNN
	1    7600 3300
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D3
U 1 1 5815DB02
P 7300 3050
AR Path="/58164368/5815DB02" Ref="D3"  Part="1" 
AR Path="/5816543B/5815DB02" Ref="D4"  Part="1" 
AR Path="/58169975/5815DB02" Ref="D5"  Part="1" 
AR Path="/58169F0D/5815DB02" Ref="D6"  Part="1" 
AR Path="/5816B53A/5815DB02" Ref="D7"  Part="1" 
AR Path="/5816C16F/5815DB02" Ref="D8"  Part="1" 
AR Path="/5816D689/5815DB02" Ref="D9"  Part="1" 
AR Path="/5816F537/5815DB02" Ref="D10"  Part="1" 
F 0 "D8" H 7300 3150 50  0000 C CNN
F 1 "4.9V" H 7300 2950 50  0000 C CNN
F 2 "Diodes_SMD:MELF_Standard" H 7300 3050 50  0001 C CNN
F 3 "" H 7300 3050 50  0000 C CNN
	1    7300 3050
	1    0    0    -1  
$EndComp
Text HLabel 7100 3800 3    60   Output ~ 0
OUTPUT
Text HLabel 5650 3300 2    60   Input ~ 0
SWITCH_A
Text HLabel 6800 3300 0    60   Input ~ 0
SWITCH_B
Wire Wire Line
	4800 3150 4800 3300
Wire Wire Line
	4800 3300 4900 3300
Wire Wire Line
	6800 3300 7150 3300
Wire Wire Line
	7450 3300 7600 3300
Wire Wire Line
	7100 3700 7100 3800
Wire Wire Line
	7100 3050 7100 3400
Connection ~ 7100 3300
Wire Wire Line
	7500 3050 7500 3300
Connection ~ 7500 3300
Wire Wire Line
	5650 3300 5600 3300
$EndSCHEMATC
