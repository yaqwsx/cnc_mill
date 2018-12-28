EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
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
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microcontrollers
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:STMicroelectronics
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:yaqwsx
LIBS:spindle_h_bridge-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L C C5
U 1 1 591A723C
P 4500 2600
AR Path="/591A5360/591A723C" Ref="C5"  Part="1" 
AR Path="/591ACFDE/591A723C" Ref="C10"  Part="1" 
F 0 "C5" H 4525 2700 50  0000 L CNN
F 1 "1u" H 4525 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4538 2450 50  0001 C CNN
F 3 "" H 4500 2600 50  0001 C CNN
	1    4500 2600
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 591A7243
P 4750 2600
AR Path="/591A5360/591A7243" Ref="C6"  Part="1" 
AR Path="/591ACFDE/591A7243" Ref="C11"  Part="1" 
F 0 "C6" H 4775 2700 50  0000 L CNN
F 1 "100n" H 4775 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4788 2450 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
$Comp
L Q_NIGBT_GCE Q1
U 1 1 591A726F
P 6350 3300
AR Path="/591A5360/591A726F" Ref="Q1"  Part="1" 
AR Path="/591ACFDE/591A726F" Ref="Q3"  Part="1" 
F 0 "Q1" H 6550 3350 50  0000 L CNN
F 1 "IRG4PH40U" H 6550 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-247_Vertical_Neutral123" H 6550 3400 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L Q_NIGBT_GCE Q2
U 1 1 591A7276
P 6350 3900
AR Path="/591A5360/591A7276" Ref="Q2"  Part="1" 
AR Path="/591ACFDE/591A7276" Ref="Q4"  Part="1" 
F 0 "Q2" H 6550 3950 50  0000 L CNN
F 1 "IRG4PH40U" H 6550 3850 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-247_Vertical_Neutral123" H 6550 4000 50  0001 C CNN
F 3 "" H 6350 3900 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 591A727D
P 5800 3300
AR Path="/591A5360/591A727D" Ref="R13"  Part="1" 
AR Path="/591ACFDE/591A727D" Ref="R23"  Part="1" 
F 0 "R13" V 5880 3300 50  0000 C CNN
F 1 "4R7" V 5800 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5730 3300 50  0001 C CNN
F 3 "" H 5800 3300 50  0001 C CNN
	1    5800 3300
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 591A7284
P 5800 3900
AR Path="/591A5360/591A7284" Ref="R14"  Part="1" 
AR Path="/591ACFDE/591A7284" Ref="R24"  Part="1" 
F 0 "R14" V 5880 3900 50  0000 C CNN
F 1 "4R7" V 5800 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5730 3900 50  0001 C CNN
F 3 "" H 5800 3900 50  0001 C CNN
	1    5800 3900
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 591A728B
P 6150 3550
AR Path="/591A5360/591A728B" Ref="R11"  Part="1" 
AR Path="/591ACFDE/591A728B" Ref="R21"  Part="1" 
F 0 "R11" V 6230 3550 50  0000 C CNN
F 1 "10k" V 6150 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6080 3550 50  0001 C CNN
F 3 "" H 6150 3550 50  0001 C CNN
	1    6150 3550
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 591A72B1
P 8100 3250
AR Path="/591A5360/591A72B1" Ref="C9"  Part="1" 
AR Path="/591ACFDE/591A72B1" Ref="C14"  Part="1" 
F 0 "C9" H 8125 3350 50  0000 L CNN
F 1 "100n 400V" H 8125 3150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L10_W6_P7.5" H 8138 3100 50  0001 C CNN
F 3 "" H 8100 3250 50  0001 C CNN
	1    8100 3250
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 591A72B8
P 7250 4050
AR Path="/591A5360/591A72B8" Ref="D2"  Part="1" 
AR Path="/591ACFDE/591A72B8" Ref="D4"  Part="1" 
F 0 "D2" H 7250 4150 50  0000 C CNN
F 1 "STTH15R06" H 7250 3950 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_TO-220_Vertical" H 7250 4050 50  0001 C CNN
F 3 "" H 7250 4050 50  0001 C CNN
	1    7250 4050
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D1
U 1 1 591A72BF
P 7250 3400
AR Path="/591A5360/591A72BF" Ref="D1"  Part="1" 
AR Path="/591ACFDE/591A72BF" Ref="D3"  Part="1" 
F 0 "D1" H 7250 3500 50  0000 C CNN
F 1 "STTH15R06" H 7250 3300 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_TO-220_Vertical" H 7250 3400 50  0001 C CNN
F 3 "" H 7250 3400 50  0001 C CNN
	1    7250 3400
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 591A72D2
P 7550 3550
AR Path="/591A5360/591A72D2" Ref="C7"  Part="1" 
AR Path="/591ACFDE/591A72D2" Ref="C12"  Part="1" 
F 0 "C7" H 7575 3650 50  0000 L CNN
F 1 "100n 400V" H 7575 3450 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W4.5_P5" H 7588 3400 50  0001 C CNN
F 3 "" H 7550 3550 50  0001 C CNN
	1    7550 3550
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 591A72D9
P 7550 3250
AR Path="/591A5360/591A72D9" Ref="R15"  Part="1" 
AR Path="/591ACFDE/591A72D9" Ref="R25"  Part="1" 
F 0 "R15" V 7630 3250 50  0000 C CNN
F 1 "0R5" V 7550 3250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7480 3250 50  0001 C CNN
F 3 "" H 7550 3250 50  0001 C CNN
	1    7550 3250
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 591A72E6
P 7550 4150
AR Path="/591A5360/591A72E6" Ref="C8"  Part="1" 
AR Path="/591ACFDE/591A72E6" Ref="C13"  Part="1" 
F 0 "C8" H 7575 4250 50  0000 L CNN
F 1 "100n 400V" H 7575 4050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W4.5_P5" H 7588 4000 50  0001 C CNN
F 3 "" H 7550 4150 50  0001 C CNN
	1    7550 4150
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 591A72ED
P 7550 3850
AR Path="/591A5360/591A72ED" Ref="R16"  Part="1" 
AR Path="/591ACFDE/591A72ED" Ref="R26"  Part="1" 
F 0 "R16" V 7630 3850 50  0000 C CNN
F 1 "0R5" V 7550 3850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7480 3850 50  0001 C CNN
F 3 "" H 7550 3850 50  0001 C CNN
	1    7550 3850
	1    0    0    -1  
