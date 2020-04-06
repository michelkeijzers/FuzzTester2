EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title "Guitar Pedal Effect Fuzz Digitally Controlled"
Date ""
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 800  5200 950  250 
U 5E8D81C7
F0 "PowerRegulator" 50
F1 "PowerRegulator.sch" 50
$EndSheet
$Sheet
S 1250 6300 1050 1200
U 5E8BDF21
F0 "Mcu" 50
F1 "Mcu.sch" 50
F2 "GPIO_LATCH" I L 1250 6500 50 
F3 "SPI2_CSK" I L 1250 6400 50 
F4 "SPI2_MOSI" I L 1250 6600 50 
F5 "I2C1_SCL" I R 2300 6400 50 
F6 "I2C1_SDA" I R 2300 6500 50 
F7 "GPIO_KEYPAD_ROW_1" I R 2300 6700 50 
F8 "GPIO_KEYPAD_ROW_2" I R 2300 6800 50 
F9 "GPIO_KEYPAD_ROW_3" I R 2300 6900 50 
F10 "GPIO_KEYPAD_ROW_4" I R 2300 7000 50 
F11 "GPIO_KEYPAD_COLUMN_1" I R 2300 7100 50 
F12 "GPIO_KEYPAD_COLUMN_2" I R 2300 7200 50 
F13 "GPIO_KEYPAD_COLUMN_3" I R 2300 7300 50 
F14 "GPIO_KEYPAD_COLUMN_4" I R 2300 7400 50 
$EndSheet
$Sheet
S 2400 6300 1050 1200
U 5E8F7778
F0 "UI" 50
F1 "UI.sch" 50
F2 "I2C1_SCL" I L 2400 6400 50 
F3 "I2C1_SDA" I L 2400 6500 50 
F4 "GPIO_KEYPAD_ROW_1" I L 2400 6700 50 
F5 "GPIO_KEYPAD_ROW_2" I L 2400 6800 50 
F6 "GPIO_KEYPAD_ROW_3" I L 2400 6900 50 
F7 "GPIO_KEYPAD_ROW_4" I L 2400 7000 50 
F8 "GPIO_KEYPAD_COLUMN_1" I L 2400 7100 50 
F9 "GPIO_KEYPAD_COLUMN_2" I L 2400 7200 50 
F10 "GPIO_KEYPAD_COLUMN_3" I L 2400 7300 50 
F11 "GPIO_KEYPAD_COLUMN_4" I L 2400 7400 50 
$EndSheet
Wire Wire Line
	3200 7450 3200 7400
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5E97DF1B
P 1200 3900
F 0 "J1" H 1308 4181 50  0000 C CNN
F 1 "Audio In/Out JST XH" H 1308 4090 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 1200 3900 50  0001 C CNN
F 3 "~" H 1200 3900 50  0001 C CNN
	1    1200 3900
	1    0    0    -1  
$EndComp
$Sheet
S 1050 1200 1150 750 
U 5E983DF3
F0 "CapacitorsA" 50
F1 "Capacitors.sch" 50
F2 "CAPACITOR_SELECTION_0" I L 1050 1400 50 
F3 "CAPACITOR_SELECTION_1" I L 1050 1500 50 
F4 "CAPACITOR_SELECTION_2" I L 1050 1600 50 
F5 "CAPACITOR_AUDIO_INPUT" I L 1050 1750 50 
F6 "CAPACITOR_AUDIO_OUTPUT" I R 2200 1850 50 
$EndSheet
$Sheet
S 5050 4700 1450 1300
U 5E87C69B
F0 "ShiftRegistersAB" 50
F1 "ShiftRegisters.sch" 50
F2 "SPI2_CSK" I L 5050 4850 50 
F3 "GPIO_LATCH" I L 5050 4750 50 
F4 "TRANSISTOR_GROUPS_SELECTION_0" I R 6500 5050 50 
F5 "TRANSISTOR_GROUPS_SELECTION_1" I R 6500 5150 50 
F6 "TRANSISTOR_GROUPS_SELECTION_2" I R 6500 5250 50 
F7 "TRANSISTOR_SELECTION_1" I R 6500 5450 50 
F8 "TRANSISTOR_SELECTION_0" I R 6500 5350 50 
F9 "CAPACITOR_SELECTION_0" I R 6500 5550 50 
F10 "CAPACITOR_SELECTION_1" I R 6500 5650 50 
F11 "CAPACITOR_SELECTION_2" I R 6500 5750 50 
F12 "COMPONENT_SELECTION_INPUT" I L 5050 4950 50 
F13 "COMPONENT_SELECTION_OUTPUT" I R 6500 5900 50 
$EndSheet
Text Label 1400 3800 0    50   ~ 0
JACK_IN_GND
Text Label 1400 4000 0    50   ~ 0
JACK_OUT_GND
Wire Wire Line
	2300 7400 2400 7400
