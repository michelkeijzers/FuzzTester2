EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
Title "Guitar Pedal Effect Fuzz Digitally Controlled"
Date "2020-04-07"
Rev "0.1"
Comp "Michel Keijzers"
Comment1 ""
Comment2 "and 2 sets of 8 capacitors"
Comment3 "Pedal Effect Fuzz based on 2 sets of 20 different transistors"
Comment4 "A or D capacitors plus selector"
$EndDescr
$Comp
L Analog_Switch:CD4051B U?
U 1 1 5E9AD56C
P 4350 3750
AR Path="/5E87C69B/5E9AD56C" Ref="U?"  Part="1" 
AR Path="/5E984186/5E9AD56C" Ref="U?"  Part="1" 
AR Path="/5E983DF3/5E9AD56C" Ref="U4"  Part="1" 
AR Path="/5F9F739D/5E9AD56C" Ref="U21"  Part="1" 
F 0 "U21" H 4350 4631 50  0000 C CNN
F 1 "CD4051B" H 4350 4540 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4500 3000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 4330 3850 50  0001 C CNN
	1    4350 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E9AD572
P 5500 3450
AR Path="/5E87C69B/5E9AD572" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD572" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD572" Ref="C17"  Part="1" 
AR Path="/5F9F739D/5E9AD572" Ref="C42"  Part="1" 
F 0 "C42" V 5248 3450 50  0000 C CNN
F 1 "0.68uF" V 5339 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 3300 50  0001 C CNN
F 3 "~" H 5500 3450 50  0001 C CNN
	1    5500 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E9AD584
P 5500 2650
AR Path="/5E87C69B/5E9AD584" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD584" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD584" Ref="C16"  Part="1" 
AR Path="/5F9F739D/5E9AD584" Ref="C41"  Part="1" 
F 0 "C41" V 5248 2650 50  0000 C CNN
F 1 "0.22uF" V 5339 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 2500 50  0001 C CNN
F 3 "~" H 5500 2650 50  0001 C CNN
	1    5500 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E9AD58A
P 5500 3850
AR Path="/5E87C69B/5E9AD58A" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD58A" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD58A" Ref="C14"  Part="1" 
AR Path="/5F9F739D/5E9AD58A" Ref="C39"  Part="1" 
F 0 "C39" V 5248 3850 50  0000 C CNN
F 1 "1uF" V 5339 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 3700 50  0001 C CNN
F 3 "~" H 5500 3850 50  0001 C CNN
	1    5500 3850
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E9AD596
P 5500 3050
AR Path="/5E87C69B/5E9AD596" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD596" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD596" Ref="C13"  Part="1" 
AR Path="/5F9F739D/5E9AD596" Ref="C38"  Part="1" 
F 0 "C38" V 5248 3050 50  0000 C CNN
F 1 "0.47uF" V 5339 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 2900 50  0001 C CNN
F 3 "~" H 5500 3050 50  0001 C CNN
	1    5500 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2600 4450 3050
Wire Wire Line
	4750 2600 4450 2600
$Comp
L Device:C C?
U 1 1 5E9AD59F
P 4750 2750
AR Path="/5E87C69B/5E9AD59F" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD59F" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD59F" Ref="C11"  Part="1" 
AR Path="/5F9F739D/5E9AD59F" Ref="C36"  Part="1" 
F 0 "C36" H 4865 2796 50  0000 L CNN
F 1 "100nF" H 4865 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4788 2600 50  0001 C CNN
F 3 "~" H 4750 2750 50  0001 C CNN
	1    4750 2750
	1    0    0    -1  