$EndComp
Text HLabel 8200 3700 2    60   Input ~ 0
OUT
$Comp
L R R12
U 1 1 591A7292
P 6150 4100
AR Path="/591A5360/591A7292" Ref="R12"  Part="1" 
AR Path="/591ACFDE/591A7292" Ref="R22"  Part="1" 
F 0 "R12" V 6230 4100 50  0000 C CNN
F 1 "10k" V 6150 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6080 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0001 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 591BD1B5
P 5500 3300
AR Path="/591ACFDE/591BD1B5" Ref="R5"  Part="1" 
AR Path="/591A5360/591BD1B5" Ref="R2"  Part="1" 
F 0 "R2" V 5580 3300 50  0000 C CNN
F 1 "10R" V 5500 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5430 3300 50  0001 C CNN
F 3 "" H 5500 3300 50  0001 C CNN
	1    5500 3300
	0    1    1    0   
$EndComp
$Comp
L D_Zener D13
U 1 1 591BD3A6
P 5950 3550
AR Path="/591ACFDE/591BD3A6" Ref="D13"  Part="1" 
AR Path="/591A5360/591BD3A6" Ref="D8"  Part="1" 
F 0 "D8" H 5950 3650 50  0000 C CNN
F 1 "18V" H 5950 3450 50  0000 C CNN
F 2 "Diodes_SMD:MELF_Standard" H 5950 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0001 C CNN
	1    5950 3550
	0    1    1    0   
$EndComp
$Comp
L BAT42 D11
U 1 1 591BE4B6
P 5500 3550
AR Path="/591ACFDE/591BE4B6" Ref="D11"  Part="1" 
AR Path="/591A5360/591BE4B6" Ref="D6"  Part="1" 
F 0 "D6" H 5500 3650 50  0000 C CNN
F 1 "BAT42" H 5500 3450 50  0000 C CNN
F 2 "Diodes_SMD:SOD-323" H 5500 3375 50  0001 C CNN
F 3 "" H 5500 3550 50  0001 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
$Comp
L D_Zener D9
U 1 1 591BE7EB
P 5950 4100
AR Path="/591A5360/591BE7EB" Ref="D9"  Part="1" 
AR Path="/591ACFDE/591BE7EB" Ref="D14"  Part="1" 
F 0 "D9" H 5950 4200 50  0000 C CNN
F 1 "18V" H 5950 4000 50  0000 C CNN
F 2 "Diodes_SMD:MELF_Standard" H 5950 4100 50  0001 C CNN
F 3 "" H 5950 4100 50  0001 C CNN
	1    5950 4100
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 591BE8FC
P 5500 3900
AR Path="/591A5360/591BE8FC" Ref="R3"  Part="1" 
AR Path="/591ACFDE/591BE8FC" Ref="R6"  Part="1" 
F 0 "R3" V 5580 3900 50  0000 C CNN
F 1 "10R" V 5500 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5430 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0001 C CNN
	1    5500 3900
	0    1    1    0   
