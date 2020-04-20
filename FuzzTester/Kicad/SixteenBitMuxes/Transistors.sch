EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
Title "Guitar Pedal Effect Fuzz Digitally Controlled"
Date "2020-04-07"
Rev "0.1"
Comp "Michel Keijzers"
Comment1 ""
Comment2 "and 2 sets of 8 capacitors"
Comment3 "Pedal Effect Fuzz based on 2 sets of 20 different transistors"
Comment4 "B or D transistor plus input/output selectors"
$EndDescr
$Comp
L Transistor_BJT:MMBTA42 Q?
U 1 1 5EA993A8
P 1600 3400
AR Path="/5E87C69B/5EA993A8" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993A8" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993A8" Ref="Q4"  Part="1" 
AR Path="/5F60C90E/5EA993A8" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993A8" Ref="Q24"  Part="1" 
AR Path="/5ED1AB26/5EA993A8" Ref="Q20"  Part="1" 
F 0 "Q20" V 1835 3400 50  0000 C CNN
F 1 "MMBTA42" V 1926 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1800 3325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 1600 3400 50  0001 L CNN
	1    1600 3400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993B4
P 6000 3400
AR Path="/5E87C69B/5EA993B4" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993B4" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993B4" Ref="Q19"  Part="1" 
AR Path="/5F60C90E/5EA993B4" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993B4" Ref="Q39"  Part="1" 
AR Path="/5ED1AB26/5EA993B4" Ref="Q32"  Part="1" 
F 0 "Q32" V 6235 3400 50  0000 C CNN
F 1 "2N5088" V 6326 3400 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6200 3325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 6000 3400 50  0001 L CNN
	1    6000 3400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993C0
P 6000 2750
AR Path="/5E87C69B/5EA993C0" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993C0" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993C0" Ref="Q17"  Part="1" 
AR Path="/5F60C90E/5EA993C0" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993C0" Ref="Q37"  Part="1" 
AR Path="/5ED1AB26/5EA993C0" Ref="Q31"  Part="1" 
F 0 "Q31" V 6235 2750 50  0000 C CNN
F 1 "MPSA18" V 6326 2750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6200 2675 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 6000 2750 50  0001 L CNN
	1    6000 2750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993CD
P 6000 1450
AR Path="/5E87C69B/5EA993CD" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993CD" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993CD" Ref="Q16"  Part="1" 
AR Path="/5F60C90E/5EA993CD" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993CD" Ref="Q36"  Part="1" 
AR Path="/5ED1AB26/5EA993CD" Ref="Q29"  Part="1" 
F 0 "Q29" V 6235 1450 50  0000 C CNN
F 1 "2SC1623" V 6326 1450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6200 1550 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 6000 1450 50  0001 C CNN
	1    6000 1450
	0    1    1    0   
$EndComp
Text Label 3250 2850 0    50   ~ 0
7_COLLECTOR
Text Notes 4150 1100 2    50   ~ 10
Transistors\n
$Comp
L Transistor_BJT:BC847 Q?
U 1 1 5EA993FC
P 3050 3400
AR Path="/5E87C69B/5EA993FC" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993FC" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993FC" Ref="Q8"  Part="1" 
AR Path="/5F60C90E/5EA993FC" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993FC" Ref="Q28"  Part="1" 
AR Path="/5ED1AB26/5EA993FC" Ref="Q24"  Part="1" 
F 0 "Q24" V 3285 3400 50  0000 C CNN
F 1 "BC847C" V 3376 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3250 3325 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 3050 3400 50  0001 L CNN
	1    3050 3400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA99402
P 3050 2750
AR Path="/5E87C69B/5EA99402" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA99402" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA99402" Ref="Q7"  Part="1" 
AR Path="/5F60C90E/5EA99402" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA99402" Ref="Q27"  Part="1" 
AR Path="/5ED1AB26/5EA99402" Ref="Q23"  Part="1" 
F 0 "Q23" V 3285 2750 50  0000 C CNN
F 1 "BC847B" V 3376 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3250 2850 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 3050 2750 50  0001 C CNN
	1    3050 2750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q?
