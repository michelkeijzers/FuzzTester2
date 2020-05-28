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
	2400 2250 2000 2250
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
Text Label 6850 4500 0    50   ~ 0
BOOT1
Text Notes 6350 2700 0    50   ~ 10
Boot 0\n
NoConn ~ 3300 1550
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
P 10800 5850
AR Path="/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC2" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC2" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 10800 5600 50  0001 C CNN
F 1 "GND" H 10805 5677 50  0000 C CNN
F 2 "" H 10800 5850 50  0001 C CNN
F 3 "" H 10800 5850 50  0001 C CNN
	1    10800 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EA32EC8
P 11000 6100
AR Path="/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8F7778/5EA32EC8" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EA32EC8" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 11000 5950 50  0001 C CNN
F 1 "+5V" H 11015 6273 50  0000 C CNN
F 2 "" H 11000 6100 50  0001 C CNN
F 3 "" H 11000 6100 50  0001 C CNN
	1    11000 6100
	1    0    0    -1  
$EndComp
Text Notes 10000 5650 0    50   ~ 10
1602 LCD\n\n\n
Wire Wire Line
	10200 6050 10650 6050
Text Label 9600 1550 2    50   ~ 0
GPIO_BUTTON_ENTER
Text Label 9800 1750 2    50   ~ 0
GPIO_BUTTON_INCREASE
Wire Notes Line
	5350 2450 11200 2450
Text Label 10200 5850 0    50   ~ 0
I2C1_SCL
Text Label 10200 6150 0    50   ~ 0
I2C1_SDA
Wire Wire Line
	10200 6150 10550 6150
Wire Wire Line
	10200 5850 10550 5850
Wire Wire Line
	10650 6100 10650 6050
Wire Wire Line
	10650 6100 11000 6100
Wire Wire Line
	10200 5950 10650 5950
Wire Wire Line
	10650 5850 10800 5850
Wire Wire Line
	10650 5950 10650 5850
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
F 2 "Package_QFP:LQFP-48-1EP_7x7mm_P0.5mm_EP3.6x3.6mm_ThermalVias" H 2500 1650 50  0001 R CNN
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
Text HLabel 3700 3950 2    50   Input ~ 0
CAPACITOR_D_SELECTION_1_3V3
Text HLabel 3700 4050 2    50   Input ~ 0
CAPACITOR_D_SELECTION_2_3V3
Wire Wire Line
	3700 3650 3750 3650
NoConn ~ 3700 3450
NoConn ~ 2400 4250
NoConn ~ 2400 4350
$Comp
L Connector:Conn_01x04_Male J11
U 1 1 5EA543F3
P 10000 5950
F 0 "J11" H 10108 6231 50  0000 C CNN
F 1 "LCD JST XH" H 10108 6140 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 10000 5950 50  0001 C CNN
F 3 "~" H 10000 5950 50  0001 C CNN
	1    10000 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5EA7D58B
P 8800 6000
F 0 "RN2" V 8383 6000 50  0000 C CNN
F 1 "33R" V 8474 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 9075 6000 50  0001 C CNN
F 3 "~" H 8800 6000 50  0001 C CNN
	1    8800 6000
	0    1    1    0   
$EndComp
Text Label 7700 6000 0    50   ~ 0
SYS_JTICK_SWCLK_MCU
Text Label 9000 6100 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 9000 6000 0    50   ~ 0
SYS_JTICK_SWCLK
Wire Wire Line
	8600 5900 7700 5900
Wire Wire Line
	7700 5800 8600 5800
Text Label 9000 5900 0    50   ~ 0
I2C1_SCL
Text Label 9000 5800 0    50   ~ 0
I2C1_SDA
Text Notes 8450 5550 0    50   ~ 10
SWDIO/I2C CROSSTALK\n\n\n
Text Label 8000 5900 0    50   ~ 0
I2C1_SCL_MCU
Text Label 8000 5800 0    50   ~ 0
I2C1_SDA_MCU
Text Label 7750 6100 0    50   ~ 0
SYS_JTMS_SWDIO_MCU
Wire Wire Line
	9000 5900 9650 5900
Wire Wire Line
	9000 5800 9650 5800
Wire Wire Line
	9000 6000 9650 6000
Wire Wire Line
	9000 6100 9650 6100
Wire Wire Line
	7700 6100 8600 6100
Wire Wire Line
	7700 6000 8600 6000
