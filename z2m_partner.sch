EESchema Schematic File Version 4
LIBS:z2m_partner-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L typeC:HRO-TYPE-C-31-M-12 USB1
U 1 1 5DB450C6
P 1350 3050
F 0 "USB1" H 1183 3847 60  0000 C CNN
F 1 "HRO-TYPE-C-31-M-12" H 1183 3741 60  0000 C CNN
F 2 "TypeC:HRO-TYPE-C-31-M-12-HandSoldering" H 1350 3050 60  0001 C CNN
F 3 "" H 1350 3050 60  0001 C CNN
	1    1350 3050
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:E18-MS1-PCB U3
U 1 1 5DB4AB7D
P 5650 3100
F 0 "U3" H 5300 4000 50  0000 C CNN
F 1 "E18-MS1-PCB" H 5300 3900 50  0000 C CNN
F 2 "z2m_partner:E18-MS1PA1-IPX" H 5450 3300 50  0001 C CNN
F 3 "http://www.cdebyte.com/en/downpdf.aspx?id=122" H 5450 3300 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP1117-33 U6
U 1 1 5DB4C6BD
P 9550 5550
F 0 "U6" H 9550 5792 50  0000 C CNN
F 1 "AP1117-33" H 9550 5701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9550 5750 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 9650 5300 50  0001 C CNN
	1    9550 5550
	1    0    0    -1  
$EndComp
Text Notes 1100 7650 0    50   ~ 0
Option 1: USB serial => ESP serial\n          E18 serial => NC\nOption 2: USB serial => E18 serial\n          ESP serial => NC\nOption 3: ESP serial => E18 serial\n          USB serial => ESP sw serial (debug)\nOption 4: ESP serial => E18 serial\n          USB serial => NC\n\n1\0  0       1\n0   opt1    opt2\n1   opt3    opt4
$Comp
L Interface_USB:CH340G U1
U 1 1 5DB4ECF9
P 2750 3100
F 0 "U1" H 3050 3750 50  0000 C CNN
F 1 "CH340G" H 2950 3650 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2800 2550 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 2400 3900 50  0001 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4052B U2
U 1 1 5DB52FF8
P 4100 6550
F 0 "U2" H 3750 7300 50  0000 C CNN
F 1 "CD4052B" H 3850 7200 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4250 5800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 4080 6750 50  0001 C CNN
	1    4100 6550
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G66 U4
U 1 1 5DB5AACD
P 5850 6100
F 0 "U4" H 5750 6400 50  0000 C CNN
F 1 "74LVC1G66" H 5650 6300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 5850 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5850 6100 50  0001 C CNN
	1    5850 6100
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G66 U5
U 1 1 5DB5B509
P 5850 6900
F 0 "U5" H 6000 7200 50  0000 C CNN
F 1 "74LVC1G66" H 6150 7100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 5850 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5850 6900 50  0001 C CNN
	1    5850 6900
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DIP_x02 SW1
U 1 1 5DB609BE
P 1550 6150
F 0 "SW1" H 1550 6517 50  0000 C CNN
F 1 "SW_DIP_x02" H 1550 6426 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx02_Slide_Copal_CHS-02B_W7.62mm_P1.27mm" H 1550 6150 50  0001 C CNN
F 3 "~" H 1550 6150 50  0001 C CNN
	1    1550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2700 3450 2700
Text Label 3450 2700 2    50   ~ 0
USB_TX
Wire Wire Line
	3150 2800 3450 2800
Text Label 3450 2800 2    50   ~ 0
USB_RX
$Comp
L power:GND #PWR01
U 1 1 5DB73C4D
P 1150 6350
F 0 "#PWR01" H 1150 6100 50  0001 C CNN
F 1 "GND" H 1155 6177 50  0000 C CNN
F 2 "" H 1150 6350 50  0001 C CNN
F 3 "" H 1150 6350 50  0001 C CNN
	1    1150 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6050 1150 6050
Wire Wire Line
	1150 6050 1150 6150
Wire Wire Line
	1250 6150 1150 6150
Connection ~ 1150 6150
Wire Wire Line
	1150 6150 1150 6350
