EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 11
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
P 3100 3050
AR Path="/5E8CE625" Ref="U?"  Part="1" 
AR Path="/5E8BDF21/5E8CE625" Ref="U3"  Part="1" 
F 0 "U3" H 3050 1461 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3050 1370 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2500 1650 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3100 3050 50  0001 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE62B
P 3100 1250
AR Path="/5E8CE62B" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE62B" Ref="C8"  Part="1" 
F 0 "C8" H 3215 1296 50  0000 L CNN
F 1 "100nF" H 3215 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3138 1100 50  0001 C CNN
F 3 "~" H 3100 1250 50  0001 C CNN
	1    3100 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE631
P 3600 1250
AR Path="/5E8CE631" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE631" Ref="C9"  Part="1" 
F 0 "C9" H 3715 1296 50  0000 L CNN
F 1 "100nF" H 3715 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 1100 50  0001 C CNN
F 3 "~" H 3600 1250 50  0001 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE637
P 2500 4700
AR Path="/5E8CE637" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE637" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2500 4550 50  0001 C CNN
F 1 "+3V3" H 2515 4873 50  0000 C CNN
F 2 "" H 2500 4700 50  0001 C CNN
F 3 "" H 2500 4700 50  0001 C CNN
	1    2500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4700 2650 4700
Wire Wire Line
	2650 4700 2650 4550
Wire Wire Line
	2900 4550 3000 4550
Connection ~ 3000 4550
Wire Wire Line
	3000 4550 3100 4550
Text Label 2700 4550 0    20   ~ 0
3V3
Wire Wire Line
	3000 1450 3000 1550
Wire Wire Line
	3200 1550 3200 1450
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE64D
P 4050 1450
AR Path="/5E8CE64D" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE64D" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 4050 1300 50  0001 C CNN
F 1 "+3V3" H 4065 1623 50  0000 C CNN
F 2 "" H 4050 1450 50  0001 C CNN
F 3 "" H 4050 1450 50  0001 C CNN
	1    4050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8CE656
P 4050 1000
AR Path="/5E8CE656" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE656" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 4050 750 50  0001 C CNN
F 1 "GND" H 4055 827 50  0000 C CNN
F 2 "" H 4050 1000 50  0001 C CNN
F 3 "" H 4050 1000 50  0001 C CNN
	1    4050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1000 3600 1100
Wire Wire Line
	3100 1000 3100 1100
Connection ~ 3100 1000
Wire Wire Line
	3100 1000 3600 1000
Wire Wire Line
	2600 1000 2600 1100
Wire Wire Line
	2600 1000 3100 1000
$Comp
L Device:Crystal Y?
U 1 1 5E8CE662
P 1950 2200
AR Path="/5E8CE662" Ref="Y?"  Part="1" 
AR Path="/5E8BDF21/5E8CE662" Ref="Y1"  Part="1" 
F 0 "Y1" V 1904 2331 50  0000 L CNN
F 1 "8MHz" V 1995 2331 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 1950 2200 50  0001 C CNN
F 3 "~" H 1950 2200 50  0001 C CNN
	1    1950 2200
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE668
P 1650 2000
AR Path="/5E8CE668" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE668" Ref="C5"  Part="1" 
F 0 "C5" V 1398 2000 50  0000 C CNN
F 1 "20pF" V 1489 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1688 1850 50  0001 C CNN
F 3 "~" H 1650 2000 50  0001 C CNN
	1    1650 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE66E
P 1650 2400
AR Path="/5E8CE66E" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE66E" Ref="C6"  Part="1" 
F 0 "C6" V 1398 2400 50  0000 C CNN
F 1 "20pF" V 1489 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1688 2250 50  0001 C CNN
F 3 "~" H 1650 2400 50  0001 C CNN
	1    1650 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 2250 2400 2350
Wire Wire Line
	2400 2350 1950 2350
Wire Wire Line
	1800 2400 1800 2350
Wire Wire Line
	1800 2350 1950 2350
