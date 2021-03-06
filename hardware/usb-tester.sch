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
L Power_Protection:USBLC6-2SC6 U1
U 1 1 5E3FD4F5
P 2300 1700
F 0 "U1" H 2550 1350 50  0000 C CNN
F 1 "USBLC6-2SC6" H 2000 1350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 1550 2100 50  0001 C CNN
F 3 "http://www2.st.com/resource/en/datasheet/CD00050750.pdf" H 2500 2050 50  0001 C CNN
	1    2300 1700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5E3FE1FE
P 1200 1300
F 0 "J1" H 1200 1750 50  0000 C CNN
F 1 "TARGET" H 1200 1650 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1350 1250 50  0001 C CNN
F 3 "~" H 1350 1250 50  0001 C CNN
	1    1200 1300
	1    0    0    -1  
$EndComp
NoConn ~ 1500 1500
$Comp
L power:GND #PWR01
U 1 1 5E40C187
P 1200 1900
F 0 "#PWR01" H 1200 1650 50  0001 C CNN
F 1 "GND" H 1205 1727 50  0000 C CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1700 1200 1800
Wire Wire Line
	1200 1800 1100 1800
Wire Wire Line
	1100 1800 1100 1700
Connection ~ 1200 1800
Wire Wire Line
	1200 1800 1200 1900
Wire Wire Line
	1500 1300 2900 1300
Wire Wire Line
	2900 1300 2900 1600
Wire Wire Line
	2900 1600 2800 1600
Wire Wire Line
	1500 1400 1700 1400
Wire Wire Line
	1700 1400 1700 1600
Wire Wire Line
	1700 1600 1800 1600
Text Label 1800 1800 2    50   ~ 0
USB_D-
Text Label 2800 1800 0    50   ~ 0
USB_D+
$Comp
L power:GND #PWR03
U 1 1 5E410F06
P 2300 2300
F 0 "#PWR03" H 2300 2050 50  0001 C CNN
F 1 "GND" H 2305 2127 50  0000 C CNN
F 2 "" H 2300 2300 50  0001 C CNN
F 3 "" H 2300 2300 50  0001 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2300 2300 2200
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5E458FD1
P 2550 3750
F 0 "J2" H 2600 4167 50  0000 C CNN
F 1 "Target 0" H 2600 4076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 2550 3750 50  0001 C CNN
F 3 "~" H 2550 3750 50  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
Text Label 2350 3850 2    50   ~ 0
T_USB_D+
Text Label 2350 3750 2    50   ~ 0
T_USB_D-
Text Label 2850 3750 0    50   ~ 0
GND
Text Label 2350 3550 2    50   ~ 0
T0_NRST
Text Label 2850 3650 0    50   ~ 0
T_TX
Text Label 2350 3650 2    50   ~ 0
T_RX
Wire Wire Line
	2300 1100 2300 1200
Text Label 2850 3850 0    50   ~ 0
T_VCC
$Comp
L power:GND #PWR018
U 1 1 5E453D38
P 13000 5550
F 0 "#PWR018" H 13000 5300 50  0001 C CNN
F 1 "GND" H 13005 5377 50  0000 C CNN
F 2 "" H 13000 5550 50  0001 C CNN
F 3 "" H 13000 5550 50  0001 C CNN
	1    13000 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR017
U 1 1 5E4563E3
P 13000 3250
F 0 "#PWR017" H 13000 3100 50  0001 C CNN
F 1 "+3V3" H 13015 3423 50  0000 C CNN
F 2 "" H 13000 3250 50  0001 C CNN
F 3 "" H 13000 3250 50  0001 C CNN
	1    13000 3250
	1    0    0    -1  
