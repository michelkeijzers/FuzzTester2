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
P 1350 2200
AR Path="/5E8CE662" Ref="Y?"  Part="1" 
AR Path="/5E8BDF21/5E8CE662" Ref="Y1"  Part="1" 
F 0 "Y1" V 1304 2331 50  0000 L CNN
F 1 "8MHz" V 1395 2331 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 1350 2200 50  0001 C CNN
F 3 "~" H 1350 2200 50  0001 C CNN
	1    1350 2200
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE668
P 1050 2000
AR Path="/5E8CE668" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE668" Ref="C5"  Part="1" 
F 0 "C5" V 798 2000 50  0000 C CNN
F 1 "20pF" V 889 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1088 1850 50  0001 C CNN
F 3 "~" H 1050 2000 50  0001 C CNN
	1    1050 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE66E
P 1050 2400
AR Path="/5E8CE66E" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE66E" Ref="C6"  Part="1" 
F 0 "C6" V 798 2400 50  0000 C CNN
F 1 "20pF" V 889 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1088 2250 50  0001 C CNN
F 3 "~" H 1050 2400 50  0001 C CNN
	1    1050 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 2250 2400 2350
Wire Wire Line
	1200 2400 1200 2350
Wire Wire Line
	1200 2350 1350 2350
Connection ~ 1350 2350
Wire Wire Line
	1200 2000 1200 2050
Wire Wire Line
	1200 2050 1350 2050
Wire Wire Line
	2400 2050 2400 2150
Connection ~ 1350 2050
$Comp
L power:GND #PWR?
U 1 1 5E8CE67E
P 800 2400
AR Path="/5E8CE67E" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE67E" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 800 2150 50  0001 C CNN
F 1 "GND" H 805 2227 50  0000 C CNN
F 2 "" H 800 2400 50  0001 C CNN
F 3 "" H 800 2400 50  0001 C CNN
	1    800  2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8CE684
P 800 2000
AR Path="/5E8CE684" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE684" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 800 1750 50  0001 C CNN
F 1 "GND" H 805 1827 50  0000 C CNN
F 2 "" H 800 2000 50  0001 C CNN
F 3 "" H 800 2000 50  0001 C CNN
	1    800  2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2000 900  2000
Wire Wire Line
	800  2400 900  2400
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
Text Label 6050 1400 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 6000 1300 0    50   ~ 0
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
Text Notes 6350 1200 0    50   ~ 10
SWD\n\n\n
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
$Comp
L Device:R R?
U 1 1 5EA32EA7
P 9550 2000
AR Path="/5EA32EA7" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EA7" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EA7" Ref="R7"  Part="1" 
F 0 "R7" V 9500 2150 50  0000 C CNN
F 1 "10K" V 9550 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 2000 50  0001 C CNN
F 3 "~" H 9550 2000 50  0001 C CNN
	1    9550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EAD
P 9400 2000
AR Path="/5EA32EAD" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EAD" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EAD" Ref="R6"  Part="1" 
F 0 "R6" V 9350 2150 50  0000 C CNN
F 1 "10K" V 9400 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9330 2000 50  0001 C CNN
F 3 "~" H 9400 2000 50  0001 C CNN
	1    9400 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA32EB3
P 9250 2000
AR Path="/5EA32EB3" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EA32EB3" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EA32EB3" Ref="R5"  Part="1" 
F 0 "R5" V 9200 2150 50  0000 C CNN
F 1 "10K" V 9250 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9180 2000 50  0001 C CNN
F 3 "~" H 9250 2000 50  0001 C CNN
	1    9250 2000
	1    0    0    -1  
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
Text Notes 8500 2950 0    50   ~ 10
1602 LCD\n\n\n
Wire Wire Line
	8700 3350 9150 3350
Text Label 10400 1550 2    50   ~ 0
GPIO_BUTTON_ENTER
Text Label 10550 1750 2    50   ~ 0
GPIO_BUTTON_INCREASE
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
Text Notes 4600 3050 0    50   ~ 0
Pull Down Resistor
Text Label 4500 3050 2    50   ~ 0
BYPASS_SWITCH_3V3
Wire Wire Line
	3700 3050 4500 3050
Wire Wire Line
	2400 3350 1500 3350
Wire Wire Line
	1500 3250 2400 3250
Wire Wire Line
	2400 3150 1500 3150