$Comp
L power:+3V3 #PWR05
U 1 1 5DB74CAA
P 2400 5650
F 0 "#PWR05" H 2400 5500 50  0001 C CNN
F 1 "+3V3" H 2415 5823 50  0000 C CNN
F 2 "" H 2400 5650 50  0001 C CNN
F 3 "" H 2400 5650 50  0001 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DB76E88
P 2000 5850
F 0 "R3" H 2070 5896 50  0000 L CNN
F 1 "10k" H 2070 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 5850 50  0001 C CNN
F 3 "~" H 2000 5850 50  0001 C CNN
	1    2000 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DB77A58
P 2250 5850
F 0 "R4" H 2320 5896 50  0000 L CNN
F 1 "10k" H 2320 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2180 5850 50  0001 C CNN
F 3 "~" H 2250 5850 50  0001 C CNN
	1    2250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6050 2000 6050
Wire Wire Line
	2000 6050 2000 6000
Wire Wire Line
	1850 6150 2250 6150
Wire Wire Line
	2000 5700 2000 5650
Wire Wire Line
	2000 5650 2250 5650
Wire Wire Line
	2250 5700 2250 5650
Connection ~ 2250 5650
Wire Wire Line
	2250 5650 2400 5650
Wire Wire Line
	2250 6150 2250 6000
Wire Wire Line
	2000 6050 2650 6050
Connection ~ 2000 6050
Wire Wire Line
	2250 6150 2650 6150
Connection ~ 2250 6150
Text Label 2650 6050 2    50   ~ 0
SEL0
Text Label 2650 6150 2    50   ~ 0
SEL1
Text Label 6450 6750 2    50   ~ 0
SEL1
Text Label 5250 6250 0    50   ~ 0
SEL1
Wire Wire Line
	5600 6900 5250 6900
Text Label 5250 6100 0    50   ~ 0
E18_TX
Text Label 6450 6100 2    50   ~ 0
ESP_RX
Wire Wire Line
	6100 6100 6450 6100
Wire Wire Line
	5250 6100 5600 6100
Wire Wire Line
	5250 6250 5600 6250
Wire Wire Line
	6450 6900 6100 6900
Wire Wire Line
	6450 6750 6100 6750
Text Label 6450 6900 2    50   ~ 0
ESP_TX
Text Label 5250 6900 0    50   ~ 0
E18_RX
Wire Wire Line
	3600 6050 3250 6050
Wire Wire Line
	3600 6150 3250 6150
Wire Wire Line
	3600 6350 3250 6350
Wire Wire Line
	3600 6850 3250 6850
Text Label 3250 6350 0    50   ~ 0
USB_TX
Text Label 3250 6850 0    50   ~ 0
USB_RX
Wire Wire Line
	4600 6250 4900 6250
Wire Wire Line
	4600 6350 4900 6350
Wire Wire Line
	4600 6750 4900 6750
Wire Wire Line
	4600 6850 4900 6850
Wire Wire Line
	4600 6950 4900 6950
NoConn ~ 4600 6550
NoConn ~ 4600 7050
Text Label 4900 6250 2    50   ~ 0
ESP_RX
Text Label 4900 6750 2    50   ~ 0
ESP_TX
Text Label 3250 6050 0    50   ~ 0
SEL0
Text Label 3250 6150 0    50   ~ 0
SEL1
Text Label 4900 6350 2    50   ~ 0
E18_RX
Text Label 4900 6850 2    50   ~ 0
E18_TX
Wire Wire Line
	4600 6450 4900 6450
Text Label 4900 6450 2    50   ~ 0
DBG_RX
Text Label 4900 6950 2    50   ~ 0
DBG_TX
$Comp
L power:GND #PWR014
U 1 1 5DBB3BA3
P 5900 6500
F 0 "#PWR014" H 5900 6250 50  0001 C CNN
F 1 "GND" H 5905 6327 50  0000 C CNN
F 2 "" H 5900 6500 50  0001 C CNN
F 3 "" H 5900 6500 50  0001 C CNN
	1    5900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6250 5900 6450
Wire Wire Line
	5800 6750 5800 6450
Wire Wire Line
	5800 6450 5900 6450
Connection ~ 5900 6450
Wire Wire Line
	5900 6450 5900 6500
