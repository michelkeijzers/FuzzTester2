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
P 6500 1500
AR Path="/5E8CE62B" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE62B" Ref="C8"  Part="1" 
F 0 "C8" H 6615 1546 50  0000 L CNN
F 1 "100nF" H 6615 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6538 1350 50  0001 C CNN
F 3 "~" H 6500 1500 50  0001 C CNN
	1    6500 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE631
P 7000 1500
AR Path="/5E8CE631" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE631" Ref="C9"  Part="1" 
F 0 "C9" H 7115 1546 50  0000 L CNN
F 1 "100nF" H 7115 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7038 1350 50  0001 C CNN
F 3 "~" H 7000 1500 50  0001 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE637
P 2200 4550
AR Path="/5E8CE637" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE637" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2200 4400 50  0001 C CNN
F 1 "+3V3" H 2215 4723 50  0000 C CNN
F 2 "" H 2200 4550 50  0001 C CNN
F 3 "" H 2200 4550 50  0001 C CNN
	1    2200 4550
	1    0    0    -1  
$EndComp
Text Label 2700 4550 0    20   ~ 0
3V3
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE64D
P 7450 1700
AR Path="/5E8CE64D" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE64D" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 7450 1550 50  0001 C CNN
F 1 "+3V3" H 7465 1873 50  0000 C CNN
F 2 "" H 7450 1700 50  0001 C CNN
F 3 "" H 7450 1700 50  0001 C CNN
	1    7450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8CE656
P 7450 1250
AR Path="/5E8CE656" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE656" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 7450 1000 50  0001 C CNN
F 1 "GND" H 7455 1077 50  0000 C CNN
F 2 "" H 7450 1250 50  0001 C CNN
F 3 "" H 7450 1250 50  0001 C CNN
	1    7450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1250 7000 1350
Wire Wire Line
	6500 1250 6500 1350
Wire Wire Line
	6500 1250 7000 1250
$Comp
L Device:Crystal Y?
U 1 1 5E8CE662
P 2950 6150
AR Path="/5E8CE662" Ref="Y?"  Part="1" 
AR Path="/5E8BDF21/5E8CE662" Ref="Y1"  Part="1" 
F 0 "Y1" V 2904 6281 50  0000 L CNN
F 1 "8MHz" V 2995 6281 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2950 6150 50  0001 C CNN
F 3 "~" H 2950 6150 50  0001 C CNN
	1    2950 6150
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE668
P 2650 5950
AR Path="/5E8CE668" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE668" Ref="C5"  Part="1" 
F 0 "C5" V 2398 5950 50  0000 C CNN
F 1 "20pF" V 2489 5950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 5800 50  0001 C CNN
F 3 "~" H 2650 5950 50  0001 C CNN
	1    2650 5950
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE66E
P 2650 6350
AR Path="/5E8CE66E" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE66E" Ref="C6"  Part="1" 
F 0 "C6" V 2398 6350 50  0000 C CNN
F 1 "20pF" V 2489 6350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 6200 50  0001 C CNN
F 3 "~" H 2650 6350 50  0001 C CNN
	1    2650 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 2250 2150 2250
Wire Wire Line
	2800 6350 2800 6300
Wire Wire Line
	2800 6300 2950 6300
Connection ~ 2950 6300
Wire Wire Line
	2800 5950 2800 6000
Wire Wire Line
	2800 6000 2950 6000
Connection ~ 2950 6000
$Comp
L power:GND #PWR?
U 1 1 5E8CE67E
P 2400 6350
AR Path="/5E8CE67E" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE67E" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 2400 6100 50  0001 C CNN
F 1 "GND" H 2405 6177 50  0000 C CNN
F 2 "" H 2400 6350 50  0001 C CNN
F 3 "" H 2400 6350 50  0001 C CNN
	1    2400 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8CE684
P 2400 5950
AR Path="/5E8CE684" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE684" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 2400 5700 50  0001 C CNN
F 1 "GND" H 2405 5777 50  0000 C CNN
F 2 "" H 2400 5950 50  0001 C CNN
F 3 "" H 2400 5950 50  0001 C CNN
	1    2400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5950 2500 5950
Wire Wire Line
	2400 6350 2500 6350
Wire Wire Line
	7000 1250 7450 1250