Text Label 2300 3350 2    50   ~ 0
GPIO_BUTTON_INCREASE
Text Label 2300 3250 2    50   ~ 0
GPIO_BUTTON_ENTER
Text Label 2300 3150 2    50   ~ 0
GPIO_BUTTON_DECREASE
Wire Wire Line
	1650 3450 2400 3450
Wire Wire Line
	3700 4150 4650 4150
Wire Wire Line
	3700 4250 4650 4250
Wire Notes Line
	2900 7800 2950 7800
Wire Wire Line
	1350 2050 2400 2050
Wire Wire Line
	1350 2350 2400 2350
Wire Wire Line
	3000 4550 3100 4550
Connection ~ 3000 4550
Wire Wire Line
	2650 4550 2900 4550
Wire Wire Line
	2900 4550 3000 4550
Connection ~ 2900 4550
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
NoConn ~ 2400 4150
Text HLabel 2400 2950 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_1_3V3
Text HLabel 2400 3650 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_2_3V3
Text HLabel 2400 3750 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_3_3V3
Text HLabel 2400 3950 0    50   Input ~ 0
CAPACITOR_A_SELECTION_1_3V3
Text HLabel 2400 4050 0    50   Input ~ 0
CAPACITOR_A_SELECTION_2_3V3
Text HLabel 3700 3650 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_0_3V3
Text HLabel 3700 2950 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_1_3V3
Text HLabel 3700 3250 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_2_3V3
Text HLabel 3700 3350 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_3_3V3
Text HLabel 3700 3550 2    50   Input ~ 0
CAPACITOR_D_SELECTION_0_3V3
Text HLabel 3700 3750 2    50   Input ~ 0
CAPACITOR_D_SELECTION_1_3V3
Text HLabel 3700 3850 2    50   Input ~ 0
CAPACITOR_D_SELECTION_2_3V3
Wire Wire Line
	3700 3650 3750 3650
NoConn ~ 3700 3450
NoConn ~ 2400 4250
NoConn ~ 2400 4350
$Comp
L Connector:Conn_01x04_Male J11
U 1 1 5EA543F3
P 8500 3250
F 0 "J11" H 8608 3531 50  0000 C CNN
F 1 "LCD JST XH" H 8608 3440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 8500 3250 50  0001 C CNN
F 3 "~" H 8500 3250 50  0001 C CNN
	1    8500 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5EA7D58B
P 3050 6600
F 0 "RN2" V 2633 6600 50  0000 C CNN
F 1 "R_Pack04" V 2724 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 3325 6600 50  0001 C CNN
F 3 "~" H 3050 6600 50  0001 C CNN
	1    3050 6600
	0    1    1    0   
$EndComp
Text Label 1950 6600 0    50   ~ 0
SYS_JTICK_SWCLK_MCU
Text Label 3250 6700 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 3250 6600 0    50   ~ 0
SYS_JTICK_SWCLK
Wire Wire Line
	2850 6500 1950 6500
Wire Wire Line
	1950 6400 2850 6400
Text Label 3250 6500 0    50   ~ 0
I2C1_SCL
Text Label 3250 6400 0    50   ~ 0
I2C1_SDA
Text Notes 2700 6150 0    50   ~ 10
SWDIO/I2C CROSSTALK\n\n\n
Text Label 2250 6500 0    50   ~ 0
I2C1_SCL_MCU
Text Label 2250 6400 0    50   ~ 0
I2C1_SDA_MCU
Text Label 2000 6700 0    50   ~ 0
SYS_JTMS_SWDIO_MCU
Wire Wire Line
	3250 6500 3900 6500
Wire Wire Line
	3250 6400 3900 6400
Wire Wire Line
	3250 6600 3900 6600
Wire Wire Line
	3250 6700 3900 6700
Wire Wire Line
	1950 6700 2850 6700
Wire Wire Line
	1950 6600 2850 6600
Text Notes 2400 7050 0    50   ~ 0
Check: Concave or Convex footprint
Text Notes 6450 4200 0    50   ~ 10
Bypass\n\n\n
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5EBECF25
P 6200 4300
F 0 "J12" H 6308 4481 50  0000 C CNN
F 1 "Bypass Switch JST XH" H 6308 4390 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 6200 4300 50  0001 C CNN
F 3 "~" H 6200 4300 50  0001 C CNN
	1    6200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR046
U 1 1 5E9950D9
P 6950 4300
F 0 "#PWR046" H 6950 4150 50  0001 C CNN
F 1 "+3V3" H 6965 4473 50  0000 C CNN
F 2 "" H 6950 4300 50  0001 C CNN
F 3 "" H 6950 4300 50  0001 C CNN
	1    6950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4300 6950 4300
