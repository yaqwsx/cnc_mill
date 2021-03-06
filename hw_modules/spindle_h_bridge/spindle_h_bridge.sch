EESchema Schematic File Version 4
LIBS:spindle_h_bridge-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
S 5200 2950 1100 300 
U 591A5360
F0 "left-half-bridge" 60
F1 "half-bridge.sch" 60
F2 "OUT" I R 6300 3100 60 
F3 "PWM" I L 5200 3100 60 
F4 "HV" I R 6300 3000 60 
F5 "GND" I R 6300 3200 60 
F6 "VCC" I L 5200 3000 60 
$EndSheet
$Sheet
S 5200 4300 1100 300 
U 591ACFDE
F0 "right-half-bridge" 60
F1 "half-bridge.sch" 60
F2 "OUT" I R 6300 4450 60 
F3 "PWM" I L 5200 4450 60 
F4 "HV" I R 6300 4350 60 
F5 "GND" I R 6300 4550 60 
F6 "VCC" I L 5200 4350 60 
$EndSheet
$Comp
L spindle_h_bridge-rescue:CONN_01X04 J1
U 1 1 591ADA15
P 2300 3900
F 0 "J1" H 2300 4150 50  0000 C CNN
F 1 "SIGNAL" V 2400 3900 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4_1x04_P5.00mm_Horizontal" H 2300 3900 50  0001 C CNN
F 3 "" H 2300 3900 50  0001 C CNN
	1    2300 3900
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 591ADBDE
P 2500 3750
F 0 "#PWR01" H 2500 3600 50  0001 C CNN
F 1 "+5V" H 2500 3890 50  0000 C CNN
F 2 "" H 2500 3750 50  0001 C CNN
F 3 "" H 2500 3750 50  0001 C CNN
	1    2500 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 591ADC30
P 2500 3850
F 0 "#PWR02" H 2500 3600 50  0001 C CNN
F 1 "GNDD" H 2500 3700 50  0000 C CNN
F 2 "" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	1    2500 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 3950 2500 3950
Wire Wire Line
	2500 4050 2650 4050
$Comp
L spindle_h_bridge-rescue:C C1
U 1 1 591AEE7E
P 3300 3450
F 0 "C1" H 3325 3550 50  0000 L CNN
F 1 "2u2" H 3325 3350 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3338 3300 50  0001 C CNN
F 3 "" H 3300 3450 50  0001 C CNN
	1    3300 3450
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:CONN_01X02 J2
U 1 1 591AFA24
P 6950 3800
F 0 "J2" H 6950 3950 50  0000 C CNN
F 1 "MOTOR" V 7050 3800 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 6950 3800 50  0001 C CNN
F 3 "" H 6950 3800 50  0001 C CNN
	1    6950 3800
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:CONN_01X02 J3
U 1 1 591B0D1A
P 8200 3500
F 0 "J3" H 8200 3650 50  0000 C CNN
F 1 "POWER" V 8300 3500 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 8200 3500 50  0001 C CNN
F 3 "" H 8200 3500 50  0001 C CNN
	1    8200 3500
	0    -1   -1   0   
$EndComp
Text Notes 8350 3350 2    60   ~ 0
190VDC
$Comp
L power:VCC #PWR03
U 1 1 591B12F6
P 8250 3900
F 0 "#PWR03" H 8250 3750 50  0001 C CNN
F 1 "VCC" H 8250 4050 50  0000 C CNN
F 2 "" H 8250 3900 50  0001 C CNN
F 3 "" H 8250 3900 50  0001 C CNN
	1    8250 3900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 591B1358
P 8150 3700
F 0 "#PWR04" H 8150 3450 50  0001 C CNN
F 1 "GND" H 8150 3550 50  0000 C CNN
F 2 "" H 8150 3700 50  0001 C CNN
F 3 "" H 8150 3700 50  0001 C CNN
	1    8150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3700 8250 3900
$Comp
L spindle_h_bridge-rescue:CP C3
U 1 1 591B35F1
P 8750 3650
F 0 "C3" H 8775 3750 50  0000 L CNN
F 1 "220u 400V" H 8775 3550 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 8788 3500 50  0001 C CNN
F 3 "" H 8750 3650 50  0001 C CNN
	1    8750 3650
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:CP C4
U 1 1 591B371B
P 9400 3650
F 0 "C4" H 9425 3750 50  0000 L CNN
F 1 "10u 400V" H 9425 3550 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 9438 3500 50  0001 C CNN
F 3 "" H 9400 3650 50  0001 C CNN
	1    9400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3500 9100 3500
