EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "S88 Isolator"
Date "2022-04-03"
Rev "2.0"
Comp "Gerhard Bertelsmann"
Comment1 "JLC PCB Assembly Service Rework"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:RJ45 Zentrale_S88
U 1 1 5DEC0ABC
P 9050 4275
F 0 "Zentrale_S88" H 8721 4279 50  0000 R CNN
F 1 "RJ45" H 8721 4370 50  0000 R CNN
F 2 "w_conn_pc:megb8-8-Uni" V 9050 4300 50  0001 C CNN
F 3 "~" V 9050 4300 50  0001 C CNN
	1    9050 4275
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 Input_S88
U 1 1 5DEC1D69
P 2950 4175
F 0 "Input_S88" H 2620 4179 50  0000 R CNN
F 1 "RJ45" H 2620 4270 50  0000 R CNN
F 2 "w_conn_pc:megb8-8-Uni" V 2950 4200 50  0001 C CNN
F 3 "~" V 2950 4200 50  0001 C CNN
	1    2950 4175
	1    0    0    1   
$EndComp
Wire Wire Line
	8650 4175 8500 4175
Wire Wire Line
	3350 4075 3525 4075
$Comp
L power:GND #PWR0101
U 1 1 5DECFE6B
P 8500 4900
F 0 "#PWR0101" H 8500 4650 50  0001 C CNN
F 1 "GND" H 8505 4727 50  0000 C CNN
F 2 "" H 8500 4900 50  0001 C CNN
F 3 "" H 8500 4900 50  0001 C CNN
	1    8500 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0102
U 1 1 5DED040B
P 3525 4725
F 0 "#PWR0102" H 3525 4475 50  0001 C CNN
F 1 "GNDD" H 3529 4570 50  0000 C CNN
F 2 "" H 3525 4725 50  0001 C CNN
F 3 "" H 3525 4725 50  0001 C CNN
	1    3525 4725
	-1   0    0    -1  
$EndComp
NoConn ~ 8650 4675
NoConn ~ 3350 4575
Wire Wire Line
	8500 4175 8500 4375
Wire Wire Line
	8650 4375 8500 4375
Connection ~ 8500 4375
Wire Wire Line
	8500 4375 8500 4825
Wire Wire Line
	3525 4075 3525 4275
Wire Wire Line
	3350 4275 3525 4275
Connection ~ 3525 4275
Wire Wire Line
	3525 4275 3525 4725
$Comp
L 4xxx:4504 U2
U 1 1 5DEF4A26
P 5375 4550
F 0 "U2" H 5500 3675 50  0000 C CNN
F 1 "4504" H 5150 3675 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5375 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 4725 4200 50  0001 C CNN
F 4 "C151885" H 5375 4550 50  0001 C CNN "LCSC"
	1    5375 4550
	-1   0    0    -1  
$EndComp
$Comp
L Isolator:Si8641BB-B-IS1 U3
U 1 1 5DF06007
P 6875 4250
F 0 "U3" H 6875 4917 50  0000 C CNN
F 1 "NSI8141W1" H 6875 4826 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 6875 3700 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/lcsc/1912111437_NOVOSENSE-NSI8141W1_C399514.pdf" H 6875 4650 50  0001 C CNN
F 4 "C399514" H 6875 4250 50  0001 C CNN "LCSC"
	1    6875 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DF1483D
P 7475 4150
F 0 "R6" V 7400 4150 50  0000 C CNN
F 1 "56" V 7475 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7405 4150 50  0001 C CNN
F 3 "~" H 7475 4150 50  0001 C CNN
F 4 "C25196" V 7475 4150 50  0001 C CNN "LCSC"
	1    7475 4150
	0    -1   1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5DF15679
P 7475 4250
F 0 "R7" V 7450 4100 50  0000 C CNN
F 1 "56" V 7475 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7405 4250 50  0001 C CNN
F 3 "~" H 7475 4250 50  0001 C CNN
F 4 "C25196" V 7475 4250 50  0001 C CNN "LCSC"
	1    7475 4250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DF15867
