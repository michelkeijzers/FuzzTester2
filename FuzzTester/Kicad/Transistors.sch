EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
Title "Guitar Pedal Effect Fuzz Digitally Controlled"
Date ""
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8550 1050 2    50   ~ 10
Transistor Group 4 (Transistor 13..16)\n
Text Notes 10900 1050 2    50   ~ 10
Transistor Group 5 (Transistor 17..20)\n
$Comp
L Transistor_BJT:MMBTA42 Q?
U 1 1 5EA993A8
P 1600 3400
AR Path="/5E87C69B/5EA993A8" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993A8" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993A8" Ref="Q4"  Part="1" 
AR Path="/5F60C90E/5EA993A8" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993A8" Ref="Q24"  Part="1" 
F 0 "Q4" V 1835 3400 50  0000 C CNN
F 1 "MMBTA42" V 1926 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1800 3325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 1600 3400 50  0001 L CNN
	1    1600 3400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993AE
P 9950 3400
AR Path="/5E87C69B/5EA993AE" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993AE" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993AE" Ref="Q20"  Part="1" 
AR Path="/5F60C90E/5EA993AE" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993AE" Ref="Q40"  Part="1" 
F 0 "Q20" V 10185 3400 50  0000 C CNN
F 1 "2N5088" V 10276 3400 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10150 3325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 9950 3400 50  0001 L CNN
	1    9950 3400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993B4
P 9950 2750
AR Path="/5E87C69B/5EA993B4" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993B4" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993B4" Ref="Q19"  Part="1" 
AR Path="/5F60C90E/5EA993B4" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993B4" Ref="Q39"  Part="1" 
F 0 "Q19" V 10185 2750 50  0000 C CNN
F 1 "2N5088" V 10276 2750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10150 2675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 9950 2750 50  0001 L CNN
	1    9950 2750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993BA
P 9950 2100
AR Path="/5E87C69B/5EA993BA" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993BA" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993BA" Ref="Q18"  Part="1" 
AR Path="/5F60C90E/5EA993BA" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993BA" Ref="Q38"  Part="1" 
F 0 "Q18" V 10185 2100 50  0000 C CNN
F 1 "MPSA18" V 10276 2100 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10150 2025 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 9950 2100 50  0001 L CNN
	1    9950 2100
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993C0
P 9950 1450
AR Path="/5E87C69B/5EA993C0" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993C0" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993C0" Ref="Q17"  Part="1" 
AR Path="/5F60C90E/5EA993C0" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993C0" Ref="Q37"  Part="1" 
F 0 "Q17" V 10185 1450 50  0000 C CNN
F 1 "MPSA18" V 10276 1450 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10150 1375 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 9950 1450 50  0001 L CNN
	1    9950 1450
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC848 Q?
U 1 1 5EA993C7
P 7750 2750
AR Path="/5E87C69B/5EA993C7" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993C7" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993C7" Ref="Q15"  Part="1" 
AR Path="/5F60C90E/5EA993C7" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993C7" Ref="Q35"  Part="1" 
F 0 "Q15" V 7985 2750 50  0000 C CNN
F 1 "BC848B" V 8076 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 2675 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 7750 2750 50  0001 L CNN
	1    7750 2750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993CD
P 7750 3400
AR Path="/5E87C69B/5EA993CD" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993CD" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993CD" Ref="Q16"  Part="1" 
AR Path="/5F60C90E/5EA993CD" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993CD" Ref="Q36"  Part="1" 
F 0 "Q16" V 7985 3400 50  0000 C CNN
F 1 "2SC1623" V 8076 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 3500 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 7750 3400 50  0001 C CNN
	1    7750 3400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993D3
P 7750 2100
AR Path="/5E87C69B/5EA993D3" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993D3" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993D3" Ref="Q14"  Part="1" 
AR Path="/5F60C90E/5EA993D3" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993D3" Ref="Q34"  Part="1" 
F 0 "Q14" V 7985 2100 50  0000 C CNN
F 1 "S9018" V 8076 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 2200 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 7750 2100 50  0001 C CNN
	1    7750 2100
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993D9
P 7750 1450
AR Path="/5E87C69B/5EA993D9" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993D9" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993D9" Ref="Q13"  Part="1" 
AR Path="/5F60C90E/5EA993D9" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993D9" Ref="Q33"  Part="1" 
F 0 "Q13" V 7985 1450 50  0000 C CNN
F 1 "S9014" V 8076 1450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 1550 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 7750 1450 50  0001 C CNN
	1    7750 1450
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA993DF
P 5750 3350
AR Path="/5E87C69B/5EA993DF" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993DF" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993DF" Ref="Q12"  Part="1" 
AR Path="/5F60C90E/5EA993DF" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993DF" Ref="Q32"  Part="1" 
F 0 "Q12" V 5985 3350 50  0000 C CNN
F 1 "S9013" V 6076 3350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5950 3450 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 5750 3350 50  0001 C CNN
	1    5750 3350
	0    1    1    0   
$EndComp
Text Label 4050 2800 0    50   ~ 0
7_COLLECTOR
Text Notes 4250 1050 2    50   ~ 10
Transistor Group 2 (Transistor 5..8)\n
Text Notes 2150 1100 2    50   ~ 10
Transistor Group 1 (Transistor 1..4)\n
$Comp
L Transistor_BJT:BC847 Q?
U 1 1 5EA993FC
P 3850 3350
AR Path="/5E87C69B/5EA993FC" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA993FC" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA993FC" Ref="Q8"  Part="1" 
AR Path="/5F60C90E/5EA993FC" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA993FC" Ref="Q28"  Part="1" 
F 0 "Q8" V 4085 3350 50  0000 C CNN
F 1 "BC847C" V 4176 3350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4050 3275 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 3850 3350 50  0001 L CNN
	1    3850 3350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA99402
P 3850 2700
AR Path="/5E87C69B/5EA99402" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA99402" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA99402" Ref="Q7"  Part="1" 
AR Path="/5F60C90E/5EA99402" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA99402" Ref="Q27"  Part="1" 
F 0 "Q7" V 4085 2700 50  0000 C CNN
F 1 "BC847B" V 4176 2700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4050 2800 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 3850 2700 50  0001 C CNN
	1    3850 2700
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q?
U 1 1 5EA99408
P 3850 2050
AR Path="/5E87C69B/5EA99408" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA99408" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA99408" Ref="Q6"  Part="1" 
AR Path="/5F60C90E/5EA99408" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA99408" Ref="Q26"  Part="1" 
F 0 "Q6" V 4085 2050 50  0000 C CNN
F 1 "BC846" V 4176 2050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4050 1975 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 3850 2050 50  0001 L CNN
	1    3850 2050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q?
