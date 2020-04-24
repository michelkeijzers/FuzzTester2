EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title "Guitar Pedal Effect Fuzz Digitally Controlled"
Date "2020-04-07"
Rev "0.1"
Comp "Michel Keijzers"
Comment1 ""
Comment2 "and 2 sets of 8 capacitors"
Comment3 "Pedal Effect Fuzz based on 2 sets of 20 different transistors"
Comment4 "Main Sheet"
$EndDescr
$Sheet
S 4200 5150 1350 500 
U 5E8D81C7
F0 "PowerRegulator" 50
F1 "PowerRegulator.sch" 50
$EndSheet
$Sheet
S 2250 1000 1150 750 
U 5E983DF3
F0 "CapacitorsA" 50
F1 "Capacitors.sch" 50
F2 "CAPACITOR_SELECTION_0" I L 2250 1200 50 
F3 "CAPACITOR_SELECTION_1" I L 2250 1300 50 
F4 "CAPACITOR_SELECTION_2" I L 2250 1400 50 
F5 "CAPACITOR_AUDIO_INPUT" I L 2250 1550 50 
F6 "CAPACITOR_AUDIO_OUTPUT" I R 3400 1650 50 
$EndSheet
Text Label 2250 1200 2    50   ~ 0
CAPACITOR_A_SELECTION_0
Text Label 2250 1300 2    50   ~ 0
CAPACITOR_A_SELECTION_1
Text Label 2250 1400 2    50   ~ 0
CAPACITOR_A_SELECTION_2
Wire Wire Line
	3400 1650 3650 1650
Text Label 2250 1550 2    50   ~ 0
JACK_IN_SIGNAL_THROUGH_FUZZ
$Comp
L Device:R R2
U 1 1 5EC42733
P 5700 2000
F 0 "R2" V 5600 2000 50  0000 C CNN
F 1 "100K" V 5700 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5630 2000 50  0001 C CNN
F 3 "~" H 5700 2000 50  0001 C CNN
	1    5700 2000
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5EC4B1FB
P 5950 2300
F 0 "J2" H 6058 2481 50  0000 C CNN
F 1 "POT B10K JST XH" H 6058 2390 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 5950 2300 50  0001 C CNN
F 3 "~" H 5950 2300 50  0001 C CNN
	1    5950 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5EC4BC76
P 6700 2300
F 0 "J3" H 6808 2481 50  0000 C CNN
F 1 "POT B5K JST XH" H 6808 2390 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 6700 2300 50  0001 C CNN
F 3 "~" H 6700 2300 50  0001 C CNN
	1    6700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2400 6150 2500
$Comp
L Device:CP1 C1
U 1 1 5F313F3E
P 6900 2550
F 0 "C1" H 7015 2596 50  0000 L CNN
F 1 "22uF" H 7015 2505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6900 2550 50  0001 C CNN
F 3 "~" H 6900 2550 50  0001 C CNN
	1    6900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR01
U 1 1 5F5F5D5D
P 5750 900
F 0 "#PWR01" H 5750 750 50  0001 C CNN
F 1 "+9V" H 5765 1073 50  0000 C CNN
F 2 "" H 5750 900 50  0001 C CNN
F 3 "" H 5750 900 50  0001 C CNN
	1    5750 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F5F6486
P 5750 1150
F 0 "R1" H 5820 1196 50  0000 L CNN
F 1 "100K" H 5820 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5680 1150 50  0001 C CNN
F 3 "~" H 5750 1150 50  0001 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1000 5750 950 
Wire Wire Line
	6900 2000 6900 2300
Wire Wire Line
	6150 2000 6150 2300
Wire Wire Line
	5650 1600 5750 1600
Wire Wire Line
	5750 1600 5750 1300
Wire Wire Line
	3650 1650 4550 1650
Text Label 3450 1200 0    50   ~ 0
TRANSISTOR_B_SELECTION_0
Text Label 3450 1300 0    50   ~ 0
TRANSISTOR_B_SELECTION_1
Text Label 3450 1400 0    50   ~ 0
TRANSISTOR_B_SELECTION_2
Text Label 3450 1500 0    50   ~ 0
TRANSISTOR_B_SELECTION_3
Wire Wire Line
	3450 1200 4550 1200
Wire Wire Line
	3450 1300 4550 1300
Wire Wire Line
	3450 1500 4550 1500