U 1 1 5EA99408
P 3050 2100
AR Path="/5E87C69B/5EA99408" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA99408" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA99408" Ref="Q6"  Part="1" 
AR Path="/5F60C90E/5EA99408" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA99408" Ref="Q26"  Part="1" 
AR Path="/5ED1AB26/5EA99408" Ref="Q22"  Part="1" 
F 0 "Q22" V 3285 2100 50  0000 C CNN
F 1 "BC846" V 3376 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3250 2025 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 3050 2100 50  0001 L CNN
	1    3050 2100
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q?
U 1 1 5EA9940E
P 3050 1450
AR Path="/5E87C69B/5EA9940E" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA9940E" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA9940E" Ref="Q5"  Part="1" 
AR Path="/5F60C90E/5EA9940E" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA9940E" Ref="Q25"  Part="1" 
AR Path="/5ED1AB26/5EA9940E" Ref="Q21"  Part="1" 
F 0 "Q21" V 3285 1450 50  0000 C CNN
F 1 "BC807" V 3376 1450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3250 1375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC807.pdf" H 3050 1450 50  0001 L CNN
	1    3050 1450
	0    1    1    0   
$EndComp
Text Label 6200 3500 0    50   ~ 0
16_COLLECTOR
Text Label 6200 2850 0    50   ~ 0
15_COLLECTOR
Text Label 6200 2200 0    50   ~ 0
14_COLLECTOR
Text Label 6200 1550 0    50   ~ 0
13_COLLECTOR
Wire Wire Line
	6350 3200 6000 3200
Text Label 6050 3200 0    50   ~ 0
16_BASE
Wire Wire Line
	6350 2550 6000 2550
Text Label 6050 2550 0    50   ~ 0
15_BASE
Wire Wire Line
	6350 1900 6000 1900
Text Label 6050 1900 0    50   ~ 0
14_BASE
Wire Wire Line
	6350 1250 6000 1250
Text Label 6050 1250 0    50   ~ 0
13_BASE
Wire Wire Line
	3100 7100 2750 7100
Text Label 2800 7100 0    50   ~ 0
16_BASE
Wire Wire Line
	3100 7000 2750 7000
Text Label 2800 7000 0    50   ~ 0
15_BASE
Wire Wire Line
	3100 6900 2750 6900
Text Label 2800 6900 0    50   ~ 0
14_BASE
Wire Wire Line
	3100 6800 2750 6800
Text Label 2800 6800 0    50   ~ 0
13_BASE
Text Label 4700 3500 0    50   ~ 0
12_COLLECTOR
Wire Wire Line
	4850 3200 4500 3200
Text Label 4550 3200 0    50   ~ 0
12_BASE
$Comp
L power:GND #PWR?
U 1 1 5EA9951D
P 2700 5250
AR Path="/5E87C69B/5EA9951D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA9951D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA9951D" Ref="#PWR055"  Part="1" 
AR Path="/5F60C90E/5EA9951D" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA9951D" Ref="#PWR083"  Part="1" 
AR Path="/5ED1AB26/5EA9951D" Ref="#PWR0102"  Part="1" 
F 0 "#PWR055" H 2700 5000 50  0001 C CNN
F 1 "GND" H 2705 5077 50  0000 C CNN
F 2 "" H 2700 5250 50  0001 C CNN
F 3 "" H 2700 5250 50  0001 C CNN
	1    2700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6700 2750 6700
Text Label 2800 6700 0    50   ~ 0
12_BASE
Wire Wire Line
	3100 6600 2750 6600
Text Label 2800 6600 0    50   ~ 0
11_BASE
Wire Wire Line
	3100 6500 2750 6500
Text Label 2800 6500 0    50   ~ 0
10_BASE
Wire Wire Line
	3100 6400 2750 6400
Text Label 2800 6400 0    50   ~ 0
9_BASE
Text Label 3250 3500 0    50   ~ 0
8_COLLECTOR
Text Label 3250 2200 0    50   ~ 0
6_COLLECTOR
Text Label 3250 1550 0    50   ~ 0
5_COLLECTOR
Wire Wire Line
	3400 3200 3050 3200
