EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 10
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
L power:+9V #PWR?
U 1 1 5E8DF95E
P 1500 2200
AR Path="/5E8DF95E" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF95E" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1500 2050 50  0001 C CNN
F 1 "+9V" H 1515 2373 50  0000 C CNN
F 2 "" H 1500 2200 50  0001 C CNN
F 3 "" H 1500 2200 50  0001 C CNN
	1    1500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8DF964
P 1150 2200
AR Path="/5E8DF964" Ref="#FLG?"  Part="1" 
AR Path="/5E8D81C7/5E8DF964" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 1150 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 2373 50  0000 C CNN
F 2 "" H 1150 2200 50  0001 C CNN
F 3 "~" H 1150 2200 50  0001 C CNN
	1    1150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2200 1500 2200
Connection ~ 1500 2200
$Comp
L power:GND #PWR?
U 1 1 5E8DF96C
P 1500 1700
AR Path="/5E8DF96C" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF96C" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1500 1450 50  0001 C CNN
F 1 "GND" H 1505 1527 50  0000 C CNN
F 2 "" H 1500 1700 50  0001 C CNN
F 3 "" H 1500 1700 50  0001 C CNN
	1    1500 1700
	1    0    0    -1  
$EndComp
Text Notes 1600 1350 0    50   ~ 10
9V Power\n
$Comp
L power:+9V #PWR?
U 1 1 5E8DF974
P 3000 1700
AR Path="/5E8DF974" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF974" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 3000 1550 50  0001 C CNN
F 1 "+9V" H 3015 1873 50  0000 C CNN
F 2 "" H 3000 1700 50  0001 C CNN
F 3 "" H 3000 1700 50  0001 C CNN
	1    3000 1700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D?
U 1 1 5E8DF97A
P 3300 1800
AR Path="/5E8DF97A" Ref="D?"  Part="1" 
AR Path="/5E8D81C7/5E8DF97A" Ref="D2"  Part="1" 
F 0 "D2" H 3300 1584 50  0000 C CNN
F 1 "1N4001" H 3300 1675 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 1625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3300 1800 50  0001 C CNN
	1    3300 1800
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U?
U 1 1 5E8DF980
P 4000 1800
AR Path="/5E8DF980" Ref="U?"  Part="1" 
AR Path="/5E8D81C7/5E8DF980" Ref="U1"  Part="1" 
F 0 "U1" H 4000 2042 50  0000 C CNN
F 1 "AMS1117-5.0" H 4000 1951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4000 2000 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4100 1550 50  0001 C CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 5E8DF986
P 4000 2850
AR Path="/5E8DF986" Ref="U?"  Part="1" 
AR Path="/5E8D81C7/5E8DF986" Ref="U2"  Part="1" 
F 0 "U2" H 4000 3092 50  0000 C CNN
F 1 "AMS1117-3.3" H 4000 3001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4000 3050 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4100 2600 50  0001 C CNN
	1    4000 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E8DF98C
P 3000 2300
AR Path="/5E8DF98C" Ref="D?"  Part="1" 
AR Path="/5E8D81C7/5E8DF98C" Ref="D1"  Part="1" 
F 0 "D1" V 3039 2183 50  0000 R CNN
F 1 "LED" V 2948 2183 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3000 2300 50  0001 C CNN
F 3 "~" H 3000 2300 50  0001 C CNN
	1    3000 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E8DF992
P 3000 2000
AR Path="/5E8DF992" Ref="R?"  Part="1" 
AR Path="/5E8D81C7/5E8DF992" Ref="R4"  Part="1" 
F 0 "R4" H 3070 2046 50  0000 L CNN
F 1 "1K" H 3070 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 2000 50  0001 C CNN
F 3 "~" H 3000 2000 50  0001 C CNN
	1    3000 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8DF998