Text Label 7150 4400 2    50   ~ 0
BYPASS_SWITCH_3V3
Wire Wire Line
	6400 4400 7150 4400
NoConn ~ 3700 3950
NoConn ~ 3700 4050
NoConn ~ -800 2650
$Comp
L Connector:Conn_01x06_Male J10
U 1 1 5ECC424B
P 8300 1450
F 0 "J10" H 8408 1831 50  0000 C CNN
F 1 "JST XH Buttons" H 8408 1740 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 8300 1450 50  0001 C CNN
F 3 "~" H 8300 1450 50  0001 C CNN
	1    8300 1450
	1    0    0    -1  
$EndComp
Text Label 10550 1350 2    50   ~ 0
GPIO_BUTTON_DECREASE
Connection ~ 9250 1350
Wire Wire Line
	9250 1350 10550 1350
Wire Wire Line
	9400 1550 10400 1550
Connection ~ 9400 1550
Wire Wire Line
	9550 1750 10550 1750
Connection ~ 9550 1750
$Comp
L power:+3V3 #PWR023
U 1 1 5ECEF799
P 8800 1000
F 0 "#PWR023" H 8800 850 50  0001 C CNN
F 1 "+3V3" H 8815 1173 50  0000 C CNN
F 2 "" H 8800 1000 50  0001 C CNN
F 3 "" H 8800 1000 50  0001 C CNN
	1    8800 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1350 9250 1350
Wire Wire Line
	8500 1550 9400 1550
Wire Wire Line
	8500 1750 9550 1750
Wire Wire Line
	8500 1650 8800 1650
Wire Wire Line
	8800 1650 8800 1450
Wire Wire Line
	8500 1450 8800 1450
Connection ~ 8800 1450
Wire Wire Line
	8800 1450 8800 1250
Wire Wire Line
	8500 1250 8800 1250
Connection ~ 8800 1250
Wire Wire Line
	8800 1250 8800 1000
Text Notes 9200 900  0    20   ~ 0
See  MicroCap ThreeSwitches
NoConn ~ 3700 2850
NoConn ~ 2400 2650
NoConn ~ 2400 2550
NoConn ~ 2400 2450
NoConn ~ 3700 4350
Text HLabel 2400 3850 0    50   Input ~ 0
CAPACITOR_A_SELECTION_0_3V3
Text HLabel 2400 2850 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_0_3V3
Wire Notes Line
	7700 500  7700 3900
Wire Notes Line
	500  5200 11200 5200
$Comp
L power:GND #PWR0118
U 1 1 5EE03286
P 9400 2150
F 0 "#PWR0118" H 9400 1900 50  0001 C CNN
F 1 "GND" H 9405 1977 50  0000 C CNN
F 2 "" H 9400 2150 50  0001 C CNN
F 3 "" H 9400 2150 50  0001 C CNN
	1    9400 2150
	1    0    0    -1  
$EndComp
Text HLabel 3700 3150 2    50   Input ~ 0
BYPASS_MODE_3V3
$Comp
L Device:R R?
U 1 1 5EE7BBB4
P 6400 4550
AR Path="/5EE7BBB4" Ref="R?"  Part="1" 
AR Path="/5E8F7778/5EE7BBB4" Ref="R?"  Part="1" 
AR Path="/5E8BDF21/5EE7BBB4" Ref="R?"  Part="1" 
F 0 "R?" V 6350 4700 50  0000 C CNN
F 1 "10K" V 6400 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 4550 50  0001 C CNN
F 3 "~" H 6400 4550 50  0001 C CNN
	1    6400 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE7BBBA
P 6400 4700
F 0 "#PWR?" H 6400 4450 50  0001 C CNN
F 1 "GND" H 6405 4527 50  0000 C CNN
F 2 "" H 6400 4700 50  0001 C CNN
F 3 "" H 6400 4700 50  0001 C CNN
	1    6400 4700
	1    0    0    -1  
$EndComp
Connection ~ 6400 4400
Wire Wire Line
	9550 1750 9550 1850
Wire Wire Line
	9400 1850 9400 1550
Wire Wire Line
	9250 1850 9250 1350
Wire Wire Line
	9250 2150 9400 2150
Connection ~ 9400 2150
Wire Wire Line
	9400 2150 9550 2150
Text Notes 9200 1050 0    50   ~ 10
Buttons\n\n\n\n
$EndSCHEMATC
