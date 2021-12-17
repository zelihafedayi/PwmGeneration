EESchema Schematic File Version 4
EELAYER 26 0
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
L MCU_ST_STM32F1:STM32F103RETx U1
U 1 1 61BB8DAE
P 3600 3350
F 0 "U1" H 3600 1464 50  0000 C CNN
F 1 "STM32F103RETx" H 3600 1373 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 3000 1650 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00191185.pdf" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
Text GLabel 4950 3450 0    50   Input ~ 0
CMD
Text GLabel 2800 3250 0    50   Input ~ 0
CMD
Wire Wire Line
	2900 3250 2800 3250
Text GLabel 4950 3650 0    50   Input ~ 0
CLK
Text GLabel 2800 4650 0    50   Input ~ 0
CLK
Wire Wire Line
	2900 4650 2800 4650
Wire Wire Line
	4950 3650 5200 3650
Wire Wire Line
	4950 3450 5200 3450
Text GLabel 2800 4250 0    50   Input ~ 0
DAT0
Wire Wire Line
	2800 4250 2900 4250
Text GLabel 5000 3850 0    50   Input ~ 0
DAT0
Wire Wire Line
	5000 3850 5200 3850
Wire Wire Line
	3900 1450 3900 1550
NoConn ~ 2900 3050
NoConn ~ 2900 3150
NoConn ~ 2900 3450
NoConn ~ 2900 3550
NoConn ~ 2900 3650
NoConn ~ 2900 3750
NoConn ~ 2900 3850
NoConn ~ 2900 3950
NoConn ~ 2900 4050
NoConn ~ 2900 4150
NoConn ~ 2900 4350
NoConn ~ 2900 4450
NoConn ~ 2900 4550
NoConn ~ 2900 4750
NoConn ~ 2900 4850
NoConn ~ 2900 4950
NoConn ~ 3400 5150
NoConn ~ 3500 5150
NoConn ~ 3600 5150
NoConn ~ 3700 5150
NoConn ~ 4300 4950
NoConn ~ 4300 4850
NoConn ~ 4300 4750
NoConn ~ 4300 4650
NoConn ~ 4300 4550
NoConn ~ 4300 4450
NoConn ~ 4300 4350
NoConn ~ 4300 4250
NoConn ~ 4300 4150
NoConn ~ 5200 3950
NoConn ~ 5200 3250
NoConn ~ 4300 3450
NoConn ~ 4300 3550
NoConn ~ 4300 3650
NoConn ~ 4300 3750
NoConn ~ 4300 3850
NoConn ~ 4300 3950
NoConn ~ 4300 4050
NoConn ~ 4300 3250
NoConn ~ 4300 3150
NoConn ~ 4300 3050
NoConn ~ 4300 2950
NoConn ~ 4300 2850
NoConn ~ 4300 2750
NoConn ~ 4300 2650
NoConn ~ 4300 2450
NoConn ~ 4300 2550
NoConn ~ 4300 2350
NoConn ~ 4300 2250
NoConn ~ 4300 2150
NoConn ~ 4300 2050
NoConn ~ 4300 1950
NoConn ~ 4300 1850
NoConn ~ 4300 1750
NoConn ~ 3800 1550
NoConn ~ 3700 1550
NoConn ~ 3600 1550
NoConn ~ 3500 1550
NoConn ~ 3400 1550
NoConn ~ 2900 1750
NoConn ~ 2900 1950
$Comp
L Connector:Micro_SD_Card J1
U 1 1 61BBBDF3
P 6100 3550
F 0 "J1" H 6050 4267 50  0000 C CNN
F 1 "Micro_SD_Card" H 6050 4176 50  0000 C CNN
F 2 "" H 7250 3850 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 6100 3550 50  0001 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
NoConn ~ 5200 3350
NoConn ~ 6900 4150
Text GLabel 5100 3550 0    50   Input ~ 0
3.3V
Wire Wire Line
	5100 3550 5200 3550
Text GLabel 5100 3750 0    50   Input ~ 0
GND
Wire Wire Line
	5100 3750 5200 3750
Text GLabel 3800 5250 3    50   Input ~ 0
GND
Wire Wire Line
	3800 5250 3800 5150
Text GLabel 3900 1450 1    50   Input ~ 0
3.3V
$EndSCHEMATC