P 4550 1950
AR Path="/5E8DF998" Ref="C?"  Part="1" 
AR Path="/5E8D81C7/5E8DF998" Ref="C3"  Part="1" 
F 0 "C3" H 4665 1996 50  0000 L CNN
F 1 "22uF" H 4665 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 1800 50  0001 C CNN
F 3 "~" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8DF99E
P 4550 3000
AR Path="/5E8DF99E" Ref="C?"  Part="1" 
AR Path="/5E8D81C7/5E8DF99E" Ref="C4"  Part="1" 
F 0 "C4" H 4665 3046 50  0000 L CNN
F 1 "22uF" H 4665 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 2850 50  0001 C CNN
F 3 "~" H 4550 3000 50  0001 C CNN
	1    4550 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9A4
P 3000 2450
AR Path="/5E8DF9A4" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9A4" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 3000 2200 50  0001 C CNN
F 1 "GND" H 3005 2277 50  0000 C CNN
F 2 "" H 3000 2450 50  0001 C CNN
F 3 "" H 3000 2450 50  0001 C CNN
	1    3000 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9AA
P 3550 3350
AR Path="/5E8DF9AA" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9AA" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 3550 3100 50  0001 C CNN
F 1 "GND" H 3555 3177 50  0000 C CNN
F 2 "" H 3550 3350 50  0001 C CNN
F 3 "" H 3550 3350 50  0001 C CNN
	1    3550 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9B0
P 4550 3150
AR Path="/5E8DF9B0" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9B0" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4550 2900 50  0001 C CNN
F 1 "GND" H 4555 2977 50  0000 C CNN
F 2 "" H 4550 3150 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9B6
P 4550 2100
AR Path="/5E8DF9B6" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9B6" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4550 1850 50  0001 C CNN
F 1 "GND" H 4555 1927 50  0000 C CNN
F 2 "" H 4550 2100 50  0001 C CNN
F 3 "" H 4550 2100 50  0001 C CNN
	1    4550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2850 4550 2850
Wire Wire Line
	4300 1800 4550 1800
Wire Wire Line
	3700 2850 3550 2850
Wire Wire Line
	3150 1800 3000 1800
Wire Wire Line
	3000 1800 3000 1850
Wire Wire Line
	3000 1700 3000 1800
Connection ~ 3000 1800
$Comp
L power:GND #PWR?
U 1 1 5E8DF9C3
P 4000 2100
AR Path="/5E8DF9C3" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9C3" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 4000 1850 50  0001 C CNN
F 1 "GND" H 4005 1927 50  0000 C CNN
F 2 "" H 4000 2100 50  0001 C CNN
F 3 "" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8DF9C9
P 4000 3150
AR Path="/5E8DF9C9" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9C9" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 4000 2900 50  0001 C CNN
F 1 "GND" H 4005 2977 50  0000 C CNN
F 2 "" H 4000 3150 50  0001 C CNN
F 3 "" H 4000 3150 50  0001 C CNN
	1    4000 3150
	1    0    0    -1  