Connection ~ 1950 2350
Wire Wire Line
	1800 2000 1800 2050
Wire Wire Line
	1800 2050 1950 2050
Wire Wire Line
	1950 2050 2400 2050
Wire Wire Line
	2400 2050 2400 2150
Connection ~ 1950 2050
$Comp
L power:GND #PWR?
U 1 1 5E8CE67E
P 1400 2400
AR Path="/5E8CE67E" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE67E" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 1400 2150 50  0001 C CNN
F 1 "GND" H 1405 2227 50  0000 C CNN
F 2 "" H 1400 2400 50  0001 C CNN
F 3 "" H 1400 2400 50  0001 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8CE684
P 1400 2000
AR Path="/5E8CE684" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE684" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 1400 1750 50  0001 C CNN
F 1 "GND" H 1405 1827 50  0000 C CNN
F 2 "" H 1400 2000 50  0001 C CNN
F 3 "" H 1400 2000 50  0001 C CNN
	1    1400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2000 1500 2000
Wire Wire Line
	1400 2400 1500 2400
Wire Wire Line
	3600 1000 4050 1000
Connection ~ 3600 1000
$Comp
L Device:C C?
U 1 1 5E8CE690
P 2600 1250
AR Path="/5E8CE690" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE690" Ref="C7"  Part="1" 
F 0 "C7" H 2715 1296 50  0000 L CNN
F 1 "100nF" H 2715 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2638 1100 50  0001 C CNN
F 3 "~" H 2600 1250 50  0001 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
Text Label 2100 3050 0    50   ~ 0
PB2
Wire Wire Line
	2100 3050 2400 3050
Wire Wire Line
	2650 4550 2900 4550
Connection ~ 2900 4550
Text Notes 2200 900  0    50   ~ 10
Micro Controller Unit\n\n\n
Wire Wire Line
	2400 3550 1650 3550
Text Label 1650 3450 0    50   ~ 0
I2C1_SCL_MCU
Text Label 1650 3550 0    50   ~ 0
I2C1_SDA_MCU
Text Notes 2200 4950 0    20   ~ 0
https://vivonomicon.com/2018/05/05/your-own-hardware-designing-an-stm32-development-board/
Text Label 3750 4150 0    50   ~ 0
SYS_JTMS_SWDIO_MCU
Text Label 3750 4250 0    50   ~ 0
SYS_JTICK_SWCLK_MCU
Text Label 2050 1750 0    50   ~ 0
NRST
Wire Wire Line
	2050 1750 2400 1750
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5E8D4960
P 6900 1500
AR Path="/5E8D4960" Ref="J?"  Part="1" 
AR Path="/5E8BDF21/5E8D4960" Ref="J9"  Part="1" 
F 0 "J9" H 7050 1100 50  0000 C CNN
F 1 "SWD_PinHeader" H 6950 1200 50  0000 C CNN
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
P 7100 4600
AR Path="/5EBB7B14" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EBB7B14" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EBB7B14" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 7100 4350 50  0001 C CNN
F 1 "GND" H 7105 4427 50  0000 C CNN
F 2 "" H 7100 4600 50  0001 C CNN
F 3 "" H 7100 4600 50  0001 C CNN
	1    7100 4600
	1    0    0    -1  
$EndComp
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
NoConn ~ 2400 2650
NoConn ~ 2400 2550
NoConn ~ 2400 2450
NoConn ~ 2400 4050
NoConn ~ 2400 3950
NoConn ~ 2400 3850
NoConn ~ 2400 3750
NoConn ~ 2400 3650
NoConn ~ 3700 4050
NoConn ~ 3700 3950
NoConn ~ 3700 3550
NoConn ~ 3700 3350
NoConn ~ 3700 3250
NoConn ~ 3700 2950
NoConn ~ 3700 2850
NoConn ~ 2900 1550
NoConn ~ 3300 1550
NoConn ~ 3200 4550
$Comp
L power:GND #PWR?
U 1 1 5FBAF081
P 2200 1800
AR Path="/5FBAF081" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5FBAF081" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2200 1550 50  0001 C CNN
F 1 "GND" H 2205 1627 50  0000 C CNN
F 2 "" H 2200 1800 50  0001 C CNN
F 3 "" H 2200 1800 50  0001 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1800 2400 1800
Wire Wire Line
	2400 1800 2400 1950
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
	3200 1450 3600 1450
