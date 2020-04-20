EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L Analog_Switch:CD4051B U?
U 1 1 5E8569E0
P 5300 2300
F 0 "U?" H 5300 3181 50  0000 C CNN
F 1 "CD4051B" H 5300 3090 50  0000 C CNN
F 2 "" H 5450 1550 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 5280 2400 50  0001 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
Text Label 3900 2650 0    50   ~ 0
SHIFT3_OUT
Wire Wire Line
	4350 2650 3900 2650
Text Notes 3000 850  0    50   ~ 10
Transistor Groups B2..B5
Wire Wire Line
	2600 2050 3100 2050
$Comp
L power:+5V #PWR?
U 1 1 5E864E0F
P 2600 2050
F 0 "#PWR?" H 2600 1900 50  0001 C CNN
F 1 "+5V" H 2615 2223 50  0000 C CNN
F 2 "" H 2600 2050 50  0001 C CNN
F 3 "" H 2600 2050 50  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2450 4200 2450
Text Label 4000 2450 0    50   ~ 0
TGB5_1
Wire Wire Line
	3900 2350 4200 2350
Text Label 4000 2350 0    50   ~ 0
TGB5_0
Wire Wire Line
	3900 2250 4200 2250
Text Label 4000 2250 0    50   ~ 0
TGB4_1
Wire Wire Line
	3900 2150 4200 2150
Text Label 4000 2150 0    50   ~ 0
TGB4_0
Wire Wire Line
	3900 2050 4200 2050
Text Label 4000 2050 0    50   ~ 0
TGB3_1
Wire Wire Line
	3900 1950 4200 1950
Text Label 4000 1950 0    50   ~ 0
TGB3_0
Wire Wire Line
	3900 1850 4200 1850
Text Label 4000 1850 0    50   ~ 0
TGB2_1
Wire Wire Line
	3900 1750 4200 1750
Text Label 4000 1750 0    50   ~ 0
TGB2_0
Wire Wire Line
	3100 1750 2650 1750
Text Label 2650 1750 0    50   ~ 0
SHIFT2_OUT
Wire Wire Line
	3500 1100 3500 1550
Wire Wire Line
	3800 1100 3500 1100
$Comp
L Device:C C?
U 1 1 5E864DF4
P 3800 1250
F 0 "C?" H 3915 1296 50  0000 L CNN
F 1 "100nF" H 3915 1205 50  0000 L CNN
F 2 "" H 3838 1100 50  0001 C CNN
F 3 "~" H 3800 1250 50  0001 C CNN
	1    3800 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E864DEE
P 3800 1400
F 0 "#PWR?" H 3800 1150 50  0001 C CNN
F 1 "GND" H 3805 1227 50  0000 C CNN
F 2 "" H 3800 1400 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
Connection ~ 3500 1100
$Comp
L power:+5V #PWR?
U 1 1 5E864DE8
P 3500 1100
F 0 "#PWR?" H 3500 950 50  0001 C CNN
F 1 "+5V" H 3515 1273 50  0000 C CNN
F 2 "" H 3500 1100 50  0001 C CNN
F 3 "" H 3500 1100 50  0001 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E864DE2
P 3500 2850
F 0 "#PWR?" H 3500 2600 50  0001 C CNN
F 1 "GND" H 3505 2677 50  0000 C CNN
F 2 "" H 3500 2850 50  0001 C CNN
F 3 "" H 3500 2850 50  0001 C CNN
	1    3500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E864DDC
P 3100 2350
F 0 "#PWR?" H 3100 2100 50  0001 C CNN
F 1 "GND" H 3105 2177 50  0000 C CNN
F 2 "" H 3100 2350 50  0001 C CNN
F 3 "" H 3100 2350 50  0001 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
Text GLabel 2600 2250 2    50   Input ~ 0
GPIO_LATCH
Text GLabel 2700 1950 2    50   Input ~ 0
SPI2_CSK
$Comp
L 74xx:74HC595 U?
U 1 1 5E864DD4
P 3500 2150
F 0 "U?" H 3500 2931 50  0000 C CNN
F 1 "74HC595" H 3500 2840 50  0000 C CNN
F 2 "" H 3500 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3500 2150 50  0001 C CNN
	1    3500 2150
	1    0    0    -1  
$EndComp
Text Notes 600  850  0    50   ~ 10
Capacitors A, Trans Groups B, Trans Group B1
Wire Wire Line
	600  2050 1100 2050
Wire Wire Line
	1900 2450 2200 2450
Text Label 2000 2450 0    50   ~ 0
CA_2
Wire Wire Line
	1900 2350 2200 2350
Text Label 2000 2350 0    50   ~ 0
CA_1
Wire Wire Line
	1900 2250 2200 2250
Text Label 2000 2250 0    50   ~ 0
CA_0
Wire Wire Line
	1900 2150 2200 2150
Text Label 2000 2150 0    50   ~ 0
TGB1_1
Wire Wire Line
	1900 2050 2200 2050
Text Label 2000 2050 0    50   ~ 0
TGB1_0
Wire Wire Line
	1900 1950 2200 1950
Text Label 2000 1950 0    50   ~ 0
TGB2
Wire Wire Line
	1900 1850 2200 1850
Text Label 2000 1850 0    50   ~ 0
TGB1
Wire Wire Line
	1900 1750 2200 1750
Text Label 2000 1750 0    50   ~ 0
TGB0
Wire Wire Line
	1100 1750 650  1750
Text Label 650  1750 0    50   ~ 0
SHIFT3_OUT
Wire Wire Line
	1500 1100 1500 1550
Wire Wire Line
	1800 1100 1500 1100
$Comp
L Device:C C?
U 1 1 5E85BFED
P 1800 1250
F 0 "C?" H 1915 1296 50  0000 L CNN
F 1 "100nF" H 1915 1205 50  0000 L CNN
F 2 "" H 1838 1100 50  0001 C CNN
F 3 "~" H 1800 1250 50  0001 C CNN
	1    1800 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E85BB93
P 1800 1400
F 0 "#PWR?" H 1800 1150 50  0001 C CNN
F 1 "GND" H 1805 1227 50  0000 C CNN
F 2 "" H 1800 1400 50  0001 C CNN
F 3 "" H 1800 1400 50  0001 C CNN
	1    1800 1400
	1    0    0    -1  