Text Label 3100 3200 0    50   ~ 0
8_BASE
Wire Wire Line
	3400 2550 3050 2550
Text Label 3100 2550 0    50   ~ 0
7_BASE
Wire Wire Line
	3400 1900 3050 1900
Text Label 3100 1900 0    50   ~ 0
6_BASE
Wire Wire Line
	3400 1250 3050 1250
Text Label 3100 1250 0    50   ~ 0
5_BASE
Wire Wire Line
	2300 3500 1800 3500
Text Label 1800 3500 0    50   ~ 0
4_COLLECTOR
Wire Wire Line
	2300 2850 1800 2850
Text Label 1800 2850 0    50   ~ 0
3_COLLECTOR
Wire Wire Line
	2300 2200 1800 2200
Text Label 1800 2200 0    50   ~ 0
2_COLLECTOR
Wire Wire Line
	2300 1550 1800 1550
Text Label 1800 1550 0    50   ~ 0
1_COLLECTOR
Wire Wire Line
	1950 3200 1600 3200
Text Label 1650 3200 0    50   ~ 0
4_BASE
Wire Wire Line
	1950 2550 1600 2550
Text Label 1650 2550 0    50   ~ 0
3_BASE
Wire Wire Line
	1950 1900 1600 1900
Text Label 1650 1900 0    50   ~ 0
2_BASE
Wire Wire Line
	1950 1250 1600 1250
Text Label 1650 1250 0    50   ~ 0
1_BASE
Text Label 2800 5900 0    50   ~ 0
4_BASE
Text Label 2800 5800 0    50   ~ 0
3_BASE
Text Label 2800 5700 0    50   ~ 0
2_BASE
Text Label 2800 5600 0    50   ~ 0
1_BASE
$Comp
L Transistor_BJT:MMBT5551L Q?
U 1 1 5EA99637
P 1600 2750
AR Path="/5E87C69B/5EA99637" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA99637" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA99637" Ref="Q3"  Part="1" 
AR Path="/5F60C90E/5EA99637" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA99637" Ref="Q23"  Part="1" 
AR Path="/5ED1AB26/5EA99637" Ref="Q18"  Part="1" 
F 0 "Q18" V 1835 2750 50  0000 C CNN
F 1 "MMBT5551L" V 1926 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1800 2675 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 1600 2750 50  0001 L CNN
	1    1600 2750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA99643
P 1600 2100
AR Path="/5E87C69B/5EA99643" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA99643" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA99643" Ref="Q2"  Part="1" 
AR Path="/5F60C90E/5EA99643" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA99643" Ref="Q22"  Part="1" 
AR Path="/5ED1AB26/5EA99643" Ref="Q13"  Part="1" 
F 0 "Q13" V 1835 2100 50  0000 C CNN
F 1 "MMBT3904" V 1926 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1800 2025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1600 2100 50  0001 L CNN
	1    1600 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 6300 2750 6300
Text Label 2800 6300 0    50   ~ 0
8_BASE
Wire Wire Line
	3100 6200 2750 6200
Text Label 2800 6200 0    50   ~ 0
7_BASE
Wire Wire Line
	3100 6100 2750 6100
Text Label 2800 6100 0    50   ~ 0
6_BASE
Wire Wire Line
	3100 6000 2750 6000
Text Label 2800 6000 0    50   ~ 0
5_BASE
Text HLabel 1400 1550 0    50   Input ~ 0
EMITTER
Text Label 4700 2850 0    50   ~ 0
11_COLLECTOR
Wire Wire Line
	4850 2550 4500 2550
Text Label 4550 2550 0    50   ~ 0
11_BASE
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5F014460
P 6000 2100
AR Path="/5E87C69B/5F014460" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5F014460" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5F014460" Ref="Q10"  Part="1" 
AR Path="/5F60C90E/5F014460" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5F014460" Ref="Q30"  Part="1" 
AR Path="/5ED1AB26/5F014460" Ref="Q30"  Part="1" 
F 0 "Q30" V 6235 2100 50  0000 C CNN
F 1 "2SC1815" V 6326 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6200 2025 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 6000 2100 50  0001 L CNN
	1    6000 2100
	0    1    1    0   
