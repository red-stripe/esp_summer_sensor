EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP8266
LIBS:SparkFun-Aesthetics
LIBS:SparkFun-Batteries
LIBS:SparkFun-Boards
LIBS:SparkFun-Capacitors
LIBS:SparkFun-Clocks
LIBS:SparkFun-Coils
LIBS:SparkFun-Connectors
LIBS:SparkFun-DiscreteSemi
LIBS:SparkFun-Displays
LIBS:SparkFun-Electromechanical
LIBS:SparkFun-Fuses
LIBS:SparkFun-GPS
LIBS:SparkFun-Hardware
LIBS:SparkFun-IC-Amplifiers
LIBS:SparkFun-IC-Comms
LIBS:SparkFun-IC-Conversion
LIBS:SparkFun-IC-Logic
LIBS:SparkFun-IC-Memory
LIBS:SparkFun-IC-Microcontroller
LIBS:SparkFun-IC-Power
LIBS:SparkFun-IC-Special-Function
LIBS:SparkFun-Jumpers
LIBS:SparkFun-LED
LIBS:SparkFun-PowerSymbols
LIBS:SparkFun-Resistors
LIBS:SparkFun-RF
LIBS:SparkFun-Sensors
LIBS:SparkFun-Switches
LIBS:ESP_temp_pulse-cache
EELAYER 25 0
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
L ESP-12E U?
U 1 1 5A58513B
P 3900 3500
F 0 "U?" H 3900 3400 50  0000 C CNN
F 1 "ESP-12E" H 3900 3600 50  0000 C CNN
F 2 "" H 3900 3500 50  0001 C CNN
F 3 "" H 3900 3500 50  0001 C CNN
	1    3900 3500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A58520A
P 5050 3800
F 0 "R?" V 5130 3800 50  0000 C CNN
F 1 "R" V 5050 3800 50  0000 C CNN
F 2 "" V 4980 3800 50  0001 C CNN
F 3 "" H 5050 3800 50  0001 C CNN
	1    5050 3800
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A58523D
P 2200 3000
F 0 "#PWR?" H 2200 2850 50  0001 C CNN
F 1 "+3.3V" H 2200 3140 50  0000 C CNN
F 2 "" H 2200 3000 50  0001 C CNN
F 3 "" H 2200 3000 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A585259
P 7850 3450
F 0 "#PWR?" H 7850 3300 50  0001 C CNN
F 1 "VCC" H 7850 3600 50  0000 C CNN
F 2 "" H 7850 3450 50  0001 C CNN
F 3 "" H 7850 3450 50  0001 C CNN
	1    7850 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A585273
P 5250 4100
F 0 "#PWR?" H 5250 3850 50  0001 C CNN
F 1 "GND" H 5250 3950 50  0000 C CNN
F 2 "" H 5250 4100 50  0001 C CNN
F 3 "" H 5250 4100 50  0001 C CNN
	1    5250 4100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J?
U 1 1 5A58534B
P 6550 1150
F 0 "J?" H 6550 1450 50  0000 C CNN
F 1 "Conn_01x06" H 6550 750 50  0000 C CNN
F 2 "" H 6550 1150 50  0001 C CNN
F 3 "" H 6550 1150 50  0001 C CNN
	1    6550 1150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A5855B9
P 2300 3350
F 0 "R?" V 2380 3350 50  0000 C CNN
F 1 "R" V 2300 3350 50  0000 C CNN
F 2 "" V 2230 3350 50  0001 C CNN
F 3 "" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A585652
P 2400 3550
F 0 "R?" V 2480 3550 50  0000 C CNN
F 1 "R" V 2400 3550 50  0000 C CNN
F 2 "" V 2330 3550 50  0001 C CNN
F 3 "" H 2400 3550 50  0001 C CNN
	1    2400 3550
	1    0    0    -1  
$EndComp
$Comp
L MOMENTARY-SWITCH-SPST-2-SMD-4.6X2.8MM S?
U 1 1 5A5857A1
P 2700 2850
F 0 "S?" H 2450 2900 45  0000 L BNN
F 1 "Reset Switch" H 2400 3200 45  0000 L BNN
F 2 "TACTILE_SWITCH_SMD_4.6X2.8MM" H 2700 3100 20  0001 C CNN
F 3 "" H 2700 2850 50  0001 C CNN
F 4 "SWCH-13065" H 2700 3150 60  0000 C CNN "Field4"
	1    2700 2850
	1    0    0    -1  