P 7475 4350
F 0 "R8" V 7450 4200 50  0000 C CNN
F 1 "56" V 7475 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7405 4350 50  0001 C CNN
F 3 "~" H 7475 4350 50  0001 C CNN
F 4 "C25196" V 7475 4350 50  0001 C CNN "LCSC"
	1    7475 4350
	0    -1   1    0   
$EndComp
Wire Wire Line
	7325 4150 7275 4150
Wire Wire Line
	7325 4250 7275 4250
Wire Wire Line
	7325 4350 7275 4350
Wire Wire Line
	8000 4350 7625 4350
Wire Wire Line
	8000 4250 7625 4250
Wire Wire Line
	7975 4150 7625 4150
Wire Wire Line
	7275 3850 7325 3850
Wire Wire Line
	7275 3950 7325 3950
$Comp
L power:GND #PWR0103
U 1 1 5DF2C119
P 7350 4800
F 0 "#PWR0103" H 7350 4550 50  0001 C CNN
F 1 "GND" H 7355 4627 50  0000 C CNN
F 2 "" H 7350 4800 50  0001 C CNN
F 3 "" H 7350 4800 50  0001 C CNN
	1    7350 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7275 4650 7350 4650
Wire Wire Line
	7350 4650 7350 4800
Wire Wire Line
	6050 4050 5825 4050
Wire Wire Line
	5925 4450 5825 4450
Wire Wire Line
	6475 3850 6325 3850
Wire Wire Line
	6325 3850 6325 3675
Wire Wire Line
	6050 4450 6050 5850
Wire Wire Line
	4550 5850 4550 5150
$Comp
L power:+5VD #PWR0104
U 1 1 5DF32C75
P 6325 3525
F 0 "#PWR0104" H 6325 3375 50  0001 C CNN
F 1 "+5VD" H 6340 3698 50  0000 C CNN
F 2 "" H 6325 3525 50  0001 C CNN
F 3 "" H 6325 3525 50  0001 C CNN
	1    6325 3525
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 5DF332EC
P 6425 4800
F 0 "#PWR0105" H 6425 4550 50  0001 C CNN
F 1 "GNDD" H 6429 4645 50  0000 C CNN
F 2 "" H 6425 4800 50  0001 C CNN
F 3 "" H 6425 4800 50  0001 C CNN
	1    6425 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6475 4650 6425 4650
Wire Wire Line
	6425 4650 6425 4800
$Comp
L Device:C C7
U 1 1 5DF386D6
P 7875 3775
F 0 "C7" H 7990 3821 50  0000 L CNN
F 1 "100nF" H 7600 3875 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7913 3625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810191216_Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf" H 7875 3775 50  0001 C CNN
F 4 "C28233" H 7875 3775 50  0001 C CNN "LCSC"
	1    7875 3775
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DF3A741
P 7875 3975
F 0 "#PWR0106" H 7875 3725 50  0001 C CNN
F 1 "GND" H 7750 3950 50  0000 C CNN
F 2 "" H 7875 3975 50  0001 C CNN
F 3 "" H 7875 3975 50  0001 C CNN
	1    7875 3975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7875 3925 7875 3975
$Comp
L Device:R R4
U 1 1 5DF3FE63
P 4950 5850
F 0 "R4" V 4743 5850 50  0000 C CNN
F 1 "1k5" V 4834 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4880 5850 50  0001 C CNN
F 3 "~" H 4950 5850 50  0001 C CNN
F 4 "C4310" V 4950 5850 50  0001 C CNN "LCSC"
	1    4950 5850
	0    -1   1    0   
$EndComp
Wire Wire Line
	4550 5850 4800 5850
$Comp
L power:GNDD #PWR0107
U 1 1 5DF4344A
P 5425 6225
F 0 "#PWR0107" H 5425 5975 50  0001 C CNN
F 1 "GNDD" H 5429 6070 50  0000 C CNN
F 2 "" H 5425 6225 50  0001 C CNN
F 3 "" H 5425 6225 50  0001 C CNN
	1    5425 6225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5425 6225 5425 6150