Wire Wire Line
	2400 7300 2300 7300
Wire Wire Line
	2300 7200 2400 7200
Wire Wire Line
	2400 7100 2300 7100
Wire Wire Line
	2300 7000 2400 7000
Wire Wire Line
	2400 6900 2300 6900
Wire Wire Line
	2300 6800 2400 6800
Wire Wire Line
	2400 6700 2300 6700
Wire Wire Line
	2300 6500 2400 6500
Wire Wire Line
	2400 6400 2300 6400
Text Label 6550 5050 0    50   ~ 0
TRANSISTOR_B_GROUP_SELECTION_0
Text Label 6550 5150 0    50   ~ 0
TRANSISTOR_B_GROUP_SELECTION_1
Text Label 6550 5250 0    50   ~ 0
TRANSISTOR_B_GROUP_SELECTION_2
Text Label 6550 5350 0    50   ~ 0
TRANSISTOR_B_SELECTION_0
Text Label 6550 5450 0    50   ~ 0
TRANSISTOR_B_SELECTION_1
Wire Wire Line
	6500 5550 6850 5550
Text Label 6550 5550 0    50   ~ 0
CAPACITOR_A_SELECTION_0
Wire Wire Line
	6500 5650 6850 5650
Text Label 6550 5650 0    50   ~ 0
CAPACITOR_A_SELECTION_1
Wire Wire Line
	6500 5750 6850 5750
Text Label 6550 5750 0    50   ~ 0
CAPACITOR_A_SELECTION_2
Text Label 600  2800 1    50   ~ 0
CAPACITOR_A_SELECTION_0
Text Label 700  2800 1    50   ~ 0
CAPACITOR_A_SELECTION_1
Text Label 800  2800 1    50   ~ 0
CAPACITOR_A_SELECTION_2
Text Label 800  6400 0    50   ~ 0
SPI2_CSK
Text Label 800  6500 0    50   ~ 0
GPIO_LATCH
Wire Wire Line
	750  6600 1250 6600
Text Label 800  6600 0    50   ~ 0
SPI2_MOSI
Wire Wire Line
	750  6500 1250 6500
Wire Wire Line
	750  6400 1250 6400
Text Label 4600 4750 0    50   ~ 0
SPI2_CSK
Text Label 4600 4850 0    50   ~ 0
GPIO_LATCH
Wire Wire Line
	4550 4950 5050 4950
Text Label 4600 4950 0    50   ~ 0
SPI2_MOSI
Wire Wire Line
	4550 4850 5050 4850
Wire Wire Line
	4550 4750 5050 4750
Wire Wire Line
	2200 1850 2800 1850
Wire Wire Line
	1400 3900 2000 3900
Text Label 1400 3900 0    50   ~ 0
JACK_IN_SIGNAL
Text Label 950  2350 1    50   ~ 0
JACK_IN_SIGNAL
Wire Wire Line
	950  2350 950  1750
Wire Wire Line
	1400 4100 2050 4100
Text Label 1400 4100 0    50   ~ 0
JACK_OUT_SIGNAL
$Comp
L Device:R R2
U 1 1 5EC42733
P 5600 2200
F 0 "R2" V 5500 2200 50  0000 C CNN
F 1 "100K" V 5600 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 2200 50  0001 C CNN
F 3 "~" H 5600 2200 50  0001 C CNN
	1    5600 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 2200 5450 2200
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5EC4B1FB
P 5850 2500
F 0 "J2" H 5958 2681 50  0000 C CNN
F 1 "POT B10K JST XH" H 5958 2590 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 5850 2500 50  0001 C CNN
F 3 "~" H 5850 2500 50  0001 C CNN
	1    5850 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5EC4BC76