$EndComp
Text Label 4700 2200 0    50   ~ 0
10_COLLECTOR
Wire Wire Line
	4850 1900 4500 1900
Text Label 4550 1900 0    50   ~ 0
10_BASE
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5F02F005
P 4500 3400
AR Path="/5E87C69B/5F02F005" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5F02F005" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5F02F005" Ref="Q9"  Part="1" 
AR Path="/5F60C90E/5F02F005" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5F02F005" Ref="Q29"  Part="1" 
AR Path="/5ED1AB26/5F02F005" Ref="Q28"  Part="1" 
F 0 "Q28" V 4735 3400 50  0000 C CNN
F 1 "C945" V 4826 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4700 3500 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 4500 3400 50  0001 C CNN
	1    4500 3400
	0    1    1    0   
$EndComp
Text Label 4700 1550 0    50   ~ 0
9_COLLECTOR
Wire Wire Line
	4850 1250 4500 1250
Text Label 4550 1250 0    50   ~ 0
9_BASE
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA9963D
P 1600 1450
AR Path="/5E87C69B/5EA9963D" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA9963D" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA9963D" Ref="Q1"  Part="1" 
AR Path="/5F60C90E/5EA9963D" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA9963D" Ref="Q21"  Part="1" 
AR Path="/5ED1AB26/5EA9963D" Ref="Q11"  Part="1" 
F 0 "Q11" V 1835 1450 50  0000 C CNN
F 1 "PN2222A" V 1926 1450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1800 1375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1600 1450 50  0001 L CNN
	1    1600 1450
	0    1    1    0   
$EndComp
Text HLabel 1400 2200 0    50   Input ~ 0
EMITTER
Text HLabel 1400 2850 0    50   Input ~ 0
EMITTER
Text HLabel 1400 3500 0    50   Input ~ 0
EMITTER
Text HLabel 2850 1550 0    50   Input ~ 0
EMITTER
Text HLabel 2850 2200 0    50   Input ~ 0
EMITTER
Text HLabel 2850 2850 0    50   Input ~ 0
EMITTER
Text HLabel 2850 3500 0    50   Input ~ 0
EMITTER
Text HLabel 4300 1550 0    50   Input ~ 0
EMITTER
Text HLabel 4300 2200 0    50   Input ~ 0
EMITTER
Text HLabel 4300 2850 0    50   Input ~ 0
EMITTER
Text HLabel 4300 3500 0    50   Input ~ 0
EMITTER
Wire Wire Line
	6200 3500 6700 3500
Wire Wire Line
	6200 2850 6750 2850
Wire Wire Line
	6200 2200 6700 2200
Wire Wire Line
	6200 1550 6700 1550
Wire Wire Line
	4700 1550 5150 1550
Wire Wire Line
	4700 2200 5200 2200
Wire Wire Line
	4700 2850 5200 2850
Wire Wire Line
	4700 3500 5200 3500
Wire Wire Line
	3250 1550 3750 1550
Wire Wire Line
	3250 2200 3750 2200
Wire Wire Line
	3250 2850 3750 2850
Wire Wire Line
	3250 3500 3750 3500
Text HLabel 1750 6200 0    50   Input ~ 0
TRANSISTOR_SELECTION_0
Text HLabel 5800 1550 0    50   Input ~ 0
EMITTER
Text HLabel 5800 2200 0    50   Input ~ 0
EMITTER
Text HLabel 5800 2850 0    50   Input ~ 0
EMITTER
Text HLabel 5800 3500 0    50   Input ~ 0
EMITTER
Wire Notes Line
	11200 5750 11200 5650