$EndComp
Text Label 9900 7250 2    50   ~ 0
~USBMUXEN
Text Label 9900 6750 2    50   ~ 0
T_USB_D+
Text Label 9900 6850 2    50   ~ 0
T_USB_D-
$Comp
L power:+3V3 #PWR015
U 1 1 5E4EA997
P 10300 6350
F 0 "#PWR015" H 10300 6200 50  0001 C CNN
F 1 "+3V3" H 10315 6523 50  0000 C CNN
F 2 "" H 10300 6350 50  0001 C CNN
F 3 "" H 10300 6350 50  0001 C CNN
	1    10300 6350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J14
U 1 1 5E6391B4
P 12000 7000
F 0 "J14" H 11972 6932 50  0000 R CNN
F 1 "Target" H 11972 7023 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 12000 7000 50  0001 C CNN
F 3 "~" H 12000 7000 50  0001 C CNN
	1    12000 7000
	-1   0    0    -1  
$EndComp
$Comp
L 4xxx_IEEE:4514 U5
U 1 1 5E63B701
P 13000 4400
F 0 "U5" H 12750 5250 50  0000 C CNN
F 1 "74HC4514D" H 13250 5250 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 13000 4400 50  0001 C CNN
F 3 "" H 13000 4400 50  0001 C CNN
	1    13000 4400
	1    0    0    -1  
$EndComp
Text Label 13600 4550 0    50   ~ 0
T0_NRST
Text Label 13600 4950 0    50   ~ 0
T1_NRST
Text Label 13600 4450 0    50   ~ 0
T2_NRST
Text Label 13600 4850 0    50   ~ 0
T3_NRST
Text Label 12400 4250 2    50   ~ 0
SEL0
Text Label 12400 4350 2    50   ~ 0
SEL1
Wire Wire Line
	13000 3450 12350 3450
Wire Wire Line
	12350 3450 12350 3850
Wire Wire Line
	12350 3850 12400 3850
Wire Wire Line
	13000 3450 13000 3600
Text Label 12300 4550 2    50   ~ 0
T_NRST
Wire Wire Line
	13000 3250 13000 3450
Connection ~ 13000 3450
Wire Wire Line
	13000 5200 13000 5550
Text Label 11800 7000 2    50   ~ 0
T_USB_D-
Text Label 11800 7100 2    50   ~ 0
T_USB_D+
Text Label 11800 6900 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x03_Male J13
U 1 1 5E435E55
P 12000 6600
F 0 "J13" H 11972 6532 50  0000 R CNN
F 1 "Upstream" H 11972 6623 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 12000 6600 50  0001 C CNN
F 3 "~" H 12000 6600 50  0001 C CNN
	1    12000 6600
	-1   0    0    -1  
$EndComp
Text Label 11800 6600 2    50   ~ 0
USB_D-
Text Label 11800 6700 2    50   ~ 0
USB_D+
Text Label 11800 6500 2    50   ~ 0
GND
NoConn ~ 13600 4050
NoConn ~ 13600 4150
NoConn ~ 13600 4250
NoConn ~ 13600 4350
Wire Wire Line
	12300 4550 12400 4550
Wire Wire Line
	12400 4950 12350 4950
Wire Wire Line
	12350 4950 12350 5550
NoConn ~ 13600 3650
NoConn ~ 13600 3750
NoConn ~ 13600 3850
NoConn ~ 13600 3950
$Comp
L power:GND #PWR016
U 1 1 5E4898B9
P 10300 7600
F 0 "#PWR016" H 10300 7350 50  0001 C CNN
F 1 "GND" H 10305 7427 50  0000 C CNN
F 2 "" H 10300 7600 50  0001 C CNN
F 3 "" H 10300 7600 50  0001 C CNN
	1    10300 7600
	1    0    0    -1  
$EndComp
Text Label 10700 6950 0    50   ~ 0
USB_D+
Text Label 10700 7050 0    50   ~ 0
USB_D-
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 5E499E97
P 2550 4750
F 0 "J3" H 2600 5167 50  0000 C CNN
F 1 "Target 1" H 2600 5076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 2550 4750 50  0001 C CNN
F 3 "~" H 2550 4750 50  0001 C CNN
	1    2550 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 5E49D2DA