Wire Wire Line
	2600 1450 3000 1450
Connection ~ 3600 1450
Wire Wire Line
	3600 1450 4050 1450
Wire Wire Line
	3600 1400 3600 1450
Wire Wire Line
	2600 1400 2600 1450
Wire Wire Line
	3100 1400 3100 1450
Wire Wire Line
	3000 1450 3100 1450
Connection ~ 3000 1450
Connection ~ 3200 1450
Wire Wire Line
	3200 1450 3100 1450
Connection ~ 3100 1450
Wire Wire Line
	3100 1450 3100 1550
Wire Notes Line
	5350 550  5350 7700
Wire Notes Line
	7600 550  7600 5200
$Comp
L Device:R R?
U 1 1 5EA32EA1
P 8500 1550
AR Path="/5EA32EA1" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EA1" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EA1" Ref="R8"  Part="1" 
F 0 "R8" V 8450 1700 50  0000 C CNN
F 1 "1K" V 8500 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 1550 50  0001 C CNN
F 3 "~" H 8500 1550 50  0001 C CNN
	1    8500 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EA7
P 8500 1450
AR Path="/5EA32EA7" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EA7" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EA7" Ref="R7"  Part="1" 
F 0 "R7" V 8450 1600 50  0000 C CNN
F 1 "1K" V 8500 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 1450 50  0001 C CNN
F 3 "~" H 8500 1450 50  0001 C CNN
	1    8500 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EAD
P 8500 1350
AR Path="/5EA32EAD" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EAD" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EAD" Ref="R6"  Part="1" 
F 0 "R6" V 8450 1500 50  0000 C CNN
F 1 "1K" V 8500 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 1350 50  0001 C CNN
F 3 "~" H 8500 1350 50  0001 C CNN
	1    8500 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EB3
P 8500 1250
AR Path="/5EA32EB3" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EB3" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EB3" Ref="R5"  Part="1" 
F 0 "R5" V 8450 1400 50  0000 C CNN
F 1 "1K" V 8500 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 1250 50  0001 C CNN
F 3 "~" H 8500 1250 50  0001 C CNN
	1    8500 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA32EC2
P 9300 3150
AR Path="/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC2" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9305 2977 50  0000 C CNN
F 2 "" H 9300 3150 50  0001 C CNN
F 3 "" H 9300 3150 50  0001 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EA32EC8
P 9500 3400
AR Path="/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC8" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 9500 3250 50  0001 C CNN
F 1 "+5V" H 9515 3573 50  0000 C CNN
F 2 "" H 9500 3400 50  0001 C CNN
F 3 "" H 9500 3400 50  0001 C CNN
	1    9500 3400
	1    0    0    -1  
$EndComp
Text Notes 10550 800  0    50   ~ 10
Key Pad\n\n\n\n
Text Notes 8500 2950 0    50   ~ 10
1602 LCD\n\n\n
Wire Wire Line
	8700 3350 9150 3350
Wire Wire Line
	2400 4250 1400 4250
Wire Wire Line
	3700 3850 4650 3850
Wire Wire Line
	4650 3750 3700 3750
Wire Wire Line
	3700 3650 4650 3650
Text Label 9500 1850 2    50   ~ 0
GPIO_KEYPAD_ROW_2
Text Label 9500 1750 2    50   ~ 0
GPIO_KEYPAD_ROW_3
Wire Wire Line
	9650 1750 8350 1750
Wire Wire Line
	8350 1850 9650 1850
Wire Wire Line
	9650 1950 8350 1950