$Comp
L power:+3V3 #PWR013
U 1 1 5DBB73A1
P 5900 5650
F 0 "#PWR013" H 5900 5500 50  0001 C CNN
F 1 "+3V3" H 5915 5823 50  0000 C CNN
F 2 "" H 5900 5650 50  0001 C CNN
F 3 "" H 5900 5650 50  0001 C CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5DBB7FD9
P 4200 5650
F 0 "#PWR09" H 4200 5500 50  0001 C CNN
F 1 "+3V3" H 4215 5823 50  0000 C CNN
F 2 "" H 4200 5650 50  0001 C CNN
F 3 "" H 4200 5650 50  0001 C CNN
	1    4200 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5650 5900 5950
$Comp
L power:+3V3 #PWR012
U 1 1 5DBB8BD0
P 5800 7300
F 0 "#PWR012" H 5800 7150 50  0001 C CNN
F 1 "+3V3" H 5815 7473 50  0000 C CNN
F 2 "" H 5800 7300 50  0001 C CNN
F 3 "" H 5800 7300 50  0001 C CNN
	1    5800 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 7300 5800 7050
$Comp
L power:GND #PWR08
U 1 1 5DBBA3F1
P 4100 7300
F 0 "#PWR08" H 4100 7050 50  0001 C CNN
F 1 "GND" H 4105 7127 50  0000 C CNN
F 2 "" H 4100 7300 50  0001 C CNN
F 3 "" H 4100 7300 50  0001 C CNN
	1    4100 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7250 4100 7300
Wire Wire Line
	4200 5850 4200 5650
Wire Wire Line
	4000 7250 4100 7250
Connection ~ 4100 7250
Wire Wire Line
	3600 6950 3600 7250
Wire Wire Line
	3600 7250 4000 7250
Connection ~ 4000 7250
Wire Notes Line
	500  5050 11150 5050
Text Notes 550  5250 0    118  ~ 0
Serial Control Logic
Wire Notes Line
	6950 7800 6950 5050
Text Notes 7000 5250 0    118  ~ 0
Power
$Comp
L power:GND #PWR025
U 1 1 5DBC79E6
P 9550 6000
F 0 "#PWR025" H 9550 5750 50  0001 C CNN
F 1 "GND" H 9555 5827 50  0000 C CNN
F 2 "" H 9550 6000 50  0001 C CNN
F 3 "" H 9550 6000 50  0001 C CNN
	1    9550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5850 9550 5950
Wire Wire Line
	9250 5550 8800 5550
Wire Wire Line
	9850 5550 9950 5550
$Comp
L power:+3V3 #PWR028
U 1 1 5DBCA3BE
P 10550 5550
F 0 "#PWR028" H 10550 5400 50  0001 C CNN
F 1 "+3V3" H 10565 5723 50  0000 C CNN
F 2 "" H 10550 5550 50  0001 C CNN
F 3 "" H 10550 5550 50  0001 C CNN
	1    10550 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5DBCAD73
P 8650 5550
F 0 "#PWR024" H 8650 5400 50  0001 C CNN
F 1 "+5V" H 8665 5723 50  0000 C CNN
F 2 "" H 8650 5550 50  0001 C CNN
F 3 "" H 8650 5550 50  0001 C CNN
	1    8650 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5DBCBD4E
P 8800 5650
F 0 "C5" H 8891 5696 50  0000 L CNN
F 1 "10uF" H 8891 5605 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 8800 5650 50  0001 C CNN
F 3 "~" H 8800 5650 50  0001 C CNN
	1    8800 5650
	1    0    0    -1  
$EndComp
Connection ~ 8800 5550
Wire Wire Line
	8800 5550 8650 5550
$Comp
L Device:CP1_Small C6
U 1 1 5DBCCA91
P 9950 5650
F 0 "C6" H 10041 5696 50  0000 L CNN
F 1 "10uF" H 10041 5605 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 9950 5650 50  0001 C CNN
F 3 "~" H 9950 5650 50  0001 C CNN
	1    9950 5650
	1    0    0    -1  
$EndComp
Connection ~ 9950 5550
Wire Wire Line
	9950 5550 10450 5550
$Comp
L Device:C C7
U 1 1 5DBCD1B2
P 10450 5700
F 0 "C7" H 10565 5746 50  0000 L CNN
F 1 "100nF" H 10565 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10488 5550 50  0001 C CNN
F 3 "~" H 10450 5700 50  0001 C CNN
	1    10450 5700
	1    0    0    -1  