Text Notes 8150 6450 0    50   ~ 0
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
Text Label 2100 3050 0    50   ~ 0
BOOT1
Wire Wire Line
	2100 3050 2400 3050
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
	2100 1950 2400 1950
Wire Wire Line
	3700 4350 4650 4350
Text Label 1550 3150 0    50   ~ 0
SYS_JTDO_TRACESWO
Text Notes 2600 5750 0    50   ~ 10
Oscillator\n\n\n
Text Label 2000 2150 0    50   ~ 0
OSC_IN
Text Label 2000 2250 0    50   ~ 0
OSC_OUT
Wire Wire Line
	2000 2150 2400 2150
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
	7550 800  7550 6800
Text Notes 4550 4450 0    50   ~ 0
Pull Down Resistor
Text Notes 650  3250 0    50   ~ 0
Pull Down Resistor
Text Notes 600  3350 0    50   ~ 0
Pull Down Resistor
Text Label 2100 1950 0    50   ~ 0
BOOT0
Text Label 6850 3250 0    50   ~ 0
BOOT0
$Comp
L power:+3V3 #PWR?
U 1 1 5EF8DFA2
P 6450 3150
AR Path="/5EF8DFA2" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EF8DFA2" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 6450 3000 50  0001 C CNN
F 1 "+3V3" H 6400 3300 50  0000 C CNN
F 2 "" H 6450 3150 50  0001 C CNN
F 3 "" H 6450 3150 50  0001 C CNN
	1    6450 3150
	0    1    1    0   
$EndComp
Connection ~ 6300 4700
Wire Wire Line
	6450 4700 6300 4700
Wire Wire Line
	7100 4500 6750 4500
Wire Wire Line
	7100 3250 6750 3250
Connection ~ 6750 4500
Wire Wire Line
	6750 4700 6750 4500
Wire Wire Line
	6300 4700 6300 4600
Wire Wire Line
	6300 4500 6750 4500
Wire Wire Line
	6300 4400 6450 4400
$Comp
L power:+3V3 #PWR?
U 1 1 5EFEA0E6
P 6450 4400
AR Path="/5EFEA0E6" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EFEA0E6" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 6450 4250 50  0001 C CNN
F 1 "+3V3" H 6400 4550 50  0000 C CNN
F 2 "" H 6450 4400 50  0001 C CNN
F 3 "" H 6450 4400 50  0001 C CNN
	1    6450 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3150 6450 3150
Wire Wire Line
	6750 3250 6300 3250
Wire Wire Line
	6300 3450 6450 3450
$Comp
L Device:R R6
U 1 1 5ED39447
P 6600 3450
F 0 "R6" H 6530 3404 50  0000 R CNN
F 1 "10K" H 6530 3495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 3450 50  0001 C CNN
F 3 "~" H 6600 3450 50  0001 C CNN
	1    6600 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF30E10
P 6300 3550
AR Path="/5EF30E10" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EF30E10" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 6300 3300 50  0001 C CNN
F 1 "GND" H 6305 3377 50  0000 C CNN
F 2 "" H 6300 3550 50  0001 C CNN
F 3 "" H 6300 3550 50  0001 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3450 6300 3350
Connection ~ 6300 3450
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5EF5C46D
P 6100 3250
F 0 "J3" H 6208 3531 50  0000 C CNN
F 1 "Jumper BOOT0" H 6208 3440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 3250 50  0001 C CNN
F 3 "~" H 6100 3250 50  0001 C CNN
	1    6100 3250
	1    0    0    -1  
$EndComp
Connection ~ 6750 3250
Wire Wire Line
	6750 3250 6750 3450
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5EF5BA1F
P 6100 4500
F 0 "J8" H 6208 4781 50  0000 C CNN
F 1 "Jumper BOOT1" H 6208 4690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 4500 50  0001 C CNN
F 3 "~" H 6100 4500 50  0001 C CNN
	1    6100 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5ED44101
P 6600 4700
F 0 "R7" H 6530 4654 50  0000 R CNN
F 1 "10K" H 6530 4745 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 4700 50  0001 C CNN
F 3 "~" H 6600 4700 50  0001 C CNN
	1    6600 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBAF081
P 6300 4800
AR Path="/5FBAF081" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5FBAF081" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 6300 4550 50  0001 C CNN
F 1 "GND" H 6305 4627 50  0000 C CNN
F 2 "" H 6300 4800 50  0001 C CNN
F 3 "" H 6300 4800 50  0001 C CNN
	1    6300 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3550 6300 3450