U 1 1 5EA9940E
P 3850 1400
AR Path="/5E87C69B/5EA9940E" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA9940E" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA9940E" Ref="Q5"  Part="1" 
AR Path="/5F60C90E/5EA9940E" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA9940E" Ref="Q25"  Part="1" 
F 0 "Q5" V 4085 1400 50  0000 C CNN
F 1 "BC807" V 4176 1400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4050 1325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC807.pdf" H 3850 1400 50  0001 L CNN
	1    3850 1400
	0    1    1    0   
$EndComp
Text Label 10150 3500 0    50   ~ 0
20_COLLECTOR
Text Label 10150 2850 0    50   ~ 0
19_COLLECTOR
Text Label 10150 2200 0    50   ~ 0
18_COLLECTOR
Text Label 10150 1550 0    50   ~ 0
17_COLLECTOR
Wire Wire Line
	10300 3200 9950 3200
Text Label 10000 3200 0    50   ~ 0
20_BASE
Wire Wire Line
	10300 2550 9950 2550
Text Label 10000 2550 0    50   ~ 0
19_BASE
Wire Wire Line
	10300 1900 9950 1900
Text Label 10000 1900 0    50   ~ 0
18_BASE
Wire Wire Line
	10300 1250 9950 1250
Text Label 10000 1250 0    50   ~ 0
17_BASE
Wire Wire Line
	10450 4000 10450 3800
$Comp
L power:GND #PWR?
U 1 1 5EA99442
P 10600 4100
AR Path="/5E87C69B/5EA99442" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA99442" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA99442" Ref="#PWR064"  Part="1" 
AR Path="/5F60C90E/5EA99442" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA99442" Ref="#PWR092"  Part="1" 
F 0 "#PWR064" H 10600 3850 50  0001 C CNN
F 1 "GND" H 10605 3927 50  0000 C CNN
F 2 "" H 10600 4100 50  0001 C CNN
F 3 "" H 10600 4100 50  0001 C CNN
	1    10600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5400 10000 5400
Wire Wire Line
	10250 4000 10450 4000
Wire Wire Line
	10100 4000 10250 4000
Connection ~ 10250 4000
$Comp
L power:+5V #PWR?
U 1 1 5EA9944C
P 10250 4000
AR Path="/5E87C69B/5EA9944C" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA9944C" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA9944C" Ref="#PWR063"  Part="1" 
AR Path="/5F60C90E/5EA9944C" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA9944C" Ref="#PWR091"  Part="1" 
F 0 "#PWR063" H 10250 3850 50  0001 C CNN
F 1 "+5V" H 10265 4173 50  0000 C CNN
F 2 "" H 10250 4000 50  0001 C CNN
F 3 "" H 10250 4000 50  0001 C CNN
	1    10250 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA99452
P 10000 5400
AR Path="/5E87C69B/5EA99452" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA99452" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA99452" Ref="#PWR062"  Part="1" 
AR Path="/5F60C90E/5EA99452" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA99452" Ref="#PWR090"  Part="1" 
F 0 "#PWR062" H 10000 5150 50  0001 C CNN
F 1 "GND" H 10005 5227 50  0000 C CNN
F 2 "" H 10000 5400 50  0001 C CNN
F 3 "" H 10000 5400 50  0001 C CNN
	1    10000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA99458
P 10600 3950
AR Path="/5E87C69B/5EA99458" Ref="C?"  Part="1" 
AR Path="/5E9AE973/5EA99458" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EA99458" Ref="C27"  Part="1" 
AR Path="/5F60C90E/5EA99458" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EA99458" Ref="C34"  Part="1" 
F 0 "C27" H 10715 3996 50  0000 L CNN
F 1 "100nF" H 10715 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10638 3800 50  0001 C CNN
F 3 "~" H 10600 3950 50  0001 C CNN
	1    10600 3950
	1    0    0    -1  
$EndComp
Connection ~ 10000 5400
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5EA99462
P 10000 4700
AR Path="/5E87C69B/5EA99462" Ref="U?"  Part="1" 
AR Path="/5E9AE973/5EA99462" Ref="U?"  Part="1" 
AR Path="/5E9AE796/5EA99462" Ref="U12"  Part="1" 
AR Path="/5F60C90E/5EA99462" Ref="U?"  Part="1" 
AR Path="/5F9746B8/5EA99462" Ref="U19"  Part="1" 
F 0 "U12" H 10000 5581 50  0000 C CNN
F 1 "CD4052B" H 10000 5490 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10150 3950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 9980 4900 50  0001 C CNN
	1    10000 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA99468
P 9500 5100
AR Path="/5E87C69B/5EA99468" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA99468" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA99468" Ref="#PWR061"  Part="1" 
AR Path="/5F60C90E/5EA99468" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA99468" Ref="#PWR089"  Part="1" 
F 0 "#PWR061" H 9500 4850 50  0001 C CNN
F 1 "GND" H 9500 4950 50  0000 C CNN
F 2 "" H 9500 5100 50  0001 C CNN
F 3 "" H 9500 5100 50  0001 C CNN
	1    9500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 5200 10500 5200
Text Label 10550 5200 0    50   ~ 0
20_COLLECTOR
Wire Wire Line
	10850 5100 10500 5100
Text Label 10550 5100 0    50   ~ 0
19_COLLECTOR
Wire Wire Line
	10850 5000 10500 5000
Text Label 10550 5000 0    50   ~ 0
18_COLLECTOR
Wire Wire Line
	10850 4900 10500 4900
Text Label 10550 4900 0    50   ~ 0
17_COLLECTOR
Wire Wire Line
	10850 4700 10500 4700
Text Label 10550 4700 0    50   ~ 0
20_BASE
Wire Wire Line
	10850 4600 10500 4600
Text Label 10550 4600 0    50   ~ 0
19_BASE
Wire Wire Line
	10850 4500 10500 4500
Text Label 10550 4500 0    50   ~ 0
18_BASE
Wire Wire Line
	10850 4400 10500 4400
Text Label 10550 4400 0    50   ~ 0
17_BASE
Text Label 7950 3500 0    50   ~ 0
16_COLLECTOR
Text Label 7950 2850 0    50   ~ 0
15_COLLECTOR
Text Label 7950 2200 0    50   ~ 0
14_COLLECTOR
Text Label 7950 1550 0    50   ~ 0
13_COLLECTOR
Wire Wire Line
	8100 3200 7750 3200
Text Label 7800 3200 0    50   ~ 0
16_BASE
Wire Wire Line
	8100 2550 7750 2550
Text Label 7800 2550 0    50   ~ 0
15_BASE
Wire Wire Line
	8100 1900 7750 1900
Text Label 7800 1900 0    50   ~ 0
14_BASE
Wire Wire Line
	8100 1250 7750 1250
Text Label 7800 1250 0    50   ~ 0
13_BASE
Wire Wire Line
	8200 4000 8200 3800