$EndComp
Connection ~ 1500 1100
$Comp
L power:+5V #PWR?
U 1 1 5E85B345
P 1500 1100
F 0 "#PWR?" H 1500 950 50  0001 C CNN
F 1 "+5V" H 1515 1273 50  0000 C CNN
F 2 "" H 1500 1100 50  0001 C CNN
F 3 "" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E85AAD6
P 1500 2850
F 0 "#PWR?" H 1500 2600 50  0001 C CNN
F 1 "GND" H 1505 2677 50  0000 C CNN
F 2 "" H 1500 2850 50  0001 C CNN
F 3 "" H 1500 2850 50  0001 C CNN
	1    1500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E858322
P 1100 2350
F 0 "#PWR?" H 1100 2100 50  0001 C CNN
F 1 "GND" H 1105 2177 50  0000 C CNN
F 2 "" H 1100 2350 50  0001 C CNN
F 3 "" H 1100 2350 50  0001 C CNN
	1    1100 2350
	1    0    0    -1  
$EndComp
Text GLabel 600  2250 2    50   Input ~ 0
GPIO_LATCH
Text GLabel 700  1950 2    50   Input ~ 0
SPI2_CSK
$Comp
L 74xx:74HC595 U?
U 1 1 5E852DE8
P 1500 2150
F 0 "U?" H 1500 2931 50  0000 C CNN
F 1 "74HC595" H 1500 2840 50  0000 C CNN
F 2 "" H 1500 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 1500 2150 50  0001 C CNN
	1    1500 2150
	1    0    0    -1  
$EndComp
Text Notes 5800 850  2    50   ~ 10
Transistor Groups TBG1..TBG5 In
Text Notes 7700 800  2    50   ~ 10
Transistor Groups TBG1..TBG5 Out\n
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5E8F0F6B
P 2000 3550
F 0 "Q?" V 2235 3550 50  0000 C CNN
F 1 "MMBT3904" V 2326 3550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2200 3475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2000 3550 50  0001 L CNN
	1    2000 3550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q?
U 1 1 5E8F2054
P 1050 3550
F 0 "Q?" V 1285 3550 50  0000 C CNN
F 1 "PN2222A" V 1376 3550 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1250 3475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1050 3550 50  0001 L CNN
	1    1050 3550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT5551L Q?
U 1 1 5E8F3DE7
P 1050 4250
F 0 "Q?" V 1285 4250 50  0000 C CNN
F 1 "MMBT5551L" V 1376 4250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1250 4175 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 1050 4250 50  0001 L CNN
	1    1050 4250
	0    1    1    0   
$EndComp
Text Label 2100 5300 0    50   ~ 0
TB1_IN
Wire Wire Line
	2400 5300 2050 5300
Text Label 2100 5400 0    50   ~ 0
TB2_IN
Wire Wire Line
	2400 5400 2050 5400
Text Label 2100 5500 0    50   ~ 0
TB3_IN
Wire Wire Line
	2400 5500 2050 5500
Text Label 2100 5600 0    50   ~ 0
TB4_IN
Wire Wire Line
	2400 5600 2050 5600
Text Label 2100 5800 0    50   ~ 0
TB1_COM
Wire Wire Line
	2400 5800 2050 5800
Text Label 2100 5900 0    50   ~ 0
TB2_COM
Wire Wire Line
	2400 5900 2050 5900
Text Label 2100 6000 0    50   ~ 0
TB3_COM
Wire Wire Line
	2400 6000 2050 6000
Text Label 2100 6100 0    50   ~ 0
TB4_COM
Wire Wire Line
	2400 6100 2050 6100
Text Label 750  5100 0    50   ~ 0
TGB1_0
Wire Wire Line
	750  5100 1050 5100
Text Label 750  5200 0    50   ~ 0
TGB1_1
Wire Wire Line
	750  5200 1050 5200
$Comp
L power:GND #PWR?
U 1 1 5E92EF80
P 1050 6000
F 0 "#PWR?" H 1050 5750 50  0001 C CNN
F 1 "GND" H 1050 5850 50  0000 C CNN
F 2 "" H 1050 6000 50  0001 C CNN
F 3 "" H 1050 6000 50  0001 C CNN
	1    1050 6000
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5E8EB08E
P 1550 5600
F 0 "U?" H 1550 6481 50  0000 C CNN
F 1 "CD4052B" H 1550 6390 50  0000 C CNN
F 2 "" H 1700 4850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 1530 5800 50  0001 C CNN
	1    1550 5600
	1    0    0    -1  
$EndComp
Text Label 700  5400 0    50   ~ 0
TGB1_IN
Wire Wire Line
	700  5400 1050 5400
Text GLabel 600  5900 2    50   Input ~ 0
TBG1_COM
$Comp
L Device:C C?
U 1 1 5E93A039
P 2150 4850
F 0 "C?" H 2265 4896 50  0000 L CNN
F 1 "100nF" H 2265 4805 50  0000 L CNN
F 2 "" H 2188 4700 50  0001 C CNN
F 3 "~" H 2150 4850 50  0001 C CNN
	1    2150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E93DCAC
P 1550 6300
F 0 "#PWR?" H 1550 6050 50  0001 C CNN
F 1 "GND" H 1555 6127 50  0000 C CNN
F 2 "" H 1550 6300 50  0001 C CNN
F 3 "" H 1550 6300 50  0001 C CNN
	1    1550 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E93F859
P 1800 4900
F 0 "#PWR?" H 1800 4750 50  0001 C CNN
F 1 "+5V" H 1815 5073 50  0000 C CNN
F 2 "" H 1800 4900 50  0001 C CNN
F 3 "" H 1800 4900 50  0001 C CNN
	1    1800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4900 1800 4900
Wire Wire Line
	1450 6300 1550 6300
Connection ~ 1550 6300
$Comp
L power:GND #PWR?
U 1 1 5E94F273
P 2150 5000
F 0 "#PWR?" H 2150 4750 50  0001 C CNN
F 1 "GND" H 2155 4827 50  0000 C CNN
F 2 "" H 2150 5000 50  0001 C CNN
F 3 "" H 2150 5000 50  0001 C CNN
	1    2150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4900 2000 4900
Wire Wire Line
	2000 4900 2000 4700
Wire Wire Line
	2000 4700 2150 4700
Connection ~ 1800 4900
$Comp
L power:GND #PWR?
U 1 1 5E95753D
P 750 4350
F 0 "#PWR?" H 750 4100 50  0001 C CNN
F 1 "GND" H 755 4177 50  0000 C CNN
F 2 "" H 750 4350 50  0001 C CNN
F 3 "" H 750 4350 50  0001 C CNN
	1    750  4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E958658
