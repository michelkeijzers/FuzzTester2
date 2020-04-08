EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title "Guitar Pedal Effect Fuzz Digitally Controlled"
Date "2020-04-07"
Rev "0.1"
Comp "Michel Keijzers"
Comment1 ""
Comment2 "and 2 sets of 8 capacitors"
Comment3 "Pedal Effect Fuzz based on 2 sets of 20 different transistors"
Comment4 "Micro Controller Unit and User Interface"
$EndDescr
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 5E8CE625
P 3400 3700
AR Path="/5E8CE625" Ref="U?"  Part="1" 
AR Path="/5E8BDF21/5E8CE625" Ref="U3"  Part="1" 
F 0 "U3" H 3350 2111 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3350 2020 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2800 2300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3400 3700 50  0001 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE62B
P 3400 1900
AR Path="/5E8CE62B" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE62B" Ref="C8"  Part="1" 
F 0 "C8" H 3515 1946 50  0000 L CNN
F 1 "100nF" H 3515 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 1750 50  0001 C CNN
F 3 "~" H 3400 1900 50  0001 C CNN
	1    3400 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE631
P 3900 1900
AR Path="/5E8CE631" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE631" Ref="C9"  Part="1" 
F 0 "C9" H 4015 1946 50  0000 L CNN
F 1 "100nF" H 4015 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3938 1750 50  0001 C CNN
F 3 "~" H 3900 1900 50  0001 C CNN
	1    3900 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE637
P 2800 5350
AR Path="/5E8CE637" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE637" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2800 5200 50  0001 C CNN
F 1 "+3V3" H 2815 5523 50  0000 C CNN
F 2 "" H 2800 5350 50  0001 C CNN
F 3 "" H 2800 5350 50  0001 C CNN
	1    2800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5350 2950 5350
Wire Wire Line
	2950 5350 2950 5200
Wire Wire Line
	3200 5200 3300 5200
Connection ~ 3300 5200
Wire Wire Line
	3300 5200 3400 5200
Text Label 3000 5200 0    20   ~ 0
3V3
Wire Wire Line
	3300 2100 3300 2200
Wire Wire Line
	3500 2200 3500 2100
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE64D
P 4350 2100
AR Path="/5E8CE64D" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE64D" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 4350 1950 50  0001 C CNN
F 1 "+3V3" H 4365 2273 50  0000 C CNN
F 2 "" H 4350 2100 50  0001 C CNN
F 3 "" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8CE656
P 4350 1650
AR Path="/5E8CE656" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE656" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 4350 1400 50  0001 C CNN
F 1 "GND" H 4355 1477 50  0000 C CNN
F 2 "" H 4350 1650 50  0001 C CNN
F 3 "" H 4350 1650 50  0001 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1650 3900 1750
Wire Wire Line
	3400 1650 3400 1750
Connection ~ 3400 1650
Wire Wire Line
	3400 1650 3900 1650
Wire Wire Line
	2900 1650 2900 1750
Wire Wire Line
	2900 1650 3400 1650
$Comp
L Device:Crystal Y?
U 1 1 5E8CE662
P 2250 2850
AR Path="/5E8CE662" Ref="Y?"  Part="1" 
AR Path="/5E8BDF21/5E8CE662" Ref="Y1"  Part="1" 
F 0 "Y1" V 2204 2981 50  0000 L CNN
F 1 "8MHz" V 2295 2981 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 2250 2850 50  0001 C CNN
F 3 "~" H 2250 2850 50  0001 C CNN
	1    2250 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE668
P 1950 2650
AR Path="/5E8CE668" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE668" Ref="C5"  Part="1" 
F 0 "C5" V 1698 2650 50  0000 C CNN
F 1 "20pF" V 1789 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1988 2500 50  0001 C CNN
F 3 "~" H 1950 2650 50  0001 C CNN
	1    1950 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE66E
P 1950 3050
AR Path="/5E8CE66E" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE66E" Ref="C6"  Part="1" 
F 0 "C6" V 1698 3050 50  0000 C CNN
F 1 "20pF" V 1789 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1988 2900 50  0001 C CNN
F 3 "~" H 1950 3050 50  0001 C CNN
	1    1950 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2900 2700 3000