$EndComp
Connection ~ 10450 5550
Wire Wire Line
	10450 5550 10550 5550
Wire Wire Line
	8800 5750 8800 5950
Wire Wire Line
	8800 5950 9550 5950
Connection ~ 9550 5950
Wire Wire Line
	9550 5950 9550 6000
Wire Wire Line
	10450 5850 10450 5950
Wire Wire Line
	10450 5950 9950 5950
Wire Wire Line
	9950 5750 9950 5950
Connection ~ 9950 5950
Wire Wire Line
	9950 5950 9550 5950
$Comp
L power:GND #PWR07
U 1 1 5DBD6560
P 2750 4050
F 0 "#PWR07" H 2750 3800 50  0001 C CNN
F 1 "GND" H 2755 3877 50  0000 C CNN
F 2 "" H 2750 4050 50  0001 C CNN
F 3 "" H 2750 4050 50  0001 C CNN
	1    2750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3700 2750 4050
NoConn ~ 3150 3500
NoConn ~ 3150 3400
NoConn ~ 3150 3300
NoConn ~ 3150 3100
NoConn ~ 3150 3000
NoConn ~ 3150 3200
$Comp
L power:+3V3 #PWR06
U 1 1 5DBDCD1D
P 2650 2300
F 0 "#PWR06" H 2650 2150 50  0001 C CNN
F 1 "+3V3" H 2665 2473 50  0000 C CNN
F 2 "" H 2650 2300 50  0001 C CNN
F 3 "" H 2650 2300 50  0001 C CNN
	1    2650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2300 2650 2400
Wire Wire Line
	2750 2500 2650 2500
Connection ~ 2650 2500
$Comp
L Device:C C3
U 1 1 5DBDFFD4
P 2300 2400
F 0 "C3" V 2048 2400 50  0000 C CNN
F 1 "100nF" V 2139 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2338 2250 50  0001 C CNN
F 3 "~" H 2300 2400 50  0001 C CNN
	1    2300 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DBE2FED
P 2000 2300
F 0 "#PWR04" H 2000 2050 50  0001 C CNN
F 1 "GND" H 2005 2127 50  0000 C CNN
F 2 "" H 2000 2300 50  0001 C CNN
F 3 "" H 2000 2300 50  0001 C CNN
	1    2000 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 2400 2450 2400
Connection ~ 2650 2400
Wire Wire Line
	2650 2400 2650 2500
Wire Wire Line
	2150 2400 2000 2400
Wire Wire Line
	2000 2400 2000 2300
NoConn ~ 2350 2800
$Comp
L Device:Crystal_Small Y1
U 1 1 5DBEA05E
P 2250 3400
F 0 "Y1" V 2250 3500 50  0000 L CNN
F 1 "12MHz" V 2250 3100 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 2250 3400 50  0001 C CNN
F 3 "~" H 2250 3400 50  0001 C CNN
	1    2250 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DBEB8F9
P 2050 3300
F 0 "C1" V 2000 3200 50  0000 C CNN
F 1 "22pF" V 2000 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 3300 50  0001 C CNN
F 3 "~" H 2050 3300 50  0001 C CNN
	1    2050 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DBEC0B5
P 2050 3500
F 0 "C2" V 2100 3400 50  0000 C CNN
F 1 "22pF" V 2100 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 3500 50  0001 C CNN
F 3 "~" H 2050 3500 50  0001 C CNN
	1    2050 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 3300 2250 3300
Connection ~ 2250 3300
Wire Wire Line
	2250 3300 2150 3300
Wire Wire Line
	2150 3500 2250 3500
Connection ~ 2250 3500
Wire Wire Line
	2250 3500 2350 3500
Wire Wire Line
	1950 3300 1950 3500
Wire Wire Line
	1950 3500 1950 3700
Wire Wire Line
	1950 3700 2750 3700
Connection ~ 1950 3500
Connection ~ 2750 3700
Wire Wire Line
	1450 3000 1550 3000
Wire Wire Line
	1450 3100 1650 3100
Wire Wire Line
	1450 3200 1550 3200
Wire Wire Line
	1550 3200 1550 3000