P 750 3650
F 0 "#PWR?" H 750 3400 50  0001 C CNN
F 1 "GND" H 755 3477 50  0000 C CNN
F 2 "" H 750 3650 50  0001 C CNN
F 3 "" H 750 3650 50  0001 C CNN
	1    750  3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E95982B
P 1700 3650
F 0 "#PWR?" H 1700 3400 50  0001 C CNN
F 1 "GND" H 1705 3477 50  0000 C CNN
F 2 "" H 1700 3650 50  0001 C CNN
F 3 "" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E95AA18
P 1700 4350
F 0 "#PWR?" H 1700 4100 50  0001 C CNN
F 1 "GND" H 1705 4177 50  0000 C CNN
F 2 "" H 1700 4350 50  0001 C CNN
F 3 "" H 1700 4350 50  0001 C CNN
	1    1700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  4350 850  4350
Wire Wire Line
	750  3650 850  3650
Wire Wire Line
	1800 3650 1700 3650
Wire Wire Line
	1700 4350 1800 4350
Text Label 1100 3350 0    50   ~ 0
TB1_IN
Wire Wire Line
	1400 3350 1050 3350
Text Label 2050 3350 0    50   ~ 0
TB2_IN
Wire Wire Line
	2350 3350 2000 3350
Text Label 1100 4050 0    50   ~ 0
TB3_IN
Wire Wire Line
	1400 4050 1050 4050
Text Label 2050 4050 0    50   ~ 0
TB4_IN
Wire Wire Line
	2350 4050 2000 4050
Text Label 1300 3650 0    50   ~ 0
TB1_COM
Wire Wire Line
	1600 3650 1250 3650
Text Label 2250 3650 0    50   ~ 0
TB2_COM
Wire Wire Line
	2550 3650 2200 3650
Text Label 1300 4350 0    50   ~ 0
TB3_COM
Wire Wire Line
	1600 4350 1250 4350
Text Label 2250 4350 0    50   ~ 0
TB4_COM
Wire Wire Line
	2550 4350 2200 4350
Text Label 4300 5400 0    50   ~ 0
TB5_IN
Wire Wire Line
	4600 5400 4250 5400
Text Label 4300 5500 0    50   ~ 0
TB6_IN
Wire Wire Line
	4600 5500 4250 5500
Text Label 4300 5600 0    50   ~ 0
TB7_IN
Wire Wire Line
	4600 5600 4250 5600
Text Label 4300 5700 0    50   ~ 0
TB8_IN
Wire Wire Line
	4600 5700 4250 5700
Text Label 4300 5900 0    50   ~ 0
TB5_COM
Wire Wire Line
	4600 5900 4250 5900
Text Label 4300 6000 0    50   ~ 0
TB6_COM
Wire Wire Line
	4600 6000 4250 6000
Text Label 4300 6100 0    50   ~ 0
TB7_COM
Wire Wire Line
	4600 6100 4250 6100
Text Label 4300 6200 0    50   ~ 0
TB8_COM
Wire Wire Line
	4600 6200 4250 6200
Text Label 2950 5200 0    50   ~ 0
TGB2_0
Wire Wire Line
	2950 5200 3250 5200
Text Label 2950 5300 0    50   ~ 0
TGB2_1
Wire Wire Line
	2950 5300 3250 5300
$Comp
L power:GND #PWR?
U 1 1 5E98ACAA
P 3250 6100
F 0 "#PWR?" H 3250 5850 50  0001 C CNN
F 1 "GND" H 3250 5950 50  0000 C CNN
F 2 "" H 3250 6100 50  0001 C CNN
F 3 "" H 3250 6100 50  0001 C CNN
	1    3250 6100
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5E98ACB0
P 3750 5700
F 0 "U?" H 3750 6581 50  0000 C CNN
F 1 "CD4052B" H 3750 6490 50  0000 C CNN
F 2 "" H 3900 4950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 3730 5900 50  0001 C CNN
	1    3750 5700
	1    0    0    -1  
$EndComp
Text Label 2900 5500 0    50   ~ 0
TGB2_IN
Wire Wire Line
	2900 5500 3250 5500
Text GLabel 2800 6000 2    50   Input ~ 0
TBG2_COM
$Comp
L Device:C C?
U 1 1 5E98ACB9
P 4350 4950
F 0 "C?" H 4465 4996 50  0000 L CNN
F 1 "100nF" H 4465 4905 50  0000 L CNN
F 2 "" H 4388 4800 50  0001 C CNN
F 3 "~" H 4350 4950 50  0001 C CNN
	1    4350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E98ACBF
P 3750 6400
F 0 "#PWR?" H 3750 6150 50  0001 C CNN
F 1 "GND" H 3755 6227 50  0000 C CNN
F 2 "" H 3750 6400 50  0001 C CNN
F 3 "" H 3750 6400 50  0001 C CNN
	1    3750 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E98ACC5
P 4000 5000
F 0 "#PWR?" H 4000 4850 50  0001 C CNN
F 1 "+5V" H 4015 5173 50  0000 C CNN
F 2 "" H 4000 5000 50  0001 C CNN
F 3 "" H 4000 5000 50  0001 C CNN
	1    4000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5000 4000 5000
Wire Wire Line
	3650 6400 3750 6400
Connection ~ 3750 6400
$Comp
L power:GND #PWR?
U 1 1 5E98ACCE
P 4350 5100
F 0 "#PWR?" H 4350 4850 50  0001 C CNN
F 1 "GND" H 4355 4927 50  0000 C CNN
F 2 "" H 4350 5100 50  0001 C CNN
F 3 "" H 4350 5100 50  0001 C CNN
	1    4350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5000 4200 5000
Wire Wire Line
	4200 5000 4200 4800
Wire Wire Line
	4200 4800 4350 4800
Connection ~ 4000 5000
$Comp
L power:GND #PWR?
U 1 1 5E98ACD8
P 2950 4450
F 0 "#PWR?" H 2950 4200 50  0001 C CNN
F 1 "GND" H 2955 4277 50  0000 C CNN
F 2 "" H 2950 4450 50  0001 C CNN
F 3 "" H 2950 4450 50  0001 C CNN
	1    2950 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E98ACDE