Wire Wire Line
	2700 3000 2250 3000
Wire Wire Line
	2100 3050 2100 3000
Wire Wire Line
	2100 3000 2250 3000
Connection ~ 2250 3000
Wire Wire Line
	2100 2650 2100 2700
Wire Wire Line
	2100 2700 2250 2700
Wire Wire Line
	2250 2700 2700 2700
Wire Wire Line
	2700 2700 2700 2800
Connection ~ 2250 2700
$Comp
L power:GND #PWR?
U 1 1 5E8CE67E
P 1700 3050
AR Path="/5E8CE67E" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE67E" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 1700 2800 50  0001 C CNN
F 1 "GND" H 1705 2877 50  0000 C CNN
F 2 "" H 1700 3050 50  0001 C CNN
F 3 "" H 1700 3050 50  0001 C CNN
	1    1700 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8CE684
P 1700 2650
AR Path="/5E8CE684" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE684" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 1700 2400 50  0001 C CNN
F 1 "GND" H 1705 2477 50  0000 C CNN
F 2 "" H 1700 2650 50  0001 C CNN
F 3 "" H 1700 2650 50  0001 C CNN
	1    1700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2650 1800 2650
Wire Wire Line
	1700 3050 1800 3050
Wire Wire Line
	3900 1650 4350 1650
Connection ~ 3900 1650
$Comp
L Device:C C?
U 1 1 5E8CE690
P 2900 1900
AR Path="/5E8CE690" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE690" Ref="C7"  Part="1" 
F 0 "C7" H 3015 1946 50  0000 L CNN
F 1 "100nF" H 3015 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2938 1750 50  0001 C CNN
F 3 "~" H 2900 1900 50  0001 C CNN
	1    2900 1900
	1    0    0    -1  
$EndComp
Text Label 2400 3700 0    50   ~ 0
PB2
Wire Wire Line
	2400 3700 2700 3700
Wire Wire Line
	2950 5200 3200 5200
Connection ~ 3200 5200
Text Notes 2500 1550 0    50   ~ 10
Micro Controller Unit\n\n\n
Wire Wire Line
	2700 4100 2150 4100
Wire Wire Line
	2700 4200 2150 4200
Text Label 2150 4100 0    50   ~ 0
I2C1_SCL
Text Label 2150 4200 0    50   ~ 0
I2C1_SDA
Text Notes 2500 5600 0    20   ~ 0
https://vivonomicon.com/2018/05/05/your-own-hardware-designing-an-stm32-development-board/
Text Label 4100 4800 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 4100 4900 0    50   ~ 0
SYS_JTICK_SWCLK
Wire Wire Line
	4000 4800 4800 4800
Wire Wire Line
	4000 4900 4800 4900
Text Label 2350 2400 0    50   ~ 0
NRST
Wire Wire Line
	2350 2400 2700 2400
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5E8D4960
P 6900 1500
AR Path="/5E8D4960" Ref="J?"  Part="1" 
AR Path="/5E8BDF21/5E8D4960" Ref="J9"  Part="1" 
F 0 "J9" H 7008 1781 50  0000 C CNN
F 1 "SWD_PinHeader" H 6900 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6900 1500 50  0001 C CNN
F 3 "~" H 6900 1500 50  0001 C CNN
	1    6900 1500
	-1   0    0    1   
$EndComp
Text Label 6000 1300 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 6000 1400 0    50   ~ 0
SYS_JTICK_SWCLK
$Comp
L power:GND #PWR?
U 1 1 5E8D4968
P 6150 1500
AR Path="/5E8D4968" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8D4968" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 6150 1250 50  0001 C CNN
F 1 "GND" H 6155 1327 50  0000 C CNN
F 2 "" H 6150 1500 50  0001 C CNN
F 3 "" H 6150 1500 50  0001 C CNN
	1    6150 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E8D496E
P 6400 1750
AR Path="/5E8D496E" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8D496E" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 6400 1600 50  0001 C CNN
F 1 "+5V" H 6415 1923 50  0000 C CNN
F 2 "" H 6400 1750 50  0001 C CNN
F 3 "" H 6400 1750 50  0001 C CNN
	1    6400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1750 6550 1600
