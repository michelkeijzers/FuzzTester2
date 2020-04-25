EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
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
L 4xxx:4504 U22
U 1 1 5EC3D438
P 3050 3000
F 0 "U22" H 3100 4300 50  0000 C CNN
F 1 "4504" H 3100 4200 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3050 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 2400 2650 50  0001 C CNN
	1    3050 3000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4504 U23
U 1 1 5EC3EAD9
P 7950 3000
F 0 "U23" H 8000 4300 50  0000 C CNN
F 1 "4504" H 8000 4200 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7950 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 7300 2650 50  0001 C CNN
	1    7950 3000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4504 U24
U 1 1 5EC42112
P 3000 6000
F 0 "U24" H 3050 7300 50  0000 C CNN
F 1 "4504" H 3050 7200 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3000 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 2350 5650 50  0001 C CNN
	1    3000 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR027
U 1 1 5EC5E0E6
P 3150 2100
F 0 "#PWR027" H 3150 1950 50  0001 C CNN
F 1 "+9V" H 3165 2273 50  0000 C CNN
F 2 "" H 3150 2100 50  0001 C CNN
F 3 "" H 3150 2100 50  0001 C CNN
	1    3150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR030
U 1 1 5EC5EA75
P 8050 2100
F 0 "#PWR030" H 8050 1950 50  0001 C CNN
F 1 "+9V" H 8065 2273 50  0000 C CNN
F 2 "" H 8050 2100 50  0001 C CNN
F 3 "" H 8050 2100 50  0001 C CNN
	1    8050 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR039
U 1 1 5EC5F03A
P 3100 5100
F 0 "#PWR039" H 3100 4950 50  0001 C CNN
F 1 "+9V" H 3115 5273 50  0000 C CNN
F 2 "" H 3100 5100 50  0001 C CNN
F 3 "" H 3100 5100 50  0001 C CNN
	1    3100 5100
	1    0    0    -1  
$EndComp
Text HLabel 3450 6500 2    50   Input ~ 0
CAPACITOR_D_SELECTION_2
Text HLabel 3450 6300 2    50   Input ~ 0
CAPACITOR_D_SELECTION_1
Text HLabel 3450 6100 2    50   Input ~ 0
CAPACITOR_D_SELECTION_0
Text HLabel 3450 5700 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_2
Text HLabel 3450 5500 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_1
Text HLabel 3500 2500 2    50   Input ~ 0
CAPACITOR_A_SELECTION_0
Text HLabel 3500 2700 2    50   Input ~ 0
CAPACITOR_A_SELECTION_1
Text HLabel 3500 2900 2    50   Input ~ 0
CAPACITOR_A_SELECTION_2
Text HLabel 3500 3300 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_0
Text HLabel 3500 3500 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_1
Text HLabel 8400 2500 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_2
$Comp
L power:GND #PWR0110
U 1 1 5EDA8B02
P 3050 3900
F 0 "#PWR0110" H 3050 3650 50  0001 C CNN
F 1 "GND" H 3055 3727 50  0000 C CNN
F 2 "" H 3050 3900 50  0001 C CNN
F 3 "" H 3050 3900 50  0001 C CNN
	1    3050 3900
	1    0    0    -1  
$EndComp
Text Notes 2900 1450 0    50   ~ 10
Level Shifter 1\n
Text Notes 7700 1500 0    50   ~ 10
Level Shifter 2\n
Text Notes 2800 4550 0    50   ~ 10
Level Shifter 3\n
Wire Notes Line
	500  4350 11200 4350
Wire Notes Line
	5350 500  5350 7750
Wire Notes Line
	5350 7750 5400 7750
$Comp
L power:GND #PWR0111
U 1 1 5EDBA2BF
P 7950 3900
F 0 "#PWR0111" H 7950 3650 50  0001 C CNN
F 1 "GND" H 7955 3727 50  0000 C CNN
F 2 "" H 7950 3900 50  0001 C CNN
F 3 "" H 7950 3900 50  0001 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5EDBA882
P 3000 6900
F 0 "#PWR0113" H 3000 6650 50  0001 C CNN
F 1 "GND" H 3005 6727 50  0000 C CNN
F 2 "" H 3000 6900 50  0001 C CNN
F 3 "" H 3000 6900 50  0001 C CNN
	1    3000 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5EDBF337
P 2550 6700
F 0 "#PWR0122" H 2550 6450 50  0001 C CNN
F 1 "GND" H 2555 6527 50  0000 C CNN
F 2 "" H 2550 6700 50  0001 C CNN
F 3 "" H 2550 6700 50  0001 C CNN
	1    2550 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5EDBF934
P 7500 3700
F 0 "#PWR0123" H 7500 3450 50  0001 C CNN
F 1 "GND" H 7505 3527 50  0000 C CNN
F 2 "" H 7500 3700 50  0001 C CNN
F 3 "" H 7500 3700 50  0001 C CNN
	1    7500 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5EDBFD22