P 2950 3750
F 0 "#PWR?" H 2950 3500 50  0001 C CNN
F 1 "GND" H 2955 3577 50  0000 C CNN
F 2 "" H 2950 3750 50  0001 C CNN
F 3 "" H 2950 3750 50  0001 C CNN
	1    2950 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E98ACE4
P 3900 3750
F 0 "#PWR?" H 3900 3500 50  0001 C CNN
F 1 "GND" H 3905 3577 50  0000 C CNN
F 2 "" H 3900 3750 50  0001 C CNN
F 3 "" H 3900 3750 50  0001 C CNN
	1    3900 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E98ACEA
P 3900 4450
F 0 "#PWR?" H 3900 4200 50  0001 C CNN
F 1 "GND" H 3905 4277 50  0000 C CNN
F 2 "" H 3900 4450 50  0001 C CNN
F 3 "" H 3900 4450 50  0001 C CNN
	1    3900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4450 3050 4450
Wire Wire Line
	2950 3750 3050 3750
Wire Wire Line
	4000 3750 3900 3750
Text Label 3300 3450 0    50   ~ 0
TB5_IN
Wire Wire Line
	3600 3450 3250 3450
Text Label 4250 3450 0    50   ~ 0
TB6_IN
Wire Wire Line
	4550 3450 4200 3450
Text Label 3300 4150 0    50   ~ 0
TB7_IN
Wire Wire Line
	3600 4150 3250 4150
Text Label 4250 4150 0    50   ~ 0
TB8_IN
Wire Wire Line
	4550 4150 4200 4150
Text Label 3500 3750 0    50   ~ 0
TB5_COM
Wire Wire Line
	3800 3750 3450 3750
Text Label 4450 3750 0    50   ~ 0
TB6_COM
Wire Wire Line
	4750 3750 4400 3750
Wire Wire Line
	3800 4450 3450 4450
Text Label 4450 4450 0    50   ~ 0
TB8_COM
Wire Wire Line
	4750 4450 4400 4450
Text Label 6450 5350 0    50   ~ 0
TB9_IN
Wire Wire Line
	6750 5350 6400 5350
Text Label 6450 5450 0    50   ~ 0
TB10_IN
Wire Wire Line
	6750 5450 6400 5450
Text Label 6450 5550 0    50   ~ 0
TB11_IN
Wire Wire Line
	6750 5550 6400 5550
Text Label 6450 5650 0    50   ~ 0
TB12_IN
Wire Wire Line
	6750 5650 6400 5650
Text Label 6450 5850 0    50   ~ 0
TB9_COM
Wire Wire Line
	6750 5850 6400 5850
Text Label 6450 5950 0    50   ~ 0
TB10_COM
Wire Wire Line
	6750 5950 6400 5950
Text Label 6450 6050 0    50   ~ 0
TB11_COM
Wire Wire Line
	6750 6050 6400 6050
Text Label 6450 6150 0    50   ~ 0
TB12_COM
Wire Wire Line
	6750 6150 6400 6150
Text Label 5100 5150 0    50   ~ 0
TGB3_0
Wire Wire Line
	5100 5150 5400 5150
Text Label 5100 5250 0    50   ~ 0
TGB3_1
Wire Wire Line
	5100 5250 5400 5250
$Comp
L power:GND #PWR?
U 1 1 5E992F6F
P 5400 6050
F 0 "#PWR?" H 5400 5800 50  0001 C CNN
F 1 "GND" H 5400 5900 50  0000 C CNN
F 2 "" H 5400 6050 50  0001 C CNN
F 3 "" H 5400 6050 50  0001 C CNN
	1    5400 6050
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5E992F75
P 5900 5650
F 0 "U?" H 5900 6531 50  0000 C CNN
F 1 "CD4052B" H 5900 6440 50  0000 C CNN
F 2 "" H 6050 4900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 5880 5850 50  0001 C CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
Text Label 5050 5450 0    50   ~ 0
TGB3_IN
Wire Wire Line
	5050 5450 5400 5450
Text GLabel 4950 5950 2    50   Input ~ 0
TBG3_COM
$Comp
L Device:C C?
U 1 1 5E992F7E
P 6500 4900
F 0 "C?" H 6615 4946 50  0000 L CNN
F 1 "100nF" H 6615 4855 50  0000 L CNN
F 2 "" H 6538 4750 50  0001 C CNN
F 3 "~" H 6500 4900 50  0001 C CNN
	1    6500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E992F84
P 5900 6350
F 0 "#PWR?" H 5900 6100 50  0001 C CNN
F 1 "GND" H 5905 6177 50  0000 C CNN
F 2 "" H 5900 6350 50  0001 C CNN
F 3 "" H 5900 6350 50  0001 C CNN
	1    5900 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E992F8A
P 6150 4950
F 0 "#PWR?" H 6150 4800 50  0001 C CNN
F 1 "+5V" H 6165 5123 50  0000 C CNN
F 2 "" H 6150 4950 50  0001 C CNN
F 3 "" H 6150 4950 50  0001 C CNN
	1    6150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4950 6150 4950
Wire Wire Line
	5800 6350 5900 6350
Connection ~ 5900 6350
$Comp
L power:GND #PWR?
U 1 1 5E992F93
P 6500 5050
F 0 "#PWR?" H 6500 4800 50  0001 C CNN
F 1 "GND" H 6505 4877 50  0000 C CNN
F 2 "" H 6500 5050 50  0001 C CNN
F 3 "" H 6500 5050 50  0001 C CNN
	1    6500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4950 6350 4950
Wire Wire Line
	6350 4950 6350 4750
Wire Wire Line
	6350 4750 6500 4750
Connection ~ 6150 4950
$Comp
L power:GND #PWR?
U 1 1 5E992F9D
P 5100 4400
F 0 "#PWR?" H 5100 4150 50  0001 C CNN
F 1 "GND" H 5105 4227 50  0000 C CNN
F 2 "" H 5100 4400 50  0001 C CNN
F 3 "" H 5100 4400 50  0001 C CNN
	1    5100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E992FA3
P 5100 3700
F 0 "#PWR?" H 5100 3450 50  0001 C CNN
F 1 "GND" H 5105 3527 50  0000 C CNN
F 2 "" H 5100 3700 50  0001 C CNN
F 3 "" H 5100 3700 50  0001 C CNN
	1    5100 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E992FA9