Wire Wire Line
	6550 1600 6700 1600
Wire Wire Line
	6400 1750 6550 1750
Wire Wire Line
	6700 1500 6150 1500
Wire Wire Line
	5900 1300 6700 1300
Wire Wire Line
	5900 1400 6700 1400
$Comp
L power:GND #PWR?
U 1 1 5E8D497B
P 6550 3000
AR Path="/5E8D497B" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8D497B" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6550 2750 50  0001 C CNN
F 1 "GND" H 6555 2827 50  0000 C CNN
F 2 "" H 6550 3000 50  0001 C CNN
F 3 "" H 6550 3000 50  0001 C CNN
	1    6550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8D4981
P 6900 3150
AR Path="/5E8D4981" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8D4981" Ref="C10"  Part="1" 
F 0 "C10" H 6785 3104 50  0000 R CNN
F 1 "100nF" H 6785 3195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6938 3000 50  0001 C CNN
F 3 "~" H 6900 3150 50  0001 C CNN
	1    6900 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 3000 6550 3000
Wire Wire Line
	6400 3300 6400 3100
Wire Wire Line
	6400 3100 6100 3100
Wire Wire Line
	6550 3000 6100 3000
Connection ~ 6550 3000
Wire Wire Line
	6300 3200 6100 3200
Text Label 6100 3200 0    50   ~ 0
PB2
Connection ~ 6900 3300
Wire Wire Line
	6900 3300 7300 3300
Wire Wire Line
	6400 3300 6900 3300
Text Label 7100 3300 0    50   ~ 0
NRST
Text Notes 6200 2750 0    50   ~ 10
Boot/Reset\n
Text HLabel 4000 4100 2    50   Input ~ 0
GPIO_LATCH
Text HLabel 2700 4800 0    50   Input ~ 0
SPI2_CSK
Text HLabel 2700 5000 0    50   Input ~ 0
SPI2_MOSI
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5EBB7B0E
P 6300 4600
AR Path="/5EBB7B0E" Ref="J?"  Part="1" 
AR Path="/5E8F7778/5EBB7B0E" Ref="J?"  Part="1" 
AR Path="/5E8BDF21/5EBB7B0E" Ref="J8"  Part="1" 
F 0 "J8" H 6408 4881 50  0000 C CNN
F 1 "SPI Test PinHeader" H 6408 4790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6300 4600 50  0001 C CNN
F 3 "~" H 6300 4600 50  0001 C CNN
	1    6300 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBB7B14
P 6100 4600
AR Path="/5EBB7B14" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EBB7B14" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EBB7B14" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 6100 4350 50  0001 C CNN
F 1 "GND" H 6105 4427 50  0000 C CNN
F 2 "" H 6100 4600 50  0001 C CNN
F 3 "" H 6100 4600 50  0001 C CNN
	1    6100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4600 6500 4600
Text Notes 6250 4350 0    50   ~ 10
SPI Test\n\n\n
Text HLabel 6500 4500 2    50   Input ~ 0
SPI2_CSK
Text HLabel 6500 4700 2    50   Input ~ 0
SPI2_MOSI
Text HLabel 6500 4800 2    50   Input ~ 0
GPIO_LATCH
Text Notes 6350 1300 0    50   ~ 10
SWD\n\n\n
NoConn ~ 2700 3600
NoConn ~ 2700 3500
NoConn ~ 2700 3300
NoConn ~ 2700 3200
NoConn ~ 2700 3100
NoConn ~ 2700 4700
NoConn ~ 2700 4600
NoConn ~ 2700 4500
NoConn ~ 2700 4400
NoConn ~ 2700 4300
NoConn ~ 4000 4700
NoConn ~ 4000 4600
NoConn ~ 4000 4200
NoConn ~ 4000 4000
NoConn ~ 4000 3900
NoConn ~ 4000 3800
NoConn ~ 4000 3700
NoConn ~ 4000 3600
NoConn ~ 4000 3500
NoConn ~ 3200 2200
NoConn ~ 3600 2200
NoConn ~ 3500 5200
$Comp
L power:GND #PWR?
U 1 1 5FBAF081
P 2500 2450
AR Path="/5FBAF081" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5FBAF081" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2500 2200 50  0001 C CNN
F 1 "GND" H 2505 2277 50  0000 C CNN
F 2 "" H 2500 2450 50  0001 C CNN
F 3 "" H 2500 2450 50  0001 C CNN
	1    2500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2450 2700 2450
