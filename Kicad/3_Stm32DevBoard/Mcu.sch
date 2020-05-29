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
Wire Wire Line
	2500 0    1750 0   
Text Label 3750 2050 0    50   ~ 0
I2C1_SCL_MCU
Text Label 3750 2150 0    50   ~ 0
I2C1_SDA_MCU
$Comp
L power:GND #PWR?
U 1 1 5EA32EC2
P 10050 5300
AR Path="/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC2" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 10050 5050 50  0001 C CNN
F 1 "GND" H 10055 5127 50  0000 C CNN
F 2 "" H 10050 5300 50  0001 C CNN
F 3 "" H 10050 5300 50  0001 C CNN
	1    10050 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EA32EC8
P 10250 5550
AR Path="/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC8" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 10250 5400 50  0001 C CNN
F 1 "+5V" H 10265 5723 50  0000 C CNN
F 2 "" H 10250 5550 50  0001 C CNN
F 3 "" H 10250 5550 50  0001 C CNN
	1    10250 5550
	1    0    0    -1  
$EndComp
Text Notes 9250 5100 0    50   ~ 10
1602 LCD\n\n\n
Wire Wire Line
	9450 5500 9900 5500
Text Label 8600 1750 2    50   ~ 0
GPIO_BUTTON_ENTER
Text Label 8800 1950 2    50   ~ 0
GPIO_BUTTON_INCREASE
Text Label 9450 5300 0    50   ~ 0
I2C1_SCL
Text Label 9450 5600 0    50   ~ 0
I2C1_SDA
Wire Wire Line
	9450 5600 9800 5600
Wire Wire Line
	9450 5300 9800 5300
Wire Wire Line
	9900 5550 9900 5500
Wire Wire Line
	9900 5550 10250 5550
Wire Wire Line
	9450 5400 9900 5400
Wire Wire Line
	9900 5300 10050 5300
Wire Wire Line
	9900 5400 9900 5300
Text Notes 700  1750 0    50   ~ 0
Pull Down Resistor
Text Label 2200 1750 2    50   ~ 0
BYPASS_SWITCH_3V3
Text Label 4650 1850 2    50   ~ 0
GPIO_BUTTON_INCREASE
Text Label 4550 1950 2    50   ~ 0
GPIO_BUTTON_ENTER
Text Label 2250 2850 2    50   ~ 0
GPIO_BUTTON_DECREASE
Wire Notes Line
	2900 7800 2950 7800
Text HLabel 3700 1650 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_1_3V3
Text HLabel 3700 2250 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_2_3V3
Text HLabel 3700 2350 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_3_3V3
Text HLabel 3700 2550 2    50   Input ~ 0
CAPACITOR_A_SELECTION_1_3V3
Text HLabel 3700 2650 2    50   Input ~ 0
CAPACITOR_A_SELECTION_2_3V3
Text HLabel 2300 2350 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_0_3V3
Text HLabel 2300 1950 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_2_3V3
Text HLabel 2300 2050 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_3_3V3
Text HLabel 2300 2250 0    50   Input ~ 0
CAPACITOR_D_SELECTION_0_3V3
Text HLabel 2300 2650 0    50   Input ~ 0
CAPACITOR_D_SELECTION_1_3V3
Text HLabel 2300 2750 0    50   Input ~ 0
CAPACITOR_D_SELECTION_2_3V3
$Comp
L Connector:Conn_01x04_Male J11
U 1 1 5EA543F3
P 9250 5400
F 0 "J11" H 9358 5681 50  0000 C CNN
F 1 "LCD JST XH" H 9358 5590 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 9250 5400 50  0001 C CNN
F 3 "~" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5250 6100 5250
Wire Wire Line
	6100 5600 7000 5600