P 2550 5750
F 0 "J4" H 2600 6167 50  0000 C CNN
F 1 "Target 2" H 2600 6076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 2550 5750 50  0001 C CNN
F 3 "~" H 2550 5750 50  0001 C CNN
	1    2550 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 5E49F210
P 2550 6750
F 0 "J5" H 2600 7167 50  0000 C CNN
F 1 "Target 3" H 2600 7076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 2550 6750 50  0001 C CNN
F 3 "~" H 2550 6750 50  0001 C CNN
	1    2550 6750
	1    0    0    -1  
$EndComp
Text Label 9350 1200 2    50   ~ 0
GND
Text Label 9350 1300 2    50   ~ 0
T_NRST
Text Label 9350 2000 2    50   ~ 0
T_TX
Text Label 9350 1900 2    50   ~ 0
T_RX
Text Label 2850 3550 0    50   ~ 0
T_BOOT0
Text Label 2850 4750 0    50   ~ 0
GND
Text Label 2850 4650 0    50   ~ 0
T_TX
Text Label 2850 4850 0    50   ~ 0
T_VCC
Text Label 2850 4550 0    50   ~ 0
T_BOOT0
Text Label 2850 5750 0    50   ~ 0
GND
Text Label 2850 5650 0    50   ~ 0
T_TX
Text Label 2850 5850 0    50   ~ 0
T_VCC
Text Label 2850 5550 0    50   ~ 0
T_BOOT0
Text Label 2850 6750 0    50   ~ 0
GND
Text Label 2850 6650 0    50   ~ 0
T_TX
Text Label 2850 6850 0    50   ~ 0
T_VCC
Text Label 2850 6550 0    50   ~ 0
T_BOOT0
Text Label 2350 4550 2    50   ~ 0
T1_NRST
Text Label 2350 4650 2    50   ~ 0
T_RX
Text Label 2350 5550 2    50   ~ 0
T2_NRST
Text Label 2350 5650 2    50   ~ 0
T_RX
Text Label 2350 6550 2    50   ~ 0
T3_NRST
Text Label 2350 6650 2    50   ~ 0
T_RX
Text Label 9350 1400 2    50   ~ 0
SEL0
Text Label 9350 1500 2    50   ~ 0
SEL1
Text Label 9350 1700 2    50   ~ 0
~USBMUXEN
Text Label 9350 1800 2    50   ~ 0
PWR_EN
Wire Wire Line
	12350 5550 13000 5550
$Comp
L Connector:Conn_01x11_Male J11
U 1 1 5E526B4B
P 9550 1600
F 0 "J11" H 9522 1624 50  0000 R CNN
F 1 "Comm" H 9522 1533 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 9550 1600 50  0001 C CNN
F 3 "~" H 9550 1600 50  0001 C CNN
	1    9550 1600
	-1   0    0    -1  
$EndComp
Text Label 10450 1200 2    50   ~ 0
GND
Text Label 10450 2100 2    50   ~ 0
T_BOOT0
Text Label 10450 1300 2    50   ~ 0
T_NRST
Text Label 10450 2000 2    50   ~ 0
T_TX
Text Label 10450 1900 2    50   ~ 0
T_RX
Text Label 10450 1400 2    50   ~ 0
SEL0
Text Label 10450 1500 2    50   ~ 0
SEL1
Text Label 10450 1700 2    50   ~ 0
~USBMUXEN
Text Label 10450 1800 2    50   ~ 0
PWR_EN
$Comp
L Device:R_Small R2
U 1 1 5E54002C
P 8450 1300
F 0 "R2" V 8254 1300 50  0000 C CNN
F 1 "10k" V 8345 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8450 1300 50  0001 C CNN
F 3 "~" H 8450 1300 50  0001 C CNN
	1    8450 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E541CCC