$EndComp
$Comp
L BAT42 D7
U 1 1 591BEB50
P 5500 4150
AR Path="/591A5360/591BEB50" Ref="D7"  Part="1" 
AR Path="/591ACFDE/591BEB50" Ref="D12"  Part="1" 
F 0 "D7" H 5500 4250 50  0000 C CNN
F 1 "BAT42" H 5500 4050 50  0000 C CNN
F 2 "Diodes_SMD:SOD-323" H 5500 3975 50  0001 C CNN
F 3 "" H 5500 4150 50  0001 C CNN
	1    5500 4150
	1    0    0    -1  
$EndComp
Connection ~ 6450 3700
Wire Wire Line
	7250 3550 7250 3900
Connection ~ 7250 3700
Wire Wire Line
	7250 4300 7250 4200
Wire Wire Line
	6150 3900 6150 3950
Wire Wire Line
	6150 3300 6150 3400
Connection ~ 6150 3700
Wire Wire Line
	6450 3700 6450 3500
Wire Wire Line
	6450 3000 6450 3100
Wire Wire Line
	5950 4300 7550 4300
Wire Wire Line
	6450 4300 6450 4100
Connection ~ 7250 4300
Wire Wire Line
	6150 4250 6150 4300
Connection ~ 6450 4300
Connection ~ 7550 3700
Wire Wire Line
	5950 3300 5950 3400
Wire Wire Line
	5950 3300 6150 3300
Wire Wire Line
	4950 3700 8200 3700
Wire Wire Line
	5950 3900 5950 3950
Wire Wire Line
	5950 3900 6150 3900
Wire Wire Line
	5650 3900 5650 4150
Wire Wire Line
	5350 3800 5350 4150
Wire Wire Line
	5350 3300 5350 3600
Wire Wire Line
	5650 3300 5650 3550
Wire Wire Line
	5950 4300 5950 4250
Connection ~ 6150 4300
Connection ~ 5950 3700
Wire Wire Line
	4950 3800 5350 3800
Connection ~ 5350 3900
Wire Wire Line
	5350 3600 4950 3600
Connection ~ 5350 3550
$Comp
L FAN7393A U4
U 1 1 591BC51B
P 4550 3650
AR Path="/591ACFDE/591BC51B" Ref="U4"  Part="1" 
AR Path="/591A5360/591BC51B" Ref="U3"  Part="1" 
F 0 "U3" H 4550 3300 60  0000 C CNN
F 1 "FAN7393A" H 4550 4000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4550 3450 60  0001 C CNN
F 3 "" H 4550 3450 60  0001 C CNN
	1    4550 3650
	1    0    0    -1  
$EndComp
Text HLabel 6450 3000 1    60   Input ~ 0
HV
Text HLabel 6450 4300 3    60   Input ~ 0
GND
Text HLabel 4950 3900 3    60   Input ~ 0
GND
Wire Wire Line
	8100 3400 8100 3700
Connection ~ 8100 3700
Wire Wire Line
	8100 3100 8100 2750
Wire Wire Line
	8100 2750 5300 2750
Wire Wire Line
	4950 3500 5300 3500
$Comp
L R R4
U 1 1 591C0D09
P 4000 3700
AR Path="/591ACFDE/591C0D09" Ref="R4"  Part="1" 
AR Path="/591A5360/591C0D09" Ref="R1"  Part="1" 
F 0 "R1" V 4080 3700 50  0000 C CNN
F 1 "25k" V 4000 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3930 3700 50  0001 C CNN
F 3 "" H 4000 3700 50  0001 C CNN
	1    4000 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3700 3850 3900
Wire Wire Line
	3850 3900 4150 3900
Wire Wire Line
	4150 3900 4150 3800
Text HLabel 4150 3900 3    60   Input ~ 0
GND
NoConn ~ 4150 3600
Text HLabel 4150 3500 0    60   Input ~ 0
PWM
$Comp
L BAT42 D10
U 1 1 591C1DC1
P 5150 2750
AR Path="/591ACFDE/591C1DC1" Ref="D10"  Part="1" 
AR Path="/591A5360/591C1DC1" Ref="D5"  Part="1" 
F 0 "D5" H 5150 2850 50  0000 C CNN
F 1 "BAT42" H 5150 2650 50  0000 C CNN
F 2 "Diodes_SMD:SOD-323" H 5150 2575 50  0001 C CNN
F 3 "" H 5150 2750 50  0001 C CNN
	1    5150 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2750 5000 2750
Wire Wire Line
	4250 2450 4750 2450
Connection ~ 4500 2450
Text HLabel 4250 2450 0    60   Input ~ 0
GND
Connection ~ 4500 2750
Text HLabel 4250 2750 0    60   Input ~ 0
VCC
Wire Wire Line
	7250 3250 7250 3000
Wire Wire Line
	6450 3000 7550 3000
Wire Wire Line
	7550 3000 7550 3100
Connection ~ 7250 3000
Wire Wire Line
	4950 3400 5000 3400
Wire Wire Line
	5000 3400 5000 2750
Wire Wire Line
	5300 3500 5300 2750
Connection ~ 4750 2750
$EndSCHEMATC
