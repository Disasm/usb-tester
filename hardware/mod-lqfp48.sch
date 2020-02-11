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
P 2550 3750
F 0 "J1" H 2600 4167 50  0000 C CNN
F 1 "Target" H 2600 4076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 2550 3750 50  0001 C CNN
F 3 "~" H 2550 3750 50  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
Text Label 2850 3550 0    50   ~ 0
USB_DP
Text Label 2350 3550 2    50   ~ 0
USB_DM
Text Label 2850 3650 0    50   ~ 0
GND
Text Label 2850 3750 0    50   ~ 0
CLK
Text Label 2850 3850 0    50   ~ 0
SWCLK
Text Label 2350 3750 2    50   ~ 0
NRST
Text Label 2350 3850 2    50   ~ 0
SWDIO
Text Label 2350 3950 2    50   ~ 0
TX
Text Label 2850 3950 0    50   ~ 0
RX
Text Label 2350 3650 2    50   ~ 0
VCC
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U1
U 1 1 5E4C527F
P 4600 3400
F 0 "U1" H 4050 1950 50  0000 C CNN
F 1 "STM32F103C8Tx" H 5050 1950 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4000 2000 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 4600 3400 50  0001 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
Text Label 3900 2100 2    50   ~ 0
NRST
Text Label 3900 2500 2    50   ~ 0
CLK
NoConn ~ 3900 2600
$Comp
L power:GND #PWR0101
U 1 1 5E4C8CEE
P 3650 2400
F 0 "#PWR0101" H 3650 2150 50  0001 C CNN
F 1 "GND" H 3655 2227 50  0000 C CNN
F 2 "" H 3650 2400 50  0001 C CNN
F 3 "" H 3650 2400 50  0001 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2400 3650 2300
Wire Wire Line
	3650 2300 3900 2300
Wire Wire Line
	4400 1900 4400 1800
Wire Wire Line
	4400 1800 4500 1800
Wire Wire Line
	4800 1800 4800 1900
Wire Wire Line
	4700 1900 4700 1800
Connection ~ 4700 1800
Wire Wire Line
	4700 1800 4800 1800
Wire Wire Line
	4600 1800 4600 1900
Connection ~ 4600 1800
Wire Wire Line
	4600 1800 4700 1800
Wire Wire Line
	4500 1900 4500 1800
Connection ~ 4500 1800
Wire Wire Line
	4500 1800 4600 1800
Text Label 4400 1800 2    50   ~ 0
VCC
Wire Wire Line
	4400 4900 4400 5000
Wire Wire Line
	4400 5000 4500 5000
Wire Wire Line
	4700 5000 4700 4900
Wire Wire Line
	4600 4900 4600 5000
Connection ~ 4600 5000
Wire Wire Line
	4600 5000 4700 5000
Wire Wire Line
	4500 5000 4500 4900
Connection ~ 4500 5000
Wire Wire Line
	4500 5000 4600 5000
Text Label 4400 5000 2    50   ~ 0
GND
Text Label 5200 4300 0    50   ~ 0
USB_DM
Text Label 5200 4400 0    50   ~ 0
USB_DP
Text Label 5200 4500 0    50   ~ 0
SWDIO
Text Label 5200 4600 0    50   ~ 0
SWCLK
Text Label 5200 4100 0    50   ~ 0
TX
Text Label 5200 4200 0    50   ~ 0
RX
$EndSCHEMATC