Text Label 7300 5250 0    50   ~ 0
I2C1_SCL
Text Label 7300 5600 0    50   ~ 0
I2C1_SDA
Text Notes 6600 4850 0    50   ~ 10
SWDIO/I2C CROSSTALK\n\n\n
Text Label 6400 5250 0    50   ~ 0
I2C1_SCL_MCU
Text Label 6400 5600 0    50   ~ 0
I2C1_SDA_MCU
Wire Wire Line
	7300 5250 7950 5250
Wire Wire Line
	7300 5600 7950 5600
Text Notes 7000 2950 0    50   ~ 10
Bypass\n\n\n
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5EBECF25
P 6150 3200
F 0 "J12" H 6258 3381 50  0000 C CNN
F 1 "Bypass Switch JST XH" H 6258 3290 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 6150 3200 50  0001 C CNN
F 3 "~" H 6150 3200 50  0001 C CNN
	1    6150 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR046
U 1 1 5E9950D9
P 6900 3200
F 0 "#PWR046" H 6900 3050 50  0001 C CNN
F 1 "+3V3" H 6915 3373 50  0000 C CNN
F 2 "" H 6900 3200 50  0001 C CNN
F 3 "" H 6900 3200 50  0001 C CNN
	1    6900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3200 6900 3200
Text Label 7100 3300 2    50   ~ 0
BYPASS_SWITCH_3V3
Wire Wire Line
	6350 3300 7100 3300
$Comp
L Connector:Conn_01x06_Male J10
U 1 1 5ECC424B
P 7350 1650
F 0 "J10" H 7458 2031 50  0000 C CNN
F 1 "JST XH Buttons" H 7458 1940 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 7350 1650 50  0001 C CNN
F 3 "~" H 7350 1650 50  0001 C CNN
	1    7350 1650
	1    0    0    -1  
$EndComp
Text Label 8750 1550 2    50   ~ 0
GPIO_BUTTON_DECREASE
$Comp
L power:+3V3 #PWR023
U 1 1 5ECEF799
P 7800 1200
F 0 "#PWR023" H 7800 1050 50  0001 C CNN
F 1 "+3V3" H 7815 1373 50  0000 C CNN
F 2 "" H 7800 1200 50  0001 C CNN
F 3 "" H 7800 1200 50  0001 C CNN
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1850 7800 1850
Wire Wire Line
	7800 1850 7800 1650
Wire Wire Line
	7550 1650 7800 1650
Connection ~ 7800 1650
Wire Wire Line
	7800 1650 7800 1450
Wire Wire Line
	7550 1450 7800 1450
Connection ~ 7800 1450
Wire Wire Line
	7800 1450 7800 1200
Text Notes 8200 1100 0    20   ~ 0
See  MicroCap ThreeSwitches
Text HLabel 3700 2450 2    50   Input ~ 0
CAPACITOR_A_SELECTION_0_3V3
Text HLabel 2300 1850 0    50   Input ~ 0
BYPASS_MODE_3V3
Text Notes 8200 1250 0    50   ~ 10
Buttons\n\n\n\n
Text Notes 7250 3300 0    50   ~ 0
Internal Pull-down resistor
Wire Wire Line
	7550 1550 8750 1550
Wire Wire Line
	7550 1750 8600 1750
Wire Wire Line
	7550 1950 8800 1950
Text Notes 8900 1550 0    50   ~ 0
Internal Pull-down resistor
Text Notes 8900 1750 0    50   ~ 0
Internal Pull-down resistor
Text Notes 8900 1950 0    50   ~ 0
Internal Pull-down resistor
Text Notes 2500 1350 0    50   ~ 10
Micro Controller Unit\n\n\n
Text Notes 600  2850 0    50   ~ 0
Pull Down Resistor
Text Notes 4700 1850 0    50   ~ 0
Pull Down Resistor
Text Notes 4700 1950 0    50   ~ 0
Pull Down Resistor
Text Notes 9500 3150 0    50   ~ 10
UART\n\n\n
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5F17F091
P 9400 3400
F 0 "J7" H 9500 3700 50  0000 C CNN
F 1 "UART Pin Header" H 9500 3550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9400 3400 50  0001 C CNN
F 3 "~" H 9400 3400 50  0001 C CNN
	1    9400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3400 10000 3400