Wire Wire Line
	2700 2450 2700 2600
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5FBB3467
P 5900 3100
F 0 "J7" H 6008 3381 50  0000 C CNN
F 1 "Boot Reset PinHeader" H 6008 3290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5900 3100 50  0001 C CNN
F 3 "~" H 5900 3100 50  0001 C CNN
	1    5900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2100 3900 2100
Wire Wire Line
	2900 2100 3300 2100
Connection ~ 3900 2100
Wire Wire Line
	3900 2100 4350 2100
Wire Wire Line
	3900 2050 3900 2100
Wire Wire Line
	2900 2050 2900 2100
Wire Wire Line
	3400 2050 3400 2100
Wire Wire Line
	3300 2100 3400 2100
Connection ~ 3300 2100
Connection ~ 3500 2100
Wire Wire Line
	3500 2100 3400 2100
Connection ~ 3400 2100
Wire Wire Line
	3400 2100 3400 2200
Wire Notes Line
	5350 550  5350 7700
Wire Notes Line
	7600 5200 5350 5200
Wire Notes Line
	7600 550  7600 5200
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5EA32E9B
P 8150 1550
AR Path="/5EA32E9B" Ref="J?"  Part="1" 
AR Path="/5E8F7778/5EA32E9B" Ref="J?"  Part="1" 
AR Path="/5E8BDF21/5EA32E9B" Ref="J10"  Part="1" 
F 0 "J10" H 8258 2031 50  0000 C CNN
F 1 "Key Pad JST XH" H 8250 1950 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B8B-XH-A_1x08_P2.50mm_Vertical" H 8150 1550 50  0001 C CNN
F 3 "~" H 8150 1550 50  0001 C CNN
	1    8150 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EA1
P 9500 1650
AR Path="/5EA32EA1" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EA1" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EA1" Ref="R8"  Part="1" 
F 0 "R8" V 9450 1800 50  0000 C CNN
F 1 "1K" V 9500 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9430 1650 50  0001 C CNN
F 3 "~" H 9500 1650 50  0001 C CNN
	1    9500 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EA7
P 9150 1750
AR Path="/5EA32EA7" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EA7" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EA7" Ref="R7"  Part="1" 
F 0 "R7" V 9100 1900 50  0000 C CNN
F 1 "1K" V 9150 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9080 1750 50  0001 C CNN
F 3 "~" H 9150 1750 50  0001 C CNN
	1    9150 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EAD
P 8800 1850
AR Path="/5EA32EAD" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EAD" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EAD" Ref="R6"  Part="1" 
F 0 "R6" V 8750 2000 50  0000 C CNN
F 1 "1K" V 8800 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8730 1850 50  0001 C CNN
F 3 "~" H 8800 1850 50  0001 C CNN
	1    8800 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EB3
P 8450 1950
AR Path="/5EA32EB3" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EB3" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EB3" Ref="R5"  Part="1" 
F 0 "R5" V 8400 2100 50  0000 C CNN
F 1 "1K" V 8450 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 1950 50  0001 C CNN
F 3 "~" H 8450 1950 50  0001 C CNN
	1    8450 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 1750 8350 1750
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5EA32EBC
P 8850 3250
AR Path="/5EA32EBC" Ref="J?"  Part="1" 
AR Path="/5E8F7778/5EA32EBC" Ref="J?"  Part="1" 
AR Path="/5E8BDF21/5EA32EBC" Ref="J11"  Part="1" 
F 0 "J11" H 8958 3531 50  0000 C CNN
F 1 "1602 LCD JST XH" H 8958 3440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 8850 3250 50  0001 C CNN
F 3 "~" H 8850 3250 50  0001 C CNN
	1    8850 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA32EC2