Text Label 9500 1950 2    50   ~ 0
GPIO_KEYPAD_ROW_1
Wire Wire Line
	9650 1650 8350 1650
Text Label 9650 1350 2    50   ~ 0
GPIO_KEYPAD_COLUMN_2
Text Label 9650 1450 2    50   ~ 0
GPIO_KEYPAD_COLUMN_3
Text Label 9650 1250 2    50   ~ 0
GPIO_KEYPAD_COLUMN_1
Text Label 9650 1550 2    50   ~ 0
GPIO_KEYPAD_COLUMN_4
Wire Notes Line
	5350 2450 11200 2450
Wire Notes Line
	5350 3850 11200 3850
Text Label 8700 3150 0    50   ~ 0
I2C1_SCL
Text Label 8700 3450 0    50   ~ 0
I2C1_SDA
Wire Wire Line
	8700 3450 9050 3450
Wire Wire Line
	8700 3150 9050 3150
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
Wire Wire Line
	7100 4600 6500 4600
Wire Wire Line
	9150 3400 9150 3350
Wire Wire Line
	9150 3400 9500 3400
Wire Wire Line
	8700 3250 9150 3250
Wire Wire Line
	9150 3150 9300 3150
Wire Wire Line
	9150 3250 9150 3150
Text Notes 8500 4300 0    50   ~ 10
Bypass\n\n\n
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5EBECF25
P 8500 4400
F 0 "J12" H 8608 4581 50  0000 C CNN
F 1 "Bypass Switch JST XH" H 8608 4490 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 8500 4400 50  0001 C CNN
F 3 "~" H 8500 4400 50  0001 C CNN
	1    8500 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J11
U 1 1 5E92561C
P 8500 3350
F 0 "J11" H 8608 3731 50  0000 C CNN
F 1 "LCD JST XH" H 8608 3640 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 8500 3350 50  0001 C CNN
F 3 "~" H 8500 3350 50  0001 C CNN
	1    8500 3350
	1    0    0    -1  
$EndComp
Text HLabel 8700 3550 2    50   Input ~ 0
1602_BACK_LIGHT_PIN_1
Text HLabel 8700 3650 2    50   Input ~ 0
1602_BACK_LIGHT_PIN_2
$Comp
L power:+3V3 #PWR046
U 1 1 5E9950D9
P 9250 4400
F 0 "#PWR046" H 9250 4250 50  0001 C CNN
F 1 "+3V3" H 9265 4573 50  0000 C CNN
F 2 "" H 9250 4400 50  0001 C CNN
F 3 "" H 9250 4400 50  0001 C CNN
	1    9250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4400 9250 4400
NoConn ~ 2400 2850
Text Notes 4050 2950 0    50   ~ 0
Pull Down Resistor
Text HLabel 3700 3150 2    50   Input ~ 0
BYPASS_MODE_3V3
Text Label 4500 3050 2    50   ~ 0
BYPASS_SWITCH_3V3
Wire Wire Line
	3700 3050 4500 3050
Text Label 9450 4500 2    50   ~ 0
BYPASS_SWITCH_3V3
Wire Wire Line
	8700 4500 9450 4500
Wire Wire Line
	2400 3350 1500 3350
Wire Wire Line
	1500 3250 2400 3250
Wire Wire Line
	2400 3150 1500 3150
Text Label 2300 3350 2    50   ~ 0
GPIO_KEYPAD_ROW_4
Text Label 4650 3850 2    50   ~ 0
GPIO_KEYPAD_COLUMN_1
Text Label 2300 3250 2    50   ~ 0
GPIO_KEYPAD_ROW_3
Text Label 4650 3750 2    50   ~ 0
GPIO_KEYPAD_COLUMN_2
Text Label 4650 3650 2    50   ~ 0
GPIO_KEYPAD_COLUMN_3
Text Label 2300 3150 2    50   ~ 0
GPIO_KEYPAD_ROW_2
Wire Wire Line
	3700 4350 4550 4350