P 6050 3750
F 0 "#PWR?" H 6050 3500 50  0001 C CNN
F 1 "GND" H 6055 3577 50  0000 C CNN
F 2 "" H 6050 3750 50  0001 C CNN
F 3 "" H 6050 3750 50  0001 C CNN
	1    6050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E992FAF
P 6000 4400
F 0 "#PWR?" H 6000 4150 50  0001 C CNN
F 1 "GND" H 6005 4227 50  0000 C CNN
F 2 "" H 6000 4400 50  0001 C CNN
F 3 "" H 6000 4400 50  0001 C CNN
	1    6000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4400 5200 4400
Wire Wire Line
	5100 3700 5200 3700
Wire Wire Line
	6150 3750 6050 3750
Wire Wire Line
	6000 4400 6100 4400
Text Label 5450 3400 0    50   ~ 0
TB9_IN
Wire Wire Line
	5750 3400 5400 3400
Text Label 6400 3450 0    50   ~ 0
TB10_IN
Wire Wire Line
	6700 3450 6350 3450
Text Label 5450 4100 0    50   ~ 0
TB11_IN
Wire Wire Line
	5750 4100 5400 4100
Text Label 6350 4100 0    50   ~ 0
TB12_IN
Wire Wire Line
	6650 4100 6300 4100
Text Label 5650 3700 0    50   ~ 0
TB9_COM
Wire Wire Line
	5950 3700 5600 3700
Text Label 6600 3750 0    50   ~ 0
TB10_COM
Wire Wire Line
	6900 3750 6550 3750
Text Label 5650 4400 0    50   ~ 0
TB11_COM
Wire Wire Line
	5950 4400 5600 4400
Text Label 6550 4400 0    50   ~ 0
TB12_COM
Wire Wire Line
	6850 4400 6500 4400
Text Label 8500 5250 0    50   ~ 0
TB13_IN
Wire Wire Line
	8800 5250 8450 5250
Text Label 8500 5350 0    50   ~ 0
TB14_IN
Wire Wire Line
	8800 5350 8450 5350
Text Label 8500 5450 0    50   ~ 0
TB15_IN
Wire Wire Line
	8800 5450 8450 5450
Text Label 8500 5550 0    50   ~ 0
TB16_IN
Wire Wire Line
	8800 5550 8450 5550
Text Label 8500 5750 0    50   ~ 0
TB13_COM
Wire Wire Line
	8800 5750 8450 5750
Text Label 8500 5850 0    50   ~ 0
TB14_COM
Wire Wire Line
	8800 5850 8450 5850
Text Label 8500 5950 0    50   ~ 0
TB15_COM
Wire Wire Line
	8800 5950 8450 5950
Text Label 8500 6050 0    50   ~ 0
TB16_COM
Wire Wire Line
	8800 6050 8450 6050
Text Label 7150 5050 0    50   ~ 0
TGB4_0
Wire Wire Line
	7150 5050 7450 5050
Text Label 7150 5150 0    50   ~ 0
TGB4_1
Wire Wire Line
	7150 5150 7450 5150
$Comp
L power:GND #PWR?
U 1 1 5E99F888
P 7450 5950
F 0 "#PWR?" H 7450 5700 50  0001 C CNN
F 1 "GND" H 7450 5800 50  0000 C CNN
F 2 "" H 7450 5950 50  0001 C CNN
F 3 "" H 7450 5950 50  0001 C CNN
	1    7450 5950
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5E99F88E
P 7950 5550
F 0 "U?" H 7950 6431 50  0000 C CNN
F 1 "CD4052B" H 7950 6340 50  0000 C CNN
F 2 "" H 8100 4800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 7930 5750 50  0001 C CNN
	1    7950 5550
	1    0    0    -1  
$EndComp
Text Label 7100 5350 0    50   ~ 0
TGB4_IN
Wire Wire Line
	7100 5350 7450 5350
Text GLabel 7000 5850 2    50   Input ~ 0
TBG4_COM
$Comp
L Device:C C?
U 1 1 5E99F897
P 8550 4800
F 0 "C?" H 8665 4846 50  0000 L CNN
F 1 "100nF" H 8665 4755 50  0000 L CNN
F 2 "" H 8588 4650 50  0001 C CNN
F 3 "~" H 8550 4800 50  0001 C CNN
	1    8550 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E99F89D
P 7950 6250
F 0 "#PWR?" H 7950 6000 50  0001 C CNN
F 1 "GND" H 7955 6077 50  0000 C CNN
F 2 "" H 7950 6250 50  0001 C CNN
F 3 "" H 7950 6250 50  0001 C CNN
	1    7950 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E99F8A3
P 8200 4850
F 0 "#PWR?" H 8200 4700 50  0001 C CNN
F 1 "+5V" H 8215 5023 50  0000 C CNN
F 2 "" H 8200 4850 50  0001 C CNN
F 3 "" H 8200 4850 50  0001 C CNN
	1    8200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4850 8200 4850
Wire Wire Line
	7850 6250 7950 6250
Connection ~ 7950 6250
$Comp
L power:GND #PWR?
U 1 1 5E99F8AC
P 8550 4950
F 0 "#PWR?" H 8550 4700 50  0001 C CNN
F 1 "GND" H 8555 4777 50  0000 C CNN
F 2 "" H 8550 4950 50  0001 C CNN
F 3 "" H 8550 4950 50  0001 C CNN
	1    8550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4850 8400 4850
Wire Wire Line
	8400 4850 8400 4650
Wire Wire Line
	8400 4650 8550 4650
Connection ~ 8200 4850
$Comp
L power:GND #PWR?
U 1 1 5E99F8B6
P 7150 4300
F 0 "#PWR?" H 7150 4050 50  0001 C CNN
F 1 "GND" H 7155 4127 50  0000 C CNN
F 2 "" H 7150 4300 50  0001 C CNN
F 3 "" H 7150 4300 50  0001 C CNN
	1    7150 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E99F8BC
P 7150 3600
F 0 "#PWR?" H 7150 3350 50  0001 C CNN
F 1 "GND" H 7155 3427 50  0000 C CNN
F 2 "" H 7150 3600 50  0001 C CNN
F 3 "" H 7150 3600 50  0001 C CNN
	1    7150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E99F8C2
P 8100 3650
F 0 "#PWR?" H 8100 3400 50  0001 C CNN
F 1 "GND" H 8105 3477 50  0000 C CNN
F 2 "" H 8100 3650 50  0001 C CNN
F 3 "" H 8100 3650 50  0001 C CNN
	1    8100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E99F8C8