$Comp
L Device:C C4
U 1 1 5E1C9549
P 5875 3600
F 0 "C4" H 5990 3646 50  0000 L CNN
F 1 "100nF" H 5990 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5913 3450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810191216_Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf" H 5875 3600 50  0001 C CNN
F 4 "C28233" H 5875 3600 50  0001 C CNN "LCSC"
	1    5875 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0108
U 1 1 5E1C9BD2
P 5875 3750
F 0 "#PWR0108" H 5875 3500 50  0001 C CNN
F 1 "GNDD" H 5879 3595 50  0000 C CNN
F 2 "" H 5875 3750 50  0001 C CNN
F 3 "" H 5875 3750 50  0001 C CNN
	1    5875 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0109
U 1 1 5E1C9F66
P 5875 3450
F 0 "#PWR0109" H 5875 3300 50  0001 C CNN
F 1 "+5VD" H 5890 3623 50  0000 C CNN
F 2 "" H 5875 3450 50  0001 C CNN
F 3 "" H 5875 3450 50  0001 C CNN
	1    5875 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5E1CBDB7
P 8500 3900
F 0 "#PWR0110" H 8500 3750 50  0001 C CNN
F 1 "+5V" H 8515 4073 50  0000 C CNN
F 2 "" H 8500 3900 50  0001 C CNN
F 3 "" H 8500 3900 50  0001 C CNN
	1    8500 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5E1CC18F
P 7325 3550
F 0 "#PWR0111" H 7325 3400 50  0001 C CNN
F 1 "+5V" H 7340 3723 50  0000 C CNN
F 2 "" H 7325 3550 50  0001 C CNN
F 3 "" H 7325 3550 50  0001 C CNN
	1    7325 3550
	-1   0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0112
U 1 1 5E1CC549
P 5475 3600
F 0 "#PWR0112" H 5475 3450 50  0001 C CNN
F 1 "+5VD" H 5490 3773 50  0000 C CNN
F 2 "" H 5475 3600 50  0001 C CNN
F 3 "" H 5475 3600 50  0001 C CNN
	1    5475 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0113
U 1 1 5E1CDBDA
P 5375 5550
F 0 "#PWR0113" H 5375 5300 50  0001 C CNN
F 1 "GNDD" H 5350 5425 50  0000 C CNN
F 2 "" H 5375 5550 50  0001 C CNN
F 3 "" H 5375 5550 50  0001 C CNN
	1    5375 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5375 5450 5375 5550
Wire Wire Line
	6475 4250 5825 4250
Wire Wire Line
	6475 4450 6050 4450
Wire Wire Line
	5475 3600 5475 3650
Wire Wire Line
	8500 3975 8500 3900
Wire Wire Line
	8500 3975 8650 3975
Wire Wire Line
	8650 4075 8275 4075
Text Label 8275 4075 0    50   ~ 0
Data
Wire Wire Line
	8650 4275 8275 4275
Wire Wire Line
	8650 4475 8275 4475
Wire Wire Line
	8650 4575 8275 4575
Text Label 8275 4575 0    50   ~ 0
Reset
Text Label 8275 4275 0    50   ~ 0
Clock
Text Label 8275 4475 0    50   ~ 0
PSLoad
Wire Wire Line
	4550 5150 4250 5150
Text Label 4250 5150 0    50   ~ 0
Data'
Wire Wire Line
	3350 4475 3750 4475
Wire Wire Line
	3350 4375 3750 4375
Wire Wire Line
	3350 4175 3750 4175
Wire Wire Line
	3350 3975 3750 3975
NoConn ~ 4925 4650
NoConn ~ 4925 4850
NoConn ~ 4925 5050
$Comp
L power:VDD #PWR0114
U 1 1 5E21C5C4
P 3750 3825
F 0 "#PWR0114" H 3750 3675 50  0001 C CNN
F 1 "VDD" H 3767 3998 50  0000 C CNN
F 2 "" H 3750 3825 50  0001 C CNN
F 3 "" H 3750 3825 50  0001 C CNN
	1    3750 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3875 3750 3825
Wire Wire Line
	3350 3875 3750 3875