Connection ~ 7000 1250
$Comp
L Device:C C?
U 1 1 5E8CE690
P 6000 1500
AR Path="/5E8CE690" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE690" Ref="C7"  Part="1" 
F 0 "C7" H 6115 1546 50  0000 L CNN
F 1 "100nF" H 6115 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 1350 50  0001 C CNN
F 3 "~" H 6000 1500 50  0001 C CNN
	1    6000 1500
	1    0    0    -1  
$EndComp
Text Label 2100 3050 0    50   ~ 0
PB2
Text Notes 5800 1250 0    50   ~ 10
Micro Controller Unit Bypass Capacitors\n\n\n\n
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
Text Label 2200 1750 0    50   ~ 0
NRST
Wire Wire Line
	2200 1750 2400 1750
Text Label 6100 4750 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 6050 4650 0    50   ~ 0
SYS_JTICK_SWCLK
$Comp
L power:GND #PWR?
U 1 1 5E8D4968
P 6200 4850
AR Path="/5E8D4968" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8D4968" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 6200 4600 50  0001 C CNN
F 1 "GND" H 6205 4677 50  0000 C CNN
F 2 "" H 6200 4850 50  0001 C CNN
F 3 "" H 6200 4850 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E8D496E
P 6450 5100
AR Path="/5E8D496E" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8D496E" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 6450 4950 50  0001 C CNN
F 1 "+5V" H 6465 5273 50  0000 C CNN
F 2 "" H 6450 5100 50  0001 C CNN
F 3 "" H 6450 5100 50  0001 C CNN
	1    6450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5100 6600 4950
Wire Wire Line
	6600 4950 6750 4950
Wire Wire Line
	6450 5100 6600 5100
Wire Wire Line
	6750 4850 6200 4850
Wire Wire Line
	5950 4650 6750 4650
Wire Wire Line
	5950 4750 6750 4750
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
Text Notes 6600 4200 0    50   ~ 10
SWD\n\n\n
NoConn ~ 3300 1550
$Comp
L power:GND #PWR?
U 1 1 5FBAF081
P 1900 1950
AR Path="/5FBAF081" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5FBAF081" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 1900 1700 50  0001 C CNN
F 1 "GND" H 1905 1777 50  0000 C CNN
F 2 "" H 1900 1950 50  0001 C CNN
F 3 "" H 1900 1950 50  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
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
Connection ~ 7000 1700
Wire Wire Line
	7000 1700 7450 1700
Wire Wire Line
	7000 1650 7000 1700
Wire Wire Line
	6000 1650 6000 1700
Wire Wire Line
	6500 1650 6500 1700
Connection ~ 6500 1700
Wire Notes Line
	5350 550  5350 7700
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
Text Label 9600 1550 2    50   ~ 0
GPIO_BUTTON_ENTER
Text Label 9800 1750 2    50   ~ 0
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
	2400 3350 1400 3350
Wire Wire Line
	1500 3250 2400 3250
Wire Wire Line
	2400 3150 1550 3150
Text Label 2300 3350 2    50   ~ 0
GPIO_BUTTON_INCREASE
Text Label 2300 3250 2    50   ~ 0
GPIO_BUTTON_ENTER
Text Label 4650 4350 2    50   ~ 0
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
	2950 6000 4000 6000
Wire Wire Line
	2950 6300 3250 6300
Wire Wire Line
	3000 4550 3100 4550
Connection ~ 3000 4550
Wire Wire Line
	2200 4550 2900 4550
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
P 6500 5950
F 0 "RN2" V 6083 5950 50  0000 C CNN
F 1 "R_Pack04" V 6174 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 6775 5950 50  0001 C CNN
F 3 "~" H 6500 5950 50  0001 C CNN
	1    6500 5950
	0    1    1    0   
$EndComp
Text Label 5400 5950 0    50   ~ 0
SYS_JTICK_SWCLK_MCU
Text Label 6700 6050 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 6700 5950 0    50   ~ 0
SYS_JTICK_SWCLK
Wire Wire Line
	6300 5850 5400 5850
Wire Wire Line
	5400 5750 6300 5750
Text Label 6700 5850 0    50   ~ 0
I2C1_SCL
Text Label 6700 5750 0    50   ~ 0
I2C1_SDA
Text Notes 6150 5500 0    50   ~ 10
SWDIO/I2C CROSSTALK\n\n\n
Text Label 5700 5850 0    50   ~ 0
I2C1_SCL_MCU
Text Label 5700 5750 0    50   ~ 0
I2C1_SDA_MCU
Text Label 5450 6050 0    50   ~ 0
SYS_JTMS_SWDIO_MCU
Wire Wire Line
	6700 5850 7350 5850