$Comp
L power:GND #PWR?
U 1 1 5EA994AF
P 8350 4100
AR Path="/5E87C69B/5EA994AF" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA994AF" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA994AF" Ref="#PWR060"  Part="1" 
AR Path="/5F60C90E/5EA994AF" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA994AF" Ref="#PWR088"  Part="1" 
F 0 "#PWR060" H 8350 3850 50  0001 C CNN
F 1 "GND" H 8355 3927 50  0000 C CNN
F 2 "" H 8350 4100 50  0001 C CNN
F 3 "" H 8350 4100 50  0001 C CNN
	1    8350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5400 7750 5400
Wire Wire Line
	8000 4000 8200 4000
Wire Wire Line
	7850 4000 8000 4000
Connection ~ 8000 4000
$Comp
L power:+5V #PWR?
U 1 1 5EA994B9
P 8000 4000
AR Path="/5E87C69B/5EA994B9" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA994B9" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA994B9" Ref="#PWR059"  Part="1" 
AR Path="/5F60C90E/5EA994B9" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA994B9" Ref="#PWR087"  Part="1" 
F 0 "#PWR059" H 8000 3850 50  0001 C CNN
F 1 "+5V" H 8015 4173 50  0000 C CNN
F 2 "" H 8000 4000 50  0001 C CNN
F 3 "" H 8000 4000 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA994BF
P 7750 5400
AR Path="/5E87C69B/5EA994BF" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA994BF" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA994BF" Ref="#PWR058"  Part="1" 
AR Path="/5F60C90E/5EA994BF" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA994BF" Ref="#PWR086"  Part="1" 
F 0 "#PWR058" H 7750 5150 50  0001 C CNN
F 1 "GND" H 7755 5227 50  0000 C CNN
F 2 "" H 7750 5400 50  0001 C CNN
F 3 "" H 7750 5400 50  0001 C CNN
	1    7750 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA994C5
P 8350 3950
AR Path="/5E87C69B/5EA994C5" Ref="C?"  Part="1" 
AR Path="/5E9AE973/5EA994C5" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EA994C5" Ref="C26"  Part="1" 
AR Path="/5F60C90E/5EA994C5" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EA994C5" Ref="C33"  Part="1" 
F 0 "C26" H 8465 3996 50  0000 L CNN
F 1 "100nF" H 8465 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8388 3800 50  0001 C CNN
F 3 "~" H 8350 3950 50  0001 C CNN
	1    8350 3950
	1    0    0    -1  
$EndComp
Connection ~ 7750 5400
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5EA994CF
P 7750 4700
AR Path="/5E87C69B/5EA994CF" Ref="U?"  Part="1" 
AR Path="/5E9AE973/5EA994CF" Ref="U?"  Part="1" 
AR Path="/5E9AE796/5EA994CF" Ref="U11"  Part="1" 
AR Path="/5F60C90E/5EA994CF" Ref="U?"  Part="1" 
AR Path="/5F9746B8/5EA994CF" Ref="U18"  Part="1" 
F 0 "U11" H 7750 5581 50  0000 C CNN
F 1 "CD4052B" H 7750 5490 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7900 3950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 7730 4900 50  0001 C CNN
	1    7750 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA994D5
P 7250 5100
AR Path="/5E87C69B/5EA994D5" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA994D5" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA994D5" Ref="#PWR057"  Part="1" 
AR Path="/5F60C90E/5EA994D5" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA994D5" Ref="#PWR085"  Part="1" 
F 0 "#PWR057" H 7250 4850 50  0001 C CNN
F 1 "GND" H 7250 4950 50  0000 C CNN
F 2 "" H 7250 5100 50  0001 C CNN
F 3 "" H 7250 5100 50  0001 C CNN
	1    7250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5200 8250 5200
Text Label 8300 5200 0    50   ~ 0
16_COLLECTOR
Wire Wire Line
	8600 5100 8250 5100
Text Label 8300 5100 0    50   ~ 0
15_COLLECTOR
Wire Wire Line
	8600 5000 8250 5000
Text Label 8300 5000 0    50   ~ 0
14_COLLECTOR
Wire Wire Line
	8600 4900 8250 4900
Text Label 8300 4900 0    50   ~ 0
13_COLLECTOR
Wire Wire Line
	8600 4700 8250 4700
Text Label 8300 4700 0    50   ~ 0
16_BASE
Wire Wire Line
	8600 4600 8250 4600
Text Label 8300 4600 0    50   ~ 0
15_BASE
Wire Wire Line
	8600 4500 8250 4500
Text Label 8300 4500 0    50   ~ 0
14_BASE
Wire Wire Line
	8600 4400 8250 4400
Text Label 8300 4400 0    50   ~ 0
13_BASE
Text Label 5950 3450 0    50   ~ 0
12_COLLECTOR
Wire Wire Line
	6100 3150 5750 3150
Text Label 5800 3150 0    50   ~ 0
12_BASE
Wire Wire Line
	6150 3800 6300 3800
Wire Wire Line
	6150 4000 6150 3800
$Comp
L power:GND #PWR?
U 1 1 5EA9951D
P 6300 4100
AR Path="/5E87C69B/5EA9951D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA9951D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA9951D" Ref="#PWR055"  Part="1" 
AR Path="/5F60C90E/5EA9951D" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA9951D" Ref="#PWR083"  Part="1" 
F 0 "#PWR055" H 6300 3850 50  0001 C CNN
F 1 "GND" H 6305 3927 50  0000 C CNN
F 2 "" H 6300 4100 50  0001 C CNN
F 3 "" H 6300 4100 50  0001 C CNN
	1    6300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5400 5700 5400
Wire Wire Line
	5950 4000 6150 4000
Wire Wire Line
	5800 4000 5950 4000
Connection ~ 5950 4000
$Comp
L power:+5V #PWR?
U 1 1 5EA99527
P 5950 4000
AR Path="/5E87C69B/5EA99527" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA99527" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA99527" Ref="#PWR054"  Part="1" 
AR Path="/5F60C90E/5EA99527" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA99527" Ref="#PWR082"  Part="1" 
F 0 "#PWR054" H 5950 3850 50  0001 C CNN
F 1 "+5V" H 5965 4173 50  0000 C CNN
F 2 "" H 5950 4000 50  0001 C CNN
F 3 "" H 5950 4000 50  0001 C CNN
	1    5950 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA9952D
P 5700 5400
AR Path="/5E87C69B/5EA9952D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA9952D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA9952D" Ref="#PWR052"  Part="1" 
AR Path="/5F60C90E/5EA9952D" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA9952D" Ref="#PWR080"  Part="1" 
F 0 "#PWR052" H 5700 5150 50  0001 C CNN
F 1 "GND" H 5705 5227 50  0000 C CNN
F 2 "" H 5700 5400 50  0001 C CNN
F 3 "" H 5700 5400 50  0001 C CNN
	1    5700 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA99533