P 2600 3700
F 0 "#PWR0124" H 2600 3450 50  0001 C CNN
F 1 "GND" H 2605 3527 50  0000 C CNN
F 2 "" H 2600 3700 50  0001 C CNN
F 3 "" H 2600 3700 50  0001 C CNN
	1    2600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5EDC2DD2
P 7200 2900
F 0 "#PWR0125" H 7200 2650 50  0001 C CNN
F 1 "GND" H 7205 2727 50  0000 C CNN
F 2 "" H 7200 2900 50  0001 C CNN
F 3 "" H 7200 2900 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0126
U 1 1 5EDC4919
P 7850 2100
F 0 "#PWR0126" H 7850 1950 50  0001 C CNN
F 1 "+3V3" H 7865 2273 50  0000 C CNN
F 2 "" H 7850 2100 50  0001 C CNN
F 3 "" H 7850 2100 50  0001 C CNN
	1    7850 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0127
U 1 1 5EDC56CD
P 2950 2100
F 0 "#PWR0127" H 2950 1950 50  0001 C CNN
F 1 "+3V3" H 2965 2273 50  0000 C CNN
F 2 "" H 2950 2100 50  0001 C CNN
F 3 "" H 2950 2100 50  0001 C CNN
	1    2950 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0136
U 1 1 5EDC5D8A
P 2900 5100
F 0 "#PWR0136" H 2900 4950 50  0001 C CNN
F 1 "+3V3" H 2915 5273 50  0000 C CNN
F 2 "" H 2900 5100 50  0001 C CNN
F 3 "" H 2900 5100 50  0001 C CNN
	1    2900 5100
	1    0    0    -1  
$EndComp
Text HLabel 3500 3100 2    50   Input ~ 0
BYPASS_MODE
$Comp
L power:GND #PWR?
U 1 1 5EFBC7D0
P 3700 2200
AR Path="/5E87C69B/5EFBC7D0" Ref="#PWR?"  Part="1" 
AR Path="/5EB914C2/5EFBC7D0" Ref="#PWR?"  Part="1" 
AR Path="/5EB9C150/5EFBC7D0" Ref="#PWR?"  Part="1" 
AR Path="/5F697325/5EFBC7D0" Ref="#PWR?"  Part="1" 
AR Path="/5F99B130/5EFBC7D0" Ref="#PWR?"  Part="1" 
AR Path="/5EC3CBEE/5EFBC7D0" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 3700 1950 50  0001 C CNN
F 1 "GND" H 3705 2027 50  0000 C CNN
F 2 "" H 3700 2200 50  0001 C CNN
F 3 "" H 3700 2200 50  0001 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EFBC7D6
P 3700 2050
AR Path="/5E87C69B/5EFBC7D6" Ref="C?"  Part="1" 
AR Path="/5EB914C2/5EFBC7D6" Ref="C?"  Part="1" 
AR Path="/5EB9C150/5EFBC7D6" Ref="C?"  Part="1" 
AR Path="/5F697325/5EFBC7D6" Ref="C?"  Part="1" 
AR Path="/5F99B130/5EFBC7D6" Ref="C?"  Part="1" 
AR Path="/5EC3CBEE/5EFBC7D6" Ref="C47"  Part="1" 
F 0 "C47" H 3815 2096 50  0000 L CNN
F 1 "100nF" H 3815 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3738 1900 50  0001 C CNN
F 3 "~" H 3700 2050 50  0001 C CNN
	1    3700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1900 3400 1900
Wire Wire Line
	3400 2100 3400 1900
Wire Wire Line
	3150 2100 3400 2100
Connection ~ 3150 2100
$Comp
L power:GND #PWR?
U 1 1 5EFBD400
P 8600 2100
AR Path="/5E87C69B/5EFBD400" Ref="#PWR?"  Part="1" 
AR Path="/5EB914C2/5EFBD400" Ref="#PWR?"  Part="1" 
AR Path="/5EB9C150/5EFBD400" Ref="#PWR?"  Part="1" 
AR Path="/5F697325/5EFBD400" Ref="#PWR?"  Part="1" 
AR Path="/5F99B130/5EFBD400" Ref="#PWR?"  Part="1" 
AR Path="/5EC3CBEE/5EFBD400" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 8600 1850 50  0001 C CNN
F 1 "GND" H 8605 1927 50  0000 C CNN
F 2 "" H 8600 2100 50  0001 C CNN
F 3 "" H 8600 2100 50  0001 C CNN
	1    8600 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EFBD406