Connection ~ 5750 1600
$Comp
L Device:R R3
U 1 1 5F9EB2AA
P 8350 1250
F 0 "R3" H 8420 1296 50  0000 L CNN
F 1 "10K" H 8400 1200 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8280 1250 50  0001 C CNN
F 3 "~" H 8350 1250 50  0001 C CNN
	1    8350 1250
	1    0    0    -1  
$EndComp
$Sheet
S 9700 1050 1150 750 
U 5F9F739D
F0 "CapacitorsD" 50
F1 "Capacitors.sch" 50
F2 "CAPACITOR_SELECTION_0" I L 9700 1250 50 
F3 "CAPACITOR_SELECTION_1" I L 9700 1350 50 
F4 "CAPACITOR_SELECTION_2" I L 9700 1450 50 
F5 "CAPACITOR_AUDIO_INPUT" I L 9700 1600 50 
F6 "CAPACITOR_AUDIO_OUTPUT" I R 10850 1700 50 
$EndSheet
Text Label 8650 1250 0    50   ~ 0
CAPACITOR_D_SELECTION_0
Text Label 8650 1350 0    50   ~ 0
CAPACITOR_D_SELECTION_1
Text Label 8650 1450 0    50   ~ 0
CAPACITOR_D_SELECTION_2
Wire Wire Line
	9700 1400 9700 1450
Wire Wire Line
	8600 1450 9700 1450
Wire Wire Line
	8600 1250 9700 1250
Wire Wire Line
	8600 1350 9700 1350
Wire Wire Line
	10850 1700 10900 1700
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5FA36DEA
P 11100 2050
F 0 "J4" H 11072 1982 50  0000 R CNN
F 1 "VOL POT A100K JST XH" H 12450 2200 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 11100 2050 50  0001 C CNN
F 3 "~" H 11100 2050 50  0001 C CNN
	1    11100 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 1700 8350 1700
Wire Wire Line
	8350 1700 8350 2000
Wire Wire Line
	3650 1650 3650 2000
Wire Wire Line
	3450 1400 4550 1400
Connection ~ 6150 2000
Wire Wire Line
	6150 2000 6900 2000
Wire Wire Line
	5850 2000 6150 2000
Wire Wire Line
	10900 1700 10900 1950
Wire Wire Line
	8250 1600 8350 1600
Wire Wire Line
	8350 1400 8350 1600
Connection ~ 8350 1600
Text Notes 5750 600  2    50   ~ 10
Fuzz Analog Circuit\n
Text Notes 2550 3150 2    50   ~ 10
Audio In/Out and Bypass\n\n
Text Notes 8750 3600 2    50   ~ 10
Level Shifters\n
Text Notes 5100 4900 2    50   ~ 10
Power Regulator\n
Text Notes 2950 4900 2    50   ~ 10
Micro Controller Unit and User Interface\n
Wire Notes Line
	500  2950 11150 2950
Wire Notes Line
	3900 2950 3900 7750
Wire Notes Line
	6950 6550 3900 6550
Text Notes 5200 6900 2    50   ~ 10
Mounting Holes\n\n
$Comp
L Mechanical:MountingHole H1
U 1 1 5EC15F8D
P 4650 7000
F 0 "H1" H 4750 7046 50  0000 L CNN
F 1 "MountingHole" H 4750 6955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4650 7000 50  0001 C CNN
F 3 "~" H 4650 7000 50  0001 C CNN
	1    4650 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EC16611
P 4650 7200
F 0 "H2" H 4750 7246 50  0000 L CNN
F 1 "MountingHole" H 4750 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4650 7200 50  0001 C CNN
F 3 "~" H 4650 7200 50  0001 C CNN
	1    4650 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EC167A1
P 4650 7400
F 0 "H3" H 4750 7446 50  0000 L CNN
F 1 "MountingHole" H 4750 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4650 7400 50  0001 C CNN
F 3 "~" H 4650 7400 50  0001 C CNN
	1    4650 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 5250 11000 5200
$Sheet
S 1950 3400 1350 850 
U 5EDE1E76
F0 "AudioInOut" 50
F1 "AudioInOut.sch" 50
F2 "BYPASS_MODE" I L 1950 3550 50 
F3 "JACK_IN_SIGNAL_THROUGH_FUZZ" I L 1950 3750 50 
F4 "JACK_OUT_SIGNAL_FROM_FUZZ" I L 1950 3850 50 
F5 "1602_BACK_LIGHT_PIN_1" I L 1950 4000 50 
F6 "1602_BACK_LIGHT_PIN_2" I L 1950 4100 50 
$EndSheet
Text Label 6100 5400 0    50   ~ 0
BYPASS_MODE_3V3
Wire Wire Line
	6100 5400 7200 5400