$Comp
L Transistor_BJT:BC848 Q?
U 1 1 5EA993C7
P 4500 1450
AR Path="/5E87C69B/5EA993C7" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993C7" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993C7" Ref="Q15"  Part="1" 
AR Path="/5F60C90E/5EA993C7" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993C7" Ref="Q35"  Part="1" 
AR Path="/5ED1AB26/5EA993C7" Ref="Q25"  Part="1" 
F 0 "Q25" V 4735 1450 50  0000 C CNN
F 1 "BC848B" V 4826 1450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4700 1375 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 4500 1450 50  0001 L CNN
	1    4500 1450
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993D3
P 4500 2750
AR Path="/5E87C69B/5EA993D3" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993D3" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993D3" Ref="Q14"  Part="1" 
AR Path="/5F60C90E/5EA993D3" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993D3" Ref="Q34"  Part="1" 
AR Path="/5ED1AB26/5EA993D3" Ref="Q27"  Part="1" 
F 0 "Q27" V 4735 2750 50  0000 C CNN
F 1 "S9018" V 4826 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4700 2850 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 4500 2750 50  0001 C CNN
	1    4500 2750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993DF
P 4500 2100
AR Path="/5E87C69B/5EA993DF" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993DF" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993DF" Ref="Q12"  Part="1" 
AR Path="/5F60C90E/5EA993DF" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993DF" Ref="Q32"  Part="1" 
AR Path="/5ED1AB26/5EA993DF" Ref="Q26"  Part="1" 
F 0 "Q26" V 4735 2100 50  0000 C CNN
F 1 "S9013" V 4826 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4700 2200 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 4500 2100 50  0001 C CNN
	1    4500 2100
	0    1    1    0   
$EndComp
Text HLabel 1750 6300 0    50   Input ~ 0
TRANSISTOR_SELECTION_1
Text HLabel 1750 6400 0    50   Input ~ 0
TRANSISTOR_SELECTION_2
Text HLabel 1750 6500 0    50   Input ~ 0
TRANSISTOR_SELECTION_3
Text HLabel 5200 6500 2    50   Input ~ 0
TRANSISTOR_SELECTION_3
Text HLabel 5200 6400 2    50   Input ~ 0
TRANSISTOR_SELECTION_2
Text HLabel 5200 6300 2    50   Input ~ 0
TRANSISTOR_SELECTION_1
Text HLabel 5200 6200 2    50   Input ~ 0
TRANSISTOR_SELECTION_0
$Comp
L 74xx:CD74HC4067M U9
U 1 1 5EA4E538
P 4700 6300
AR Path="/5E9AE796/5EA4E538" Ref="U9"  Part="1" 
AR Path="/5ED1AB26/5EA4E538" Ref="U7"  Part="1" 
F 0 "U7" H 4700 7481 50  0000 C CNN
F 1 "CD4067BM" H 4700 7390 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 5600 5300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 4350 7150 50  0001 C CNN
	1    4700 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 6300 4200 6300
Wire Wire Line
	2750 5600 3100 5600
Wire Wire Line
	2750 5700 3100 5700
Wire Wire Line
	2750 5800 3100 5800
Wire Wire Line
	2750 5900 3100 5900
$Comp
L 74xx:CD74HC4067M U8
U 1 1 5EA3E429
P 2250 6300
AR Path="/5E9AE796/5EA3E429" Ref="U8"  Part="1" 
AR Path="/5ED1AB26/5EA3E429" Ref="U6"  Part="1" 
F 0 "U6" H 2250 7481 50  0000 C CNN
F 1 "CD4067BM" H 2250 7390 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 3150 5300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 1900 7150 50  0001 C CNN
	1    2250 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0144
U 1 1 5EAD9CE0
P 2550 4950
AR Path="/5E9AE796/5EAD9CE0" Ref="#PWR0144"  Part="1" 
AR Path="/5F9746B8/5EAD9CE0" Ref="#PWR0129"  Part="1" 
AR Path="/5ED1AB26/5EAD9CE0" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0144" H 2550 4800 50  0001 C CNN
F 1 "+9V" H 2565 5123 50  0000 C CNN
F 2 "" H 2550 4950 50  0001 C CNN
F 3 "" H 2550 4950 50  0001 C CNN
	1    2550 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA99533