P 6600 2500
F 0 "J3" H 6708 2681 50  0000 C CNN
F 1 "POT B5K JST XH" H 6708 2590 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 6600 2500 50  0001 C CNN
F 3 "~" H 6600 2500 50  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F311D10
P 6050 2700
F 0 "#PWR03" H 6050 2450 50  0001 C CNN
F 1 "GND" H 6055 2527 50  0000 C CNN
F 2 "" H 6050 2700 50  0001 C CNN
F 3 "" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2600 6050 2700
$Comp
L Device:CP1 C1
U 1 1 5F313F3E
P 6800 2750
F 0 "C1" H 6915 2796 50  0000 L CNN
F 1 "22uF" H 6915 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6800 2750 50  0001 C CNN
F 3 "~" H 6800 2750 50  0001 C CNN
	1    6800 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F322620
P 5250 1900
F 0 "#PWR02" H 5250 1650 50  0001 C CNN
F 1 "GND" H 5255 1727 50  0000 C CNN
F 2 "" H 5250 1900 50  0001 C CNN
F 3 "" H 5250 1900 50  0001 C CNN
	1    5250 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR01
U 1 1 5F5F5D5D
P 5150 1150
F 0 "#PWR01" H 5150 1000 50  0001 C CNN
F 1 "+9V" H 5165 1323 50  0000 C CNN
F 2 "" H 5150 1150 50  0001 C CNN
F 3 "" H 5150 1150 50  0001 C CNN
	1    5150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F5F6486
P 5150 1400
F 0 "R1" H 5220 1446 50  0000 L CNN
F 1 "100K" H 5220 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 1400 50  0001 C CNN
F 3 "~" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1250 5150 1150
Wire Wire Line
	6800 2200 6800 2500
Wire Wire Line
	6050 2200 6050 2500
Wire Wire Line
	6500 5050 7800 5050
Wire Wire Line
	6500 5150 7800 5150
Wire Wire Line
	6500 5250 7800 5250
Wire Wire Line
	6500 5350 7500 5350
Wire Wire Line
	6500 5450 7500 5450
Wire Wire Line
	5050 1900 5250 1900
Wire Wire Line
	5050 1800 5150 1800
Wire Wire Line
	5150 1800 5150 1550
$Sheet
S 8050 4700 1450 1300
U 5F99B130
F0 "ShiftRegistersCD" 50
F1 "ShiftRegisters.sch" 50
F2 "SPI2_CSK" I L 8050 4850 50 
F3 "GPIO_LATCH" I L 8050 4750 50 
F4 "TRANSISTOR_GROUPS_SELECTION_0" I R 9500 5050 50 
F5 "TRANSISTOR_GROUPS_SELECTION_1" I R 9500 5150 50 
F6 "TRANSISTOR_GROUPS_SELECTION_2" I R 9500 5250 50 
F7 "TRANSISTOR_SELECTION_1" I R 9500 5450 50 
F8 "TRANSISTOR_SELECTION_0" I R 9500 5350 50 
F9 "CAPACITOR_SELECTION_0" I R 9500 5550 50 
F10 "CAPACITOR_SELECTION_1" I R 9500 5650 50 
F11 "CAPACITOR_SELECTION_2" I R 9500 5750 50 
F12 "COMPONENT_SELECTION_INPUT" I L 8050 4950 50 
F13 "COMPONENT_SELECTION_OUTPUT" I R 9500 5900 50 
$EndSheet
Text Label 9550 5050 0    50   ~ 0
TRANSISTOR_C_GROUP_SELECTION_0
Text Label 9550 5150 0    50   ~ 0
TRANSISTOR_C_GROUP_SELECTION_1
Text Label 9550 5250 0    50   ~ 0
TRANSISTOR_C_GROUP_SELECTION_2
Text Label 9550 5350 0    50   ~ 0
TRANSISTOR_C_SELECTION_0
Text Label 9550 5450 0    50   ~ 0
TRANSISTOR_C_SELECTION_1
Wire Wire Line
	9500 5550 9850 5550
Text Label 9550 5550 0    50   ~ 0
CAPACITOR_D_SELECTION_0
Wire Wire Line
	9500 5650 9850 5650
Text Label 9550 5650 0    50   ~ 0
CAPACITOR_D_SELECTION_1
Wire Wire Line
	9500 5750 9850 5750
Text Label 9550 5750 0    50   ~ 0
CAPACITOR_D_SELECTION_2
Text Label 7600 4750 0    50   ~ 0
SPI2_CSK
Text Label 7600 4850 0    50   ~ 0
GPIO_LATCH
Wire Wire Line
	7550 4850 8050 4850
Wire Wire Line
	7550 4750 8050 4750