Wire Wire Line
	6300 4800 6300 4700
Text Notes 6350 4100 0    50   ~ 10
Boot 1\n
Wire Notes Line
	5350 3950 11200 3950
Wire Wire Line
	6100 5700 5950 5700
Text Notes 6350 5650 0    50   ~ 10
SWD\n\n\n
Text Label 6450 6050 2    50   ~ 0
SYS_JTMS_SWDIO
Text Label 6500 6150 2    50   ~ 0
SYS_JTICK_SWCLK
$Comp
L power:GND #PWR?
U 1 1 5E8D4968
P 6350 5950
AR Path="/5E8D4968" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8D4968" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 6350 5700 50  0001 C CNN
F 1 "GND" H 6355 5777 50  0000 C CNN
F 2 "" H 6350 5950 50  0001 C CNN
F 3 "" H 6350 5950 50  0001 C CNN
	1    6350 5950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E8D496E
P 6100 5700
AR Path="/5E8D496E" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8D496E" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 6100 5550 50  0001 C CNN
F 1 "+5V" H 6115 5873 50  0000 C CNN
F 2 "" H 6100 5700 50  0001 C CNN
F 3 "" H 6100 5700 50  0001 C CNN
	1    6100 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 5700 5950 5850
Wire Wire Line
	5950 5850 5800 5850
Wire Wire Line
	5800 5950 6350 5950
Wire Wire Line
	6600 6150 5800 6150
Wire Wire Line
	6600 6050 5800 6050
$Comp
L Device:C C?
U 1 1 5E8D4981
P 6050 6750
AR Path="/5E8D4981" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8D4981" Ref="C10"  Part="1" 
F 0 "C10" H 5935 6704 50  0000 R CNN
F 1 "100nF" H 5935 6795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6088 6600 50  0001 C CNN
F 3 "~" H 6050 6750 50  0001 C CNN
	1    6050 6750
	0    -1   -1   0   
$EndComp
Text Label 7100 6350 0    50   ~ 0
NRST
Wire Wire Line
	6600 6250 5800 6250
Text Label 6600 6250 2    50   ~ 0
SYS_JTDO_TRACESWO
$Comp
L power:GND #PWR?
U 1 1 5EF3FB12
P 6300 6850
AR Path="/5EF3FB12" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5EF3FB12" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6300 6600 50  0001 C CNN
F 1 "GND" H 6305 6677 50  0000 C CNN
F 2 "" H 6300 6850 50  0001 C CNN
F 3 "" H 6300 6850 50  0001 C CNN
	1    6300 6850
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5EF48912
P 6300 6550
F 0 "SW1" V 6346 6648 50  0000 L CNN
F 1 "RESET" V 6255 6648 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 6300 6550 50  0001 C CNN
F 3 "~" H 6300 6550 50  0001 C CNN
	1    6300 6550
	0    1    -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J9
U 1 1 5F0E82ED
P 5600 6050
F 0 "J9" H 5708 6431 50  0000 C CNN
F 1 "SWD" H 5708 6340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5600 6050 50  0001 C CNN
F 3 "~" H 5600 6050 50  0001 C CNN
	1    5600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6350 5850 6350
Connection ~ 6300 6350
Wire Wire Line
	6300 6350 7100 6350
Wire Wire Line
	5850 6350 5850 6750
Connection ~ 5850 6350
Wire Wire Line
	5850 6350 6300 6350
Wire Wire Line
	5900 6750 5850 6750
Wire Wire Line
	6200 6750 6300 6750
Wire Wire Line
	6300 6750 6300 6850
Connection ~ 6300 6750
Wire Notes Line
	9800 5200 9800 6500
Text Notes 9100 2800 0    50   ~ 10
UART\n\n\n
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5F17F091
P 9000 3050
F 0 "J7" H 9100 3350 50  0000 C CNN
F 1 "UART Pin Header" H 9100 3200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9000 3050 50  0001 C CNN
F 3 "~" H 9000 3050 50  0001 C CNN
	1    9000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3050 9600 3050
Wire Wire Line
	9200 3150 9600 3150
Text Label 9300 3050 0    50   ~ 0
UART_RX
Text Label 9300 3150 0    50   ~ 0
UART_TX
Text Label 3750 3750 0    50   ~ 0
UART_RX
Wire Wire Line
	3700 3750 4100 3750
Wire Wire Line
	3700 3850 4100 3850
Text Label 3750 3850 0    50   ~ 0
UART_TX
$EndSCHEMATC