Connection ~ 1550 3000
Wire Wire Line
	1550 3000 2350 3000
Wire Wire Line
	1450 2900 1650 2900
Wire Wire Line
	1650 2900 1650 3100
Connection ~ 1650 3100
Wire Wire Line
	1650 3100 2350 3100
Wire Wire Line
	1450 2500 1900 2500
Wire Wire Line
	2000 2500 2000 2400
Connection ~ 2000 2400
Wire Wire Line
	1450 3600 1450 3700
Wire Wire Line
	1450 3700 1900 3700
Connection ~ 1450 3700
Connection ~ 1950 3700
NoConn ~ 1450 3300
NoConn ~ 1450 2700
$Comp
L power:VBUS #PWR03
U 1 1 5DC06583
P 1550 3500
F 0 "#PWR03" H 1550 3350 50  0001 C CNN
F 1 "VBUS" V 1500 3400 50  0000 L CNN
F 2 "" H 1550 3500 50  0001 C CNN
F 3 "" H 1550 3500 50  0001 C CNN
	1    1550 3500
	0    1    1    0   
$EndComp
$Comp
L power:VBUS #PWR02
U 1 1 5DC073DE
P 1550 2600
F 0 "#PWR02" H 1550 2450 50  0001 C CNN
F 1 "VBUS" V 1500 2500 50  0000 L CNN
F 2 "" H 1550 2600 50  0001 C CNN
F 3 "" H 1550 2600 50  0001 C CNN
	1    1550 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 2600 1450 2600
Wire Wire Line
	1550 3500 1450 3500
$Comp
L Device:R_Small R2
U 1 1 5DC0C777
P 1650 3400
F 0 "R2" V 1600 3250 50  0000 C CNN
F 1 "5.1k" V 1600 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 3400 50  0001 C CNN
F 3 "~" H 1650 3400 50  0001 C CNN
	1    1650 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5DC0D640
P 1650 2800
F 0 "R1" V 1600 2650 50  0000 C CNN
F 1 "5.1k" V 1600 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 2800 50  0001 C CNN
F 3 "~" H 1650 2800 50  0001 C CNN
	1    1650 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 2800 1450 2800
Wire Wire Line
	1450 3400 1550 3400
Wire Wire Line
	1750 3400 1900 3400
Wire Wire Line
	1900 3400 1900 3700
Connection ~ 1900 3700
Wire Wire Line
	1900 3700 1950 3700
Wire Wire Line
	1750 2800 1900 2800
Wire Wire Line
	1900 2800 1900 2500
Connection ~ 1900 2500
Wire Wire Line
	1900 2500 2000 2500
$Comp
L power:VBUS #PWR017
U 1 1 5DC19139
P 7100 5550
F 0 "#PWR017" H 7100 5400 50  0001 C CNN
F 1 "VBUS" H 7115 5723 50  0000 C CNN
F 2 "" H 7100 5550 50  0001 C CNN
F 3 "" H 7100 5550 50  0001 C CNN
	1    7100 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5DC1A21C
P 7550 5550
F 0 "#PWR018" H 7550 5400 50  0001 C CNN
F 1 "+5V" H 7565 5723 50  0000 C CNN
F 2 "" H 7550 5550 50  0001 C CNN
F 3 "" H 7550 5550 50  0001 C CNN
	1    7550 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 5DC1B004
P 7350 5750
F 0 "F1" V 7145 5750 50  0000 C CNN
F 1 "MF-MSMF050" V 7236 5750 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 7400 5550 50  0001 L CNN
F 3 "~" H 7350 5750 50  0001 C CNN
	1    7350 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 5550 7100 5750
Wire Wire Line
	7100 5750 7250 5750
Wire Wire Line
	7450 5750 7550 5750
Wire Wire Line
	7550 5750 7550 5550
$Comp
L power:+5V #PWR021
U 1 1 5DC2716E
P 7800 5550
F 0 "#PWR021" H 7800 5400 50  0001 C CNN
F 1 "+5V" H 7815 5723 50  0000 C CNN
F 2 "" H 7800 5550 50  0001 C CNN
F 3 "" H 7800 5550 50  0001 C CNN
	1    7800 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5DC279D0
