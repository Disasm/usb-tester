EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5E458FD1
P 1550 3750
F 0 "J1" H 1600 4167 50  0000 C CNN
F 1 "Target" H 1600 4076 50  0000 C CNN
F 2 "unsorted:BH-10-Edge" H 1550 3750 50  0001 C CNN
F 3 "~" H 1550 3750 50  0001 C CNN
	1    1550 3750
	1    0    0    -1  
$EndComp
Text Label 1350 3750 2    50   ~ 0
USB_D-
Text Label 1350 3850 2    50   ~ 0
USB_D+
Text Label 1350 3550 2    50   ~ 0
NRST
Text Label 1850 3650 0    50   ~ 0
TX
Text Label 1350 3650 2    50   ~ 0
RX
Text Label 6850 2450 2    50   ~ 0
NRST
Wire Wire Line
	7350 2250 7350 2150
Wire Wire Line
	7350 2150 7450 2150
Wire Wire Line
	7750 2150 7750 2250
Wire Wire Line
	7650 2250 7650 2150
Connection ~ 7650 2150
Wire Wire Line
	7650 2150 7750 2150
Wire Wire Line
	7550 2150 7550 2250
Connection ~ 7550 2150
Wire Wire Line
	7550 2150 7650 2150
Wire Wire Line
	7450 2250 7450 2150
Connection ~ 7450 2150
Wire Wire Line
	7450 2150 7550 2150
Wire Wire Line
	7450 5850 7450 5950
Wire Wire Line
	7450 5950 7550 5950
Wire Wire Line
	7650 5850 7650 5950
Wire Wire Line
	7550 5950 7550 5850
Connection ~ 7550 5950
Wire Wire Line
	7550 5950 7650 5950
Text Label 8250 3650 0    50   ~ 0
USB_D+
Text Label 8250 3750 0    50   ~ 0
SWDIO
Text Label 8250 3850 0    50   ~ 0
SWCLK
Text Label 8250 3350 0    50   ~ 0
TX
Text Label 8250 3450 0    50   ~ 0
RX
$Comp
L Device:C_Small C2
U 1 1 5E4CCAC3
P 5800 4200
F 0 "C2" H 5708 4154 50  0000 R CNN
F 1 "16pF" H 5708 4245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5800 4200 50  0001 C CNN
F 3 "~" H 5800 4200 50  0001 C CNN
	1    5800 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E4CCCD9
P 5400 4200
F 0 "C1" H 5491 4154 50  0000 L CNN
F 1 "16pF" H 5491 4245 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 4200 50  0001 C CNN
F 3 "~" H 5400 4200 50  0001 C CNN
	1    5400 4200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E4CEED8
P 5600 4400
F 0 "#PWR03" H 5600 4150 50  0001 C CNN
F 1 "GND" H 5605 4227 50  0000 C CNN
F 2 "" H 5600 4400 50  0001 C CNN
F 3 "" H 5600 4400 50  0001 C CNN
	1    5600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3650 6850 3650
$Comp
L Device:C_Small C5
U 1 1 5E4E2411
P 8450 2300
F 0 "C5" H 8542 2346 50  0000 L CNN
F 1 "100nF" H 8542 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8450 2300 50  0001 C CNN
F 3 "~" H 8450 2300 50  0001 C CNN
	1    8450 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5E4E250A
P 8850 2300
F 0 "C6" H 8942 2346 50  0000 L CNN
F 1 "100nF" H 8942 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8850 2300 50  0001 C CNN
F 3 "~" H 8850 2300 50  0001 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5E4E2682
P 9250 2300
F 0 "C7" H 9342 2346 50  0000 L CNN
F 1 "100nF" H 9342 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9250 2300 50  0001 C CNN
F 3 "~" H 9250 2300 50  0001 C CNN
	1    9250 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5E4E274A
P 9650 2300
F 0 "C8" H 9742 2346 50  0000 L CNN
F 1 "100nF" H 9742 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9650 2300 50  0001 C CNN
F 3 "~" H 9650 2300 50  0001 C CNN
	1    9650 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E4E301C
P 8450 2500
F 0 "#PWR07" H 8450 2250 50  0001 C CNN
F 1 "GND" H 8455 2327 50  0000 C CNN
F 2 "" H 8450 2500 50  0001 C CNN
F 3 "" H 8450 2500 50  0001 C CNN
	1    8450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2500 8450 2450