$EndComp
Connection ~ 4450 2600
$Comp
L power:+5V #PWR?
U 1 1 5E9AD5A6
P 4450 2600
AR Path="/5E87C69B/5E9AD5A6" Ref="#PWR?"  Part="1" 
AR Path="/5E984186/5E9AD5A6" Ref="#PWR?"  Part="1" 
AR Path="/5E983DF3/5E9AD5A6" Ref="#PWR030"  Part="1" 
AR Path="/5F9F739D/5E9AD5A6" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 4450 2450 50  0001 C CNN
F 1 "+5V" H 4465 2773 50  0000 C CNN
F 2 "" H 4450 2600 50  0001 C CNN
F 3 "" H 4450 2600 50  0001 C CNN
	1    4450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9AD5AC
P 4750 2900
AR Path="/5E87C69B/5E9AD5AC" Ref="#PWR?"  Part="1" 
AR Path="/5E984186/5E9AD5AC" Ref="#PWR?"  Part="1" 
AR Path="/5E983DF3/5E9AD5AC" Ref="#PWR031"  Part="1" 
AR Path="/5F9F739D/5E9AD5AC" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 4750 2650 50  0001 C CNN
F 1 "GND" H 4755 2727 50  0000 C CNN
F 2 "" H 4750 2900 50  0001 C CNN
F 3 "" H 4750 2900 50  0001 C CNN
	1    4750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9AD5B2
P 4350 4450
AR Path="/5E87C69B/5E9AD5B2" Ref="#PWR?"  Part="1" 
AR Path="/5E984186/5E9AD5B2" Ref="#PWR?"  Part="1" 
AR Path="/5E983DF3/5E9AD5B2" Ref="#PWR029"  Part="1" 
AR Path="/5F9F739D/5E9AD5B2" Ref="#PWR099"  Part="1" 
F 0 "#PWR099" H 4350 4200 50  0001 C CNN
F 1 "GND" H 4355 4277 50  0000 C CNN
F 2 "" H 4350 4450 50  0001 C CNN
F 3 "" H 4350 4450 50  0001 C CNN
	1    4350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4450 4350 4450
Connection ~ 4350 4450
$Comp
L power:GND #PWR?
U 1 1 5E9AD5C3
P 3850 3750
AR Path="/5E87C69B/5E9AD5C3" Ref="#PWR?"  Part="1" 
AR Path="/5E984186/5E9AD5C3" Ref="#PWR?"  Part="1" 
AR Path="/5E983DF3/5E9AD5C3" Ref="#PWR028"  Part="1" 
AR Path="/5F9F739D/5E9AD5C3" Ref="#PWR098"  Part="1" 
F 0 "#PWR098" H 3850 3500 50  0001 C CNN
F 1 "GND" H 3855 3577 50  0000 C CNN
F 2 "" H 3850 3750 50  0001 C CNN
F 3 "" H 3850 3750 50  0001 C CNN
	1    3850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3550 4850 3550
Wire Wire Line
	5150 3550 5150 2250
Wire Wire Line
	4650 3650 4850 3650
Wire Wire Line
	5200 3650 5200 2650
Wire Wire Line
	5200 2650 5350 2650
Wire Wire Line
	4650 3750 4850 3750
Wire Wire Line
	4650 3850 4850 3850
Wire Wire Line
	5300 3850 5300 3450
Wire Wire Line
	5300 3450 5350 3450
Wire Wire Line
	4650 3950 4850 3950
Wire Wire Line
	5350 3950 5350 3850
Wire Wire Line
	5350 4050 5350 4250
Wire Wire Line
	5250 3050 5250 3750
Wire Wire Line
	5350 3050 5250 3050
Wire Wire Line
	4650 4250 4850 4250