Text Label 9800 5400 0    50   ~ 0
BYPASS_MODE
Wire Wire Line
	9750 5400 10350 5400
Text Label 1300 3550 0    50   ~ 0
BYPASS_MODE
Wire Wire Line
	1300 3550 1950 3550
Text Label 700  3750 0    50   ~ 0
JACK_IN_SIGNAL_THROUGH_FUZZ
Wire Wire Line
	650  3850 1950 3850
Text Label 9700 2050 0    50   ~ 0
JACK_OUT_SIGNAL_FROM_FUZZ
Text Label 700  3850 0    50   ~ 0
JACK_OUT_SIGNAL_FROM_FUZZ
Wire Wire Line
	9700 2050 10900 2050
$Comp
L Mechanical:MountingHole H4
U 1 1 5EC171E8
P 4650 7600
F 0 "H4" H 4750 7646 50  0000 L CNN
F 1 "MountingHole" H 4750 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4650 7600 50  0001 C CNN
F 3 "~" H 4650 7600 50  0001 C CNN
	1    4650 7600
	1    0    0    -1  
$EndComp
Text Label 1100 5550 0    50   ~ 0
BYPASS_MODE_3V3
Text Label 1250 5650 0    50   ~ 0
1602_BACK_LIGHT_PIN_1
Text Label 1250 5750 0    50   ~ 0
1602_BACK_LIGHT_PIN_2
Wire Wire Line
	1250 5650 2200 5650
Wire Wire Line
	2200 5750 1250 5750
Text Label 1000 4000 0    50   ~ 0
1602_BACK_LIGHT_PIN_1
Text Label 1000 4100 0    50   ~ 0
1602_BACK_LIGHT_PIN_2
Wire Wire Line
	1000 4000 1950 4000
Wire Wire Line
	1950 4100 1000 4100
Wire Wire Line
	650  3750 1950 3750
$Comp
L power:GNDA #PWR03
U 1 1 5EA13AD0
P 6150 2500
F 0 "#PWR03" H 6150 2250 50  0001 C CNN
F 1 "GNDA" H 6155 2327 50  0000 C CNN
F 2 "" H 6150 2500 50  0001 C CNN
F 3 "" H 6150 2500 50  0001 C CNN
	1    6150 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR04
U 1 1 5EA14305
P 6900 2700
F 0 "#PWR04" H 6900 2450 50  0001 C CNN
F 1 "GNDA" H 6905 2527 50  0000 C CNN
F 2 "" H 6900 2700 50  0001 C CNN
F 3 "" H 6900 2700 50  0001 C CNN
	1    6900 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR05
U 1 1 5EA148BB
P 10900 2150
F 0 "#PWR05" H 10900 1900 50  0001 C CNN
F 1 "GNDA" H 10905 1977 50  0000 C CNN
F 2 "" H 10900 2150 50  0001 C CNN
F 3 "" H 10900 2150 50  0001 C CNN
	1    10900 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR02
U 1 1 5EA15848
P 5750 1700
F 0 "#PWR02" H 5750 1450 50  0001 C CNN
F 1 "GNDA" H 5755 1527 50  0000 C CNN
F 2 "" H 5750 1700 50  0001 C CNN
F 3 "" H 5750 1700 50  0001 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
$Sheet
S 7150 1150 1100 650 
U 5ED1AB26
F0 "TransistorsC" 50
F1 "Transistors.sch" 50
F2 "BASE" I L 7150 1700 50 
F3 "EMITTER" I R 8250 1700 50 
F4 "COLLECTOR" I R 8250 1600 50 
F5 "TRANSISTOR_SELECTION_0" I L 7150 1200 50 
F6 "TRANSISTOR_SELECTION_1" I L 7150 1300 50 
F7 "TRANSISTOR_SELECTION_2" I L 7150 1400 50 
F8 "TRANSISTOR_SELECTION_3" I L 7150 1500 50 
$EndSheet
Text Label 6050 1200 0    50   ~ 0
TRANSISTOR_C_SELECTION_0
Text Label 6050 1300 0    50   ~ 0
TRANSISTOR_C_SELECTION_1
Text Label 6050 1400 0    50   ~ 0
TRANSISTOR_C_SELECTION_2
Text Label 6050 1500 0    50   ~ 0
TRANSISTOR_C_SELECTION_3
Wire Wire Line
	6050 1300 7150 1300