Wire Wire Line
	8450 2450 8850 2450
Wire Wire Line
	9650 2450 9650 2400
Connection ~ 8450 2450
Wire Wire Line
	8450 2450 8450 2400
Wire Wire Line
	9250 2400 9250 2450
Connection ~ 9250 2450
Wire Wire Line
	9250 2450 9650 2450
Wire Wire Line
	8850 2450 8850 2400
Connection ~ 8850 2450
Wire Wire Line
	8850 2450 9250 2450
Wire Wire Line
	9650 2150 9650 2200
Wire Wire Line
	9250 2200 9250 2150
Connection ~ 9250 2150
Wire Wire Line
	9250 2150 9650 2150
Wire Wire Line
	8850 2150 8850 2200
Connection ~ 8850 2150
Wire Wire Line
	8850 2150 9250 2150
Wire Wire Line
	8450 2200 8450 2150
Connection ~ 8450 2150
Wire Wire Line
	8450 2150 8850 2150
$Comp
L power:GND #PWR06
U 1 1 5E4E7235
P 7450 6050
F 0 "#PWR06" H 7450 5800 50  0001 C CNN
F 1 "GND" H 7455 5877 50  0000 C CNN
F 2 "" H 7450 6050 50  0001 C CNN
F 3 "" H 7450 6050 50  0001 C CNN
	1    7450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 6050 7450 5950
Connection ~ 7450 5950
$Comp
L power:+3V3 #PWR05
U 1 1 5E4E8095
P 7350 2050
F 0 "#PWR05" H 7350 1900 50  0001 C CNN
F 1 "+3V3" H 7365 2223 50  0000 C CNN
F 2 "" H 7350 2050 50  0001 C CNN
F 3 "" H 7350 2050 50  0001 C CNN
	1    7350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2050 7350 2150
Connection ~ 7350 2150
$Comp
L power:+3V3 #PWR02
U 1 1 5E4E8EE9
P 2050 3850
F 0 "#PWR02" H 2050 3700 50  0001 C CNN
F 1 "+3V3" V 2065 3978 50  0000 L CNN
F 2 "" H 2050 3850 50  0001 C CNN
F 3 "" H 2050 3850 50  0001 C CNN
	1    2050 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E4E942F
P 2050 3750
F 0 "#PWR01" H 2050 3500 50  0001 C CNN
F 1 "GND" V 2055 3622 50  0000 R CNN
F 2 "" H 2050 3750 50  0001 C CNN
F 3 "" H 2050 3750 50  0001 C CNN
	1    2050 3750
	0    -1   -1   0   
$EndComp
NoConn ~ 6850 4150
NoConn ~ 6850 4250
NoConn ~ 6850 4350
NoConn ~ 6850 4450
NoConn ~ 6850 4550
NoConn ~ 6850 4650
NoConn ~ 6850 4750
NoConn ~ 6850 4850
NoConn ~ 6850 4950
NoConn ~ 6850 5050
NoConn ~ 6850 5150
NoConn ~ 6850 5250
NoConn ~ 6850 5350
NoConn ~ 6850 5450
NoConn ~ 6850 5550
NoConn ~ 6850 5650
NoConn ~ 8250 2450
NoConn ~ 8250 2550
NoConn ~ 8250 2650
NoConn ~ 8250 2750
NoConn ~ 8250 2850
NoConn ~ 8250 2950
NoConn ~ 8250 3050
NoConn ~ 8250 3150
NoConn ~ 8250 3250
Wire Wire Line
	2050 3850 1850 3850
Wire Wire Line
	2050 3750 1850 3750
Text Label 1850 3950 0    50   ~ 0
SWCLK
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5E45E0AA
P 5600 4050
F 0 "Y1" H 5600 3669 50  0000 C CNN
F 1 "8MHz" H 5600 3760 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-4Pin_5.0x3.2mm" H 5600 4050 50  0001 C CNN
F 3 "~" H 5600 4050 50  0001 C CNN
	1    5600 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	5450 4050 5400 4050
Wire Wire Line
	5400 4050 5400 4100
Wire Wire Line
	5750 4050 5800 4050
Wire Wire Line
	5800 4050 5800 4100
Wire Wire Line
	5400 4300 5400 4350
Wire Wire Line
	5400 4350 5600 4350
Wire Wire Line
	5800 4350 5800 4300