Wire Wire Line
	8750 3800 9100 3800
$Comp
L power:GND #PWR05
U 1 1 591B389A
P 9100 3800
F 0 "#PWR05" H 9100 3550 50  0001 C CNN
F 1 "GND" H 9100 3650 50  0000 C CNN
F 2 "" H 9100 3800 50  0001 C CNN
F 3 "" H 9100 3800 50  0001 C CNN
	1    9100 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 591B3975
P 9100 3500
F 0 "#PWR06" H 9100 3350 50  0001 C CNN
F 1 "VCC" H 9100 3650 50  0000 C CNN
F 2 "" H 9100 3500 50  0001 C CNN
F 3 "" H 9100 3500 50  0001 C CNN
	1    9100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR07
U 1 1 591C5ECD
P 7750 3700
F 0 "#PWR07" H 7750 3550 50  0001 C CNN
F 1 "+15V" H 7750 3840 50  0000 C CNN
F 2 "" H 7750 3700 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	-1   0    0    1   
$EndComp
$Comp
L spindle_h_bridge-rescue:CONN_01X02 J4
U 1 1 591C5F42
P 7700 3500
F 0 "J4" H 7700 3650 50  0000 C CNN
F 1 "POWER" V 7800 3500 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 3700 7650 3900
$Comp
L power:GND #PWR08
U 1 1 591C6014
P 7650 3900
F 0 "#PWR08" H 7650 3650 50  0001 C CNN
F 1 "GND" H 7650 3750 50  0000 C CNN
F 2 "" H 7650 3900 50  0001 C CNN
F 3 "" H 7650 3900 50  0001 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:CP C19
U 1 1 591C660B
P 10050 3650
F 0 "C19" H 10075 3750 50  0000 L CNN
F 1 "10u" H 10075 3550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 10088 3500 50  0001 C CNN
F 3 "" H 10050 3650 50  0001 C CNN
	1    10050 3650
	1    0    0    -1  
$EndComp
Connection ~ 9400 3800
$Comp
L power:+15V #PWR09
U 1 1 591C6EF0
P 10050 3500
F 0 "#PWR09" H 10050 3350 50  0001 C CNN
F 1 "+15V" H 10050 3640 50  0000 C CNN
F 2 "" H 10050 3500 50  0001 C CNN
F 3 "" H 10050 3500 50  0001 C CNN
	1    10050 3500
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:ADuM1200AR U1
U 1 1 591C79BF
P 4200 3850
F 0 "U1" H 3850 4250 50  0000 L CNN
F 1 "ADuM1200AR" H 4150 4250 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4200 3850 50  0001 C CIN
F 3 "" H 4200 3850 50  0001 C CNN
	1    4200 3850
	1    0    0    -1  
$EndComp
Text GLabel 2650 4050 2    60   Input ~ 0
A
Text GLabel 2800 3950 2    60   Input ~ 0
B
$Comp
L power:GND #PWR010
U 1 1 591C9D66
P 6450 4550
F 0 "#PWR010" H 6450 4300 50  0001 C CNN
F 1 "GND" H 6450 4400 50  0000 C CNN
F 2 "" H 6450 4550 50  0001 C CNN
F 3 "" H 6450 4550 50  0001 C CNN
	1    6450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4550 6450 4550
$Comp
L power:GND #PWR011
U 1 1 591C9EC8
P 6450 3200
F 0 "#PWR011" H 6450 2950 50  0001 C CNN
F 1 "GND" H 6450 3050 50  0000 C CNN
F 2 "" H 6450 3200 50  0001 C CNN
F 3 "" H 6450 3200 50  0001 C CNN
	1    6450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3200 6450 3200
$Comp
L power:GND #PWR012
U 1 1 591CA07A
P 4650 4100
F 0 "#PWR012" H 4650 3850 50  0001 C CNN
F 1 "GND" H 4650 3950 50  0000 C CNN
F 2 "" H 4650 4100 50  0001 C CNN
F 3 "" H 4650 4100 50  0001 C CNN
	1    4650 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR013