Wire Wire Line
	6050 1500 7150 1500
Wire Wire Line
	6050 1400 7150 1400
Connection ~ 5750 950 
Wire Wire Line
	5750 950  5750 900 
Wire Wire Line
	6050 1200 7150 1200
Wire Wire Line
	8350 1600 9700 1600
Connection ~ 6900 2000
Wire Wire Line
	6900 2000 8350 2000
Wire Wire Line
	5950 1600 5950 1700
Wire Wire Line
	8350 950  8350 1100
Wire Wire Line
	5750 1700 5650 1700
Wire Wire Line
	3650 2000 5550 2000
Connection ~ 3650 1650
Wire Wire Line
	1050 1550 2250 1550
Wire Wire Line
	1250 1400 2250 1400
Wire Wire Line
	1250 1300 2250 1300
Wire Wire Line
	1250 1200 2250 1200
$Sheet
S 4550 1150 1100 650 
U 5E9AE796
F0 "TransistorsB" 50
F1 "Transistors.sch" 50
F2 "BASE" I L 4550 1650 50 
F3 "EMITTER" I R 5650 1700 50 
F4 "COLLECTOR" I R 5650 1600 50 
F5 "TRANSISTOR_SELECTION_0" I L 4550 1200 50 
F6 "TRANSISTOR_SELECTION_1" I L 4550 1300 50 
F7 "TRANSISTOR_SELECTION_2" I L 4550 1400 50 
F8 "TRANSISTOR_SELECTION_3" I L 4550 1500 50 
$EndSheet
Wire Wire Line
	5950 1700 7150 1700
Wire Wire Line
	5750 1600 5950 1600
Wire Wire Line
	5750 950  8350 950 
Text Label 9800 4400 0    50   ~ 0
TRANSISTOR_B_SELECTION_3
Text Label 9800 4300 0    50   ~ 0
TRANSISTOR_B_SELECTION_2
Text Label 9800 4200 0    50   ~ 0
TRANSISTOR_B_SELECTION_1
Text Label 9800 4100 0    50   ~ 0
TRANSISTOR_B_SELECTION_0
Text Label 10800 4000 2    50   ~ 0
CAPACITOR_A_SELECTION_2
Text Label 10800 3900 2    50   ~ 0
CAPACITOR_A_SELECTION_1
Text Label 10800 3800 2    50   ~ 0
CAPACITOR_A_SELECTION_0
Text Label 9800 4650 0    50   ~ 0
TRANSISTOR_C_SELECTION_0
Text Label 9800 4750 0    50   ~ 0
TRANSISTOR_C_SELECTION_1
Text Label 9800 4850 0    50   ~ 0
TRANSISTOR_C_SELECTION_2
Text Label 9800 4950 0    50   ~ 0
TRANSISTOR_C_SELECTION_3
Text Label 10800 5050 2    50   ~ 0
CAPACITOR_D_SELECTION_0
Text Label 10800 5150 2    50   ~ 0
CAPACITOR_D_SELECTION_1
Text Label 10800 5250 2    50   ~ 0
CAPACITOR_D_SELECTION_2
Wire Wire Line
	9750 3800 10900 3800
Wire Wire Line
	9750 3900 10900 3900
Wire Wire Line
	9750 4000 10900 4000
Wire Wire Line
	9750 4100 10900 4100
Wire Wire Line
	9750 4200 10900 4200
Wire Wire Line
	9750 4300 10900 4300
Wire Wire Line
	9750 4400 10850 4400
Wire Wire Line
	9750 4650 10900 4650
Wire Wire Line
	9750 4750 10900 4750
Wire Wire Line
	9750 4850 10900 4850
Wire Wire Line
	9750 4950 10900 4950
Wire Wire Line
	9750 5050 10900 5050
Wire Wire Line
	9750 5150 10900 5150
Wire Wire Line
	9750 5250 10900 5250
Wire Wire Line
	11000 5250 11050 5250
Text Label 5900 4400 0    50   ~ 0
TRANSISTOR_B_SELECTION_3_3V3
Text Label 5900 4300 0    50   ~ 0
TRANSISTOR_B_SELECTION_2_3V3
Text Label 5900 4200 0    50   ~ 0
TRANSISTOR_B_SELECTION_1_3V3
Text Label 5900 4100 0    50   ~ 0
TRANSISTOR_B_SELECTION_0_3V3
Text Label 7150 4000 2    50   ~ 0
CAPACITOR_A_SELECTION_2_3V3
Text Label 7150 3900 2    50   ~ 0
CAPACITOR_A_SELECTION_1_3V3
Text Label 7150 3800 2    50   ~ 0
CAPACITOR_A_SELECTION_0_3V3
Wire Wire Line
	5850 4100 7200 4100