P 6300 3950
AR Path="/5E87C69B/5EA99533" Ref="C?"  Part="1" 
AR Path="/5E9AE973/5EA99533" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EA99533" Ref="C24"  Part="1" 
AR Path="/5F60C90E/5EA99533" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EA99533" Ref="C31"  Part="1" 
F 0 "C24" H 6415 3996 50  0000 L CNN
F 1 "100nF" H 6415 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6338 3800 50  0001 C CNN
F 3 "~" H 6300 3950 50  0001 C CNN
	1    6300 3950
	1    0    0    -1  
$EndComp
Connection ~ 5700 5400
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5EA9953D
P 5700 4700
AR Path="/5E87C69B/5EA9953D" Ref="U?"  Part="1" 
AR Path="/5E9AE973/5EA9953D" Ref="U?"  Part="1" 
AR Path="/5E9AE796/5EA9953D" Ref="U10"  Part="1" 
AR Path="/5F60C90E/5EA9953D" Ref="U?"  Part="1" 
AR Path="/5F9746B8/5EA9953D" Ref="U17"  Part="1" 
F 0 "U10" H 5700 5581 50  0000 C CNN
F 1 "CD4052B" H 5700 5490 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5850 3950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 5680 4900 50  0001 C CNN
	1    5700 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA99543
P 5200 5100
AR Path="/5E87C69B/5EA99543" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA99543" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA99543" Ref="#PWR050"  Part="1" 
AR Path="/5F60C90E/5EA99543" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA99543" Ref="#PWR078"  Part="1" 
F 0 "#PWR050" H 5200 4850 50  0001 C CNN
F 1 "GND" H 5200 4950 50  0000 C CNN
F 2 "" H 5200 5100 50  0001 C CNN
F 3 "" H 5200 5100 50  0001 C CNN
	1    5200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5200 6200 5200
Text Label 6250 5200 0    50   ~ 0
12_COLLECTOR
Wire Wire Line
	6550 5100 6200 5100
Text Label 6250 5100 0    50   ~ 0
11_COLLECTOR
Wire Wire Line
	6550 5000 6200 5000
Text Label 6250 5000 0    50   ~ 0
10_COLLECTOR
Wire Wire Line
	6550 4900 6200 4900
Text Label 6250 4900 0    50   ~ 0
9_COLLECTOR
Wire Wire Line
	6550 4700 6200 4700
Text Label 6250 4700 0    50   ~ 0
12_BASE
Wire Wire Line
	6550 4600 6200 4600
Text Label 6250 4600 0    50   ~ 0
11_BASE
Wire Wire Line
	6550 4500 6200 4500
Text Label 6250 4500 0    50   ~ 0
10_BASE
Wire Wire Line
	6550 4400 6200 4400
Text Label 6250 4400 0    50   ~ 0
9_BASE
Text Label 4050 3450 0    50   ~ 0
8_COLLECTOR
Text Label 4050 2150 0    50   ~ 0
6_COLLECTOR
Text Label 4050 1500 0    50   ~ 0
5_COLLECTOR
Wire Wire Line
	4200 3150 3850 3150
Text Label 3900 3150 0    50   ~ 0
8_BASE
Wire Wire Line
	4200 2500 3850 2500
Text Label 3900 2500 0    50   ~ 0
7_BASE
Wire Wire Line
	4200 1850 3850 1850
Text Label 3900 1850 0    50   ~ 0
6_BASE
Wire Wire Line
	4200 1200 3850 1200
Text Label 3900 1200 0    50   ~ 0
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
Wire Wire Line
	1850 4050 1850 3850
$Comp
L power:GND #PWR?
U 1 1 5EA995F7
P 2000 4150
AR Path="/5E87C69B/5EA995F7" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA995F7" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA995F7" Ref="#PWR040"  Part="1" 
AR Path="/5F60C90E/5EA995F7" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA995F7" Ref="#PWR068"  Part="1" 
F 0 "#PWR040" H 2000 3900 50  0001 C CNN
F 1 "GND" H 2005 3977 50  0000 C CNN
F 2 "" H 2000 4150 50  0001 C CNN
F 3 "" H 2000 4150 50  0001 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5450 1500 5450
Wire Wire Line
	1750 4050 1850 4050
Wire Wire Line
	1600 4050 1750 4050
Connection ~ 1750 4050
$Comp
L power:+5V #PWR?
U 1 1 5EA99601
P 1750 4050
AR Path="/5E87C69B/5EA99601" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA99601" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA99601" Ref="#PWR039"  Part="1" 
AR Path="/5F60C90E/5EA99601" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA99601" Ref="#PWR067"  Part="1" 
F 0 "#PWR039" H 1750 3900 50  0001 C CNN
F 1 "+5V" H 1765 4223 50  0000 C CNN
F 2 "" H 1750 4050 50  0001 C CNN
F 3 "" H 1750 4050 50  0001 C CNN
	1    1750 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA99607
P 1500 5450
AR Path="/5E87C69B/5EA99607" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA99607" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA99607" Ref="#PWR038"  Part="1" 
AR Path="/5F60C90E/5EA99607" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA99607" Ref="#PWR066"  Part="1" 
F 0 "#PWR038" H 1500 5200 50  0001 C CNN
F 1 "GND" H 1505 5277 50  0000 C CNN
F 2 "" H 1500 5450 50  0001 C CNN
F 3 "" H 1500 5450 50  0001 C CNN
	1    1500 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA9960D
P 2000 4000
AR Path="/5E87C69B/5EA9960D" Ref="C?"  Part="1" 
AR Path="/5E9AE973/5EA9960D" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EA9960D" Ref="C21"  Part="1" 
AR Path="/5F60C90E/5EA9960D" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EA9960D" Ref="C28"  Part="1" 
F 0 "C21" H 2115 4046 50  0000 L CNN
F 1 "100nF" H 2115 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2038 3850 50  0001 C CNN
F 3 "~" H 2000 4000 50  0001 C CNN
	1    2000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4550 1000 4550
Text Label 800  4550 3    50   ~ 0
TG_1_BASE
Connection ~ 1500 5450
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5EA99617
P 1500 4750
AR Path="/5E87C69B/5EA99617" Ref="U?"  Part="1" 
AR Path="/5E9AE973/5EA99617" Ref="U?"  Part="1" 
AR Path="/5E9AE796/5EA99617" Ref="U6"  Part="1" 
AR Path="/5F60C90E/5EA99617" Ref="U?"  Part="1" 
AR Path="/5F9746B8/5EA99617" Ref="U13"  Part="1" 
F 0 "U6" H 1500 5631 50  0000 C CNN
F 1 "CD4052B" H 1500 5540 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1650 4000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 1480 4950 50  0001 C CNN
	1    1500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA9961D