Wire Wire Line
	9500 5050 10800 5050
Wire Wire Line
	9500 5150 10800 5150
Wire Wire Line
	9500 5250 10800 5250
Wire Wire Line
	9500 5350 10500 5350
Wire Wire Line
	9500 5450 10500 5450
Wire Wire Line
	7950 5900 7950 4950
Wire Wire Line
	7950 4950 8050 4950
Wire Wire Line
	2800 1850 3650 1850
Connection ~ 2800 1850
Text Label 2300 1300 0    50   ~ 0
TRANSISTOR_B_GROUP_SELECTION_0
Text Label 2300 1400 0    50   ~ 0
TRANSISTOR_B_GROUP_SELECTION_1
Text Label 2300 1500 0    50   ~ 0
TRANSISTOR_B_GROUP_SELECTION_2
Text Label 2300 1600 0    50   ~ 0
TRANSISTOR_B_SELECTION_0
Text Label 2300 1700 0    50   ~ 0
TRANSISTOR_B_SELECTION_1
Wire Wire Line
	2250 1300 3650 1300
Wire Wire Line
	2250 1400 3650 1400
Wire Wire Line
	2250 1600 3650 1600
Wire Wire Line
	3650 1700 2250 1700
Text Label 5500 1300 0    50   ~ 0
TRANSISTOR_C_GROUP_SELECTION_0
Text Label 5500 1400 0    50   ~ 0
TRANSISTOR_C_GROUP_SELECTION_1
Text Label 5500 1500 0    50   ~ 0
TRANSISTOR_C_GROUP_SELECTION_2
Text Label 5500 1600 0    50   ~ 0
TRANSISTOR_C_SELECTION_0
Text Label 5500 1700 0    50   ~ 0
TRANSISTOR_C_SELECTION_1
Wire Wire Line
	5450 1300 6900 1300
Wire Wire Line
	5450 1400 6900 1400
Wire Wire Line
	5450 1500 6900 1500
Wire Wire Line
	5450 1600 6900 1600
Wire Wire Line
	6900 1700 5450 1700
Wire Wire Line
	5750 1800 5750 1850
Wire Wire Line
	5750 1850 6900 1850
Connection ~ 5150 1800
Wire Wire Line
	5150 1800 5750 1800
Wire Wire Line
	5150 1150 8400 1150
Wire Wire Line
	8400 1150 8400 1300
Connection ~ 5150 1150
$Comp
L Device:R R3
U 1 1 5F9EB2AA
P 8400 1450
F 0 "R3" H 8470 1496 50  0000 L CNN
F 1 "10K" H 8450 1400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8330 1450 50  0001 C CNN
F 3 "~" H 8400 1450 50  0001 C CNN
	1    8400 1450
	1    0    0    -1  
$EndComp
$Sheet
S 9750 1250 1150 750 
U 5F9F739D
F0 "CapacitorsD" 50
F1 "Capacitors.sch" 50
F2 "CAPACITOR_SELECTION_0" I L 9750 1450 50 
F3 "CAPACITOR_SELECTION_1" I L 9750 1550 50 
F4 "CAPACITOR_SELECTION_2" I L 9750 1650 50 
F5 "CAPACITOR_AUDIO_INPUT" I L 9750 1800 50 
F6 "CAPACITOR_AUDIO_OUTPUT" I R 10900 1900 50 
$EndSheet
Text Label 8700 1450 0    50   ~ 0
CAPACITOR_D_SELECTION_0
Text Label 8700 1550 0    50   ~ 0
CAPACITOR_D_SELECTION_1
Text Label 8700 1650 0    50   ~ 0
CAPACITOR_D_SELECTION_2
Wire Wire Line
	9750 1600 9750 1650
Wire Wire Line
	8650 1650 9750 1650
Wire Wire Line
	8650 1450 9750 1450
Wire Wire Line
	8650 1550 9750 1550
Wire Wire Line
	950  1750 1050 1750
Wire Wire Line
	800  1600 1050 1600
Wire Wire Line
	800  1600 800  2850
Wire Wire Line
	700  1500 1050 1500
Wire Wire Line
	700  1500 700  2850
Wire Wire Line
	600  1400 1050 1400
Wire Wire Line
	600  1400 600  2850