P 8400 5950
F 0 "#PWR023" H 8400 5700 50  0001 C CNN
F 1 "GND" H 8405 5777 50  0000 C CNN
F 2 "" H 8400 5950 50  0001 C CNN
F 3 "" H 8400 5950 50  0001 C CNN
	1    8400 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5DC283A4
P 7900 5750
F 0 "R9" V 7704 5750 50  0000 C CNN
F 1 "1k" V 7795 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7900 5750 50  0001 C CNN
F 3 "~" H 7900 5750 50  0001 C CNN
	1    7900 5750
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5DC2A6A4
P 8200 5750
F 0 "D1" H 8193 5495 50  0000 C CNN
F 1 "LED" H 8193 5586 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8200 5750 50  0001 C CNN
F 3 "~" H 8200 5750 50  0001 C CNN
	1    8200 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 5550 7800 5750
Wire Wire Line
	8000 5750 8050 5750
Wire Wire Line
	8350 5750 8400 5750
Wire Wire Line
	8400 5750 8400 5950
Wire Notes Line
	3850 500  3850 5050
Text Notes 550  1900 0    118  ~ 0
USB Serial
Text Notes 7050 6950 0    197  ~ 0
z2m partner
Text Notes 550  1250 0    118  ~ 0
https://bbs.iobroker.cn/\n\nDesigned By smarthomefans\nSchumyHao
$Comp
L power:+3V3 #PWR010
U 1 1 5DC5A006
P 5650 2000
F 0 "#PWR010" H 5650 1850 50  0001 C CNN
F 1 "+3V3" H 5665 2173 50  0000 C CNN
F 2 "" H 5650 2000 50  0001 C CNN
F 3 "" H 5650 2000 50  0001 C CNN
	1    5650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2300 5650 2000
Wire Wire Line
	5150 2900 4700 2900
Text Label 4700 2900 0    50   ~ 0
E18_RX
Wire Wire Line
	5150 3000 4700 3000
Text Label 4700 3000 0    50   ~ 0
E18_TX
$Comp
L power:GND #PWR011
U 1 1 5DC6DF0E
P 5650 4050
F 0 "#PWR011" H 5650 3800 50  0001 C CNN
F 1 "GND" H 5655 3877 50  0000 C CNN
F 2 "" H 5650 4050 50  0001 C CNN
F 3 "" H 5650 4050 50  0001 C CNN
	1    5650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3800 5650 4050
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5DC79955
P 7000 3600
F 0 "J1" H 7080 3642 50  0000 L CNN
F 1 "Conn_01x05" H 7080 3551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7000 3600 50  0001 C CNN
F 3 "~" H 7000 3600 50  0001 C CNN
	1    7000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3400 6500 3400
Wire Wire Line
	6800 3700 6500 3700
Wire Wire Line
	6800 3800 6500 3800
$Comp
L power:GND #PWR015
U 1 1 5DC91FB0
P 6500 3400
F 0 "#PWR015" H 6500 3150 50  0001 C CNN
F 1 "GND" H 6500 3250 50  0000 C CNN
F 2 "" H 6500 3400 50  0001 C CNN
F 3 "" H 6500 3400 50  0001 C CNN
	1    6500 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 3500 6800 3500
Wire Wire Line
	6150 3600 6350 3600
Wire Wire Line
	5150 2500 4700 2500
Text Label 4700 2500 0    50   ~ 0
E18_RST
Text Label 6500 3700 0    50   ~ 0
E18_RST
$Comp
L power:+3V3 #PWR016
U 1 1 5DCA4BE7
P 6500 3800
F 0 "#PWR016" H 6500 3650 50  0001 C CNN
F 1 "+3V3" V 6515 3928 50  0000 L CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0001 C CNN
	1    6500 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3400 6500 3400
Connection ~ 6500 3400
NoConn ~ 5150 2700
NoConn ~ 5150 2800
NoConn ~ 5150 3100
NoConn ~ 5150 3200
NoConn ~ 5150 3300
NoConn ~ 5150 3400
NoConn ~ 6150 2500
NoConn ~ 6150 2600
NoConn ~ 6150 2700
NoConn ~ 6150 2800
NoConn ~ 6150 2900
NoConn ~ 6150 3000
NoConn ~ 6150 3100
NoConn ~ 6150 3200
Text Label 6500 3500 0    50   ~ 0
E18_P21
Text Label 6500 3600 0    50   ~ 0
E18_P22
$Comp
L Device:R_Small R5
U 1 1 5DD3E3FA
P 6350 3150
F 0 "R5" V 6300 3250 50  0000 L CNN
F 1 "1k" V 6400 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6350 3150 50  0001 C CNN
F 3 "~" H 6350 3150 50  0001 C CNN
	1    6350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3250 6350 3600