Wire Wire Line
	6700 5750 7350 5750
Wire Wire Line
	6700 5950 7350 5950
Wire Wire Line
	6700 6050 7350 6050
Wire Wire Line
	5400 6050 6300 6050
Wire Wire Line
	5400 5950 6300 5950
Text Notes 5850 6400 0    50   ~ 0
Check: Concave or Convex footprint
Text Notes 8750 4450 0    50   ~ 10
Bypass\n\n\n
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5EBECF25
P 8500 4550
F 0 "J12" H 8608 4731 50  0000 C CNN
F 1 "Bypass Switch JST XH" H 8608 4640 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 8500 4550 50  0001 C CNN
F 3 "~" H 8500 4550 50  0001 C CNN
	1    8500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR046
U 1 1 5E9950D9
P 9250 4550
F 0 "#PWR046" H 9250 4400 50  0001 C CNN
F 1 "+3V3" H 9265 4723 50  0000 C CNN
F 2 "" H 9250 4550 50  0001 C CNN
F 3 "" H 9250 4550 50  0001 C CNN
	1    9250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4550 9250 4550
Text Label 9450 4650 2    50   ~ 0
BYPASS_SWITCH_3V3
Wire Wire Line
	8700 4650 9450 4650
NoConn ~ 3700 3950
NoConn ~ 3700 4050
NoConn ~ -800 2650
$Comp
L Connector:Conn_01x06_Male J10
U 1 1 5ECC424B
P 8350 1450
F 0 "J10" H 8458 1831 50  0000 C CNN
F 1 "JST XH Buttons" H 8458 1740 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 8350 1450 50  0001 C CNN
F 3 "~" H 8350 1450 50  0001 C CNN
	1    8350 1450
	1    0    0    -1  
$EndComp
Text Label 9750 1350 2    50   ~ 0
GPIO_BUTTON_DECREASE
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
	8550 1650 8800 1650
Wire Wire Line
	8800 1650 8800 1450
Wire Wire Line
	8550 1450 8800 1450
Connection ~ 8800 1450
Wire Wire Line
	8800 1450 8800 1250
Wire Wire Line
	8550 1250 8800 1250
Connection ~ 8800 1250
Wire Wire Line
	8800 1250 8800 1000
Text Notes 9200 900  0    20   ~ 0
See  MicroCap ThreeSwitches
NoConn ~ 3700 2850
NoConn ~ 2400 2650
NoConn ~ 2400 2550
NoConn ~ 2400 2450
Text HLabel 2400 3850 0    50   Input ~ 0
CAPACITOR_A_SELECTION_0_3V3
Text HLabel 2400 2850 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_0_3V3
Wire Notes Line
	500  5200 11200 5200
Text HLabel 3700 3150 2    50   Input ~ 0
BYPASS_MODE_3V3
Text Notes 9200 1050 0    50   ~ 10
Buttons\n\n\n\n
Text Notes 9600 4650 0    50   ~ 0
Internal Pull-down resistor
Wire Wire Line
	8550 1350 9750 1350
Wire Wire Line
	8550 1550 9600 1550
Wire Wire Line
	8550 1750 9800 1750
Text Notes 9900 1350 0    50   ~ 0
Internal Pull-down resistor
Text Notes 9900 1550 0    50   ~ 0
Internal Pull-down resistor
Text Notes 9900 1750 0    50   ~ 0
Internal Pull-down resistor
Wire Wire Line
	3100 4550 3200 4550
Connection ~ 3100 4550
$Comp
L Device:C C?
U 1 1 5ED19E1F
P 5550 1500
AR Path="/5ED19E1F" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5ED19E1F" Ref="C20"  Part="1" 
F 0 "C20" H 5665 1546 50  0000 L CNN
F 1 "10uF" H 5665 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5588 1350 50  0001 C CNN
F 3 "~" H 5550 1500 50  0001 C CNN
	1    5550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1650 5550 1700
Wire Wire Line
	5550 1700 6000 1700
Connection ~ 6000 1700
Connection ~ 6500 1250
Wire Wire Line
	6000 1250 6500 1250
Wire Wire Line
	6000 1250 6000 1350
Wire Wire Line
	5550 1350 5550 1250
Wire Wire Line
	5550 1250 6000 1250
Connection ~ 6000 1250
Text Label 1500 3050 0    50   ~ 0
BOOT1
Wire Wire Line
	1500 3050 2400 3050