Wire Wire Line
	5850 4200 7200 4200
Wire Wire Line
	5850 4300 7200 4300
Wire Wire Line
	5850 4400 7200 4400
Wire Wire Line
	5950 3800 7200 3800
Wire Wire Line
	5950 3900 7200 3900
Wire Wire Line
	5950 4000 7200 4000
Text Label 5900 4650 0    50   ~ 0
TRANSISTOR_C_SELECTION_0_3V3
Text Label 5900 4750 0    50   ~ 0
TRANSISTOR_C_SELECTION_1_3V3
Text Label 5900 4850 0    50   ~ 0
TRANSISTOR_C_SELECTION_2_3V3
Text Label 5900 4950 0    50   ~ 0
TRANSISTOR_C_SELECTION_3_3V3
Text Label 7150 5050 2    50   ~ 0
CAPACITOR_D_SELECTION_0_3V3
Text Label 7150 5150 2    50   ~ 0
CAPACITOR_D_SELECTION_1_3V3
Text Label 7150 5250 2    50   ~ 0
CAPACITOR_D_SELECTION_2_3V3
Wire Wire Line
	5850 4650 7200 4650
Wire Wire Line
	5850 4750 7200 4750
Wire Wire Line
	5850 4850 7200 4850
Wire Wire Line
	5850 4950 7200 4950
Wire Wire Line
	5950 5050 7200 5050
Wire Wire Line
	5950 5150 7200 5150
Wire Wire Line
	5950 5250 7200 5250
$Sheet
S 7200 3650 2550 1900
U 5EC3CBEE
F0 "LevelShifter" 50
F1 "LevelShifter.sch" 50
F2 "CAPACITOR_D_SELECTION_2" I R 9750 5250 50 
F3 "CAPACITOR_D_SELECTION_1" I R 9750 5150 50 
F4 "CAPACITOR_D_SELECTION_0" I R 9750 5050 50 
F5 "TRANSISTOR_C_SELECTION_2" I R 9750 4850 50 
F6 "TRANSISTOR_C_SELECTION_1" I R 9750 4750 50 
F7 "CAPACITOR_A_SELECTION_0" I R 9750 3800 50 
F8 "CAPACITOR_A_SELECTION_1" I R 9750 3900 50 
F9 "CAPACITOR_A_SELECTION_2" I R 9750 4000 50 
F10 "BYPASS_MODE" I R 9750 5400 50 
F11 "BYPASS_MODE_3V3" I L 7200 5400 50 
F12 "CAPACITOR_A_SELECTION_0_3V3" I L 7200 3800 50 
F13 "CAPACITOR_A_SELECTION_1_3V3" I L 7200 3900 50 
F14 "CAPACITOR_A_SELECTION_2_3V3" I L 7200 4000 50 
F15 "TRANSISTOR_B_SELECTION_0_3V3" I L 7200 4100 50 
F16 "TRANSISTOR_B_SELECTION_1_3V3" I L 7200 4200 50 
F17 "TRANSISTOR_B_SELECTION_2_3V3" I L 7200 4300 50 
F18 "TRANSISTOR_B_SELECTION_3_3V3" I L 7200 4400 50 
F19 "TRANSISTOR_B_SELECTION_3" I R 9750 4400 50 
F20 "TRANSISTOR_C_SELECTION_0_3V3" I L 7200 4650 50 
F21 "TRANSISTOR_C_SELECTION_0" I R 9750 4650 50 
F22 "CAPACITOR_D_SELECTION_2_3V3" I L 7200 5250 50 
F23 "CAPACITOR_D_SELECTION_1_3V3" I L 7200 5150 50 
F24 "CAPACITOR_D_SELECTION_0_3V3" I L 7200 5050 50 
F25 "TRANSISTOR_C_SELECTION_2_3V3" I L 7200 4850 50 
F26 "TRANSISTOR_C_SELECTION_1_3V3" I L 7200 4750 50 
F27 "TRANSISTOR_C_SELECTION_3" I R 9750 4950 50 
F28 "TRANSISTOR_C_SELECTION_3_3V3" I L 7200 4950 50 
F29 "TRANSISTOR_B_SELECTION_0" I R 9750 4100 50 
F30 "TRANSISTOR_B_SELECTION_1" I R 9750 4200 50 
F31 "TRANSISTOR_B_SELECTION_2" I R 9750 4300 50 
$EndSheet
Wire Wire Line
	1100 5550 2200 5550