$EndComp
$Comp
L SWITCH_TOGGLE_SPST_RIGHT_ANGLE S?
U 1 1 5A5857F4
P 5400 3800
F 0 "S?" H 5400 3700 50  0000 C CNN
F 1 "Program Mode" H 5400 3900 50  0000 C CNN
F 2 "" H 5400 3800 50  0001 C CNN
F 3 "" H 5400 3800 50  0001 C CNN
F 4 "PRT-13888" H 5400 3600 50  0001 C CNN "Field4"
	1    5400 3800
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A5859C0
P 5300 3400
F 0 "R?" V 5380 3400 50  0000 C CNN
F 1 "R" V 5300 3400 50  0000 C CNN
F 2 "" V 5230 3400 50  0001 C CNN
F 3 "" H 5300 3400 50  0001 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A5859ED
P 5300 3150
F 0 "#PWR?" H 5300 3000 50  0001 C CNN
F 1 "+3.3V" H 5300 3290 50  0000 C CNN
F 2 "" H 5300 3150 50  0001 C CNN
F 3 "" H 5300 3150 50  0001 C CNN
	1    5300 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A585ABF
P 3000 3000
F 0 "#PWR?" H 3000 2750 50  0001 C CNN
F 1 "GND" H 3000 2850 50  0000 C CNN
F 2 "" H 3000 3000 50  0001 C CNN
F 3 "" H 3000 3000 50  0001 C CNN
	1    3000 3000
	1    0    0    -1  
$EndComp
Text Label 6200 950  0    60   ~ 0
GND
Text Label 6200 1050 0    60   ~ 0
CTS
Text Label 6200 1250 0    60   ~ 0
TXO
Text Label 6200 1350 0    60   ~ 0
RXI
Text Label 6200 1450 0    60   ~ 0
DTR
Text Label 6100 1150 0    60   ~ 0
+3.3V
Text Label 4950 3500 2    60   ~ 0
SDA
Text Label 4950 3400 2    60   ~ 0
SCL
Text Label 4950 3200 2    60   ~ 0
TXD
Text Label 4950 3300 2    60   ~ 0
RXD
$Comp
L LTV-357T U?
U 1 1 5A6545CD
P 1150 1200
F 0 "U?" H 940 1390 50  0000 L CNN
F 1 "LTV-357T" H 1150 1400 50  0000 L CNN
F 2 "Housings_SOIC:SO-4_4.4x3.6mm_Pitch2.54mm" H 950 1000 50  0001 L CIN
F 3 "" H 1150 1200 50  0001 L CNN
	1    1150 1200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A65481D
P 2750 1450
F 0 "R?" V 2830 1450 50  0000 C CNN
F 1 "R" V 2750 1450 50  0000 C CNN
F 2 "" V 2680 1450 50  0001 C CNN
F 3 "" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A6548D8
P 2750 1700
F 0 "#PWR?" H 2750 1450 50  0001 C CNN
F 1 "GND" H 2750 1550 50  0000 C CNN
F 2 "" H 2750 1700 50  0001 C CNN
F 3 "" H 2750 1700 50  0001 C CNN
	1    2750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3900 2300 3900
Wire Wire Line
	2300 3900 2400 3900
Wire Wire Line
	2400 3900 3000 3900
Wire Wire Line
	2200 3900 2200 3000
Wire Wire Line
	4800 3900 5250 3900
Wire Wire Line
	5250 3800 5250 3900
Wire Wire Line
	5250 3900 5250 4050
Wire Wire Line
	5250 4050 5250 4100
Wire Wire Line
	2300 3200 2400 3200
Wire Wire Line
	2400 3200 3000 3200
Wire Wire Line
	2400 2950 2400 3200
Connection ~ 2400 3200
Wire Wire Line
	2300 3500 2300 3900
Connection ~ 2300 3900
Wire Wire Line
	2400 3400 3000 3400
Wire Wire Line
	2400 3700 2400 3900
Connection ~ 2400 3900
Wire Wire Line
	4800 3800 4900 3800
Wire Wire Line
	5200 3800 5250 3800
Connection ~ 5250 3900
Wire Wire Line
	2400 2950 2500 2950
Wire Wire Line
	2900 2950 3000 2950
Wire Wire Line
	3000 2950 3000 3000
Wire Wire Line
	5300 3600 5300 3550
Wire Wire Line
	5300 3250 5300 3150
Wire Wire Line
	4800 3600 5300 3600
Wire Wire Line
	5300 3600 5400 3600
Connection ~ 5300 3600
Wire Wire Line
	5400 4000 5400 4050
Wire Wire Line
	5400 4050 5250 4050
Connection ~ 5250 4050
Wire Wire Line
	6350 1450 6200 1450
Wire Wire Line
	6350 1350 6200 1350
Wire Wire Line
	6350 1250 6200 1250
Wire Wire Line
	6100 1150 6350 1150
Wire Wire Line
	6350 1050 6200 1050
Wire Wire Line
	6350 950  6200 950 
Wire Wire Line
	4800 3400 4950 3400
Wire Wire Line
	4800 3500 4950 3500
Wire Wire Line
	4800 3300 4950 3300
Wire Wire Line
	4800 3200 4950 3200