Text Label 3750 3975 2    50   ~ 0
Data'
Text Label 4325 4050 0    50   ~ 0
Clock'
Text Label 3750 4175 2    50   ~ 0
Clock'
$Comp
L power:VDD #PWR0116
U 1 1 5E234087
P 5275 3600
F 0 "#PWR0116" H 5275 3450 50  0001 C CNN
F 1 "VDD" H 5292 3773 50  0000 C CNN
F 2 "" H 5275 3600 50  0001 C CNN
F 3 "" H 5275 3600 50  0001 C CNN
	1    5275 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 3600 5275 3650
$Comp
L Device:R R5
U 1 1 5E238A0A
P 6175 4825
F 0 "R5" V 6250 4825 50  0000 C CNN
F 1 "10k" V 6175 4825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6105 4825 50  0001 C CNN
F 3 "~" H 6175 4825 50  0001 C CNN
F 4 "C25804" V 6175 4825 50  0001 C CNN "LCSC"
	1    6175 4825
	-1   0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0117
U 1 1 5E238F8F
P 6175 4600
F 0 "#PWR0117" H 6175 4450 50  0001 C CNN
F 1 "+5VD" H 6050 4650 50  0000 C CNN
F 2 "" H 6175 4600 50  0001 C CNN
F 3 "" H 6175 4600 50  0001 C CNN
	1    6175 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6175 4600 6175 4675
Wire Wire Line
	6175 4975 5925 4975
Wire Wire Line
	5925 4975 5925 4850
Wire Wire Line
	5925 4850 5825 4850
Wire Wire Line
	5825 4650 5925 4650
Wire Wire Line
	5925 4650 5925 4850
Connection ~ 5925 4850
Wire Wire Line
	5825 5050 5925 5050
Wire Wire Line
	5925 5050 5925 4975
Connection ~ 5925 4975
Wire Wire Line
	5925 5050 5925 5250
Wire Wire Line
	5925 5250 5825 5250
Connection ~ 5925 5050
Text Label 4325 4450 0    50   ~ 0
Reset'
Text Label 4325 4250 0    50   ~ 0
PSLoad'
Text Label 3750 4475 2    50   ~ 0
Reset'
Text Label 3750 4375 2    50   ~ 0
PSLoad'
Wire Wire Line
	3025 2500 3525 2500
Wire Wire Line
	3650 2500 3650 2775
$Comp
L power:GNDD #PWR0118
U 1 1 5E2D24AB
P 3650 2825
F 0 "#PWR0118" H 3650 2575 50  0001 C CNN
F 1 "GNDD" H 3625 2700 50  0000 C CNN
F 2 "" H 3650 2825 50  0001 C CNN
F 3 "" H 3650 2825 50  0001 C CNN
	1    3650 2825
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E2E15F1
P 4125 2550
F 0 "C1" H 4125 2625 50  0000 L CNN
F 1 "100nF" H 4025 2475 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4163 2400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810191216_Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf" H 4125 2550 50  0001 C CNN
F 4 "C28233" H 4125 2550 50  0001 C CNN "LCSC"
	1    4125 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4475 2650 4850 2650
Wire Wire Line
	4775 2300 4850 2300
Wire Wire Line
	4850 2300 4850 2350
Wire Wire Line
	4125 2400 4125 2300
Connection ~ 4125 2300
Wire Wire Line
	4125 2300 4175 2300
Connection ~ 4850 2300
$Comp
L power:+5VD #PWR0120
U 1 1 5E2FC7A3
P 5150 2200
F 0 "#PWR0120" H 5150 2050 50  0001 C CNN
F 1 "+5VD" H 5165 2373 50  0000 C CNN
F 2 "" H 5150 2200 50  0001 C CNN
F 3 "" H 5150 2200 50  0001 C CNN
	1    5150 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 2200 5150 2300
$Comp
L Connector_Generic:Conn_01x06 S88
U 1 1 5E27651B
P 3275 5450
F 0 "S88" H 3193 5017 50  0000 C CNN
F 1 "Conn_01x06" H 3193 5776 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 3275 5450 50  0001 C CNN
F 3 "~" H 3275 5450 50  0001 C CNN
	1    3275 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3475 5650 3825 5650