P 1000 5150
AR Path="/5E87C69B/5EA9961D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EA9961D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EA9961D" Ref="#PWR037"  Part="1" 
AR Path="/5F60C90E/5EA9961D" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EA9961D" Ref="#PWR065"  Part="1" 
F 0 "#PWR037" H 1000 4900 50  0001 C CNN
F 1 "GND" H 1000 5000 50  0000 C CNN
F 2 "" H 1000 5150 50  0001 C CNN
F 3 "" H 1000 5150 50  0001 C CNN
	1    1000 5150
	1    0    0    -1  
$EndComp
Text Label 2050 5250 0    50   ~ 0
4_COLLECTOR
Text Label 2050 5150 0    50   ~ 0
3_COLLECTOR
Text Label 2050 5050 0    50   ~ 0
2_COLLECTOR
Text Label 2050 4950 0    50   ~ 0
1_COLLECTOR
Wire Wire Line
	2350 4750 2000 4750
Text Label 2050 4750 0    50   ~ 0
4_BASE
Wire Wire Line
	2350 4650 2000 4650
Text Label 2050 4650 0    50   ~ 0
3_BASE
Wire Wire Line
	2350 4550 2000 4550
Text Label 2050 4550 0    50   ~ 0
2_BASE
Wire Wire Line
	2350 4450 2000 4450
Text Label 2050 4450 0    50   ~ 0
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
F 0 "Q3" V 1835 2750 50  0000 C CNN
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
F 0 "Q2" V 1835 2100 50  0000 C CNN
F 1 "MMBT3904" V 1926 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1800 2025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1600 2100 50  0001 L CNN
	1    1600 2100
	0    1    1    0   
$EndComp
Text Notes 3150 6100 2    50   ~ 10
Transistor Groups TG1..TG5 Gate\n\n\n\n
$Comp
L Analog_Switch:CD4051B U?
U 1 1 5EABB1CC
P 2500 6800
AR Path="/5E87C69B/5EABB1CC" Ref="U?"  Part="1" 
AR Path="/5E9AE796/5EABB1CC" Ref="U7"  Part="1" 
AR Path="/5E9AE973/5EABB1CC" Ref="U?"  Part="1" 
AR Path="/5F60C90E/5EABB1CC" Ref="U?"  Part="1" 
AR Path="/5F9746B8/5EABB1CC" Ref="U14"  Part="1" 
F 0 "U7" H 2500 7681 50  0000 C CNN
F 1 "CD4051B" H 2500 7590 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2650 6050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 2480 6900 50  0001 C CNN
	1    2500 6800
	1    0    0    -1  
$EndComp
Text Label 3100 6600 0    50   ~ 0
TG_1_BASE
Text Label 3100 6700 0    50   ~ 0
TG_2_BASE
Text Label 3100 6800 0    50   ~ 0
TG_3_BASE
Text Label 3100 6900 0    50   ~ 0
TG_4_BASE
Wire Wire Line
	3000 7000 3500 7000
Wire Wire Line
	3000 6900 3500 6900
Wire Wire Line
	3000 6800 3500 6800
Wire Wire Line
	3000 6700 3500 6700
Wire Wire Line
	3000 6600 3500 6600
NoConn ~ 3000 7100
NoConn ~ 3000 7200
NoConn ~ 3000 7300
$Comp
L power:GND #PWR?
U 1 1 5EABB1E5
P 2500 7500
AR Path="/5E87C69B/5EABB1E5" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EABB1E5" Ref="#PWR042"  Part="1" 
AR Path="/5E9AE973/5EABB1E5" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EABB1E5" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EABB1E5" Ref="#PWR070"  Part="1" 
F 0 "#PWR042" H 2500 7250 50  0001 C CNN
F 1 "GND" H 2505 7327 50  0000 C CNN
F 2 "" H 2500 7500 50  0001 C CNN
F 3 "" H 2500 7500 50  0001 C CNN
	1    2500 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7500 2500 7500
Connection ~ 2500 7500
$Comp
L power:GND #PWR?
U 1 1 5EABB202
P 2000 6800
AR Path="/5E87C69B/5EABB202" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EABB202" Ref="#PWR041"  Part="1" 
AR Path="/5E9AE973/5EABB202" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EABB202" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EABB202" Ref="#PWR069"  Part="1" 
F 0 "#PWR041" H 2000 6550 50  0001 C CNN
F 1 "GND" H 2005 6627 50  0000 C CNN
F 2 "" H 2000 6800 50  0001 C CNN
F 3 "" H 2000 6800 50  0001 C CNN
	1    2000 6800
	1    0    0    -1  
$EndComp
Text Notes 6000 5900 2    50   ~ 10
Transistor Groups TG1..TG5 Collector\n
$Comp
L Analog_Switch:CD4051B U?
U 1 1 5EBCAA6D
P 5350 6850
AR Path="/5E87C69B/5EBCAA6D" Ref="U?"  Part="1" 
AR Path="/5E9AE796/5EBCAA6D" Ref="U9"  Part="1" 
AR Path="/5E9AE973/5EBCAA6D" Ref="U?"  Part="1" 
AR Path="/5F60C90E/5EBCAA6D" Ref="U?"  Part="1" 
AR Path="/5F9746B8/5EBCAA6D" Ref="U16"  Part="1" 
F 0 "U9" H 5350 7731 50  0000 C CNN
F 1 "CD4051B" H 5350 7640 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5500 6100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 5330 6950 50  0001 C CNN
	1    5350 6850
	1    0    0    -1  
$EndComp
NoConn ~ 5850 7150
NoConn ~ 5850 7250
NoConn ~ 5850 7350
$Comp
L power:GND #PWR?
U 1 1 5EBCAA86
P 5350 7550
AR Path="/5E87C69B/5EBCAA86" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EBCAA86" Ref="#PWR051"  Part="1" 
AR Path="/5E9AE973/5EBCAA86" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EBCAA86" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EBCAA86" Ref="#PWR079"  Part="1" 
F 0 "#PWR051" H 5350 7300 50  0001 C CNN
F 1 "GND" H 5355 7377 50  0000 C CNN
F 2 "" H 5350 7550 50  0001 C CNN
F 3 "" H 5350 7550 50  0001 C CNN
	1    5350 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7550 5350 7550
Connection ~ 5350 7550
$Comp
L Device:C C?
U 1 1 5EBCAA90
P 6700 6300
AR Path="/5E87C69B/5EBCAA90" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EBCAA90" Ref="C25"  Part="1" 
AR Path="/5E9AE973/5EBCAA90" Ref="C?"  Part="1" 
AR Path="/5F60C90E/5EBCAA90" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EBCAA90" Ref="C32"  Part="1" 
F 0 "C25" H 6815 6346 50  0000 L CNN
F 1 "100nF" H 6815 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6738 6150 50  0001 C CNN
F 3 "~" H 6700 6300 50  0001 C CNN
	1    6700 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBCAA96