U 1 1 591CA247
P 3750 4100
F 0 "#PWR013" H 3750 3850 50  0001 C CNN
F 1 "GNDD" H 3750 3950 50  0000 C CNN
F 2 "" H 3750 4100 50  0001 C CNN
F 3 "" H 3750 4100 50  0001 C CNN
	1    3750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4450 6750 4450
Wire Wire Line
	6750 4450 6750 3850
Wire Wire Line
	6750 3750 6750 3100
Wire Wire Line
	6750 3100 6300 3100
$Comp
L power:VCC #PWR014
U 1 1 591CAA9A
P 6450 3000
F 0 "#PWR014" H 6450 2850 50  0001 C CNN
F 1 "VCC" H 6450 3150 50  0000 C CNN
F 2 "" H 6450 3000 50  0001 C CNN
F 3 "" H 6450 3000 50  0001 C CNN
	1    6450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3000 6300 3000
$Comp
L power:VCC #PWR015
U 1 1 591CABD9
P 6450 4350
F 0 "#PWR015" H 6450 4200 50  0001 C CNN
F 1 "VCC" H 6450 4500 50  0000 C CNN
F 2 "" H 6450 4350 50  0001 C CNN
F 3 "" H 6450 4350 50  0001 C CNN
	1    6450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4350 6300 4350
Wire Wire Line
	4900 4450 5200 4450
Wire Wire Line
	5200 3100 5100 3100
$Comp
L power:+5V #PWR016
U 1 1 591CB608
P 3050 3600
F 0 "#PWR016" H 3050 3450 50  0001 C CNN
F 1 "+5V" H 3050 3740 50  0000 C CNN
F 2 "" H 3050 3600 50  0001 C CNN
F 3 "" H 3050 3600 50  0001 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3600 3300 3600
$Comp
L spindle_h_bridge-rescue:C C15
U 1 1 591CB6AF
P 3550 3450
F 0 "C15" H 3575 3550 50  0000 L CNN
F 1 "100n" H 3575 3350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3588 3300 50  0001 C CNN
F 3 "" H 3550 3450 50  0001 C CNN
	1    3550 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR017
U 1 1 591CB750
P 3550 3300
F 0 "#PWR017" H 3550 3050 50  0001 C CNN
F 1 "GNDD" H 3550 3150 50  0000 C CNN
F 2 "" H 3550 3300 50  0001 C CNN
F 3 "" H 3550 3300 50  0001 C CNN
	1    3550 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 591CC24C
P 4350 2750
F 0 "#PWR018" H 4350 2500 50  0001 C CNN
F 1 "GND" H 4350 2600 50  0000 C CNN
F 2 "" H 4350 2750 50  0001 C CNN
F 3 "" H 4350 2750 50  0001 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:C C18
U 1 1 591CC302
P 4750 3450
F 0 "C18" H 4775 3550 50  0000 L CNN
F 1 "100n" H 4775 3350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4788 3300 50  0001 C CNN
F 3 "" H 4750 3450 50  0001 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 591CC3A5
P 4750 3300
F 0 "#PWR019" H 4750 3050 50  0001 C CNN
F 1 "GND" H 4750 3150 50  0000 C CNN
F 2 "" H 4750 3300 50  0001 C CNN
F 3 "" H 4750 3300 50  0001 C CNN
	1    4750 3300
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR020
U 1 1 591CC6EE
P 3950 2450
F 0 "#PWR020" H 3950 2300 50  0001 C CNN
F 1 "+15V" H 3950 2590 50  0000 C CNN
F 2 "" H 3950 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0001 C CNN
	1    3950 2450
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:C C16
U 1 1 591CCE73
P 3950 2600
F 0 "C16" H 3975 2700 50  0000 L CNN
F 1 "100n" H 3975 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3988 2450 50  0001 C CNN
F 3 "" H 3950 2600 50  0001 C CNN
	1    3950 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 591CCF0B
P 3950 2750
F 0 "#PWR021" H 3950 2500 50  0001 C CNN
F 1 "GND" H 3950 2600 50  0000 C CNN
F 2 "" H 3950 2750 50  0001 C CNN
F 3 "" H 3950 2750 50  0001 C CNN
	1    3950 2750
	1    0    0    -1  