Text Notes 5250 1650 2    50   ~ 10
Capacitor Selection\n
Text HLabel 3850 3250 0    50   Input ~ 0
CAPACITOR_SELECTION_0
Text HLabel 3850 3350 0    50   Input ~ 0
CAPACITOR_SELECTION_1
Text HLabel 3850 3450 0    50   Input ~ 0
CAPACITOR_SELECTION_2
Text HLabel 3850 3650 0    50   Input ~ 0
CAPACITOR_AUDIO_INPUT
Text HLabel 5650 3450 2    50   Input ~ 0
CAPACITOR_AUDIO_OUTPUT
$Comp
L Device:C C?
U 1 1 5E9AD590
P 5500 2250
AR Path="/5E87C69B/5E9AD590" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD590" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD590" Ref="C12"  Part="1" 
AR Path="/5F9F739D/5E9AD590" Ref="C37"  Part="1" 
F 0 "C37" V 5248 2250 50  0000 C CNN
F 1 "0.01uF" V 5339 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 2100 50  0001 C CNN
F 3 "~" H 5500 2250 50  0001 C CNN
	1    5500 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2250 5350 2250
$Comp
L Device:C C?
U 1 1 5E9AD57E
P 5500 4650
AR Path="/5E87C69B/5E9AD57E" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD57E" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD57E" Ref="C15"  Part="1" 
AR Path="/5F9F739D/5E9AD57E" Ref="C40"  Part="1" 
F 0 "C40" V 5248 4650 50  0000 C CNN
F 1 "10uF" V 5339 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 4500 50  0001 C CNN
F 3 "~" H 5500 4650 50  0001 C CNN
	1    5500 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 4250 5250 5050
Wire Wire Line
	5250 5050 5350 5050
$Comp
L Device:C C?
U 1 1 5E9AD5F3
P 5500 5050
AR Path="/5E87C69B/5E9AD5F3" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD5F3" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD5F3" Ref="C19"  Part="1" 
AR Path="/5F9F739D/5E9AD5F3" Ref="C44"  Part="1" 
F 0 "C44" V 5248 5050 50  0000 C CNN
F 1 "C" V 5339 5050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 4900 50  0001 C CNN
F 3 "~" H 5500 5050 50  0001 C CNN
	1    5500 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 4050 4850 4050
Wire Wire Line
	4650 4150 4850 4150
Wire Wire Line
	5350 4650 5300 4650
Wire Wire Line
	5300 4650 5300 4150
$Comp
L Device:C C?
U 1 1 5E9AD578
P 5500 4250
AR Path="/5E87C69B/5E9AD578" Ref="C?"  Part="1" 
AR Path="/5E984186/5E9AD578" Ref="C?"  Part="1" 
AR Path="/5E983DF3/5E9AD578" Ref="C18"  Part="1" 
AR Path="/5F9F739D/5E9AD578" Ref="C43"  Part="1" 
F 0 "C43" V 5248 4250 50  0000 C CNN
F 1 "2.2uF" V 5339 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5538 4100 50  0001 C CNN
F 3 "~" H 5500 4250 50  0001 C CNN
	1    5500 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2250 5650 2650
Connection ~ 5650 2650
Wire Wire Line
	5650 2650 5650 3050
Connection ~ 5650 3050
Wire Wire Line
	5650 3050 5650 3450
Connection ~ 5650 3450
Wire Wire Line
	5650 3450 5650 3850
Connection ~ 5650 3850
Wire Wire Line
	5650 3850 5650 4250
Connection ~ 5650 4250
Wire Wire Line
	5650 4250 5650 4650
Connection ~ 5650 4650
Wire Wire Line
	5650 4650 5650 5050
Connection ~ 4850 3550
Wire Wire Line
	4850 3550 5150 3550
Connection ~ 4850 3650
Wire Wire Line
	4850 3650 5200 3650
Connection ~ 4850 3750
Wire Wire Line
	4850 3750 5250 3750
Connection ~ 4850 3850
Wire Wire Line
	4850 3850 5300 3850
Connection ~ 4850 3950
Wire Wire Line
	4850 3950 5350 3950
Connection ~ 4850 4050
Wire Wire Line
	4850 4050 5350 4050
Connection ~ 4850 4150
Wire Wire Line
	4850 4150 5300 4150
Connection ~ 4850 4250
Wire Wire Line
	4850 4250 5250 4250
$EndSCHEMATC