Wire Wire Line
	3475 5450 3825 5450
Wire Wire Line
	3475 5350 3825 5350
Wire Wire Line
	3475 5250 3825 5250
Wire Wire Line
	4425 1850 4125 1850
Wire Wire Line
	4525 1850 4850 1850
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5E2A0A01
P 4425 1650
F 0 "J2" V 4389 1462 50  0000 R CNN
F 1 "5V Bypass" V 4525 1800 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4425 1650 50  0001 C CNN
F 3 "~" H 4425 1650 50  0001 C CNN
F 4 "" V 4425 1650 50  0001 C CNN "LCSC"
	1    4425 1650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack_Switch_MountingPin J1
U 1 1 5E2383BD
P 2725 2400
F 0 "J1" H 2782 2625 50  0000 C CNN
F 1 "Barrel_Jack_Switch_MountingPin" H 2782 2626 50  0001 C CNN
F 2 "w_conn_misc:dc_socket" H 2775 2360 50  0001 C CNN
F 3 "~" H 2775 2360 50  0001 C CNN
	1    2725 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 2300 3525 2500
Connection ~ 3525 2500
Wire Wire Line
	3525 2500 3650 2500
Wire Wire Line
	3025 2400 3650 2400
Wire Wire Line
	3650 2400 3650 2300
Text Label 3825 5650 2    50   ~ 0
Data'
$Comp
L power:GNDD #PWR0121
U 1 1 5E2C09C0
P 3875 5650
F 0 "#PWR0121" H 3875 5400 50  0001 C CNN
F 1 "GNDD" H 3879 5495 50  0000 C CNN
F 2 "" H 3875 5650 50  0001 C CNN
F 3 "" H 3875 5650 50  0001 C CNN
	1    3875 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3875 5550 3875 5650
Wire Wire Line
	3475 5550 3875 5550
Text Label 3825 5450 2    50   ~ 0
Clock'
Text Label 3825 5350 2    50   ~ 0
PSLoad'
Text Label 3825 5250 2    50   ~ 0
Reset'
$Comp
L power:VDD #PWR0122
U 1 1 5E2C6E18
P 3875 5100
F 0 "#PWR0122" H 3875 4950 50  0001 C CNN
F 1 "VDD" H 3892 5273 50  0000 C CNN
F 2 "" H 3875 5100 50  0001 C CNN
F 3 "" H 3875 5100 50  0001 C CNN
	1    3875 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 5150 3875 5100
Wire Wire Line
	3475 5150 3875 5150
Text Label 7975 4150 2    50   ~ 0
Clock
Text Label 8000 4250 2    50   ~ 0
PSLoad
Text Label 8000 4350 2    50   ~ 0
Reset
Text Label 8000 4450 2    50   ~ 0
Data
$Comp
L Device:C C3
U 1 1 5E3267BA
P 4825 3600
F 0 "C3" H 4940 3646 50  0000 L CNN
F 1 "100nF" H 4940 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4863 3450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810191216_Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf" H 4825 3600 50  0001 C CNN
F 4 "C28233" H 4825 3600 50  0001 C CNN "LCSC"
	1    4825 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0123
U 1 1 5E3267C0
P 4825 3750
F 0 "#PWR0123" H 4825 3500 50  0001 C CNN
F 1 "GNDD" H 4829 3595 50  0000 C CNN
F 2 "" H 4825 3750 50  0001 C CNN
F 3 "" H 4825 3750 50  0001 C CNN
	1    4825 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E332FF0
P 6525 3375
F 0 "C6" H 6300 3425 50  0000 L CNN
F 1 "100nF" H 6175 3325 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6563 3225 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810191216_Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf" H 6525 3375 50  0001 C CNN
F 4 "C28233" H 6525 3375 50  0001 C CNN "LCSC"
	1    6525 3375
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0124
U 1 1 5E332FF6
P 6525 3525
F 0 "#PWR0124" H 6525 3275 50  0001 C CNN
F 1 "GNDD" H 6529 3370 50  0000 C CNN
F 2 "" H 6525 3525 50  0001 C CNN
F 3 "" H 6525 3525 50  0001 C CNN
	1    6525 3525
	-1   0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0125