P 6700 6450
AR Path="/5E87C69B/5EBCAA96" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EBCAA96" Ref="#PWR056"  Part="1" 
AR Path="/5E9AE973/5EBCAA96" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EBCAA96" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EBCAA96" Ref="#PWR084"  Part="1" 
F 0 "#PWR056" H 6700 6200 50  0001 C CNN
F 1 "GND" H 6705 6277 50  0000 C CNN
F 2 "" H 6700 6450 50  0001 C CNN
F 3 "" H 6700 6450 50  0001 C CNN
	1    6700 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBCAA9D
P 5700 6150
AR Path="/5E87C69B/5EBCAA9D" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EBCAA9D" Ref="#PWR053"  Part="1" 
AR Path="/5E9AE973/5EBCAA9D" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EBCAA9D" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EBCAA9D" Ref="#PWR081"  Part="1" 
F 0 "#PWR053" H 5700 6000 50  0001 C CNN
F 1 "+5V" H 5715 6323 50  0000 C CNN
F 2 "" H 5700 6150 50  0001 C CNN
F 3 "" H 5700 6150 50  0001 C CNN
	1    5700 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBCAAA3
P 4850 6850
AR Path="/5E87C69B/5EBCAAA3" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EBCAAA3" Ref="#PWR049"  Part="1" 
AR Path="/5E9AE973/5EBCAAA3" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EBCAAA3" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EBCAAA3" Ref="#PWR077"  Part="1" 
F 0 "#PWR049" H 4850 6600 50  0001 C CNN
F 1 "GND" H 4855 6677 50  0000 C CNN
F 2 "" H 4850 6850 50  0001 C CNN
F 3 "" H 4850 6850 50  0001 C CNN
	1    4850 6850
	1    0    0    -1  
$EndComp
Text Label 800  5050 3    50   ~ 0
TG_1_COLLECTOR
Text Label 3100 7000 0    50   ~ 0
TG_5_BASE
Text Label 5950 6650 0    50   ~ 0
TG_1_COLLECTOR
Text Label 5950 6750 0    50   ~ 0
TG_2_COLLECTOR
Text Label 5950 6850 0    50   ~ 0
TG_3_COLLECTOR
Text Label 5950 6950 0    50   ~ 0
TG_4_COLLECTOR
Text Label 5950 7050 0    50   ~ 0
TG_5_COLLECTOR
Wire Wire Line
	5850 7050 6600 7050
Text HLabel 2000 6700 0    50   Input ~ 0
BASE
$Comp
L power:GND #PWR?
U 1 1 5EB52E27
P 4200 4100
AR Path="/5E87C69B/5EB52E27" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EB52E27" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EB52E27" Ref="#PWR048"  Part="1" 
AR Path="/5F60C90E/5EB52E27" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EB52E27" Ref="#PWR076"  Part="1" 
F 0 "#PWR048" H 4200 3850 50  0001 C CNN
F 1 "GND" H 4205 3927 50  0000 C CNN
F 2 "" H 4200 4100 50  0001 C CNN
F 3 "" H 4200 4100 50  0001 C CNN
	1    4200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5400 3700 5400
Wire Wire Line
	3950 4000 4050 4000
Wire Wire Line
	3800 4000 3950 4000
Connection ~ 3950 4000
$Comp
L power:+5V #PWR?
U 1 1 5EB52E31
P 3950 4000
AR Path="/5E87C69B/5EB52E31" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EB52E31" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EB52E31" Ref="#PWR047"  Part="1" 
AR Path="/5F60C90E/5EB52E31" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EB52E31" Ref="#PWR075"  Part="1" 
F 0 "#PWR047" H 3950 3850 50  0001 C CNN
F 1 "+5V" H 3965 4173 50  0000 C CNN
F 2 "" H 3950 4000 50  0001 C CNN
F 3 "" H 3950 4000 50  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB52E37
P 3700 5400
AR Path="/5E87C69B/5EB52E37" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EB52E37" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EB52E37" Ref="#PWR045"  Part="1" 
AR Path="/5F60C90E/5EB52E37" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EB52E37" Ref="#PWR073"  Part="1" 
F 0 "#PWR045" H 3700 5150 50  0001 C CNN
F 1 "GND" H 3705 5227 50  0000 C CNN
F 2 "" H 3700 5400 50  0001 C CNN
F 3 "" H 3700 5400 50  0001 C CNN
	1    3700 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EB52E3D
P 4200 3950
AR Path="/5E87C69B/5EB52E3D" Ref="C?"  Part="1" 
AR Path="/5E9AE973/5EB52E3D" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EB52E3D" Ref="C23"  Part="1" 
AR Path="/5F60C90E/5EB52E3D" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EB52E3D" Ref="C30"  Part="1" 
F 0 "C23" H 4315 3996 50  0000 L CNN
F 1 "100nF" H 4315 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4238 3800 50  0001 C CNN
F 3 "~" H 4200 3950 50  0001 C CNN
	1    4200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4500 3200 4500
Text Label 3050 4500 3    50   ~ 0
TG_2_BASE
Connection ~ 3700 5400
$Comp
L Analog_Switch:CD4052B U?
U 1 1 5EB52E46
P 3700 4700
AR Path="/5E87C69B/5EB52E46" Ref="U?"  Part="1" 
AR Path="/5E9AE973/5EB52E46" Ref="U?"  Part="1" 
AR Path="/5E9AE796/5EB52E46" Ref="U8"  Part="1" 
AR Path="/5F60C90E/5EB52E46" Ref="U?"  Part="1" 
AR Path="/5F9746B8/5EB52E46" Ref="U15"  Part="1" 
F 0 "U8" H 3700 5581 50  0000 C CNN
F 1 "CD4052B" H 3700 5490 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3850 3950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 3680 4900 50  0001 C CNN
	1    3700 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB52E4C
P 3200 5100
AR Path="/5E87C69B/5EB52E4C" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE973/5EB52E4C" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EB52E4C" Ref="#PWR044"  Part="1" 
AR Path="/5F60C90E/5EB52E4C" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EB52E4C" Ref="#PWR072"  Part="1" 
F 0 "#PWR044" H 3200 4850 50  0001 C CNN
F 1 "GND" H 3200 4950 50  0000 C CNN
F 2 "" H 3200 5100 50  0001 C CNN
F 3 "" H 3200 5100 50  0001 C CNN
	1    3200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5200 4200 5200
Text Label 4200 5200 0    50   ~ 0
8_COLLECTOR
Wire Wire Line
	4550 5100 4200 5100
Text Label 4200 5100 0    50   ~ 0
7_COLLECTOR
Wire Wire Line
	4550 5000 4200 5000
Text Label 4200 5000 0    50   ~ 0
6_COLLECTOR
Wire Wire Line
	4550 4900 4200 4900