$EndComp
Text Notes 3250 2300 0    20   ~ 0
9 mA, 81 mW
Text Notes 3650 1350 0    20   ~ 0
5V: LCD: about 60 mA, let's say 200 mA including all ICs\nPd = (9 V - 5V) * 200 mA = 800 mW\nTj = Ta(max) + Pd * (Thermal Resistance (junction-to-ambient) =\n125 = 30 + Pd * 70 => 1.36 W\nNo heat sink needed
Text Notes 3700 2550 0    20   ~ 0
3.3V: STM32: about 100 mA \nPd = (9 V - 3.3V) * 100 mA = 570 mW\nTj = Ta(max) + Pd * (Thermal Resistance (junction-to-ambient) =\n125 = 30 + Pd * 70 => 1.36 W\nNo heat sink needed
Wire Wire Line
	3550 3050 3550 2850
Connection ~ 3550 2850
$Comp
L Device:C C?
U 1 1 5E8DF9D5
P 3550 3200
AR Path="/5E8DF9D5" Ref="C?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9D5" Ref="C2"  Part="1" 
F 0 "C2" H 3665 3246 50  0000 L CNN
F 1 "100uF" H 3665 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 3050 50  0001 C CNN
F 3 "~" H 3550 3200 50  0001 C CNN
	1    3550 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E8DF9E2
P 4550 1800
AR Path="/5E8DF9E2" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9E2" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 4550 1650 50  0001 C CNN
F 1 "+5V" H 4565 1973 50  0000 C CNN
F 2 "" H 4550 1800 50  0001 C CNN
F 3 "" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
Connection ~ 4550 1800
Wire Wire Line
	3450 1800 3550 1800
Connection ~ 3550 1800
Wire Wire Line
	3550 1800 3700 1800
$Comp
L power:+3V3 #PWR?
U 1 1 5E8DF9EC
P 4550 2850
AR Path="/5E8DF9EC" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5E8DF9EC" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4550 2700 50  0001 C CNN
F 1 "+3V3" H 4565 3023 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
Connection ~ 4550 2850
Wire Wire Line
	3550 1800 3550 2850
Text Notes 3300 1150 0    50   ~ 10
Power Regulator\n\n
Text Notes 2950 3800 0    20   ~ 0
http://embedded-lab.com/blog/multi-purpose-dual-power-supply-5-0v-and-3-3v-regulator-board/
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5E8DF958
P 2100 1800
AR Path="/5E8DF958" Ref="J?"  Part="1" 
AR Path="/5E8D81C7/5E8DF958" Ref="J6"  Part="1" 
F 0 "J6" H 2208 1981 50  0000 C CNN
F 1 "9V Power JST XH" H 2000 1900 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2100 1800 50  0001 C CNN
F 3 "~" H 2100 1800 50  0001 C CNN
	1    2100 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 2200 1500 2200
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5FACFC6D
P 1350 3000
AR Path="/5FACFC6D" Ref="J?"  Part="1" 
AR Path="/5E8D81C7/5FACFC6D" Ref="J5"  Part="1" 
F 0 "J5" H 1458 3281 50  0000 C CNN
F 1 "TestPower_PinHeader" H 1458 3190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 3000 50  0001 C CNN
F 3 "~" H 1350 3000 50  0001 C CNN
	1    1350 3000
	1    0    0    -1  
$EndComp
Text Notes 1400 2650 0    50   ~ 10
Test Power\n\n
$Comp
L power:+5V #PWR0103
U 1 1 5FACFDD8
P 1900 2900
F 0 "#PWR0103" H 1900 2750 50  0001 C CNN
F 1 "+5V" H 1915 3073 50  0000 C CNN
F 2 "" H 1900 2900 50  0001 C CNN
F 3 "" H 1900 2900 50  0001 C CNN
	1    1900 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5FAD14EB
P 2050 3000
F 0 "#PWR0104" H 2050 2850 50  0001 C CNN
F 1 "+3V3" H 2065 3173 50  0000 C CNN
F 2 "" H 2050 3000 50  0001 C CNN
F 3 "" H 2050 3000 50  0001 C CNN
	1    2050 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAD2482
P 1550 3100
AR Path="/5FAD2482" Ref="#PWR?"  Part="1" 
AR Path="/5E8D81C7/5FAD2482" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1550 2850 50  0001 C CNN
F 1 "GND" H 1555 2927 50  0000 C CNN
F 2 "" H 1550 3100 50  0001 C CNN
F 3 "" H 1550 3100 50  0001 C CNN
	1    1550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3000 2050 3000
Wire Wire Line
	1900 2900 1550 2900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FAD7663
P 3550 1750
AR Path="/5FAD7663" Ref="#FLG?"  Part="1" 
AR Path="/5E8D81C7/5FAD7663" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 3550 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 2000 50  0000 C CNN
F 2 "" H 3550 1750 50  0001 C CNN
F 3 "~" H 3550 1750 50  0001 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1750 3550 1800
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FBDD6C7
P 1150 1700
AR Path="/5FBDD6C7" Ref="#FLG?"  Part="1" 
AR Path="/5E8D81C7/5FBDD6C7" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 1150 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 1873 50  0000 C CNN
F 2 "" H 1150 1700 50  0001 C CNN
F 3 "~" H 1150 1700 50  0001 C CNN
	1    1150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1700 1500 1700
Connection ~ 1500 1700
Wire Wire Line
	1500 1700 1900 1700
Wire Wire Line
	1900 1800 1650 1800
Wire Wire Line
	1650 1800 1650 2200
$EndSCHEMATC