P 2700 5100
AR Path="/5E87C69B/5EA99533" Ref="C?"  Part="1" 
AR Path="/5E9AE973/5EA99533" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EA99533" Ref="C24"  Part="1" 
AR Path="/5F60C90E/5EA99533" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EA99533" Ref="C31"  Part="1" 
AR Path="/5ED1AB26/5EA99533" Ref="C21"  Part="1" 
F 0 "C21" H 2815 5146 50  0000 L CNN
F 1 "100nF" H 2815 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2738 4950 50  0001 C CNN
F 3 "~" H 2700 5100 50  0001 C CNN
	1    2700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4950 2550 4950
Wire Wire Line
	2550 4950 2550 5300
Connection ~ 2550 4950
Wire Wire Line
	2550 5300 2250 5300
$Comp
L power:GND #PWR?
U 1 1 5EC11EC1
P 2250 7400
AR Path="/5E87C69B/5EC11EC1" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EC11EC1" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EC11EC1" Ref="#PWR0132"  Part="1" 
AR Path="/5F60C90E/5EC11EC1" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EC11EC1" Ref="#PWR?"  Part="1" 
AR Path="/5ED1AB26/5EC11EC1" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0132" H 2250 7150 50  0001 C CNN
F 1 "GND" H 2255 7227 50  0000 C CNN
F 2 "" H 2250 7400 50  0001 C CNN
F 3 "" H 2250 7400 50  0001 C CNN
	1    2250 7400
	1    0    0    -1  
$EndComp
Text HLabel 1750 5800 0    50   Input ~ 0
BASE
Wire Wire Line
	3550 5600 4200 5600
Wire Wire Line
	3550 5700 4200 5700
Wire Wire Line
	3550 5800 4200 5800
Wire Wire Line
	3550 5900 4200 5900
Wire Wire Line
	3550 6000 4200 6000
Wire Wire Line
	3550 6100 4200 6100
Wire Wire Line
	3550 6200 4200 6200
Text Label 3550 5600 0    50   ~ 0
1_COLLECTOR
Text Label 3550 6000 0    50   ~ 0
5_COLLECTOR
Text Label 3550 6100 0    50   ~ 0
6_COLLECTOR
Text Label 3550 6200 0    50   ~ 0
7_COLLECTOR
Text Label 3550 6300 0    50   ~ 0
8_COLLECTOR
Text Label 3550 5700 0    50   ~ 0
2_COLLECTOR
Text Label 3550 5800 0    50   ~ 0
3_COLLECTOR
Text Label 3550 5900 0    50   ~ 0
4_COLLECTOR
Text Label 3550 6400 0    50   ~ 0
9_COLLECTOR
Text Label 3550 6500 0    50   ~ 0
10_COLLECTOR
Text Label 3550 6600 0    50   ~ 0
11_COLLECTOR
Text Label 3550 6700 0    50   ~ 0
12_COLLECTOR
Text Label 3550 6800 0    50   ~ 0
13_COLLECTOR
Text Label 3550 6900 0    50   ~ 0
14_COLLECTOR
Text Label 3550 7000 0    50   ~ 0
15_COLLECTOR
Text Label 3550 7100 0    50   ~ 0
16_COLLECTOR
Wire Wire Line
	3550 6400 4200 6400
Wire Wire Line
	3550 6500 4200 6500
Wire Wire Line
	3550 6700 4200 6700
Wire Wire Line
	3550 6800 4200 6800
Wire Wire Line
	3550 6900 4200 6900
Wire Wire Line
	3550 7000 4200 7000
Wire Wire Line
	3550 7100 4200 7100
Wire Wire Line
	3550 6600 4200 6600