Connection ~ 6350 3600
Wire Wire Line
	6350 3600 6800 3600
Wire Wire Line
	6350 3050 6350 2300
Wire Wire Line
	6350 2300 5650 2300
Connection ~ 5650 2300
Wire Notes Line
	500  1500 11200 1500
Text Notes 3950 1900 0    118  ~ 0
ESP&Zigbee
$Comp
L Switch:SW_Push SW2
U 1 1 5DD6D308
P 7750 3100
F 0 "SW2" V 7704 3248 50  0000 L CNN
F 1 "SW_Push" V 7795 3248 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 7750 3300 50  0001 C CNN
F 3 "~" H 7750 3300 50  0001 C CNN
	1    7750 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5DD6E90D
P 7750 3500
F 0 "#PWR020" H 7750 3250 50  0001 C CNN
F 1 "GND" H 7755 3327 50  0000 C CNN
F 2 "" H 7750 3500 50  0001 C CNN
F 3 "" H 7750 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5DD74C4B
P 7750 2550
F 0 "R7" V 7700 2650 50  0000 L CNN
F 1 "10k" V 7800 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7750 2550 50  0001 C CNN
F 3 "~" H 7750 2550 50  0001 C CNN
	1    7750 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR019
U 1 1 5DD750E9
P 7750 2000
F 0 "#PWR019" H 7750 1850 50  0001 C CNN
F 1 "+3V3" H 7765 2173 50  0000 C CNN
F 2 "" H 7750 2000 50  0001 C CNN
F 3 "" H 7750 2000 50  0001 C CNN
	1    7750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2000 7750 2450
Wire Wire Line
	7750 2650 7750 2700
Wire Wire Line
	7750 3300 7750 3500
$Comp
L Device:R_Small R6
U 1 1 5DD87AC3
P 7600 2700
F 0 "R6" V 7400 2650 50  0000 C CNN
F 1 "0" V 7500 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7600 2700 50  0001 C CNN
F 3 "~" H 7600 2700 50  0001 C CNN
	1    7600 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5DD882B8
P 7900 2700
F 0 "R8" V 7700 2750 50  0000 C CNN
F 1 "0" V 7800 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7900 2700 50  0001 C CNN
F 3 "~" H 7900 2700 50  0001 C CNN
	1    7900 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 2700 7750 2700
Connection ~ 7750 2700
Wire Wire Line
	7800 2700 7750 2700
Text Label 7200 2700 0    50   ~ 0
E18_RST
Text Label 8300 2700 2    50   ~ 0
ESP_RST
Wire Wire Line
	7750 2700 7750 2900
Wire Wire Line
	7500 2700 7200 2700
$Comp
L RF_Module:ESP-WROOM-02 U7
U 1 1 5DDE6682
P 9600 2900
F 0 "U7" H 9200 3600 50  0000 C CNN
F 1 "ESP-WROOM-02" H 9450 3500 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 10200 2350 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 9650 4400 50  0001 C CNN
	1    9600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR026
U 1 1 5DDEB0CA
P 9600 2000
F 0 "#PWR026" H 9600 1850 50  0001 C CNN
F 1 "+3V3" H 9615 2173 50  0000 C CNN
F 2 "" H 9600 2000 50  0001 C CNN
F 3 "" H 9600 2000 50  0001 C CNN
	1    9600 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5DDEB7DD
P 10200 2250
F 0 "R11" H 10259 2296 50  0000 L CNN
F 1 "10k" H 10259 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10200 2250 50  0001 C CNN
F 3 "~" H 10200 2250 50  0001 C CNN
	1    10200 2250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5DDEBE54
P 10600 2500
F 0 "SW3" H 10600 2785 50  0000 C CNN
F 1 "SW_Push" H 10600 2694 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 10600 2700 50  0001 C CNN
F 3 "~" H 10600 2700 50  0001 C CNN
	1    10600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5DDEC68B