U 1 1 5E332FFC
P 6525 3225
F 0 "#PWR0125" H 6525 3075 50  0001 C CNN
F 1 "+5VD" H 6540 3398 50  0000 C CNN
F 2 "" H 6525 3225 50  0001 C CNN
F 3 "" H 6525 3225 50  0001 C CNN
	1    6525 3225
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0126
U 1 1 5E34076D
P 4825 3450
F 0 "#PWR0126" H 4825 3300 50  0001 C CNN
F 1 "VDD" H 4842 3623 50  0000 C CNN
F 2 "" H 4825 3450 50  0001 C CNN
F 3 "" H 4825 3450 50  0001 C CNN
	1    4825 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5F4DED96
P 3275 1600
F 0 "J3" H 3275 1375 50  0000 C CNN
F 1 "12V 5V" V 3375 1600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3275 1600 50  0001 C CNN
F 3 "~" H 3275 1600 50  0001 C CNN
	1    3275 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 1700 3475 1700
$Comp
L power:VDD #PWR0115
U 1 1 5F503B99
P 3650 1400
F 0 "#PWR0115" H 3650 1250 50  0001 C CNN
F 1 "VDD" H 3667 1573 50  0000 C CNN
F 2 "" H 3650 1400 50  0001 C CNN
F 3 "" H 3650 1400 50  0001 C CNN
	1    3650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 1600 3525 1600
Wire Wire Line
	3650 1600 3650 1400
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F520A28
P 3875 2300
F 0 "#FLG0101" H 3875 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 3875 2473 50  0000 C CNN
F 2 "" H 3875 2300 50  0001 C CNN
F 3 "~" H 3875 2300 50  0001 C CNN
	1    3875 2300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F5211EF
P 3525 1600
F 0 "#FLG0102" H 3525 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 3525 1773 50  0000 C CNN
F 2 "" H 3525 1600 50  0001 C CNN
F 3 "~" H 3525 1600 50  0001 C CNN
	1    3525 1600
	1    0    0    -1  
$EndComp
Connection ~ 3525 1600
Wire Wire Line
	3525 1600 3650 1600
Wire Wire Line
	4850 2300 5150 2300
NoConn ~ 2725 2700
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F53CF4E
P 8250 3975
F 0 "#FLG0103" H 8250 4050 50  0001 C CNN
F 1 "PWR_FLAG" H 8250 4148 50  0000 C CNN
F 2 "" H 8250 3975 50  0001 C CNN
F 3 "~" H 8250 3975 50  0001 C CNN
	1    8250 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3975 8250 3975
Connection ~ 8500 3975
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5F5465C2
P 8225 4825
F 0 "#FLG0104" H 8225 4900 50  0001 C CNN
F 1 "PWR_FLAG" H 8225 4998 50  0000 C CNN
F 2 "" H 8225 4825 50  0001 C CNN
F 3 "~" H 8225 4825 50  0001 C CNN
	1    8225 4825
	1    0    0    -1  
$EndComp
Wire Wire Line
	8225 4825 8500 4825
Connection ~ 8500 4825
Wire Wire Line
	8500 4825 8500 4900
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5F559237
P 3450 2775
F 0 "#FLG0105" H 3450 2850 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 2948 50  0000 C CNN
F 2 "" H 3450 2775 50  0001 C CNN
F 3 "~" H 3450 2775 50  0001 C CNN
	1    3450 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2775 3650 2775
Connection ~ 3650 2775
Wire Wire Line
	3650 2775 3650 2825
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5F5915ED
P 5725 2350
F 0 "J4" H 5805 2296 50  0000 L CNN
F 1 "Conn_01x04" H 5805 2251 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5725 2350 50  0001 C CNN
F 3 "~" H 5725 2350 50  0001 C CNN
	1    5725 2350
	1    0    0    -1  