Wire Wire Line
	10900 1900 10950 1900
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5FA36DEA
P 11150 2250
F 0 "J4" H 11122 2182 50  0000 R CNN
F 1 "VOL POT A100K JST XH" H 12500 2400 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 11150 2250 50  0001 C CNN
F 3 "~" H 11150 2250 50  0001 C CNN
	1    11150 2250
	-1   0    0    1   
$EndComp
Text Label 10300 2250 0    50   ~ 0
JACK_OUT_SIGNAL
$Comp
L power:GND #PWR05
U 1 1 5FA459A3
P 10950 2350
F 0 "#PWR05" H 10950 2100 50  0001 C CNN
F 1 "GND" H 10955 2177 50  0000 C CNN
F 2 "" H 10950 2350 50  0001 C CNN
F 3 "" H 10950 2350 50  0001 C CNN
	1    10950 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FA4B94D
P 6800 2900
F 0 "#PWR04" H 6800 2650 50  0001 C CNN
F 1 "GND" H 6805 2727 50  0000 C CNN
F 2 "" H 6800 2900 50  0001 C CNN
F 3 "" H 6800 2900 50  0001 C CNN
	1    6800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2200 6800 2200
Wire Wire Line
	8300 1900 8400 1900
Wire Wire Line
	8400 1900 8400 2200
Wire Wire Line
	2800 1850 2800 2200
Wire Wire Line
	2250 1500 3650 1500
Connection ~ 6800 2200
Connection ~ 6050 2200
Wire Wire Line
	6050 2200 6800 2200
Wire Wire Line
	5750 2200 6050 2200
Wire Wire Line
	10950 2250 10300 2250
Wire Wire Line
	10950 1900 10950 2150
Wire Wire Line
	8300 1800 8400 1800
Wire Wire Line
	8400 1600 8400 1800
Connection ~ 8400 1800
Wire Wire Line
	8400 1800 9750 1800
Text Notes 5800 750  2    50   ~ 10
Fuzz Analog Circuit\n
Text Notes 1700 3450 2    50   ~ 10
Audio In/Out\n
Text Notes 8300 4450 2    50   ~ 10
Shift Registers / Transistor and Capacitor Selection\n
Text Notes 1600 5000 2    50   ~ 10
Power Regulator\n
Text Notes 2900 6100 2    50   ~ 10
Micro Controller Unit and User Interface\n
$Comp
L power:GND #PWR0102
U 1 1 5FAC2F14
P 2300 4000
F 0 "#PWR0102" H 2300 3750 50  0001 C CNN
F 1 "GND" H 2305 3827 50  0000 C CNN
F 2 "" H 2300 4000 50  0001 C CNN
F 3 "" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4000 2300 4000
Wire Wire Line
	2300 3800 2300 4000
Connection ~ 2300 4000
Wire Wire Line
	1400 3800 2300 3800
Wire Wire Line
	9500 5900 9550 5900
NoConn ~ 9550 5900
Wire Wire Line
	6500 5900 7950 5900
$Sheet
S 6900 1250 1400 750 
U 5F9746B8
F0 "TransistorsC" 50
F1 "Transistors.sch" 50
F2 "BASE" I L 6900 1850 50 
F3 "EMITTER" I R 8300 1900 50 
F4 "COLLECTOR" I R 8300 1800 50 
F5 "TRANSISTOR_GROUP_SELECTION_0" I L 6900 1300 50 
F6 "TRANSISTOR_GROUP_SELECTION_1" I L 6900 1400 50 
F7 "TRANSISTOR_GROUP_SELECTION_2" I L 6900 1500 50 
F8 "TRANSISTOR_SELECTION_0" I L 6900 1600 50 
F9 "TRANSISTOR_SELECTION_1" I L 6900 1700 50 
$EndSheet
$Sheet
S 3650 1250 1400 750 
U 5E9AE796
F0 "TransistorsB" 50
F1 "Transistors.sch" 50
F2 "BASE" I L 3650 1850 50 
F3 "EMITTER" I R 5050 1900 50 
F4 "COLLECTOR" I R 5050 1800 50 
F5 "TRANSISTOR_GROUP_SELECTION_0" I L 3650 1300 50 
F6 "TRANSISTOR_GROUP_SELECTION_1" I L 3650 1400 50 
F7 "TRANSISTOR_GROUP_SELECTION_2" I L 3650 1500 50 
F8 "TRANSISTOR_SELECTION_0" I L 3650 1600 50 
F9 "TRANSISTOR_SELECTION_1" I L 3650 1700 50 
$EndSheet
$EndSCHEMATC