Wire Wire Line
	2500 1200 2750 1200
Wire Wire Line
	2750 1200 2900 1200
Wire Wire Line
	2750 1200 2750 1300
Connection ~ 2750 1200
Wire Wire Line
	2750 1700 2750 1600
$Comp
L +3.3V #PWR?
U 1 1 5A654BF8
P 2750 950
F 0 "#PWR?" H 2750 800 50  0001 C CNN
F 1 "+3.3V" H 2750 1090 50  0000 C CNN
F 2 "" H 2750 950 50  0001 C CNN
F 3 "" H 2750 950 50  0001 C CNN
	1    2750 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3600 2800 3600
Text Label 2800 3600 0    60   ~ 0
Pulse
Text Label 2900 1200 2    60   ~ 0
Pulse
$Comp
L Conn_01x02 J?
U 1 1 5A654E2B
P 1800 1100
F 0 "J?" H 1800 1200 50  0000 C CNN
F 1 "Conn_01x02" H 1800 900 50  0000 C CNN
F 2 "" H 1800 1100 50  0001 C CNN
F 3 "" H 1800 1100 50  0001 C CNN
	1    1800 1100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5A654EB0
P 2300 1100
F 0 "J?" H 2300 1200 50  0000 C CNN
F 1 "Conn_01x02" H 2300 900 50  0000 C CNN
F 2 "" H 2300 1100 50  0001 C CNN
F 3 "" H 2300 1100 50  0001 C CNN
	1    2300 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 1100 1600 1100
Wire Wire Line
	1450 1300 1500 1300
Wire Wire Line
	1500 1300 1500 1200
Wire Wire Line
	1500 1200 1600 1200
Wire Wire Line
	2750 1100 2500 1100
Wire Wire Line
	2750 950  2750 1100
Wire Notes Line
	2000 650  2000 1550
Wire Notes Line
	2000 1550 700  1550
Wire Notes Line
	700  1550 700  650 
Wire Notes Line
	700  650  2000 650 
Text Notes 1600 750  2    60   ~ 0
Pulse meter circuit
$Comp
L Conn_01x04 J?
U 1 1 5A65595C
P 4000 1150
F 0 "J?" H 4000 1350 50  0000 C CNN
F 1 "Conn_01x04" H 4000 850 50  0000 C CNN
F 2 "" H 4000 1150 50  0001 C CNN
F 3 "" H 4000 1150 50  0001 C CNN
	1    4000 1150
	1    0    0    -1  
$EndComp
Text Label 3650 1150 0    60   ~ 0
SCL
Text Label 3650 1250 0    60   ~ 0
SDA
Text Label 3650 1050 0    60   ~ 0
GND
Text Label 3550 1350 0    60   ~ 0
+3.3V
Wire Wire Line
	3550 1350 3800 1350
Wire Wire Line
	3800 1250 3650 1250
Wire Wire Line
	3800 1150 3650 1150
Wire Wire Line
	3800 1050 3650 1050
$Comp
L Conn_01x04 J?
U 1 1 5A655994
P 5300 1150
F 0 "J?" H 5300 1350 50  0000 C CNN
F 1 "Conn_01x04" H 5300 850 50  0000 C CNN
F 2 "" H 5300 1150 50  0001 C CNN
F 3 "" H 5300 1150 50  0001 C CNN
	1    5300 1150
	1    0    0    -1  
$EndComp
Text Label 4950 1150 0    60   ~ 0
SCL
Text Label 4950 1250 0    60   ~ 0
SDA
Text Label 4950 1050 0    60   ~ 0
GND
Text Label 4850 1350 0    60   ~ 0
+3.3V
Wire Wire Line
	4850 1350 5100 1350
Wire Wire Line
	5100 1250 4950 1250
Wire Wire Line
	5100 1150 4950 1150
Wire Wire Line
	5100 1050 4950 1050
Wire Notes Line
	3500 1550 3500 750 
Wire Notes Line
	3500 750  4350 750 
Wire Notes Line
	4350 750  4350 1550
Wire Notes Line
	4350 1550 3500 1550
Text Notes 3550 850  0    60   ~ 0
HDC1080
Wire Notes Line
	4800 1550 4800 750 
Wire Notes Line
	4800 750  5650 750 
Wire Notes Line
	5650 750  5650 1550
Wire Notes Line
	5650 1550 4800 1550
Text Notes 4850 850  0    60   ~ 0
SSD1306
Wire Notes Line
	6000 750  6000 1600
Wire Notes Line
	6000 1600 6800 1600
Wire Notes Line
	6800 1600 6800 750 
Wire Notes Line
	6800 750  6000 750 
Text Notes 6050 850  0    60   ~ 0
FTDI
Text Notes 3550 1750 0    60   ~ 0
^^^   Check pinouts on both of these    ^^^
$EndSCHEMATC