Text Notes 3800 4550 2    50   ~ 10
Transistor Multiplexers\n
$Comp
L power:+9V #PWR0133
U 1 1 5ECDD1BA
P 5000 4950
AR Path="/5E9AE796/5ECDD1BA" Ref="#PWR0133"  Part="1" 
AR Path="/5F9746B8/5ECDD1BA" Ref="#PWR?"  Part="1" 
AR Path="/5ED1AB26/5ECDD1BA" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0133" H 5000 4800 50  0001 C CNN
F 1 "+9V" H 5015 5123 50  0000 C CNN
F 2 "" H 5000 4950 50  0001 C CNN
F 3 "" H 5000 4950 50  0001 C CNN
	1    5000 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ECDF6D6
P 5150 5100
AR Path="/5E87C69B/5ECDF6D6" Ref="C?"  Part="1" 
AR Path="/5E9AE973/5ECDF6D6" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5ECDF6D6" Ref="C23"  Part="1" 
AR Path="/5F60C90E/5ECDF6D6" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5ECDF6D6" Ref="C?"  Part="1" 
AR Path="/5ED1AB26/5ECDF6D6" Ref="C22"  Part="1" 
F 0 "C22" H 5265 5146 50  0000 L CNN
F 1 "100nF" H 5265 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5188 4950 50  0001 C CNN
F 3 "~" H 5150 5100 50  0001 C CNN
	1    5150 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECE05A8
P 5150 5250
AR Path="/5E87C69B/5ECE05A8" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5ECE05A8" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5ECE05A8" Ref="#PWR0134"  Part="1" 
AR Path="/5F60C90E/5ECE05A8" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5ECE05A8" Ref="#PWR?"  Part="1" 
AR Path="/5ED1AB26/5ECE05A8" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0134" H 5150 5000 50  0001 C CNN
F 1 "GND" H 5155 5077 50  0000 C CNN
F 2 "" H 5150 5250 50  0001 C CNN
F 3 "" H 5150 5250 50  0001 C CNN
	1    5150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4950 5000 4950
Wire Wire Line
	5000 5300 5000 4950
Connection ~ 5000 4950
Wire Wire Line
	5000 5300 4700 5300
$Comp
L power:GND #PWR?
U 1 1 5ECEC63C
P 4700 7400
AR Path="/5E87C69B/5ECEC63C" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5ECEC63C" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5ECEC63C" Ref="#PWR0135"  Part="1" 
AR Path="/5F60C90E/5ECEC63C" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5ECEC63C" Ref="#PWR?"  Part="1" 
AR Path="/5ED1AB26/5ECEC63C" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0135" H 4700 7150 50  0001 C CNN
F 1 "GND" H 4705 7227 50  0000 C CNN
F 2 "" H 4700 7400 50  0001 C CNN
F 3 "" H 4700 7400 50  0001 C CNN
	1    4700 7400
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  4150 7050 4150
Wire Notes Line
	7050 500  7050 6500
Text HLabel 5200 5800 2    50   Input ~ 0
COLLECTOR
$Comp
L power:GND #PWR?
U 1 1 5EEBED85
P 1750 6900
AR Path="/5E87C69B/5EEBED85" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EEBED85" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EEBED85" Ref="#PWR0137"  Part="1" 
AR Path="/5F60C90E/5EEBED85" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EEBED85" Ref="#PWR?"  Part="1" 
AR Path="/5ED1AB26/5EEBED85" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0137" H 1750 6650 50  0001 C CNN
F 1 "GND" H 1755 6727 50  0000 C CNN
F 2 "" H 1750 6900 50  0001 C CNN
F 3 "" H 1750 6900 50  0001 C CNN
	1    1750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EEBF1A5
P 5200 6900
AR Path="/5E87C69B/5EEBF1A5" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EEBF1A5" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EEBF1A5" Ref="#PWR0138"  Part="1" 
AR Path="/5F60C90E/5EEBF1A5" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EEBF1A5" Ref="#PWR?"  Part="1" 
AR Path="/5ED1AB26/5EEBF1A5" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0138" H 5200 6650 50  0001 C CNN
F 1 "GND" H 5205 6727 50  0000 C CNN
F 2 "" H 5200 6900 50  0001 C CNN
F 3 "" H 5200 6900 50  0001 C CNN
	1    5200 6900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