P 8600 1950
AR Path="/5E87C69B/5EFBD406" Ref="C?"  Part="1" 
AR Path="/5EB914C2/5EFBD406" Ref="C?"  Part="1" 
AR Path="/5EB9C150/5EFBD406" Ref="C?"  Part="1" 
AR Path="/5F697325/5EFBD406" Ref="C?"  Part="1" 
AR Path="/5F99B130/5EFBD406" Ref="C?"  Part="1" 
AR Path="/5EC3CBEE/5EFBD406" Ref="C48"  Part="1" 
F 0 "C48" H 8715 1996 50  0000 L CNN
F 1 "100nF" H 8715 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8638 1800 50  0001 C CNN
F 3 "~" H 8600 1950 50  0001 C CNN
	1    8600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1800 8300 1800
Wire Wire Line
	8050 2000 8050 2100
Connection ~ 8050 2100
Wire Wire Line
	8300 2100 8050 2100
Wire Wire Line
	8300 2100 8300 1800
$Comp
L power:GND #PWR?
U 1 1 5EFBE3CE
P 3550 5150
AR Path="/5E87C69B/5EFBE3CE" Ref="#PWR?"  Part="1" 
AR Path="/5EB914C2/5EFBE3CE" Ref="#PWR?"  Part="1" 
AR Path="/5EB9C150/5EFBE3CE" Ref="#PWR?"  Part="1" 
AR Path="/5F697325/5EFBE3CE" Ref="#PWR?"  Part="1" 
AR Path="/5F99B130/5EFBE3CE" Ref="#PWR?"  Part="1" 
AR Path="/5EC3CBEE/5EFBE3CE" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 3550 4900 50  0001 C CNN
F 1 "GND" H 3555 4977 50  0000 C CNN
F 2 "" H 3550 5150 50  0001 C CNN
F 3 "" H 3550 5150 50  0001 C CNN
	1    3550 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EFBE3D4
P 3550 5000
AR Path="/5E87C69B/5EFBE3D4" Ref="C?"  Part="1" 
AR Path="/5EB914C2/5EFBE3D4" Ref="C?"  Part="1" 
AR Path="/5EB9C150/5EFBE3D4" Ref="C?"  Part="1" 
AR Path="/5F697325/5EFBE3D4" Ref="C?"  Part="1" 
AR Path="/5F99B130/5EFBE3D4" Ref="C?"  Part="1" 
AR Path="/5EC3CBEE/5EFBE3D4" Ref="C46"  Part="1" 
F 0 "C46" H 3665 5046 50  0000 L CNN
F 1 "100nF" H 3665 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 4850 50  0001 C CNN
F 3 "~" H 3550 5000 50  0001 C CNN
	1    3550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4850 3250 4850
Wire Wire Line
	3100 5050 3100 5100
Connection ~ 3100 5100
Wire Wire Line
	3250 5100 3250 4850
Wire Wire Line
	3250 5100 3100 5100
Text HLabel 2600 3100 0    50   Input ~ 0
BYPASS_MODE_3V3
Wire Wire Line
	7500 3100 7500 2900
NoConn ~ 8400 2900
NoConn ~ 8400 3100
Text HLabel 2600 2500 0    50   Input ~ 0
CAPACITOR_A_SELECTION_0_3V3
Text HLabel 2600 2700 0    50   Input ~ 0
CAPACITOR_A_SELECTION_1_3V3
Text HLabel 2600 2900 0    50   Input ~ 0
CAPACITOR_A_SELECTION_2_3V3
Text HLabel 2600 3300 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_0_3V3
Text HLabel 2600 3500 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_1_3V3
Text HLabel 7500 2500 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_2_3V3
Text HLabel 7500 2700 0    50   Input ~ 0
TRANSISTOR_B_SELECTION_3_3V3
Text HLabel 8400 2700 2    50   Input ~ 0
TRANSISTOR_B_SELECTION_3
Text HLabel 7500 3500 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_0_3V3
Text HLabel 8400 3500 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_0
Text HLabel 2550 6500 0    50   Input ~ 0
CAPACITOR_D_SELECTION_2_3V3
Text HLabel 2550 6300 0    50   Input ~ 0
CAPACITOR_D_SELECTION_1_3V3
Text HLabel 2550 6100 0    50   Input ~ 0
CAPACITOR_D_SELECTION_0_3V3
Text HLabel 2550 5700 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_2_3V3
Text HLabel 2550 5500 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_1_3V3
Text HLabel 3450 5900 2    50   Input ~ 0
TRANSISTOR_C_SELECTION_3
Text HLabel 2550 5900 0    50   Input ~ 0
TRANSISTOR_C_SELECTION_3_3V3
Wire Wire Line
	7200 2900 7500 2900
Connection ~ 7500 2900
Wire Wire Line
	7500 3300 7500 3100
Connection ~ 7500 3100
NoConn ~ 8400 3300
$EndSCHEMATC