$EndComp
$Comp
L spindle_h_bridge-rescue:C C17
U 1 1 591CCF7C
P 4750 2600
F 0 "C17" H 4775 2700 50  0000 L CNN
F 1 "10u" H 4775 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4788 2450 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 591CD013
P 4750 2750
F 0 "#PWR022" H 4750 2500 50  0001 C CNN
F 1 "GND" H 4750 2600 50  0000 C CNN
F 2 "" H 4750 2750 50  0001 C CNN
F 3 "" H 4750 2750 50  0001 C CNN
	1    4750 2750
	1    0    0    -1  
$EndComp
Text GLabel 3750 3750 0    60   Input ~ 0
A
Text GLabel 3750 3950 0    60   Input ~ 0
B
$Comp
L spindle_h_bridge-rescue:LM1117-5.0 U2
U 1 1 591EBFD3
P 4350 2450
F 0 "U2" H 4450 2200 50  0000 C CNN
F 1 "LM1117-5.0" H 4350 2700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 4350 2450 50  0001 C CNN
F 3 "" H 4350 2450 50  0001 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
Connection ~ 4750 2450
Wire Wire Line
	4050 2450 3950 2450
Connection ~ 9100 3500
Connection ~ 9100 3800
Connection ~ 3550 3600
Connection ~ 4750 3600
Wire Wire Line
	3300 3300 3550 3300
Connection ~ 3300 3600
Wire Wire Line
	4650 3600 4750 3600
Wire Wire Line
	5000 3600 5000 2450
Wire Wire Line
	5000 2450 4750 2450
$Comp
L power:+15V #PWR0101
U 1 1 5924CD4A
P 5150 2850
F 0 "#PWR0101" H 5150 2700 50  0001 C CNN
F 1 "+15V" H 5150 2990 50  0000 C CNN
F 2 "" H 5150 2850 50  0001 C CNN
F 3 "" H 5150 2850 50  0001 C CNN
	1    5150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2850 5150 3000
Wire Wire Line
	5150 3000 5200 3000
$Comp
L power:+15V #PWR0102
U 1 1 5924CE0B
P 5150 4200
F 0 "#PWR0102" H 5150 4050 50  0001 C CNN
F 1 "+15V" H 5150 4340 50  0000 C CNN
F 2 "" H 5150 4200 50  0001 C CNN
F 3 "" H 5150 4200 50  0001 C CNN
	1    5150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4200 5150 4350
Wire Wire Line
	5150 4350 5200 4350
Wire Wire Line
	9400 3800 10050 3800
Wire Wire Line
	4750 2450 4650 2450
Wire Wire Line
	9100 3500 9400 3500
Wire Wire Line
	9100 3800 9400 3800
Wire Wire Line
	3550 3600 3750 3600
Wire Wire Line
	4750 3600 5000 3600
Wire Wire Line
	3300 3600 3550 3600
$Comp
L Mechanical:MountingHole H1
U 1 1 5C2711BD
P 7650 1400
F 0 "H1" H 7750 1446 50  0000 L CNN
F 1 "MountingHole" H 7750 1355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7650 1400 50  0001 C CNN
F 3 "~" H 7650 1400 50  0001 C CNN
	1    7650 1400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C271333
P 7650 1600
F 0 "H2" H 7750 1646 50  0000 L CNN
F 1 "MountingHole" H 7750 1555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7650 1600 50  0001 C CNN
F 3 "~" H 7650 1600 50  0001 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C27136B
P 7650 1800
F 0 "H3" H 7750 1846 50  0000 L CNN
F 1 "MountingHole" H 7750 1755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7650 1800 50  0001 C CNN
F 3 "~" H 7650 1800 50  0001 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C2713A5
P 7650 2000
F 0 "H4" H 7750 2046 50  0000 L CNN
F 1 "MountingHole" H 7750 1955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7650 2000 50  0001 C CNN
F 3 "~" H 7650 2000 50  0001 C CNN
	1    7650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3750 4650 3750
Wire Wire Line
	4900 3750 4900 4450
Wire Wire Line
	5100 3950 4650 3950
Wire Wire Line
	5100 3100 5100 3950
$EndSCHEMATC