P 8050 4300
F 0 "#PWR?" H 8050 4050 50  0001 C CNN
F 1 "GND" H 8055 4127 50  0000 C CNN
F 2 "" H 8050 4300 50  0001 C CNN
F 3 "" H 8050 4300 50  0001 C CNN
	1    8050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3600 7250 3600
Wire Wire Line
	8200 3650 8100 3650
Wire Wire Line
	8050 4300 8150 4300
Text Label 7500 3300 0    50   ~ 0
TB13_IN
Wire Wire Line
	7800 3300 7450 3300
Text Label 8450 3350 0    50   ~ 0
TB14_IN
Wire Wire Line
	8750 3350 8400 3350
Text Label 7500 4000 0    50   ~ 0
TB15_IN
Wire Wire Line
	7800 4000 7450 4000
Text Label 8400 4000 0    50   ~ 0
TB16_IN
Wire Wire Line
	8700 4000 8350 4000
Text Label 7700 3600 0    50   ~ 0
TB13_COM
Wire Wire Line
	8000 3600 7650 3600
Text Label 8650 3650 0    50   ~ 0
TB14_COM
Wire Wire Line
	8950 3650 8600 3650
Text Label 7700 4300 0    50   ~ 0
TB15_COM
Wire Wire Line
	8000 4300 7650 4300
Text Label 8600 4300 0    50   ~ 0
TB16_COM
Wire Wire Line
	8900 4300 8550 4300
Text Label 10650 5250 0    50   ~ 0
TB17_IN
Wire Wire Line
	10950 5250 10600 5250
Text Label 10650 5350 0    50   ~ 0
TB18_IN
Wire Wire Line
	10950 5350 10600 5350
Text Label 10650 5450 0    50   ~ 0
TB19_IN
Wire Wire Line
	10950 5450 10600 5450
Text Label 10650 5550 0    50   ~ 0
TB20_IN
Wire Wire Line
	10950 5550 10600 5550
Text Label 10650 5750 0    50   ~ 0
TB17_COM
Wire Wire Line
	10950 5750 10600 5750
Text Label 10650 5850 0    50   ~ 0
TB18_COM
Wire Wire Line
	10950 5850 10600 5850
Text Label 10650 5950 0    50   ~ 0
TB19_COM
Wire Wire Line
	10950 5950 10600 5950
Text Label 10650 6050 0    50   ~ 0
TB20_COM
Wire Wire Line
	10950 6050 10600 6050
Text Label 9300 5050 0    50   ~ 0
TGB5_0
Wire Wire Line
	9300 5050 9600 5050
Text Label 9300 5150 0    50   ~ 0
TGB5_1
Wire Wire Line
	9300 5150 9600 5150
$Comp
L power:GND #PWR?
U 1 1 5E9B1DC3
P 9600 5950
F 0 "#PWR?" H 9600 5700 50  0001 C CNN
F 1 "GND" H 9600 5800 50  0000 C CNN
F 2 "" H 9600 5950 50  0001 C CNN
F 3 "" H 9600 5950 50  0001 C CNN
	1    9600 5950
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5E9B1DC9
P 10100 5550
F 0 "U?" H 10100 6431 50  0000 C CNN
F 1 "CD4052B" H 10100 6340 50  0000 C CNN
F 2 "" H 10250 4800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 10080 5750 50  0001 C CNN
	1    10100 5550
	1    0    0    -1  
$EndComp
Text Label 9250 5350 0    50   ~ 0
TGB5_IN
Wire Wire Line
	9250 5350 9600 5350
Text GLabel 9150 5850 2    50   Input ~ 0
TBG5_COM
$Comp
L Device:C C?
U 1 1 5E9B1DD2
P 10700 4800
F 0 "C?" H 10815 4846 50  0000 L CNN
F 1 "100nF" H 10815 4755 50  0000 L CNN
F 2 "" H 10738 4650 50  0001 C CNN
F 3 "~" H 10700 4800 50  0001 C CNN
	1    10700 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B1DD8
P 10100 6250
F 0 "#PWR?" H 10100 6000 50  0001 C CNN
F 1 "GND" H 10105 6077 50  0000 C CNN
F 2 "" H 10100 6250 50  0001 C CNN
F 3 "" H 10100 6250 50  0001 C CNN
	1    10100 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E9B1DDE
P 10350 4850
F 0 "#PWR?" H 10350 4700 50  0001 C CNN
F 1 "+5V" H 10365 5023 50  0000 C CNN
F 2 "" H 10350 4850 50  0001 C CNN
F 3 "" H 10350 4850 50  0001 C CNN
	1    10350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4850 10350 4850
Wire Wire Line
	10000 6250 10100 6250
Connection ~ 10100 6250
$Comp
L power:GND #PWR?
U 1 1 5E9B1DE7
P 10700 4950
F 0 "#PWR?" H 10700 4700 50  0001 C CNN
F 1 "GND" H 10705 4777 50  0000 C CNN
F 2 "" H 10700 4950 50  0001 C CNN
F 3 "" H 10700 4950 50  0001 C CNN
	1    10700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4850 10550 4850
Wire Wire Line
	10550 4850 10550 4650
Wire Wire Line
	10550 4650 10700 4650
Connection ~ 10350 4850
$Comp
L power:GND #PWR?
U 1 1 5E9B1DF1
P 9300 4300
F 0 "#PWR?" H 9300 4050 50  0001 C CNN
F 1 "GND" H 9305 4127 50  0000 C CNN
F 2 "" H 9300 4300 50  0001 C CNN
F 3 "" H 9300 4300 50  0001 C CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B1DF7
P 9300 3600
F 0 "#PWR?" H 9300 3350 50  0001 C CNN
F 1 "GND" H 9305 3427 50  0000 C CNN
F 2 "" H 9300 3600 50  0001 C CNN
F 3 "" H 9300 3600 50  0001 C CNN
	1    9300 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B1DFD
P 10250 3650
F 0 "#PWR?" H 10250 3400 50  0001 C CNN
F 1 "GND" H 10255 3477 50  0000 C CNN
F 2 "" H 10250 3650 50  0001 C CNN
F 3 "" H 10250 3650 50  0001 C CNN
	1    10250 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B1E03
P 10200 4300
F 0 "#PWR?" H 10200 4050 50  0001 C CNN
F 1 "GND" H 10205 4127 50  0000 C CNN
F 2 "" H 10200 4300 50  0001 C CNN
F 3 "" H 10200 4300 50  0001 C CNN
	1    10200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4300 9400 4300
