EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title "Guitar Pedal Effect Fuzz Digitally Controlled"
Date "2020-04-07"
Rev "0.1"
Comp "Michel Keijzers"
Comment1 ""
Comment2 "and 2 sets of 8 capacitors (A and D)"
Comment3 "Guitar pedal effect Fuzz, based on 2 sets of 20 different transistors (B and D)"
Comment4 "Power Regulator"
$EndDescr
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8DF964
P 1250 1250
AR Path="/5E8DF964" Ref="#FLG?"  Part="1" 
AR Path="/5E8D81C7/5E8DF964" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 1250 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1423 50  0000 C CNN
F 2 "" H 1250 1250 50  0001 C CNN
F 3 "~" H 1250 1250 50  0001 C CNN
	1    1250 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF96C
P 1550 1350
AR Path="/5E8DF96C" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF96C" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1550 1100 50  0001 C CNN
F 1 "GND" H 1555 1177 50  0000 C CNN
F 2 "" H 1550 1350 50  0001 C CNN
F 3 "" H 1550 1350 50  0001 C CNN
	1    1550 1350
	1    0    0    -1  
$EndComp
Text Notes 1300 950  0    50   ~ 10
9V Power\n
$Comp
L Diode:1N4001 D?
U 1 1 5E8DF97A
P 3800 1850
AR Path="/5E8DF97A" Ref="D?"  Part="1" 
AR Path="/5E8D81C7/5E8DF97A" Ref="D2"  Part="1" 
F 0 "D2" H 3800 1634 50  0000 C CNN
F 1 "1N4001" H 3800 1725 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 1675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3800 1850 50  0001 C CNN
	1    3800 1850
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U?
U 1 1 5E8DF980
P 4500 1850
AR Path="/5E8DF980" Ref="U?"  Part="1" 
AR Path="/5E8D81C7/5E8DF980" Ref="U1"  Part="1" 
F 0 "U1" H 4500 2092 50  0000 C CNN
F 1 "AMS1117-5.0" H 4500 2001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4500 2050 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4600 1600 50  0001 C CNN
	1    4500 1850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 5E8DF986
P 4500 2900
AR Path="/5E8DF986" Ref="U?"  Part="1" 
AR Path="/5E8D81C7/5E8DF986" Ref="U2"  Part="1" 
F 0 "U2" H 4500 3142 50  0000 C CNN
F 1 "AMS1117-3.3" H 4500 3051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4500 3100 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4600 2650 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E8DF98C
P 3500 2350
AR Path="/5E8DF98C" Ref="D?"  Part="1" 
AR Path="/5E8D81C7/5E8DF98C" Ref="D1"  Part="1" 
F 0 "D1" V 3539 2233 50  0000 R CNN
F 1 "LED" V 3448 2233 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3500 2350 50  0001 C CNN
F 3 "~" H 3500 2350 50  0001 C CNN
	1    3500 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E8DF992
P 3500 2050
AR Path="/5E8DF992" Ref="R?"  Part="1" 
AR Path="/5E8D81C7/5E8DF992" Ref="R4"  Part="1" 
F 0 "R4" H 3570 2096 50  0000 L CNN
F 1 "1K" H 3570 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 2050 50  0001 C CNN
F 3 "~" H 3500 2050 50  0001 C CNN
	1    3500 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9A4
P 3500 2500
AR Path="/5E8DF9A4" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9A4" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 3500 2250 50  0001 C CNN
F 1 "GND" H 3505 2327 50  0000 C CNN
F 2 "" H 3500 2500 50  0001 C CNN
F 3 "" H 3500 2500 50  0001 C CNN
	1    3500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9AA
P 4050 3900
AR Path="/5E8DF9AA" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9AA" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 4050 3650 50  0001 C CNN
F 1 "GND" H 4055 3727 50  0000 C CNN
F 2 "" H 4050 3900 50  0001 C CNN
F 3 "" H 4050 3900 50  0001 C CNN
	1    4050 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9B0
P 5050 3200
AR Path="/5E8DF9B0" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9B0" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5050 2950 50  0001 C CNN
F 1 "GND" H 5055 3027 50  0000 C CNN
F 2 "" H 5050 3200 50  0001 C CNN
F 3 "" H 5050 3200 50  0001 C CNN
	1    5050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9B6
P 5050 2150
AR Path="/5E8DF9B6" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9B6" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 5050 1900 50  0001 C CNN
F 1 "GND" H 5055 1977 50  0000 C CNN
F 2 "" H 5050 2150 50  0001 C CNN
F 3 "" H 5050 2150 50  0001 C CNN
	1    5050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2900 5050 2900
Wire Wire Line
	4800 1850 5050 1850
Wire Wire Line
	4200 2900 4050 2900
Wire Wire Line
	3650 1850 3500 1850
Wire Wire Line
	3500 1850 3500 1900
Wire Wire Line
	3500 1750 3500 1850