Wire Wire Line
	9600 3500 10000 3500
Text Label 9700 3400 0    50   ~ 0
UART_RX
Text Label 9700 3500 0    50   ~ 0
UART_TX
Text Label 2250 2450 2    50   ~ 0
UART_RX
Text Label 2250 2550 2    50   ~ 0
UART_TX
Text HLabel 2300 1650 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_1_3V3
Text HLabel 3700 1550 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_0_3V3
Wire Notes Line
	8600 2450 8600 6550
Wire Wire Line
	3700 1850 4650 1850
Wire Wire Line
	4550 1950 3700 1950
Wire Wire Line
	3700 2050 4300 2050
Wire Wire Line
	3700 2150 4300 2150
Wire Wire Line
	2300 2850 1350 2850
Wire Wire Line
	2300 2550 1950 2550
Wire Wire Line
	1950 2450 2300 2450
Wire Wire Line
	2300 1750 1400 1750
Wire Notes Line
	5750 2450 11250 2450
Wire Notes Line
	5750 7800 5700 7800
Wire Notes Line
	5750 450  5750 7800
Wire Notes Line
	5750 4150 11250 4150
Wire Notes Line
	11250 4150 11250 4050
NoConn ~ 3700 1750
NoConn ~ 3700 3250
NoConn ~ 3700 3150
NoConn ~ 3700 3050
NoConn ~ 3700 2950
NoConn ~ 3700 2850
NoConn ~ 3700 2750
NoConn ~ 2300 2150
NoConn ~ 2300 1550
NoConn ~ 2300 3150
NoConn ~ 2300 3250
NoConn ~ 2300 3050
$Comp
L power:GND #PWR0106
U 1 1 5ED7CD4A
P 3850 3350
F 0 "#PWR0106" H 3850 3100 50  0001 C CNN
F 1 "GND" H 3855 3177 50  0000 C CNN
F 2 "" H 3850 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 5ED7D950
P 2050 3150
F 0 "#PWR0109" H 2050 3000 50  0001 C CNN
F 1 "+3V3" H 2065 3323 50  0000 C CNN
F 2 "" H 2050 3150 50  0001 C CNN
F 3 "" H 2050 3150 50  0001 C CNN
	1    2050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3150 2200 3150
Wire Wire Line
	2200 3150 2200 2950
Wire Wire Line
	2200 2950 2300 2950
$Comp
L STM32a:ChinaBluePill U3
U 1 1 5EDB9EF2
P 3000 2100
F 0 "U3" H 3000 2915 50  0000 C CNN
F 1 "ChinaBluePill" H 3000 2824 50  0000 C CNN
F 2 "3_Stm32DevBoard:BluePill_STM32F103C" H 3000 2100 50  0001 C CNN
F 3 "" H 3000 2100 50  0001 C CNN
	1    3000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3350 3850 3350
Wire Wire Line
	3700 3350 3700 3450
Connection ~ 3700 3350
Connection ~ 3700 3450
Wire Wire Line
	3700 3450 3700 3550
NoConn ~ 2300 3350
$Comp
L Device:R R6
U 1 1 5EE0ED96
P 7150 5600
F 0 "R6" V 6943 5600 50  0000 C CNN
F 1 "33R" V 7034 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5600 50  0001 C CNN
F 3 "~" H 7150 5600 50  0001 C CNN
	1    7150 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5EE0C563
P 7150 5250
F 0 "R5" V 6943 5250 50  0000 C CNN
F 1 "33R" V 7034 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5250 50  0001 C CNN
F 3 "~" H 7150 5250 50  0001 C CNN
	1    7150 5250
	0    1    1    0   
$EndComp
$EndSCHEMATC