Wire Wire Line
	9300 3600 9400 3600
Wire Wire Line
	10350 3650 10250 3650
Wire Wire Line
	10200 4300 10300 4300
Text Label 9650 3300 0    50   ~ 0
TB17_IN
Wire Wire Line
	9950 3300 9600 3300
Text Label 10600 3350 0    50   ~ 0
TB18_IN
Wire Wire Line
	10900 3350 10550 3350
Text Label 9650 4000 0    50   ~ 0
TB19_IN
Wire Wire Line
	9950 4000 9600 4000
Text Label 10550 4000 0    50   ~ 0
TB20_IN
Wire Wire Line
	10850 4000 10500 4000
Text Label 9850 3600 0    50   ~ 0
TB17_IN
Wire Wire Line
	10150 3600 9800 3600
Text Label 10800 3650 0    50   ~ 0
TB18_COM
Wire Wire Line
	11100 3650 10750 3650
Text Label 9850 4300 0    50   ~ 0
TB19_COM
Wire Wire Line
	10150 4300 9800 4300
Text Label 10750 4300 0    50   ~ 0
TB20_COM
Wire Wire Line
	11050 4300 10700 4300
Text Label 5900 2100 0    50   ~ 0
TGB1_COM
Text Label 5900 2200 0    50   ~ 0
TGB2_COM
Text Label 5900 2300 0    50   ~ 0
TGB3_COM
Text Label 5900 2400 0    50   ~ 0
TGB4_COM
Text Label 5900 2500 0    50   ~ 0
TGB5_COM
Text Label 4550 1800 0    50   ~ 0
TGB0
Text Label 4550 1900 0    50   ~ 0
TGB1
Text Label 4550 2000 0    50   ~ 0
TGB2
Wire Wire Line
	4550 1900 4800 1900
Wire Wire Line
	4550 1800 4800 1800
Wire Wire Line
	4550 2000 4800 2000
Wire Wire Line
	5800 2500 6300 2500
Wire Wire Line
	5800 2400 6300 2400
Wire Wire Line
	5800 2300 6300 2300
Wire Wire Line
	5800 2200 6300 2200
Wire Wire Line
	5800 2100 6300 2100
NoConn ~ 5800 2600
NoConn ~ 5800 2700
NoConn ~ 5800 2800
$Comp
L power:GND #PWR?
U 1 1 5EB8E9F7
P 5300 3000
F 0 "#PWR?" H 5300 2750 50  0001 C CNN
F 1 "GND" H 5305 2827 50  0000 C CNN
F 2 "" H 5300 3000 50  0001 C CNN
F 3 "" H 5300 3000 50  0001 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3000 5300 3000
Connection ~ 5300 3000
Wire Wire Line
	5400 1150 5400 1600
Wire Wire Line
	5700 1150 5400 1150
$Comp
L Device:C C?
U 1 1 5EBAA449
P 5700 1300
F 0 "C?" H 5815 1346 50  0000 L CNN
F 1 "100nF" H 5815 1255 50  0000 L CNN
F 2 "" H 5738 1150 50  0001 C CNN
F 3 "~" H 5700 1300 50  0001 C CNN
	1    5700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBAA44F
P 5700 1450
F 0 "#PWR?" H 5700 1200 50  0001 C CNN
F 1 "GND" H 5705 1277 50  0000 C CNN
F 2 "" H 5700 1450 50  0001 C CNN
F 3 "" H 5700 1450 50  0001 C CNN
	1    5700 1450
	1    0    0    -1  
$EndComp
Connection ~ 5400 1150
$Comp
L power:+5V #PWR?
U 1 1 5EBAA456
P 5400 1150
F 0 "#PWR?" H 5400 1000 50  0001 C CNN
F 1 "+5V" H 5415 1323 50  0000 C CNN
F 2 "" H 5400 1150 50  0001 C CNN
F 3 "" H 5400 1150 50  0001 C CNN
	1    5400 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBC4BC3
P 4800 2300
F 0 "#PWR?" H 4800 2050 50  0001 C CNN
F 1 "GND" H 4805 2127 50  0000 C CNN
F 2 "" H 4800 2300 50  0001 C CNN
F 3 "" H 4800 2300 50  0001 C CNN
	1    4800 2300
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4051B U?
U 1 1 5EBE5BD5
P 7150 2300
F 0 "U?" H 7150 3181 50  0000 C CNN
F 1 "CD4051B" H 7150 3090 50  0000 C CNN
F 2 "" H 7300 1550 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 7130 2400 50  0001 C CNN
	1    7150 2300
	1    0    0    -1  
$EndComp
Text Label 7750 2100 0    50   ~ 0
TGB1_COM
Text Label 7750 2200 0    50   ~ 0
TGB2_COM
Text Label 7750 2300 0    50   ~ 0
TGB3_COM
Text Label 7750 2400 0    50   ~ 0
TGB4_COM
Text Label 7750 2500 0    50   ~ 0
TGB5_COM
Text Label 6400 1800 0    50   ~ 0
TGB0
Text Label 6400 1900 0    50   ~ 0
TGB1
Text Label 6400 2000 0    50   ~ 0
TGB2
Wire Wire Line
	6400 1900 6650 1900
Wire Wire Line
	6400 1800 6650 1800
Wire Wire Line
	6400 2000 6650 2000
Wire Wire Line
	7650 2500 8150 2500
Wire Wire Line
	7650 2400 8150 2400
Wire Wire Line
	7650 2300 8150 2300
Wire Wire Line
	7650 2200 8150 2200
Wire Wire Line
	7650 2100 8150 2100
NoConn ~ 7650 2600
NoConn ~ 7650 2700
NoConn ~ 7650 2800
$Comp
L power:GND #PWR?
U 1 1 5EBE5BEE
P 7150 3000
F 0 "#PWR?" H 7150 2750 50  0001 C CNN
F 1 "GND" H 7155 2827 50  0000 C CNN
F 2 "" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0001 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3000 7150 3000
Connection ~ 7150 3000
Wire Wire Line
	7250 1150 7250 1600
Wire Wire Line
	7550 1150 7250 1150
$Comp
L Device:C C?
U 1 1 5EBE5BF8
P 7550 1300
F 0 "C?" H 7665 1346 50  0000 L CNN
F 1 "100nF" H 7665 1255 50  0000 L CNN
F 2 "" H 7588 1150 50  0001 C CNN
F 3 "~" H 7550 1300 50  0001 C CNN
	1    7550 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBE5BFE