$EndComp
Text Label 3325 2400 0    50   ~ 0
Input
Text Label 4900 2300 0    50   ~ 0
Output
Wire Wire Line
	5525 2350 5325 2350
Wire Wire Line
	5525 2450 5325 2450
Wire Wire Line
	5525 2550 5325 2550
NoConn ~ 5525 2250
Text Label 5325 2450 0    50   ~ 0
GNDD
Text Label 5325 2350 0    50   ~ 0
Input
Text Label 5325 2550 0    50   ~ 0
Output
Wire Wire Line
	3025 2300 3525 2300
Wire Wire Line
	5925 4450 5925 4350
Wire Wire Line
	5925 4350 6475 4350
Wire Wire Line
	6050 4050 6050 4150
Wire Wire Line
	6050 4150 6475 4150
Wire Wire Line
	5100 5850 5425 5850
$Comp
L Device:D_Zener D3
U 1 1 624D373C
P 5425 6000
F 0 "D3" V 5379 6080 50  0000 L CNN
F 1 "5V1" V 5470 6080 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5425 6000 50  0001 C CNN
F 3 "~" H 5425 6000 50  0001 C CNN
	1    5425 6000
	0    1    1    0   
$EndComp
Connection ~ 5425 5850
Wire Wire Line
	5425 5850 6050 5850
$Comp
L Regulator_Linear:LM317_TO-252 U1
U 1 1 62548B57
P 4475 2300
F 0 "U1" H 4475 2500 50  0000 C CNN
F 1 "LM317" H 4475 2425 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 4475 2550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs774n/snvs774n.pdf" H 4475 2300 50  0001 C CNN
F 4 "C75510" H 4475 2300 50  0001 C CNN "LCSC"
	1    4475 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 2600 4475 2650
$Comp
L Device:R R1
U 1 1 6255B627
P 4850 2500
F 0 "R1" V 4775 2500 50  0000 C CNN
F 1 "240" V 4850 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4780 2500 50  0001 C CNN
F 3 "~" H 4850 2500 50  0001 C CNN
F 4 "C23350" V 4850 2500 50  0001 C CNN "LCSC"
	1    4850 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4475 2650 4475 2750
Connection ~ 4475 2650
Wire Wire Line
	4125 2700 4125 3125
Wire Wire Line
	4325 4050 4925 4050
Wire Wire Line
	4325 4250 4925 4250
Wire Wire Line
	4325 4450 4925 4450
$Comp
L Device:LED D2
U 1 1 625824B3
P 6225 2100
F 0 "D2" V 6264 1982 50  0000 R CNN
F 1 "Power LED" V 6173 1982 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6225 2100 50  0001 C CNN
F 3 "~" H 6225 2100 50  0001 C CNN
F 4 "C2286" V 6225 2100 50  0001 C CNN "LCSC"
	1    6225 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 6258353D
P 6225 2450
F 0 "R3" V 6150 2450 50  0000 C CNN
F 1 "270" V 6225 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6155 2450 50  0001 C CNN
F 3 "~" H 6225 2450 50  0001 C CNN
F 4 "C22966" V 6225 2450 50  0001 C CNN "LCSC"
	1    6225 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6225 2250 6225 2300
$Comp
L power:GNDD #PWR0127
U 1 1 625892E9
P 6225 2725
F 0 "#PWR0127" H 6225 2475 50  0001 C CNN
F 1 "GNDD" H 6200 2600 50  0000 C CNN
F 2 "" H 6225 2725 50  0001 C CNN
F 3 "" H 6225 2725 50  0001 C CNN
	1    6225 2725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6225 2600 6225 2725
$Comp
L power:+5VD #PWR0128
U 1 1 625900AC
P 6225 1950
F 0 "#PWR0128" H 6225 1800 50  0001 C CNN
F 1 "+5VD" H 6240 2123 50  0000 C CNN
F 2 "" H 6225 1950 50  0001 C CNN
F 3 "" H 6225 1950 50  0001 C CNN
	1    6225 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6255C464
