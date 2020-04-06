EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 5E8CE625
P 3400 3700
AR Path="/5E8CE625" Ref="U?"  Part="1" 
AR Path="/5E8BDF21/5E8CE625" Ref="U?"  Part="1" 
F 0 "U?" H 3350 2111 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3350 2020 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2800 2300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3400 3700 50  0001 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE62B
P 3400 1850
AR Path="/5E8CE62B" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE62B" Ref="C?"  Part="1" 
F 0 "C?" H 3515 1896 50  0000 L CNN
F 1 "100nF" H 3515 1805 50  0000 L CNN
F 2 "" H 3438 1700 50  0001 C CNN
F 3 "~" H 3400 1850 50  0001 C CNN
	1    3400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE631
P 3850 1850
AR Path="/5E8CE631" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE631" Ref="C?"  Part="1" 
F 0 "C?" H 3965 1896 50  0000 L CNN
F 1 "100nF" H 3965 1805 50  0000 L CNN
F 2 "" H 3888 1700 50  0001 C CNN
F 3 "~" H 3850 1850 50  0001 C CNN
	1    3850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE637
P 2800 5350
AR Path="/5E8CE637" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE637" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2800 5200 50  0001 C CNN
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
	3400 2200 3400 2100
Wire Wire Line
	3500 2200 3500 2100
Wire Wire Line
	3500 2100 3850 2100
Wire Wire Line
	3850 2100 3850 2000
Wire Wire Line
	3300 2100 3400 2100
Connection ~ 3500 2100
Connection ~ 3400 2100
Wire Wire Line
	3400 2100 3400 2000
Wire Wire Line
	3400 2100 3500 2100
$Comp
L power:+3V3 #PWR?
U 1 1 5E8CE64D
P 4350 2100
AR Path="/5E8CE64D" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE64D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 1950 50  0001 C CNN
F 1 "+3V3" H 4365 2273 50  0000 C CNN
F 2 "" H 4350 2100 50  0001 C CNN
F 3 "" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2100 3300 2100
Connection ~ 3300 2100
Wire Wire Line
	2950 2000 2950 2100
$Comp
L power:GND #PWR?
U 1 1 5E8CE656
P 4350 1600
AR Path="/5E8CE656" Ref="#PWR?"  Part="1" 
AR Path="/5E8BDF21/5E8CE656" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 1350 50  0001 C CNN
F 1 "GND" H 4355 1427 50  0000 C CNN
F 2 "" H 4350 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1600 3850 1700
Wire Wire Line
	3400 1600 3400 1700
Connection ~ 3400 1600
Wire Wire Line
	3400 1600 3850 1600
Wire Wire Line
	2950 1600 2950 1700
Wire Wire Line
	2950 1600 3400 1600
$Comp
L Device:Crystal Y?
U 1 1 5E8CE662
P 2250 2850
AR Path="/5E8CE662" Ref="Y?"  Part="1" 
AR Path="/5E8BDF21/5E8CE662" Ref="Y?"  Part="1" 
F 0 "Y?" V 2204 2981 50  0000 L CNN
F 1 "8MHz" V 2295 2981 50  0000 L CNN
F 2 "" H 2250 2850 50  0001 C CNN
F 3 "~" H 2250 2850 50  0001 C CNN
	1    2250 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE668
P 1950 2650
AR Path="/5E8CE668" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE668" Ref="C?"  Part="1" 
F 0 "C?" V 1698 2650 50  0000 C CNN
F 1 "20pF" V 1789 2650 50  0000 C CNN
F 2 "" H 1988 2500 50  0001 C CNN
F 3 "~" H 1950 2650 50  0001 C CNN
	1    1950 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8CE66E
P 1950 3050
AR Path="/5E8CE66E" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE66E" Ref="C?"  Part="1" 
F 0 "C?" V 1698 3050 50  0000 C CNN
F 1 "20pF" V 1789 3050 50  0000 C CNN
F 2 "" H 1988 2900 50  0001 C CNN
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
AR Path="/5E8BDF21/5E8CE67E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1700 2800 50  0001 C CNN
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
AR Path="/5E8BDF21/5E8CE684" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1700 2400 50  0001 C CNN
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
Connection ~ 3850 2100
Wire Wire Line
	3850 2100 4350 2100
Wire Wire Line
	3850 1600 4350 1600
Connection ~ 3850 1600
$Comp
L Device:C C?
U 1 1 5E8CE690
P 2950 1850
AR Path="/5E8CE690" Ref="C?"  Part="1" 
AR Path="/5E8BDF21/5E8CE690" Ref="C?"  Part="1" 
F 0 "C?" H 3065 1896 50  0000 L CNN
F 1 "100nF" H 3065 1805 50  0000 L CNN
F 2 "" H 2988 1700 50  0001 C CNN
F 3 "~" H 2950 1850 50  0001 C CNN
	1    2950 1850
	1    0    0    -1  
$EndComp
Text Label 2400 3700 0    50   ~ 0
PB2
Wire Wire Line
	2350 2600 2700 2600
Wire Wire Line
	2400 3700 2700 3700
Wire Wire Line
	2950 5200 3200 5200