Connection ~ 3500 1850
$Comp
L power:GND #PWR?
U 1 1 5E8DF9C3
P 4500 2150
AR Path="/5E8DF9C3" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9C3" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 4500 1900 50  0001 C CNN
F 1 "GND" H 4505 1977 50  0000 C CNN
F 2 "" H 4500 2150 50  0001 C CNN
F 3 "" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9C9
P 4500 3200
AR Path="/5E8DF9C9" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9C9" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 4500 2950 50  0001 C CNN
F 1 "GND" H 4505 3027 50  0000 C CNN
F 2 "" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	1    0    0    -1  
$EndComp
Text Notes 2850 2450 0    31   ~ 0
Vfw = 2 V\n I = (9-2)/1 = 7 mA
Text Notes 5450 1950 0    31   ~ 0
5V: LCD: about 60 mA\nPd = (9 V - 5V) * 60 mA = 240 mW\nTj = Ta(max) + Pd * (Thermal Resistance (junction-to-ambient) =\n125 = 30 + Pd * 70 => 1.36 W\nNo heat sink needed
Text Notes 5450 2950 0    31   ~ 0
3.3V: STM32: about 100 mA \nPd = (9 V - 3.3V) * 100 mA = 570 mW\nTj = Ta(max) + Pd * (Thermal Resistance (junction-to-ambient) =\n125 = 30 + Pd * 70 => 1.36 W\nNo heat sink needed
Connection ~ 4050 2900
$Comp
L power:+5V #PWR?
U 1 1 5E8DF9E2
P 5050 1850
AR Path="/5E8DF9E2" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9E2" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 5050 1700 50  0001 C CNN
F 1 "+5V" H 5065 2023 50  0000 C CNN
F 2 "" H 5050 1850 50  0001 C CNN
F 3 "" H 5050 1850 50  0001 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1850 4050 1850
Connection ~ 4050 1850
Wire Wire Line
	4050 1850 4200 1850
$Comp
L power:+3V3 #PWR?
U 1 1 5E8DF9EC
P 5050 2900
AR Path="/5E8DF9EC" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9EC" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5050 2750 50  0001 C CNN
F 1 "+3V3" H 5065 3073 50  0000 C CNN
F 2 "" H 5050 2900 50  0001 C CNN
F 3 "" H 5050 2900 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
Text Notes 3500 1000 0    50   ~ 10
Power Regulator\n\n
Text Notes 3050 1100 0    31   ~ 0
http://embedded-lab.com/blog/multi-purpose-dual-power-supply-5-0v-and-3-3v-regulator-board/
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5E8DF958
P 1900 1350
AR Path="/5E8DF958" Ref="J?"  Part="1" 
AR Path="/5E8D81C7/5E8DF958" Ref="J6"  Part="1" 
F 0 "J6" H 2008 1531 50  0000 C CNN
F 1 "9V Power JST XH" H 1800 1450 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1900 1350 50  0001 C CNN
F 3 "~" H 1900 1350 50  0001 C CNN
	1    1900 1350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5FACFDD8
P 1900 3450
F 0 "#PWR0103" H 1900 3300 50  0001 C CNN
F 1 "+5V" H 1915 3623 50  0000 C CNN
F 2 "" H 1900 3450 50  0001 C CNN
F 3 "" H 1900 3450 50  0001 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5FAD14EB
P 2100 3550
F 0 "#PWR0104" H 2100 3400 50  0001 C CNN
F 1 "+3V3" H 2115 3723 50  0000 C CNN
F 2 "" H 2100 3550 50  0001 C CNN
F 3 "" H 2100 3550 50  0001 C CNN
	1    2100 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAD2482
P 1200 3650
AR Path="/5FAD2482" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5FAD2482" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1200 3400 50  0001 C CNN
F 1 "GND" H 1205 3477 50  0000 C CNN
F 2 "" H 1200 3650 50  0001 C CNN
F 3 "" H 1200 3650 50  0001 C CNN
	1    1200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FAD7663
P 4050 1800
AR Path="/5FAD7663" Ref="#FLG?"  Part="1" 
AR Path="/5E8D81C7/5FAD7663" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 4050 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 4050 2050 50  0000 C CNN
F 2 "" H 4050 1800 50  0001 C CNN
F 3 "~" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1800 4050 1850
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FBDD6C7
P 1150 2300
AR Path="/5FBDD6C7" Ref="#FLG?"  Part="1" 
AR Path="/5E8D81C7/5FBDD6C7" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 1150 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 2473 50  0000 C CNN
F 2 "" H 1150 2300 50  0001 C CNN
F 3 "~" H 1150 2300 50  0001 C CNN
	1    1150 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5E99E117
P 5050 3050
F 0 "C4" H 5165 3096 50  0000 L CNN
F 1 "22uF" H 5165 3005 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 5050 3050 50  0001 C CNN
F 3 "~" H 5050 3050 50  0001 C CNN
	1    5050 3050
	1    0    0    -1  
$EndComp
Connection ~ 5050 2900
$Comp
L Device:CP1 C3
U 1 1 5E99F224
P 5050 2000
F 0 "C3" H 5165 2046 50  0000 L CNN
F 1 "22uF" H 5165 1955 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 5050 2000 50  0001 C CNN
F 3 "~" H 5050 2000 50  0001 C CNN
	1    5050 2000
	1    0    0    -1  
$EndComp
Connection ~ 5050 1850
$Comp
L Device:CP1 C2
U 1 1 5E99F989
P 4050 3750
F 0 "C2" H 4165 3796 50  0000 L CNN
F 1 "100uF" H 4165 3705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4050 3750 50  0001 C CNN
F 3 "~" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
Wire Notes Line
	2800 500  2800 4250
Wire Notes Line
	2800 2750 500  2750
Text Notes 4150 3550 0    31   ~ 0
https://www.electro-tech-online.com/threads/how-to-make-a-5v-negative-supply-using-the-lm2576-regulator.156344/
Text Notes 4150 3500 0    31   ~ 0
http://www.nomad.ee/micros/lm2576/index.shtml
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5E90BAA0
P 1000 3450
F 0 "J5" H 1108 3731 50  0000 C CNN
F 1 "PowerTest_PinHeader" H 1108 3640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1000 3450 50  0001 C CNN
F 3 "~" H 1000 3450 50  0001 C CNN
	1    1000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3550 2100 3550
Wire Wire Line
	1900 3450 1200 3450
Wire Wire Line
	1200 3350 1700 3350
$Comp
L power:+9V #PWR0112
U 1 1 5EAD02BC
P 1700 3350
F 0 "#PWR0112" H 1700 3200 50  0001 C CNN
F 1 "+9V" H 1715 3523 50  0000 C CNN
F 2 "" H 1700 3350 50  0001 C CNN
F 3 "" H 1700 3350 50  0001 C CNN
	1    1700 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0114
U 1 1 5EAD1981
P 3500 1750
F 0 "#PWR0114" H 3500 1600 50  0001 C CNN
F 1 "+9V" H 3515 1923 50  0000 C CNN
F 2 "" H 3500 1750 50  0001 C CNN
F 3 "" H 3500 1750 50  0001 C CNN
	1    3500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1250 1550 1250
$Comp
L power:+9V #PWR0115
U 1 1 5EAD27B5
P 1550 1250
F 0 "#PWR0115" H 1550 1100 50  0001 C CNN
F 1 "+9V" H 1565 1423 50  0000 C CNN
F 2 "" H 1550 1250 50  0001 C CNN
F 3 "" H 1550 1250 50  0001 C CNN
	1    1550 1250
	1    0    0    -1  
$EndComp
Connection ~ 1550 1250
Wire Wire Line
	1550 1250 1700 1250
Wire Wire Line
	4050 2900 4050 3600
Wire Notes Line
	500  4250 7400 4250
Wire Notes Line
	7400 4250 7400 550 
Text Notes 1300 2950 0    50   ~ 10
Power Test Connector\n
Wire Wire Line
	1550 1350 1700 1350
Text Notes 1300 2050 0    50   ~ 10
Mixed Grounds\n\n
Wire Notes Line
	2800 1800 500  1800
$Comp
L power:GND #PWR?
U 1 1 5EA16D11
P 1150 2300
AR Path="/5EA16D11" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5EA16D11" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 1150 2050 50  0001 C CNN
F 1 "GND" H 1155 2127 50  0000 C CNN
F 2 "" H 1150 2300 50  0001 C CNN
F 3 "" H 1150 2300 50  0001 C CNN
	1    1150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR063
U 1 1 5EA16F95
P 1950 2300
F 0 "#PWR063" H 1950 2050 50  0001 C CNN
F 1 "GNDA" H 1955 2127 50  0000 C CNN
F 2 "" H 1950 2300 50  0001 C CNN
F 3 "" H 1950 2300 50  0001 C CNN
	1    1950 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5EA1781D
P 1550 2300
F 0 "NT1" H 1550 2481 50  0000 C CNN
F 1 "Net-Tie_2" H 1550 2390 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad2.0mm" H 1550 2300 50  0001 C CNN
F 3 "~" H 1550 2300 50  0001 C CNN
	1    1550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2300 1950 2300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5EA23D2A
P 1950 2300
AR Path="/5EA23D2A" Ref="#FLG?"  Part="1" 
AR Path="/5E8D81C7/5EA23D2A" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 1950 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 2473 50  0000 C CNN
F 2 "" H 1950 2300 50  0001 C CNN
F 3 "~" H 1950 2300 50  0001 C CNN
	1    1950 2300
	1    0    0    -1  
$EndComp
Connection ~ 1950 2300
Wire Wire Line
	1150 2300 1450 2300
Connection ~ 1150 2300
Text Notes 5450 2150 0    31   ~ 0
22 uF Tantalum advised ->\n47 uf Tantalum in inventory instead
Text Notes 5450 3150 0    31   ~ 0
22 uF Tantalum advised ->\n47 uf Tantalum in inventory instead
Connection ~ 4050 2000
Wire Wire Line
	4050 2000 4050 2900
Wire Wire Line
	4050 1850 4050 2900
$EndSCHEMATC