P 4475 2900
F 0 "R2" V 4400 2900 50  0000 C CNN
F 1 "750" V 4475 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4405 2900 50  0001 C CNN
F 3 "~" H 4475 2900 50  0001 C CNN
F 4 "C23241" V 4475 2900 50  0001 C CNN "LCSC"
	1    4475 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4475 3125 4475 3175
$Comp
L power:GNDD #PWR0119
U 1 1 5E2E826F
P 4475 3175
F 0 "#PWR0119" H 4475 2925 50  0001 C CNN
F 1 "GNDD" H 4450 3050 50  0000 C CNN
F 2 "" H 4475 3175 50  0001 C CNN
F 3 "" H 4475 3175 50  0001 C CNN
	1    4475 3175
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4125 3125 4475 3125
Connection ~ 4475 3125
Wire Wire Line
	4475 3050 4475 3125
Wire Wire Line
	7275 4450 8000 4450
Wire Wire Line
	5150 2300 5150 2625
Connection ~ 5150 2300
Wire Wire Line
	5150 2925 5150 3125
Wire Wire Line
	5150 3125 4475 3125
$Comp
L Device:C C2
U 1 1 6262DD31
P 5150 2775
F 0 "C2" H 5265 2821 50  0000 L CNN
F 1 "1uF" H 5265 2730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5188 2625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810271109_Samsung-Electro-Mechanics-CL31B105KBHNNNE_C1848.pdf" H 5150 2775 50  0001 C CNN
F 4 "C28323" H 5150 2775 50  0001 C CNN "LCSC"
	1    5150 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 2300 4125 2300
Wire Wire Line
	3650 2300 3875 2300
Connection ~ 3875 2300
Wire Wire Line
	3650 1700 3650 2300
Connection ~ 3650 2300
Wire Wire Line
	4850 1500 4850 1850
Wire Wire Line
	3475 1500 4850 1500
Connection ~ 4850 1850
Wire Wire Line
	4850 1850 4850 1975
Wire Wire Line
	4125 1850 4125 1975
$Comp
L Device:D D1
U 1 1 6267BD42
P 4475 1975
F 0 "D1" H 4475 2075 50  0000 C CNN
F 1 "M7" H 4600 1925 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 4475 1975 50  0001 C CNN
F 3 "~" H 4475 1975 50  0001 C CNN
F 4 "C95872" H 4475 1975 50  0001 C CNN "LCSC"
	1    4475 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 1975 4850 1975
Connection ~ 4850 1975
Wire Wire Line
	4850 1975 4850 2300
Wire Wire Line
	4325 1975 4125 1975
Connection ~ 4125 1975
Wire Wire Line
	4125 1975 4125 2300
$Comp
L Device:R R9
U 1 1 62792EFF
P 7475 3950
F 0 "R9" V 7400 3950 50  0000 C CNN
F 1 "1k" V 7475 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7405 3950 50  0001 C CNN
F 3 "~" H 7475 3950 50  0001 C CNN
F 4 "C21190" V 7475 3950 50  0001 C CNN "LCSC"
	1    7475 3950
	0    -1   1    0   
$EndComp
Wire Wire Line
	7325 3550 7325 3625
Wire Wire Line
	7325 3625 7625 3625
Connection ~ 7325 3625
Wire Wire Line
	7325 3625 7325 3850
Wire Wire Line
	7625 3950 7625 3625
Connection ~ 7625 3625
Wire Wire Line
	7625 3625 7875 3625
$Comp
L Device:R R10
U 1 1 627CC1B8
P 6275 3950
F 0 "R10" V 6200 3950 50  0000 C CNN
F 1 "1k" V 6275 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6205 3950 50  0001 C CNN
F 3 "~" H 6275 3950 50  0001 C CNN
F 4 "C21190" V 6275 3950 50  0001 C CNN "LCSC"
	1    6275 3950
	0    -1   1    0   
$EndComp
Wire Wire Line
	6475 3950 6425 3950
Wire Wire Line
	6125 3950 6125 3675
Wire Wire Line
	6125 3675 6325 3675
Connection ~ 6325 3675
Wire Wire Line
	6325 3675 6325 3525
$EndSCHEMATC