P 8900 2100
F 0 "R3" V 8704 2100 50  0000 C CNN
F 1 "10k" V 8795 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8900 2100 50  0001 C CNN
F 3 "~" H 8900 2100 50  0001 C CNN
	1    8900 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E546273
P 8300 1350
F 0 "#PWR011" H 8300 1100 50  0001 C CNN
F 1 "GND" H 8305 1177 50  0000 C CNN
F 2 "" H 8300 1350 50  0001 C CNN
F 3 "" H 8300 1350 50  0001 C CNN
	1    8300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1300 9350 1300
Wire Wire Line
	8300 1300 8350 1300
Wire Wire Line
	8300 1300 8300 1350
$Comp
L Device:R_Small R4
U 1 1 5E54F0E0
P 9350 7250
F 0 "R4" V 9546 7250 50  0000 C CNN
F 1 "10k" V 9455 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9350 7250 50  0001 C CNN
F 3 "~" H 9350 7250 50  0001 C CNN
	1    9350 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR013
U 1 1 5E54F0EA
P 9100 7200
F 0 "#PWR013" H 9100 7050 50  0001 C CNN
F 1 "+3V3" H 9115 7373 50  0000 C CNN
F 2 "" H 9100 7200 50  0001 C CNN
F 3 "" H 9100 7200 50  0001 C CNN
	1    9100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 7250 9250 7250
Wire Wire Line
	9450 7250 9900 7250
Wire Wire Line
	9100 7200 9100 7250
Wire Wire Line
	9000 2100 9350 2100
Wire Wire Line
	8700 2100 8800 2100
Wire Wire Line
	10300 7550 10300 7600
Wire Wire Line
	10300 6350 10300 6400
$Comp
L ic:FSUSB30MUX U4
U 1 1 5E3CC2D2
P 10300 6950
F 0 "U4" H 10050 7450 50  0000 C CNN
F 1 "FSUSB30MUX" H 10550 7450 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 10300 6400 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/149/FSUSB30-1010253.pdf" H 10300 6950 50  0001 C CNN
	1    10300 6950
	1    0    0    -1  
$EndComp
NoConn ~ 9900 6950
NoConn ~ 9900 7050
$Comp
L power:GND #PWR014
U 1 1 5E8BC502
P 9850 7400
F 0 "#PWR014" H 9850 7150 50  0001 C CNN
F 1 "GND" H 9855 7227 50  0000 C CNN
F 2 "" H 9850 7400 50  0001 C CNN
F 3 "" H 9850 7400 50  0001 C CNN
	1    9850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 7350 9850 7350
Wire Wire Line
	9850 7350 9850 7400
Connection ~ 13000 5550
NoConn ~ 2850 3950
NoConn ~ 2350 3950
Text Label 2350 4850 2    50   ~ 0
T_USB_D+
Text Label 2350 4750 2    50   ~ 0
T_USB_D-
Text Label 2350 5850 2    50   ~ 0
T_USB_D+
Text Label 2350 5750 2    50   ~ 0
T_USB_D-
Text Label 2350 6850 2    50   ~ 0
T_USB_D+
Text Label 2350 6750 2    50   ~ 0
T_USB_D-
NoConn ~ 2350 4950
NoConn ~ 2850 4950
NoConn ~ 2350 5950
NoConn ~ 2850 5950
NoConn ~ 2350 6950
NoConn ~ 2850 6950
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 5E8DEF66
P 4050 3750
F 0 "J6" H 4100 4167 50  0000 C CNN
F 1 "Target 4" H 4100 4076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 4050 3750 50  0001 C CNN
F 3 "~" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
Text Label 3850 3850 2    50   ~ 0
T_USB_D+
Text Label 3850 3750 2    50   ~ 0
T_USB_D-
Text Label 4350 3750 0    50   ~ 0
GND
Text Label 3850 3550 2    50   ~ 0
T4_NRST
Text Label 4350 3650 0    50   ~ 0
T_TX
Text Label 3850 3650 2    50   ~ 0
T_RX
Text Label 4350 3850 0    50   ~ 0
T_VCC
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J7
U 1 1 5E8DEF77
P 4050 4750
F 0 "J7" H 4100 5167 50  0000 C CNN
F 1 "Target 5" H 4100 5076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 4050 4750 50  0001 C CNN
F 3 "~" H 4050 4750 50  0001 C CNN
	1    4050 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J8