Text Label 4200 4900 0    50   ~ 0
5_COLLECTOR
Wire Wire Line
	4550 4700 4200 4700
Text Label 4250 4700 0    50   ~ 0
8_BASE
Wire Wire Line
	4550 4600 4200 4600
Text Label 4250 4600 0    50   ~ 0
7_BASE
Wire Wire Line
	4550 4500 4200 4500
Text Label 4250 4500 0    50   ~ 0
6_BASE
Wire Wire Line
	4550 4400 4200 4400
Text Label 4250 4400 0    50   ~ 0
5_BASE
Text Label 3050 5650 1    50   ~ 0
TG_2_COLLECTOR
Wire Wire Line
	3050 5650 3050 5000
Text HLabel 1400 1550 0    50   Input ~ 0
EMITTER
Wire Wire Line
	5450 6150 5700 6150
Connection ~ 5700 6150
$Comp
L Device:C C?
U 1 1 5EE53236
P 3700 6250
AR Path="/5E87C69B/5EE53236" Ref="C?"  Part="1" 
AR Path="/5E9AE796/5EE53236" Ref="C22"  Part="1" 
AR Path="/5E9AE973/5EE53236" Ref="C?"  Part="1" 
AR Path="/5F60C90E/5EE53236" Ref="C?"  Part="1" 
AR Path="/5F9746B8/5EE53236" Ref="C29"  Part="1" 
F 0 "C22" H 3815 6296 50  0000 L CNN
F 1 "100nF" H 3815 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3738 6100 50  0001 C CNN
F 3 "~" H 3700 6250 50  0001 C CNN
	1    3700 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE5323C
P 3700 6400
AR Path="/5E87C69B/5EE5323C" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EE5323C" Ref="#PWR046"  Part="1" 
AR Path="/5E9AE973/5EE5323C" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EE5323C" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EE5323C" Ref="#PWR074"  Part="1" 
F 0 "#PWR046" H 3700 6150 50  0001 C CNN
F 1 "GND" H 3705 6227 50  0000 C CNN
F 2 "" H 3700 6400 50  0001 C CNN
F 3 "" H 3700 6400 50  0001 C CNN
	1    3700 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6100 3700 6100
$Comp
L power:+5V #PWR?
U 1 1 5EE61B0A
P 2900 6100
AR Path="/5E87C69B/5EE61B0A" Ref="#PWR?"  Part="1" 
AR Path="/5E9AE796/5EE61B0A" Ref="#PWR043"  Part="1" 
AR Path="/5E9AE973/5EE61B0A" Ref="#PWR?"  Part="1" 
AR Path="/5F60C90E/5EE61B0A" Ref="#PWR?"  Part="1" 
AR Path="/5F9746B8/5EE61B0A" Ref="#PWR071"  Part="1" 
F 0 "#PWR043" H 2900 5950 50  0001 C CNN
F 1 "+5V" H 2915 6273 50  0000 C CNN
F 2 "" H 2900 6100 50  0001 C CNN
F 3 "" H 2900 6100 50  0001 C CNN
	1    2900 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6100 2600 6100
Connection ~ 2900 6100
Wire Wire Line
	10450 3800 10600 3800
Wire Wire Line
	8200 3800 8350 3800
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EFF94A6
P 5750 2700
AR Path="/5E87C69B/5EFF94A6" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EFF94A6" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EFF94A6" Ref="Q11"  Part="1" 
AR Path="/5F60C90E/5EFF94A6" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EFF94A6" Ref="Q31"  Part="1" 
F 0 "Q11" V 5985 2700 50  0000 C CNN
F 1 "S8050" V 6076 2700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5950 2625 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5750 2700 50  0001 L CNN
	1    5750 2700
	0    1    1    0   
$EndComp
Text Label 5950 2800 0    50   ~ 0
11_COLLECTOR
Wire Wire Line
	6100 2500 5750 2500
Text Label 5800 2500 0    50   ~ 0
11_BASE
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5F014460
P 5750 2050
AR Path="/5E87C69B/5F014460" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5F014460" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5F014460" Ref="Q10"  Part="1" 
AR Path="/5F60C90E/5F014460" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5F014460" Ref="Q30"  Part="1" 
F 0 "Q10" V 5985 2050 50  0000 C CNN
F 1 "2SC1815" V 6076 2050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5950 1975 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 5750 2050 50  0001 L CNN
	1    5750 2050
	0    1    1    0   
$EndComp
Text Label 5950 2150 0    50   ~ 0
10_COLLECTOR
Wire Wire Line
	6100 1850 5750 1850
Text Label 5800 1850 0    50   ~ 0
10_BASE
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5F02F005
P 5750 1400
AR Path="/5E87C69B/5F02F005" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5F02F005" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5F02F005" Ref="Q9"  Part="1" 
AR Path="/5F60C90E/5F02F005" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5F02F005" Ref="Q29"  Part="1" 
F 0 "Q9" V 5985 1400 50  0000 C CNN
F 1 "C945" V 6076 1400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5950 1500 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 5750 1400 50  0001 C CNN
	1    5750 1400
	0    1    1    0   
$EndComp
Text Label 5950 1500 0    50   ~ 0
9_COLLECTOR
Wire Wire Line
	6100 1200 5750 1200
Text Label 5800 1200 0    50   ~ 0
9_BASE
Text Notes 6400 1050 2    50   ~ 10
Transistor Group 3 (Transistor 9..12)\n
Wire Wire Line
	4050 3800 4050 4000
Wire Wire Line
	4050 3800 4200 3800
Wire Wire Line
	1850 3850 2000 3850
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5EA9963D
P 1600 1450
AR Path="/5E87C69B/5EA9963D" Ref="Q?"  Part="1" 
AR Path="/5E9AE973/5EA9963D" Ref="Q?"  Part="1" 
AR Path="/5E9AE796/5EA9963D" Ref="Q1"  Part="1" 
AR Path="/5F60C90E/5EA9963D" Ref="Q?"  Part="1" 
AR Path="/5F9746B8/5EA9963D" Ref="Q21"  Part="1" 
F 0 "Q1" V 1835 1450 50  0000 C CNN
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
Text HLabel 3650 1500 0    50   Input ~ 0
EMITTER
Text HLabel 3650 2150 0    50   Input ~ 0
EMITTER
Text HLabel 3650 2800 0    50   Input ~ 0
EMITTER
Text HLabel 3650 3450 0    50   Input ~ 0
EMITTER
Text HLabel 5550 1500 0    50   Input ~ 0
EMITTER
Text HLabel 5550 2150 0    50   Input ~ 0
EMITTER
Text HLabel 5550 2800 0    50   Input ~ 0
EMITTER
Text HLabel 5550 3450 0    50   Input ~ 0
EMITTER
Text HLabel 9750 1550 0    50   Input ~ 0
EMITTER
Text HLabel 9750 2200 0    50   Input ~ 0
EMITTER
Text HLabel 9750 2850 0    50   Input ~ 0
EMITTER
Text HLabel 9750 3500 0    50   Input ~ 0
EMITTER
Wire Wire Line
	2000 4950 2550 4950