Text Label 3650 6300 0    50   ~ 0
OSC_OUT
Text Label 3700 6000 0    50   ~ 0
OSC_IN
$Comp
L Device:R R5
U 1 1 5ED2EF2E
P 3400 6300
F 0 "R5" V 3193 6300 50  0000 C CNN
F 1 "220R" V 3284 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 6300 50  0001 C CNN
F 3 "~" H 3400 6300 50  0001 C CNN
	1    3400 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 6300 4000 6300
Text Notes 1000 6100 0    31   ~ 0
Cl = 2 * (CLOAD_CRYSTAL - CPARASITIC)\n   (for STM32F405...)\n    = 2 * (9pF - 2pF)  = 14 pF \n(see YouTube: KiCad STM32 Hardware Design \nand JLCPCB Assembly)\n
Text Notes 3100 6600 0    31   ~ 0
Resistor for driving less and\nremoving high frequenties\n(see same YouTube video\nas above)
Text Notes 2650 6700 0    31   ~ 0
f(-3dB) = 1/(2*pi*C*R)\n= 16 MHz  * 2 * pi * 9 pF * R) = 1 <=> R = 
Wire Wire Line
	2250 1950 2400 1950
$Comp
L Device:R R6
U 1 1 5ED39447
P 2100 1950
F 0 "R6" V 1893 1950 50  0000 C CNN
F 1 "10K" V 1984 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 1950 50  0001 C CNN
F 3 "~" H 2100 1950 50  0001 C CNN
	1    2100 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5ED44101
P 6450 3600
F 0 "R7" V 6243 3600 50  0000 C CNN
F 1 "10K" V 6334 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 3600 50  0001 C CNN
F 3 "~" H 6450 3600 50  0001 C CNN
	1    6450 3600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED45BF7
P 6650 3600
AR Path="/5ED45BF7" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5ED45BF7" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 6650 3350 50  0001 C CNN
F 1 "GND" H 6655 3427 50  0000 C CNN
F 2 "" H 6650 3600 50  0001 C CNN
F 3 "" H 6650 3600 50  0001 C CNN
	1    6650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3600 6600 3600
Connection ~ 6600 3600
Wire Wire Line
	6600 3600 6550 3600
Wire Wire Line
	6300 3200 6300 3600
Wire Wire Line
	3700 4350 4650 4350
Text Label 1550 3150 0    50   ~ 0
SYS_JTDO_TRACESWO
$Comp
L Connector:Conn_01x05_Male J9
U 1 1 5ED637ED
P 6950 4750
F 0 "J9" H 7050 4300 50  0000 R CNN
F 1 "SWD PinHeader" H 7250 4400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6950 4750 50  0001 C CNN
F 3 "~" H 6950 4750 50  0001 C CNN
	1    6950 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 4550 6750 4550
Text Label 5950 4550 0    50   ~ 0
SYS_JTDO_TRACESWO
Text Notes 2600 5750 0    50   ~ 10
Oscillator\n\n\n
Text Label 2150 2150 0    31   ~ 0
OSC_IN
Text Label 2150 2250 0    31   ~ 0
OSC_OUT
Wire Wire Line
	2150 2150 2400 2150
Wire Wire Line
	1900 1950 1950 1950
Text Notes 2650 1250 0    50   ~ 10
Micro Controller Unit\n\n\n
Wire Wire Line
	6500 1700 7000 1700
Wire Wire Line
	6000 1700 6500 1700
Text Label 6500 1850 0    50   ~ 0
MCU_BYPASS_CAPS
Wire Wire Line
	6500 1700 6500 1850
Wire Wire Line
	7200 1850 6500 1850
Text Label 2500 1550 0    50   ~ 0
MCU_BYPASS_CAPS
Wire Wire Line
	2500 1550 2900 1550
Connection ~ 2900 1550
Wire Wire Line
	2900 1550 3000 1550
Connection ~ 3000 1550
Wire Wire Line
	3000 1550 3100 1550
Connection ~ 3100 1550
Wire Wire Line
	3100 1550 3200 1550
Wire Notes Line
	7700 500  7700 6500
Text Notes 4550 4450 0    50   ~ 0
Pull Down Resistor
Text Notes 650  3250 0    50   ~ 0
Pull Down Resistor
Text Notes 600  3350 0    50   ~ 0
Pull Down Resistor
$EndSCHEMATC