Connection ~ 3200 5200
Text Notes 3000 1500 0    50   ~ 0
STM32\n\n\n
Text Label 1850 4000 0    50   ~ 0
GPIO_KEYPAD_ROW_1
Text Label 1850 3900 0    50   ~ 0
GPIO_KEYPAD_ROW_2
Text Label 1850 3800 0    50   ~ 0
GPIO_KEYPAD_ROW_3
Text Label 4100 5000 0    50   ~ 0
GPIO_KEYPAD_ROW_4
Text Label 4100 4500 0    50   ~ 0
GPIO_KEYPAD_COLUMN_1
Text Label 4100 4400 0    50   ~ 0
GPIO_KEYPAD_COLUMN_2
Text Label 4100 4300 0    50   ~ 0
GPIO_KEYPAD_COLUMN_3
Text Label 1350 4900 0    50   ~ 0
GPIO_KEYPAD_COLUMN_4
Wire Wire Line
	4000 5000 4900 5000
Wire Wire Line
	4000 4500 5050 4500
Wire Wire Line
	5050 4400 4000 4400
Wire Wire Line
	4000 4300 5050 4300
Wire Wire Line
	2700 4000 1850 4000
Wire Wire Line
	1850 3900 2700 3900
Wire Wire Line
	2700 3800 1850 3800
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
Text GLabel 4500 4100 0    50   Input ~ 0
GPIO_LATCH
Text GLabel 2300 4800 2    50   Input ~ 0
SPI2_CSK
Text GLabel 2250 5000 2    50   Input ~ 0
SPI2_MOSI
Wire Wire Line
	1350 4900 2700 4900
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
Text Label 2350 2600 0    50   ~ 0
BOOT0
Wire Wire Line
	2350 2400 2700 2400
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5E8D4960
P 6800 1900
F 0 "J?" H 6908 2181 50  0000 C CNN
F 1 "JST XH" H 6908 2090 50  0000 C CNN
F 2 "" H 6800 1900 50  0001 C CNN
F 3 "~" H 6800 1900 50  0001 C CNN
	1    6800 1900
	-1   0    0    1   
$EndComp
Text Label 5900 1700 0    50   ~ 0
SYS_JTMS_SWDIO
Text Label 5900 1800 0    50   ~ 0
SYS_JTICK_SWCLK
$Comp
L power:GND #PWR?
U 1 1 5E8D4968
P 6050 1900
F 0 "#PWR?" H 6050 1650 50  0001 C CNN
F 1 "GND" H 6055 1727 50  0000 C CNN
F 2 "" H 6050 1900 50  0001 C CNN
F 3 "" H 6050 1900 50  0001 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E8D496E
P 6300 2150
F 0 "#PWR?" H 6300 2000 50  0001 C CNN
F 1 "+5V" H 6315 2323 50  0000 C CNN
F 2 "" H 6300 2150 50  0001 C CNN
F 3 "" H 6300 2150 50  0001 C CNN
	1    6300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2150 6450 2000
Wire Wire Line
	6450 2000 6600 2000
Wire Wire Line
	6300 2150 6450 2150
Wire Wire Line
	6600 1900 6050 1900
Text Notes 6600 1750 0    50   ~ 0
SWD\n\n\n
Wire Wire Line
	5800 1700 6600 1700
Wire Wire Line
	5800 1800 6600 1800
$Comp
L power:GND #PWR?
U 1 1 5E8D497B
P 8100 1750
F 0 "#PWR?" H 8100 1500 50  0001 C CNN
F 1 "GND" H 8105 1577 50  0000 C CNN
F 2 "" H 8100 1750 50  0001 C CNN
F 3 "" H 8100 1750 50  0001 C CNN
	1    8100 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8D4981
P 8450 1900
F 0 "C?" H 8335 1854 50  0000 R CNN
F 1 "100nF" H 8335 1945 50  0000 R CNN
F 2 "" H 8488 1750 50  0001 C CNN
F 3 "~" H 8450 1900 50  0001 C CNN
	1    8450 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 1750 8100 1750
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5E8D4988
P 7450 1850
F 0 "J?" H 7558 2131 50  0000 C CNN
F 1 "JST XH" H 7558 2040 50  0000 C CNN
F 2 "" H 7450 1850 50  0001 C CNN
F 3 "~" H 7450 1850 50  0001 C CNN
	1    7450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2050 7950 1850
Wire Wire Line
	7950 1850 7650 1850
Wire Wire Line
	8100 1750 7650 1750
Connection ~ 8100 1750
Wire Wire Line
	7900 2200 7900 1950
Wire Wire Line
	7900 1950 7650 1950
Wire Wire Line
	7850 2050 7650 2050
Text Label 7650 2050 0    50   ~ 0
PB2
Connection ~ 8450 2050
Wire Wire Line
	8450 2050 8850 2050
Wire Wire Line
	7950 2050 8450 2050
Wire Wire Line
	7900 2200 8450 2200
Wire Wire Line
	8450 2050 8450 2200
Connection ~ 8450 2200
Wire Wire Line
	8450 2200 8850 2200
Text Label 8650 2050 0    50   ~ 0
NRST
Text Label 8600 2200 0    50   ~ 0
BOOT0
Text Notes 7950 1600 0    50   ~ 0
Boot/Reset\n
$EndSCHEMATC