Wire Notes Line
	5800 2950 5800 6550
Text Label 900  6600 0    50   ~ 0
TRANSISTOR_B_SELECTION_3_3V3
Text Label 900  6500 0    50   ~ 0
TRANSISTOR_B_SELECTION_2_3V3
Text Label 900  6400 0    50   ~ 0
TRANSISTOR_B_SELECTION_1_3V3
Text Label 900  6300 0    50   ~ 0
TRANSISTOR_B_SELECTION_0_3V3
Text Label 2150 6150 2    50   ~ 0
CAPACITOR_A_SELECTION_2_3V3
Text Label 2150 6050 2    50   ~ 0
CAPACITOR_A_SELECTION_1_3V3
Text Label 2150 5950 2    50   ~ 0
CAPACITOR_A_SELECTION_0_3V3
Wire Wire Line
	850  6300 2200 6300
Wire Wire Line
	850  6400 2200 6400
Wire Wire Line
	850  6500 2200 6500
Wire Wire Line
	850  6600 2200 6600
Wire Wire Line
	950  5950 2200 5950
Wire Wire Line
	950  6050 2200 6050
Wire Wire Line
	950  6150 2200 6150
Text Label 900  6750 0    50   ~ 0
TRANSISTOR_C_SELECTION_0_3V3
Text Label 900  6850 0    50   ~ 0
TRANSISTOR_C_SELECTION_1_3V3
Text Label 900  6950 0    50   ~ 0
TRANSISTOR_C_SELECTION_2_3V3
Text Label 900  7050 0    50   ~ 0
TRANSISTOR_C_SELECTION_3_3V3
Text Label 2150 7200 2    50   ~ 0
CAPACITOR_D_SELECTION_0_3V3
Text Label 2150 7300 2    50   ~ 0
CAPACITOR_D_SELECTION_1_3V3
Text Label 2150 7400 2    50   ~ 0
CAPACITOR_D_SELECTION_2_3V3
Wire Wire Line
	850  6750 2200 6750
Wire Wire Line
	850  6850 2200 6850
Wire Wire Line
	850  6950 2200 6950
Wire Wire Line
	850  7050 2200 7050
Wire Wire Line
	950  7200 2200 7200
Wire Wire Line
	950  7300 2200 7300
Wire Wire Line
	950  7400 2200 7400
$Sheet
S 2200 5100 1350 2400
U 5E8BDF21
F0 "Mcu" 50
F1 "Mcu.sch" 50
F2 "1602_BACK_LIGHT_PIN_1" I L 2200 5650 50 
F3 "1602_BACK_LIGHT_PIN_2" I L 2200 5750 50 
F4 "BYPASS_MODE_3V3" I L 2200 5550 50 
F5 "TRANSISTOR_B_SELECTION_0_3V3" I L 2200 6300 50 
F6 "TRANSISTOR_B_SELECTION_1_3V3" I L 2200 6400 50 
F7 "TRANSISTOR_B_SELECTION_2_3V3" I L 2200 6500 50 
F8 "TRANSISTOR_B_SELECTION_3_3V3" I L 2200 6600 50 
F9 "CAPACITOR_A_SELECTION_0_3V3" I L 2200 5950 50 
F10 "CAPACITOR_A_SELECTION_1_3V3" I L 2200 6050 50 
F11 "CAPACITOR_A_SELECTION_2_3V3" I L 2200 6150 50 
F12 "TRANSISTOR_C_SELECTION_0_3V3" I L 2200 6750 50 
F13 "TRANSISTOR_C_SELECTION_1_3V3" I L 2200 6850 50 
F14 "TRANSISTOR_C_SELECTION_2_3V3" I L 2200 6950 50 
F15 "TRANSISTOR_C_SELECTION_3_3V3" I L 2200 7050 50 
F16 "CAPACITOR_D_SELECTION_0_3V3" I L 2200 7200 50 
F17 "CAPACITOR_D_SELECTION_1_3V3" I L 2200 7300 50 
F18 "CAPACITOR_D_SELECTION_2_3V3" I L 2200 7400 50 
$EndSheet
$EndSCHEMATC