Wire Wire Line
	2000 5050 2550 5050
Wire Wire Line
	2000 5150 2550 5150
Wire Wire Line
	2000 5250 2550 5250
Wire Wire Line
	1000 5050 800  5050
Wire Wire Line
	800  5050 800  5700
Wire Wire Line
	3050 5000 3200 5000
Wire Wire Line
	800  4550 800  4950
Wire Wire Line
	3050 4500 3050 4900
Wire Wire Line
	5050 4500 5200 4500
Text Label 5050 4500 3    50   ~ 0
TG_3_BASE
Text Label 5050 5650 1    50   ~ 0
TG_3_COLLECTOR
Wire Wire Line
	5050 5650 5050 5000
Wire Wire Line
	5050 5000 5200 5000
Wire Wire Line
	5050 4500 5050 4900
Wire Wire Line
	7100 4500 7250 4500
Text Label 7100 4500 3    50   ~ 0
TG_4_BASE
Text Label 7100 5650 1    50   ~ 0
TG_4_COLLECTOR
Wire Wire Line
	7100 5650 7100 5000
Wire Wire Line
	7100 5000 7250 5000
Wire Wire Line
	7100 4500 7100 4900
Wire Wire Line
	9350 4500 9500 4500
Text Label 9350 4500 3    50   ~ 0
TG_5_BASE
Text Label 9350 5650 1    50   ~ 0
TG_5_COLLECTOR
Wire Wire Line
	9350 5650 9350 5000
Wire Wire Line
	9350 5000 9500 5000
Wire Wire Line
	9350 4500 9350 4900
Wire Wire Line
	10150 1550 10700 1550
Wire Wire Line
	10150 2200 10700 2200
Wire Wire Line
	10150 2850 10650 2850
Wire Wire Line
	10150 3500 10700 3500
Wire Wire Line
	7950 3500 8450 3500
Wire Wire Line
	7950 2850 8500 2850
Wire Wire Line
	7950 2200 8450 2200
Wire Wire Line
	7950 1550 8450 1550
Wire Wire Line
	5950 1500 6400 1500
Wire Wire Line
	5950 2150 6450 2150
Wire Wire Line
	5950 2800 6450 2800
Wire Wire Line
	5950 3450 6450 3450
Wire Wire Line
	4050 1500 4550 1500
Wire Wire Line
	4050 2150 4550 2150
Wire Wire Line
	4050 2800 4550 2800
Wire Wire Line
	4050 3450 4550 3450
Text HLabel 4850 6750 0    50   Input ~ 0
COLLECTOR
Wire Wire Line
	5850 6850 6600 6850
Wire Wire Line
	5850 6950 6600 6950
Wire Wire Line
	5850 6750 6600 6750
Wire Wire Line
	5850 6650 6600 6650
Wire Wire Line
	5700 6150 6700 6150
Text HLabel 4050 6450 3    50   Input ~ 0
TRANSISTOR_GROUP_SELECTION_0
Text HLabel 4150 6450 3    50   Input ~ 0
TRANSISTOR_GROUP_SELECTION_1
Text HLabel 4250 6450 3    50   Input ~ 0
TRANSISTOR_GROUP_SELECTION_2
Wire Wire Line
	4250 6450 4350 6450
Wire Wire Line
	4350 6550 4850 6550
Wire Wire Line
	4350 6450 4350 6550
Wire Wire Line
	4850 6450 4450 6450
Wire Wire Line
	4450 6450 4450 6400
Wire Wire Line
	4450 6400 4150 6400
Wire Wire Line
	4150 6400 4150 6450
Wire Wire Line
	4050 6450 4050 6350
Wire Wire Line
	4050 6350 4850 6350
Text HLabel 1200 6400 3    50   Input ~ 0
TRANSISTOR_GROUP_SELECTION_0
Text HLabel 1300 6400 3    50   Input ~ 0
TRANSISTOR_GROUP_SELECTION_1
Text HLabel 1400 6400 3    50   Input ~ 0
TRANSISTOR_GROUP_SELECTION_2
Wire Wire Line
	1400 6400 1500 6400
Wire Wire Line
	1500 6500 2000 6500
Wire Wire Line
	1500 6400 1500 6500
Wire Wire Line
	1600 6350 1300 6350
Wire Wire Line
	1300 6350 1300 6400
Wire Wire Line
	1200 6400 1200 6300
Wire Wire Line
	1200 6300 2000 6300
Wire Wire Line
	1600 6350 1600 6400
Wire Wire Line
	1600 6400 2000 6400
Text HLabel 550  4450 3    50   Input ~ 0
TRANSISTOR_SELECTION_0
Text HLabel 650  4450 3    50   Input ~ 0
TRANSISTOR_SELECTION_1
Wire Wire Line
	650  4450 650  4350
Wire Wire Line
	650  4350 1000 4350
Wire Wire Line
	550  4450 550  4250
Wire Wire Line
	550  4250 1000 4250
Text HLabel 2800 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_0
Text HLabel 2900 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_1
Wire Wire Line
	2900 4400 2900 4300
Wire Wire Line
	2900 4300 3200 4300
Wire Wire Line
	2800 4400 2800 4200
Wire Wire Line
	2800 4200 3200 4200
Text HLabel 4800 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_0
Text HLabel 4900 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_1
Wire Wire Line
	4900 4400 4900 4300
Wire Wire Line
	4900 4300 5200 4300
Wire Wire Line
	4800 4400 4800 4200
Wire Wire Line
	4800 4200 5200 4200
Text HLabel 6850 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_0
Text HLabel 6950 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_1
Wire Wire Line
	6950 4400 6950 4300
Wire Wire Line
	6950 4300 7250 4300
Wire Wire Line
	6850 4400 6850 4200
Wire Wire Line
	6850 4200 7250 4200
Text HLabel 7550 1550 0    50   Input ~ 0
EMITTER
Text HLabel 7550 2200 0    50   Input ~ 0
EMITTER
Text HLabel 7550 2850 0    50   Input ~ 0
EMITTER
Text HLabel 7550 3500 0    50   Input ~ 0
EMITTER
Text HLabel 9100 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_0
Text HLabel 9200 4400 3    50   Input ~ 0
TRANSISTOR_SELECTION_1
Wire Wire Line
	9200 4400 9200 4300
Wire Wire Line
	9200 4300 9500 4300
Wire Wire Line
	9100 4400 9100 4200
Wire Wire Line
	9100 4200 9500 4200
$EndSCHEMATC