P 7550 1450
F 0 "#PWR?" H 7550 1200 50  0001 C CNN
F 1 "GND" H 7555 1277 50  0000 C CNN
F 2 "" H 7550 1450 50  0001 C CNN
F 3 "" H 7550 1450 50  0001 C CNN
	1    7550 1450
	1    0    0    -1  
$EndComp
Connection ~ 7250 1150
$Comp
L power:+5V #PWR?
U 1 1 5EBE5C05
P 7250 1150
F 0 "#PWR?" H 7250 1000 50  0001 C CNN
F 1 "+5V" H 7265 1323 50  0000 C CNN
F 2 "" H 7250 1150 50  0001 C CNN
F 3 "" H 7250 1150 50  0001 C CNN
	1    7250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBE5C0B
P 6650 2300
F 0 "#PWR?" H 6650 2050 50  0001 C CNN
F 1 "GND" H 6655 2127 50  0000 C CNN
F 2 "" H 6650 2300 50  0001 C CNN
F 3 "" H 6650 2300 50  0001 C CNN
	1    6650 2300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC807 Q?
U 1 1 5E8D16A8
P 3250 3650
F 0 "Q?" V 3485 3650 50  0000 C CNN
F 1 "BC807" V 3576 3650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3450 3575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC807.pdf" H 3250 3650 50  0001 L CNN
	1    3250 3650
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q?
U 1 1 5E8E6707
P 4200 3650
F 0 "Q?" V 4435 3650 50  0000 C CNN
F 1 "BC846" V 4526 3650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4400 3575 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 4200 3650 50  0001 L CNN
	1    4200 3650
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC847BDW1 Q?
U 1 1 5E8FDC4D
P 3250 4350
F 0 "Q?" V 3485 4350 50  0000 C CNN
F 1 "BC847B" V 3576 4350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3450 4450 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 3250 4350 50  0001 C CNN
	1    3250 4350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC847 Q?
U 1 1 5E8FFCE7
P 4200 4350
F 0 "Q?" V 4435 4350 50  0000 C CNN
F 1 "BC847C" V 4526 4350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4400 4275 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 4200 4350 50  0001 L CNN
	1    4200 4350
	0    1    1    0   
$EndComp
Text Notes 1900 3250 2    50   ~ 10
TGB1 (TB1..TB4)\n
Text Notes 4200 3250 2    50   ~ 10
TGB2 (TB5..TB8)\n
Text Notes 6350 3300 2    50   ~ 10
TGB3 (TB9..TB12)\n
Text Notes 8450 3200 2    50   ~ 10
TGB4 (TB13..TB16)\n
Text Notes 10600 3200 2    50   ~ 10
TGB5 (TB17..TB20)\n
Text Label 3500 4450 0    50   ~ 0
TB3_COM
Wire Wire Line
	3900 4450 4000 4450
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 5E9C061A
P 5400 3600
F 0 "Q?" V 5635 3600 50  0000 C CNN
F 1 "C945" V 5726 3600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5600 3700 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 5400 3600 50  0001 C CNN
	1    5400 3600
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5E9C7218
P 6350 3650
F 0 "Q?" V 6585 3650 50  0000 C CNN
F 1 "2SC1815" V 6676 3650 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6550 3575 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 6350 3650 50  0001 L CNN
	1    6350 3650
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:S8050 Q?
U 1 1 5E9C90F1
P 5400 4300
F 0 "Q?" V 5635 4300 50  0000 C CNN
F 1 "S8050" V 5726 4300 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 4225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5400 4300 50  0001 L CNN
	1    5400 4300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 5E9CADCD
P 6300 4300
F 0 "Q?" V 6535 4300 50  0000 C CNN
F 1 "S9013" V 6626 4300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6500 4400 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 6300 4300 50  0001 C CNN
	1    6300 4300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 5E9E1F7D
P 7450 3500
F 0 "Q?" V 7685 3500 50  0000 C CNN
F 1 "S9014" V 7776 3500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7650 3600 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 7450 3500 50  0001 C CNN
	1    7450 3500
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 5E9E8A2D
P 8400 3550
F 0 "Q?" V 8635 3550 50  0000 C CNN
F 1 "S9018" V 8726 3550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 8600 3650 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 8400 3550 50  0001 C CNN
	1    8400 3550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 5EA0F03D
P 8350 4200
F 0 "Q?" V 8585 4200 50  0000 C CNN
F 1 "2SC1623" V 8676 4200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 8550 4300 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 8350 4200 50  0001 C CNN
	1    8350 4200
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC848 Q?
U 1 1 5EA21B83
P 7450 4200
F 0 "Q?" V 7685 4200 50  0000 C CNN
F 1 "BC848B" V 7776 4200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7650 4125 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 7450 4200 50  0001 L CNN
	1    7450 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 4300 7250 4300
$Comp
L Transistor_BJT:MPSA42 Q?
U 1 1 5EA4A6E9
P 9600 3500
F 0 "Q?" V 9835 3500 50  0000 C CNN
F 1 "MPSA18" V 9926 3500 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 3425 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 9600 3500 50  0001 L CNN
	1    9600 3500
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q?
U 1 1 5EA5FA0E
P 10550 3550
F 0 "Q?" V 10785 3550 50  0000 C CNN
F 1 "MPSA18" V 10876 3550 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10750 3475 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 10550 3550 50  0001 L CNN
	1    10550 3550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q?
U 1 1 5EA73DE6
P 9600 4200
F 0 "Q?" V 9835 4200 50  0000 C CNN
F 1 "2N5088" V 9926 4200 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 4125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 9600 4200 50  0001 L CNN
	1    9600 4200
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q?
U 1 1 5EA765C7
P 10500 4200
F 0 "Q?" V 10735 4200 50  0000 C CNN
F 1 "2N5088" V 10826 4200 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10700 4125 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 10500 4200 50  0001 L CNN
	1    10500 4200
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBTA42 Q?
U 1 1 5E8F47F2
P 2000 4250
F 0 "Q?" V 2235 4250 50  0000 C CNN
F 1 "MMBTA42" V 2326 4250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2200 4175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 2000 4250 50  0001 L CNN
	1    2000 4250
	0    1    1    0   
$EndComp
$EndSCHEMATC