Text Label 4550 4350 2    50   ~ 0
GPIO_KEYPAD_ROW_1
Text Label 2350 4250 2    50   ~ 0
GPIO_KEYPAD_COLUMN_4
NoConn ~ 2400 2950
Text Label 9500 1650 2    50   ~ 0
GPIO_KEYPAD_ROW_4
Wire Wire Line
	8650 1250 9650 1250
Wire Wire Line
	8650 1350 9650 1350
Wire Wire Line
	8650 1450 9650 1450
Wire Wire Line
	8650 1550 9650 1550
Wire Wire Line
	1650 3450 2400 3450
$Comp
L Device:R_Pack04 RN1
U 1 1 5EA7B481
P 1850 6700
F 0 "RN1" V 1433 6700 50  0000 C CNN
F 1 "R_Pack04" V 1524 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 2125 6700 50  0001 C CNN
F 3 "~" H 1850 6700 50  0001 C CNN
	1    1850 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5EA7D58B
P 4150 6700
F 0 "RN2" V 3733 6700 50  0000 C CNN
F 1 "R_Pack04" V 3824 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 4425 6700 50  0001 C CNN
F 3 "~" H 4150 6700 50  0001 C CNN
	1    4150 6700
	0    1    1    0   
$EndComp
Text Label 3050 6500 0    50   ~ 0
SYS_JTMS_SWDIO_MCU
Text Label 3050 6600 0    50   ~ 0
SYS_JTICK_SWCLK_MCU
Text Label 4350 6500 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 4350 6600 0    50   ~ 0
SYS_JTICK_SWCLK
Text Label 850  6700 0    50   ~ 0
SPI2_MOSI_MCU
Text HLabel 2050 6700 2    50   Input ~ 0
SPI2_MOSI
Text HLabel 2050 6600 2    50   Input ~ 0
SPI2_CSK
Text Label 1750 4350 0    50   ~ 0
SPI2_MOSI_MCU
Text Label 1750 4150 0    50   ~ 0
SPI2_CSK_MCU
Wire Wire Line
	1750 4150 2400 4150
Text Label 850  6600 0    50   ~ 0
SPI2_CSK_MCU
Wire Wire Line
	1750 4350 2400 4350
Wire Wire Line
	3700 4150 4650 4150
Wire Wire Line
	3700 4250 4650 4250
Text Label 4350 3450 2    50   ~ 0
GPIO_LATCH_MCU
Wire Wire Line
	3700 3450 4350 3450
Text Label 1500 6500 2    50   ~ 0
GPIO_LATCH_MCU
Text HLabel 2050 6500 2    50   Input ~ 0
GPIO_LATCH
Wire Wire Line
	1650 6500 850  6500
Wire Wire Line
	850  6600 1650 6600
Wire Wire Line
	1650 6700 850  6700
Wire Wire Line
	3950 6800 3350 6800
Text Label 3350 6700 0    50   ~ 0
I2C1_SCL_MCU
Text Label 3350 6800 0    50   ~ 0
I2C1_SDA_MCU
Wire Wire Line
	3350 6700 3950 6700
Wire Wire Line
	3950 6600 3050 6600
Wire Wire Line
	3050 6500 3950 6500
Wire Wire Line
	4700 6800 4350 6800
Text Label 4350 6700 0    50   ~ 0
I2C1_SCL
Text Label 4350 6800 0    50   ~ 0
I2C1_SDA
Wire Wire Line
	4350 6700 4700 6700
NoConn ~ 1650 6800
NoConn ~ 2050 6800
Text Notes 1600 6250 0    50   ~ 10
I2C CROSSTALK\n\n\n
Text Notes 3800 6250 0    50   ~ 10
SWDIO/I2C CROSSTALK\n\n\n
Wire Notes Line
	2900 5200 2900 7800
Wire Notes Line
	2900 7800 2950 7800
Wire Notes Line
	500  5200 11200 5200
Text Notes 1250 7050 0    50   ~ 0
Check: Concave or Convex footprint
$EndSCHEMATC