U 1 1 5E8DEF81
P 4050 5750
F 0 "J8" H 4100 6167 50  0000 C CNN
F 1 "Target 6" H 4100 6076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 4050 5750 50  0001 C CNN
F 3 "~" H 4050 5750 50  0001 C CNN
	1    4050 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J9
U 1 1 5E8DEF8B
P 4050 6750
F 0 "J9" H 4100 7167 50  0000 C CNN
F 1 "Target 7" H 4100 7076 50  0000 C CNN
F 2 "unsorted:PinSocket_2x05_P2.54mm_Vertical_Reversed" H 4050 6750 50  0001 C CNN
F 3 "~" H 4050 6750 50  0001 C CNN
	1    4050 6750
	1    0    0    -1  
$EndComp
Text Label 4350 3550 0    50   ~ 0
T_BOOT0
Text Label 4350 4750 0    50   ~ 0
GND
Text Label 4350 4650 0    50   ~ 0
T_TX
Text Label 4350 4850 0    50   ~ 0
T_VCC
Text Label 4350 4550 0    50   ~ 0
T_BOOT0
Text Label 4350 5750 0    50   ~ 0
GND
Text Label 4350 5650 0    50   ~ 0
T_TX
Text Label 4350 5850 0    50   ~ 0
T_VCC
Text Label 4350 5550 0    50   ~ 0
T_BOOT0
Text Label 4350 6750 0    50   ~ 0
GND
Text Label 4350 6650 0    50   ~ 0
T_TX
Text Label 4350 6850 0    50   ~ 0
T_VCC
Text Label 4350 6550 0    50   ~ 0
T_BOOT0
Text Label 3850 4550 2    50   ~ 0
T5_NRST
Text Label 3850 4650 2    50   ~ 0
T_RX
Text Label 3850 5550 2    50   ~ 0
T6_NRST
Text Label 3850 5650 2    50   ~ 0
T_RX
Text Label 3850 6550 2    50   ~ 0
T7_NRST
Text Label 3850 6650 2    50   ~ 0
T_RX
NoConn ~ 4350 3950
NoConn ~ 3850 3950
Text Label 3850 4850 2    50   ~ 0
T_USB_D+
Text Label 3850 4750 2    50   ~ 0
T_USB_D-
Text Label 3850 5850 2    50   ~ 0
T_USB_D+
Text Label 3850 5750 2    50   ~ 0
T_USB_D-
Text Label 3850 6850 2    50   ~ 0
T_USB_D+
Text Label 3850 6750 2    50   ~ 0
T_USB_D-
NoConn ~ 3850 4950
NoConn ~ 4350 4950
NoConn ~ 3850 5950
NoConn ~ 4350 5950
NoConn ~ 3850 6950
NoConn ~ 4350 6950
$Comp
L power:GND #PWR07
U 1 1 5E55A712
P 5950 1450
F 0 "#PWR07" H 5950 1200 50  0001 C CNN
F 1 "GND" H 5955 1277 50  0000 C CNN
F 2 "" H 5950 1450 50  0001 C CNN
F 3 "" H 5950 1450 50  0001 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5E55A708
P 5950 1350
F 0 "R1" H 6009 1304 50  0000 L CNN
F 1 "10k" H 6009 1395 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5950 1350 50  0001 C CNN
F 3 "~" H 5950 1350 50  0001 C CNN
	1    5950 1350
	-1   0    0    1   