P 9800 3250
AR Path="/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC2" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 9800 3000 50  0001 C CNN
F 1 "GND" H 9805 3077 50  0000 C CNN
F 2 "" H 9800 3250 50  0001 C CNN
F 3 "" H 9800 3250 50  0001 C CNN
	1    9800 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EA32EC8
P 9600 3500
AR Path="/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC8" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 9600 3350 50  0001 C CNN
F 1 "+5V" H 9615 3673 50  0000 C CNN
F 2 "" H 9600 3500 50  0001 C CNN
F 3 "" H 9600 3500 50  0001 C CNN
	1    9600 3500
	1    0    0    -1  
$EndComp
Text Notes 9050 1200 0    50   ~ 10
Key Pad\n\n\n\n
Text Notes 9050 2950 0    50   ~ 10
1602 LCD\n\n\n
Wire Wire Line
	9050 3250 9800 3250
Wire Wire Line
	9050 3350 9500 3350
Wire Wire Line
	9500 3350 9500 3500
Wire Wire Line
	9500 3500 9600 3500
Text HLabel 9050 3150 2    50   Input ~ 0
I2C1_SCL
Text HLabel 9050 3450 2    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	8350 1650 9350 1650
Wire Wire Line
	8350 1850 8650 1850
Text Label 4950 4400 2    50   ~ 0
GPIO_KEYPAD_COLUMN_2
Text Label 4950 4300 2    50   ~ 0
GPIO_KEYPAD_COLUMN_3
Text Label 5000 3500 2    50   ~ 0
GPIO_KEYPAD_COLUMN_4
Text Label 4950 4500 2    50   ~ 0
GPIO_KEYPAD_COLUMN_1
Text Label 2650 4900 2    50   ~ 0
GPIO_KEYPAD_COLUMN_4
Wire Wire Line
	2700 4900 1700 4900
Wire Wire Line
	4000 4500 4950 4500
Wire Wire Line
	4950 4400 4000 4400
Wire Wire Line
	4000 4300 4950 4300
Text Label 4850 5000 2    50   ~ 0
GPIO_KEYPAD_ROW_1
Text Label 2600 3800 2    50   ~ 0
GPIO_KEYPAD_ROW_2
Text Label 2600 3900 2    50   ~ 0
GPIO_KEYPAD_ROW_3
Text Label 2600 4000 2    50   ~ 0
GPIO_KEYPAD_ROW_4
Wire Wire Line
	4000 5000 4850 5000
Wire Wire Line
	2700 3800 1800 3800
Wire Wire Line
	1800 3900 2700 3900
Wire Wire Line
	2700 4000 1800 4000
Text Label 9150 1350 2    50   ~ 0
GPIO_KEYPAD_ROW_2
Text Label 9150 1450 2    50   ~ 0
GPIO_KEYPAD_ROW_3
Text Label 9150 1550 2    50   ~ 0
GPIO_KEYPAD_ROW_4
Wire Wire Line
	9250 1350 8350 1350
Wire Wire Line
	8350 1450 9250 1450
Wire Wire Line
	9250 1550 8350 1550
Text Label 9150 1250 2    50   ~ 0
GPIO_KEYPAD_ROW_1
Wire Wire Line
	9250 1250 8350 1250
Text Label 10600 1750 2    50   ~ 0
GPIO_KEYPAD_COLUMN_2
Text Label 10600 1850 2    50   ~ 0
GPIO_KEYPAD_COLUMN_3
Text Label 10600 1650 2    50   ~ 0
GPIO_KEYPAD_COLUMN_1
Wire Wire Line
	9650 1650 10600 1650
Text Label 10600 1950 2    50   ~ 0
GPIO_KEYPAD_COLUMN_4
Wire Wire Line
	9300 1750 10600 1750
Wire Wire Line
	8950 1850 10600 1850
Wire Wire Line
	8600 1950 10600 1950
Wire Notes Line
	5350 2450 11200 2450
Wire Notes Line
	5350 3850 11200 3850
$EndSCHEMATC