P 10900 2500
F 0 "#PWR029" H 10900 2250 50  0001 C CNN
F 1 "GND" V 10905 2372 50  0000 R CNN
F 2 "" H 10900 2500 50  0001 C CNN
F 3 "" H 10900 2500 50  0001 C CNN
	1    10900 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 2500 10200 2500
Wire Wire Line
	10800 2500 10900 2500
Wire Wire Line
	10200 2350 10200 2500
Connection ~ 10200 2500
Wire Wire Line
	10200 2500 10400 2500
Wire Wire Line
	10200 2150 9600 2150
Wire Wire Line
	9600 2150 9600 2000
Wire Wire Line
	9600 2300 9600 2150
Connection ~ 9600 2150
Wire Wire Line
	10100 2600 10500 2600
Wire Wire Line
	10100 2700 10500 2700
Wire Wire Line
	10100 2900 10500 2900
Wire Wire Line
	10100 3000 10500 3000
Wire Wire Line
	10100 3100 10500 3100
Wire Wire Line
	10100 3300 10500 3300
$Comp
L Device:R_Small R12
U 1 1 5DE468BA
P 10650 3750
F 0 "R12" H 10709 3796 50  0000 L CNN
F 1 "10k" H 10709 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10650 3750 50  0001 C CNN
F 3 "~" H 10650 3750 50  0001 C CNN
	1    10650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 3200 10650 3650
Wire Wire Line
	10100 3200 10650 3200
$Comp
L power:GND #PWR027
U 1 1 5DE4E726
P 9600 4050
F 0 "#PWR027" H 9600 3800 50  0001 C CNN
F 1 "GND" H 9605 3877 50  0000 C CNN
F 2 "" H 9600 4050 50  0001 C CNN
F 3 "" H 9600 4050 50  0001 C CNN
	1    9600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3500 9600 3900
Wire Wire Line
	10650 3850 10650 3900
Wire Wire Line
	10650 3900 9600 3900
Connection ~ 9600 3900
Wire Wire Line
	9600 3900 9600 4050
Text Label 10500 2600 2    50   ~ 0
DBG_TX
Wire Wire Line
	9100 3000 8750 3000
Wire Wire Line
	9100 3100 8750 3100
Text Label 8750 3000 0    50   ~ 0
ESP_RX
Text Label 8750 3100 0    50   ~ 0
ESP_TX
Wire Wire Line
	9100 2600 8750 2600
Text Label 8750 2600 0    50   ~ 0
ESP_RST
$Comp
L Device:R_Small R10
U 1 1 5DE7E5A1
P 9000 2400
F 0 "R10" H 8800 2500 50  0000 L CNN
F 1 "10k" H 8800 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9000 2400 50  0001 C CNN
F 3 "~" H 9000 2400 50  0001 C CNN
	1    9000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2500 9000 2500
Wire Wire Line
	9000 2300 9000 2150
Wire Wire Line
	9000 2150 9600 2150
$Comp
L Device:C_Small C4
U 1 1 5DE8F487
P 8600 2500
F 0 "C4" V 8371 2500 50  0000 C CNN
F 1 "100nF" V 8462 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8600 2500 50  0001 C CNN
F 3 "~" H 8600 2500 50  0001 C CNN
	1    8600 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5DE909E0
P 8350 2500
F 0 "#PWR022" H 8350 2250 50  0001 C CNN
F 1 "GND" V 8355 2372 50  0000 R CNN
F 2 "" H 8350 2500 50  0001 C CNN
F 3 "" H 8350 2500 50  0001 C CNN
	1    8350 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 2500 8500 2500
Wire Wire Line
	8700 2500 9000 2500
Connection ~ 9000 2500
Text Label 10500 2700 2    50   ~ 0
DBG_RX
Text Label 10500 2900 2    50   ~ 0
E18_RST
Text Label 10500 3000 2    50   ~ 0
E18_P22
Text Label 10500 3100 2    50   ~ 0
E18_P21
Text Label 10500 3300 2    50   ~ 0
E18_P21
NoConn ~ 9100 2800
NoConn ~ 10100 2800
Wire Wire Line
	8000 2700 8300 2700
$EndSCHEMATC