$EndComp
Text Label 7000 1100 0    50   ~ 0
T_VCC_SRC
Wire Wire Line
	6200 1300 6200 1400
Wire Wire Line
	6300 1300 6200 1300
Text Label 6300 1200 2    50   ~ 0
PWR_EN
$Comp
L power:GND #PWR09
U 1 1 5E3CECEB
P 6200 1400
F 0 "#PWR09" H 6200 1150 50  0001 C CNN
F 1 "GND" H 6205 1227 50  0000 C CNN
F 2 "" H 6200 1400 50  0001 C CNN
F 3 "" H 6200 1400 50  0001 C CNN
	1    6200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1100 6300 1100
Wire Wire Line
	6200 1000 6200 1100
$Comp
L ic:STMPS2151STR U3
U 1 1 5E3CBD43
P 6650 1200
F 0 "U3" H 6650 1565 50  0000 C CNN
F 1 "STMPS2151STR" H 6650 1474 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6650 950 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stmps2141.pdf" H 6650 1200 50  0001 C CNN
	1    6650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1200 5950 1250
Text Label 13600 4750 0    50   ~ 0
T4_NRST
Text Label 13600 5150 0    50   ~ 0
T5_NRST
Text Label 13600 4650 0    50   ~ 0
T6_NRST
Text Label 13600 5050 0    50   ~ 0
T7_NRST
$Comp
L Connector:Conn_01x11_Male J12
U 1 1 5E529F21
P 10650 1600
F 0 "J12" H 10622 1624 50  0000 R CNN
F 1 "CommLA" H 10622 1533 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 10650 1600 50  0001 C CNN
F 3 "~" H 10650 1600 50  0001 C CNN
	1    10650 1600
	-1   0    0    -1  
$EndComp
Text Label 9350 1600 2    50   ~ 0
SEL2
Text Label 10450 1600 2    50   ~ 0
SEL2
Text Label 12400 4450 2    50   ~ 0
SEL2
Text Label 1550 1300 0    50   ~ 0
USBC_D+
Text Label 1550 1400 0    50   ~ 0
USBC_D-
$Comp
L Connector:Conn_01x02_Male J15
U 1 1 5EA8D306
P 6950 2350
F 0 "J15" H 6922 2232 50  0000 R CNN
F 1 "Idd" H 6922 2323 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6950 2350 50  0001 C CNN
F 3 "~" H 6950 2350 50  0001 C CNN
	1    6950 2350
	-1   0    0    1   
$EndComp
Text Label 6750 2250 2    50   ~ 0
T_VCC
Text Label 6750 2350 2    50   ~ 0
T_VCC_SRC
Text Label 9350 2100 2    50   ~ 0
T_BOOT0
Text Label 8700 2100 2    50   ~ 0
T_VCC
Wire Wire Line
	1500 1100 2300 1100
$Comp
L power:+3V3 #PWR08
U 1 1 5E53CB10
P 6200 1000
F 0 "#PWR08" H 6200 850 50  0001 C CNN
F 1 "+3V3" H 6215 1173 50  0000 C CNN
F 2 "" H 6200 1000 50  0001 C CNN
F 3 "" H 6200 1000 50  0001 C CNN
	1    6200 1000
	1    0    0    -1  
$EndComp
Text Label 9350 1100 2    50   ~ 0
+3V3
Text Label 10450 1100 2    50   ~ 0
+3V3
Wire Wire Line
	5950 1200 6300 1200
Text Label 1550 1100 0    50   ~ 0
VBUS
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EC7CCD7
P 8950 1000
F 0 "#FLG0101" H 8950 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 8950 1173 50  0000 C CNN
F 2 "" H 8950 1000 50  0001 C CNN
F 3 "~" H 8950 1000 50  0001 C CNN
	1    8950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1000 8950 1100
Wire Wire Line
	8950 1100 9350 1100
NoConn ~ 7000 1300
$EndSCHEMATC