Wire Wire Line
	5600 4250 5600 4350
Connection ~ 5600 4350
Wire Wire Line
	5600 4350 5800 4350
Wire Wire Line
	5600 4400 5600 4350
Wire Wire Line
	5600 3850 5600 3800
Wire Wire Line
	5600 3800 5050 3800
Wire Wire Line
	5050 3800 5050 4350
Wire Wire Line
	5050 4350 5400 4350
Connection ~ 5400 4350
Wire Wire Line
	5800 4050 5800 3750
Connection ~ 5800 4050
Wire Wire Line
	5400 4050 5400 3450
Connection ~ 5400 4050
Text Label 1350 3950 2    50   ~ 0
SWDIO
Wire Wire Line
	6150 3450 6150 3650
Wire Wire Line
	5400 3450 6150 3450
Wire Wire Line
	5800 3750 6850 3750
Text Label 1850 3550 0    50   ~ 0
BOOT0
Text Label 6850 2650 2    50   ~ 0
BOOT0
$Comp
L MCU_ST_STM32F4:STM32F405RGTx U1
U 1 1 5E4DB83C
P 7550 4050
F 0 "U1" H 7000 2300 50  0000 C CNN
F 1 "STM32F405RGTx" H 8000 2300 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6950 2350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 7550 4050 50  0001 C CNN
	1    7550 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E4F0C6B
P 6600 3100
F 0 "C4" H 6692 3146 50  0000 L CNN
F 1 "2.2uF" H 6692 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6600 3100 50  0001 C CNN
F 3 "~" H 6600 3100 50  0001 C CNN
	1    6600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2950 6600 2950
Wire Wire Line
	6600 2950 6600 3000
$Comp
L Device:C_Small C3
U 1 1 5E4F2E2C
P 6450 3100
F 0 "C3" H 6359 3146 50  0000 R CNN
F 1 "2.2uF" H 6359 3055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6450 3100 50  0001 C CNN
F 3 "~" H 6450 3100 50  0001 C CNN
	1    6450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3000 6450 2850
Wire Wire Line
	6450 2850 6850 2850
$Comp
L power:GND #PWR04
U 1 1 5E4F43AB
P 6600 3300
F 0 "#PWR04" H 6600 3050 50  0001 C CNN
F 1 "GND" H 6605 3127 50  0000 C CNN
F 2 "" H 6600 3300 50  0001 C CNN
F 3 "" H 6600 3300 50  0001 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3200 6600 3250
Wire Wire Line
	6600 3250 6450 3250
Wire Wire Line
	6450 3250 6450 3200
Connection ~ 6600 3250
Wire Wire Line
	6600 3250 6600 3300
Wire Wire Line
	7750 2150 7850 2150
Wire Wire Line
	7850 2150 7850 2250
Connection ~ 7750 2150
Wire Wire Line
	7850 2150 8450 2150
Connection ~ 7850 2150
NoConn ~ 8250 3950
Text Label 8250 5650 0    50   ~ 0
USB_D+
NoConn ~ 8250 4150
NoConn ~ 8250 4250
NoConn ~ 8250 4350
NoConn ~ 8250 4450
NoConn ~ 8250 4550
NoConn ~ 8250 4650
NoConn ~ 8250 4750
NoConn ~ 8250 4850
NoConn ~ 8250 4950
NoConn ~ 8250 5050
NoConn ~ 8250 5150
NoConn ~ 8250 5250
NoConn ~ 8250 5350
NoConn ~ 8250 5450
NoConn ~ 6850 3950
$Comp
L Device:C_Small C9
U 1 1 5E519F74
P 10050 2300
F 0 "C9" H 10142 2346 50  0000 L CNN
F 1 "100nF" H 10142 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10050 2300 50  0001 C CNN
F 3 "~" H 10050 2300 50  0001 C CNN
	1    10050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2150 10050 2150
Wire Wire Line
	10050 2150 10050 2200
Connection ~ 9650 2150
Wire Wire Line
	9650 2450 10050 2450
Wire Wire Line
	10050 2450 10050 2400
Connection ~ 9650 2450
Text Label 6800 2950 2    50   ~ 0
VCAP_2
Text Label 6800 2850 2    50   ~ 0
VCAP_1
Text Label 8250 3550 0    50   ~ 0
USB_D-
Text Label 8250 5550 0    50   ~ 0
USB_D-
$EndSCHEMATC
