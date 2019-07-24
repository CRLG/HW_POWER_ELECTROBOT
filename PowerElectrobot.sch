EESchema Schematic File Version 4
LIBS:PowerElectrobot-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Power Electrobot"
Date ""
Rev ""
Comp "CRLG"
Comment1 "Carte de distribution de puissance"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 850  7125 0    50   ~ 0
- Mise en série des 2 packs batterie\n- Equivalent de la PowerSwitch\n- Mesure de tension batterie\n- Connecteur XT60-M d'entrée VBATT\n- Connecteur XT60-F pour la recharge batterie\n- 2 sorties de puissance sur XT30-F avec chacune mesure de courant (pour alimenter les ponts en H Gauche et Droit)\n- Plusieurs connecteurs XT30-F pour redistribution du VBATT ailleur (vers AXIFACE, ELECTROBOT)\nRégulateur à découpage 5V/2.5A pour la RPI. Sortie 5V sur connecteur XT30 noir (à vérifier si ça existe)\n- Voir pour un fusible sur le VBAT ?\n\n
$Comp
L CRLG-Connectors:Conn_XT60M J?
U 1 1 5D3897A8
P 700 900
F 0 "J?" H 618 583 50  0000 C CNN
F 1 "Conn_XT60M" H 618 674 50  0000 C CNN
F 2 "" H 700 900 50  0001 C CNN
F 3 "" H 700 900 50  0001 C CNN
	1    700  900 
	-1   0    0    1   
$EndComp
Text Label 900  800  0    50   ~ 0
VBAT_1
$Comp
L CRLG_Regulators:TSR_2-2450 U?
U 1 1 5D38B0C9
P 3675 1025
F 0 "U?" H 3925 875 50  0000 C CNN
F 1 "TSR_2-2450" H 3675 1301 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 3675 875 50  0001 L CIN
F 3 "" H 3675 1025 50  0001 C CNN
	1    3675 1025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D38BF24
P 3675 1275
F 0 "#PWR?" H 3675 1025 50  0001 C CNN
F 1 "GND" H 3680 1102 50  0000 C CNN
F 2 "" H 3675 1275 50  0001 C CNN
F 3 "" H 3675 1275 50  0001 C CNN
	1    3675 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 1225 3675 1275
Text Label 4075 925  0    50   ~ 0
+5V
Text Label 3100 925  0    50   ~ 0
VBAT
Wire Wire Line
	3100 925  3275 925 
$Comp
L CRLG-Connectors:Conn_XT30F J?
U 1 1 5D38E5A8
P 4600 1025
F 0 "J?" H 4518 708 50  0000 C CNN
F 1 "Conn_XT30F" H 4518 799 50  0000 C CNN
F 2 "XT30:AMASS_XT30UPB-F_1x02_P5.0mm_Vertical" H 4600 1025 50  0001 C CNN
F 3 "" H 4600 1025 50  0001 C CNN
	1    4600 1025
	1    0    0    1   
$EndComp
Wire Wire Line
	4075 925  4400 925 
$Comp
L power:GND #PWR?
U 1 1 5D38EC85
P 4400 1075
F 0 "#PWR?" H 4400 825 50  0001 C CNN
F 1 "GND" H 4405 902 50  0000 C CNN
F 2 "" H 4400 1075 50  0001 C CNN
F 3 "" H 4400 1075 50  0001 C CNN
	1    4400 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1025 4400 1075
Wire Notes Line
	3050 625  4725 625 
Wire Notes Line
	4725 625  4725 1525
Wire Notes Line
	4725 1525 3050 1525
Wire Notes Line
	3050 1525 3050 625 
Text Notes 3075 600  0    50   ~ 0
Alimentation 5V pour Raspberry Pi
$Comp
L CRLG-Passive:R R?
U 1 1 5D390072
P 1125 2500
F 0 "R?" H 1195 2546 50  0000 L CNN
F 1 "R" H 1195 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1055 2500 50  0001 C CNN
F 3 "" H 1125 2500 50  0001 C CNN
	1    1125 2500
	1    0    0    -1  
$EndComp
$Comp
L CRLG-Passive:R R?
U 1 1 5D390423
P 1125 2875
F 0 "R?" H 1195 2921 50  0000 L CNN
F 1 "R" H 1195 2830 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1055 2875 50  0001 C CNN
F 3 "" H 1125 2875 50  0001 C CNN
	1    1125 2875
	1    0    0    -1  
$EndComp
$Comp
L CRLG-Passive:C C?
U 1 1 5D390844
P 1500 2875
F 0 "C?" H 1615 2921 50  0000 L CNN
F 1 "C" H 1615 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1538 2725 50  0001 C CNN
F 3 "" H 1500 2875 50  0001 C CNN
	1    1500 2875
	1    0    0    -1  
$EndComp
Text Notes 900  2150 0    50   ~ 0
Mesure de tension batterie
$Comp
L power:GND #PWR?
U 1 1 5D3911B5
P 1125 3100
F 0 "#PWR?" H 1125 2850 50  0001 C CNN
F 1 "GND" H 1130 2927 50  0000 C CNN
F 2 "" H 1125 3100 50  0001 C CNN
F 3 "" H 1125 3100 50  0001 C CNN
	1    1125 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 3025 1500 3025
Wire Wire Line
	1125 3100 1125 3025
Connection ~ 1125 3025
Wire Wire Line
	1125 2650 1125 2725
Wire Wire Line
	1500 2725 1125 2725
Connection ~ 1125 2725
Wire Wire Line
	1125 2350 1125 2275
Wire Wire Line
	1125 2275 875  2275
Text Label 875  2275 0    50   ~ 0
VBAT
Wire Wire Line
	1125 2725 775  2725
Text Label 775  2725 0    50   ~ 0
VBAT_f
Text Notes 3050 1825 0    50   ~ 0
Distribution des alimentations VBAT
$Comp
L CRLG-Connectors:Conn_XT30F J?
U 1 1 5D394D51
P 4900 2300
F 0 "J?" H 4875 2425 50  0000 C CNN
F 1 "Conn_XT30F" H 4975 2100 50  0000 C CNN
F 2 "XT30:AMASS_XT30UPB-F_1x02_P5.0mm_Vertical" H 4900 2300 50  0001 C CNN
F 3 "" H 4900 2300 50  0001 C CNN
	1    4900 2300
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D395BF6
P 4700 2350
F 0 "#PWR?" H 4700 2100 50  0001 C CNN
F 1 "GND" H 4705 2177 50  0000 C CNN
F 2 "" H 4700 2350 50  0001 C CNN
F 3 "" H 4700 2350 50  0001 C CNN
	1    4700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2200 4700 2025
Wire Wire Line
	4700 2025 4550 2025
Text Label 4550 2025 0    50   ~ 0
VBAT
Wire Wire Line
	4700 2300 4700 2350
$Comp
L CRLG-Connectors:Conn_XT30F J?
U 1 1 5D399522
P 4150 2275
F 0 "J?" H 4125 2400 50  0000 C CNN
F 1 "Conn_XT30F" H 4225 2075 50  0000 C CNN
F 2 "XT30:AMASS_XT30UPB-F_1x02_P5.0mm_Vertical" H 4150 2275 50  0001 C CNN
F 3 "" H 4150 2275 50  0001 C CNN
	1    4150 2275
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D399528
P 3950 2325
F 0 "#PWR?" H 3950 2075 50  0001 C CNN
F 1 "GND" H 3955 2152 50  0000 C CNN
F 2 "" H 3950 2325 50  0001 C CNN
F 3 "" H 3950 2325 50  0001 C CNN
	1    3950 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2175 3950 2000
Wire Wire Line
	3950 2000 3800 2000
Text Label 3800 2000 0    50   ~ 0
VBAT
Wire Wire Line
	3950 2275 3950 2325
$Comp
L CRLG-Connectors:Conn_XT30F J?
U 1 1 5D399B36
P 3425 2275
F 0 "J?" H 3400 2400 50  0000 C CNN
F 1 "Conn_XT30F" H 3500 2075 50  0000 C CNN
F 2 "XT30:AMASS_XT30UPB-F_1x02_P5.0mm_Vertical" H 3425 2275 50  0001 C CNN
F 3 "" H 3425 2275 50  0001 C CNN
	1    3425 2275
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D399B3C
P 3225 2325
F 0 "#PWR?" H 3225 2075 50  0001 C CNN
F 1 "GND" H 3230 2152 50  0000 C CNN
F 2 "" H 3225 2325 50  0001 C CNN
F 3 "" H 3225 2325 50  0001 C CNN
	1    3225 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 2175 3225 2000
Wire Wire Line
	3225 2000 3075 2000
Text Label 3075 2000 0    50   ~ 0
VBAT
Wire Wire Line
	3225 2275 3225 2325
Wire Wire Line
	3225 3000 3225 3050
Text Label 3075 2725 0    50   ~ 0
VBAT
Wire Wire Line
	3225 2725 3075 2725
Wire Wire Line
	3225 2900 3225 2725
$Comp
L power:GND #PWR?
U 1 1 5D39A5DE
P 3225 3050
F 0 "#PWR?" H 3225 2800 50  0001 C CNN
F 1 "GND" H 3230 2877 50  0000 C CNN
F 2 "" H 3225 3050 50  0001 C CNN
F 3 "" H 3225 3050 50  0001 C CNN
	1    3225 3050
	1    0    0    -1  
$EndComp
$Comp
L CRLG-Connectors:Conn_XT30F J?
U 1 1 5D39A5D8
P 3425 3000
F 0 "J?" H 3400 3125 50  0000 C CNN
F 1 "Conn_XT30F" H 3500 2800 50  0000 C CNN
F 2 "XT30:AMASS_XT30UPB-F_1x02_P5.0mm_Vertical" H 3425 3000 50  0001 C CNN
F 3 "" H 3425 3000 50  0001 C CNN
	1    3425 3000
	1    0    0    1   
$EndComp
Wire Notes Line
	3050 1875 3050 3325
Wire Notes Line
	3050 3325 5275 3325
Wire Notes Line
	5275 3325 5275 1875
Wire Notes Line
	5275 1875 3050 1875
$Comp
L CRLG-Connectors:Conn_XT60M J?
U 1 1 5D3A787B
P 675 1425
F 0 "J?" H 593 1108 50  0000 C CNN
F 1 "Conn_XT60M" H 593 1199 50  0000 C CNN
F 2 "" H 675 1425 50  0001 C CNN
F 3 "" H 675 1425 50  0001 C CNN
	1    675  1425
	-1   0    0    1   
$EndComp
Text Label 875  1325 0    50   ~ 0
VBAT_2
Text Label 875  1425 0    50   ~ 0
GND_BAT_2
Text Label 900  900  0    50   ~ 0
GND_BAT_1
Text Label 1600 800  0    50   ~ 0
VBAT
Wire Wire Line
	1325 900  1325 1325
Wire Wire Line
	875  1325 1325 1325
Wire Wire Line
	900  900  1325 900 
$Comp
L power:GND #PWR?
U 1 1 5D3B3227
P 1775 1450
F 0 "#PWR?" H 1775 1200 50  0001 C CNN
F 1 "GND" H 1780 1277 50  0000 C CNN
F 2 "" H 1775 1450 50  0001 C CNN
F 3 "" H 1775 1450 50  0001 C CNN
	1    1775 1450
	1    0    0    -1  
$EndComp
Text Notes 1375 1125 0    50   ~ 0
Mise en série des 2 batteries
$Comp
L Device:Fuse F?
U 1 1 5D3BD540
P 1425 800
F 0 "F?" V 1228 800 50  0000 C CNN
F 1 "Fuse" V 1319 800 50  0000 C CNN
F 2 "" V 1355 800 50  0001 C CNN
F 3 "~" H 1425 800 50  0001 C CNN
	1    1425 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	900  800  1275 800 
Wire Wire Line
	1575 800  1775 800 
Wire Wire Line
	1775 1425 1775 1450
Wire Wire Line
	875  1425 1775 1425
$Comp
L Sensor_Current:ACS712xLCTR-05B U?
U 1 1 5D3C4C46
P 7325 2725
F 0 "U?" H 7575 2375 50  0000 C CNN
F 1 "ACS712xLCTR-05B" H 6850 3125 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7425 2375 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS712-Datasheet.ashx?la=en" H 7325 2725 50  0001 C CNN
	1    7325 2725
	1    0    0    -1  
$EndComp
Text Notes 5900 1825 0    50   ~ 0
Sorties avec mesure de courant
Text Notes 4150 2800 0    50   ~ 0
XT30 Femelle
$Comp
L power:GND #PWR?
U 1 1 5D3CABED
P 7325 3175
F 0 "#PWR?" H 7325 2925 50  0001 C CNN
F 1 "GND" H 7330 3002 50  0000 C CNN
F 2 "" H 7325 3175 50  0001 C CNN
F 3 "" H 7325 3175 50  0001 C CNN
	1    7325 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 3125 7325 3175
Text Label 6700 2525 0    50   ~ 0
VBAT
Wire Wire Line
	6700 2525 6925 2525
$Comp
L CRLG-Connectors:Conn_XT30F J?
U 1 1 5D3CF040
P 6225 3025
F 0 "J?" H 6200 3150 50  0000 C CNN
F 1 "Conn_XT30F" H 6300 2825 50  0000 C CNN
F 2 "XT30:AMASS_XT30UPB-F_1x02_P5.0mm_Vertical" H 6225 3025 50  0001 C CNN
F 3 "" H 6225 3025 50  0001 C CNN
	1    6225 3025
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D3D0642
P 6500 3075
F 0 "#PWR?" H 6500 2825 50  0001 C CNN
F 1 "GND" H 6505 2902 50  0000 C CNN
F 2 "" H 6500 3075 50  0001 C CNN
F 3 "" H 6500 3075 50  0001 C CNN
	1    6500 3075
	1    0    0    -1  
$EndComp
Text Label 7025 2025 0    50   ~ 0
+5V
Wire Wire Line
	7725 2725 8075 2725
Text Label 7775 2725 0    50   ~ 0
MEAS_CURR_1
$Comp
L CRLG-Passive:C C?
U 1 1 5D3D6DB0
P 7925 3000
F 0 "C?" H 7810 2954 50  0000 R CNN
F 1 "1n" H 7810 3045 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7963 2850 50  0001 C CNN
F 3 "" H 7925 3000 50  0001 C CNN
	1    7925 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7325 3175 7925 3175
Wire Wire Line
	7925 3175 7925 3150
Connection ~ 7325 3175
Wire Wire Line
	7725 2825 7925 2825
Wire Wire Line
	7925 2825 7925 2850
$Comp
L power:GND #PWR?
U 1 1 5D3D9A6C
P 7700 2250
F 0 "#PWR?" H 7700 2000 50  0001 C CNN
F 1 "GND" H 7705 2077 50  0000 C CNN
F 2 "" H 7700 2250 50  0001 C CNN
F 3 "" H 7700 2250 50  0001 C CNN
	1    7700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 2325 7325 2200
$Comp
L CRLG-Passive:C C?
U 1 1 5D3E0671
P 7550 2200
F 0 "C?" V 7750 2250 50  0000 C CNN
F 1 "100n" V 7675 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7588 2050 50  0001 C CNN
F 3 "" H 7550 2200 50  0001 C CNN
	1    7550 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7325 2025 7025 2025
Wire Wire Line
	7325 2200 7400 2200
Connection ~ 7325 2200
Wire Wire Line
	7325 2200 7325 2025
Wire Wire Line
	7700 2200 7700 2250
Wire Wire Line
	6425 2925 6925 2925
Wire Wire Line
	6425 3025 6500 3025
Wire Wire Line
	6500 3025 6500 3075
Text Label 6425 2925 0    50   ~ 0
OUT_MEAS_1
$Comp
L Sensor_Current:ACS712xLCTR-05B U?
U 1 1 5D406366
P 10025 2725
F 0 "U?" H 10275 2375 50  0000 C CNN
F 1 "ACS712xLCTR-05B" H 9550 3125 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10125 2375 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS712-Datasheet.ashx?la=en" H 10025 2725 50  0001 C CNN
	1    10025 2725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D40636C
P 10025 3175
F 0 "#PWR?" H 10025 2925 50  0001 C CNN
F 1 "GND" H 10030 3002 50  0000 C CNN
F 2 "" H 10025 3175 50  0001 C CNN
F 3 "" H 10025 3175 50  0001 C CNN
	1    10025 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	10025 3125 10025 3175
Text Label 9400 2525 0    50   ~ 0
VBAT
Wire Wire Line
	9400 2525 9625 2525
$Comp
L CRLG-Connectors:Conn_XT30F J?
U 1 1 5D406375
P 8925 3025
F 0 "J?" H 8900 3150 50  0000 C CNN
F 1 "Conn_XT30F" H 9000 2825 50  0000 C CNN
F 2 "XT30:AMASS_XT30UPB-F_1x02_P5.0mm_Vertical" H 8925 3025 50  0001 C CNN
F 3 "" H 8925 3025 50  0001 C CNN
	1    8925 3025
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D40637B
P 9200 3075
F 0 "#PWR?" H 9200 2825 50  0001 C CNN
F 1 "GND" H 9205 2902 50  0000 C CNN
F 2 "" H 9200 3075 50  0001 C CNN
F 3 "" H 9200 3075 50  0001 C CNN
	1    9200 3075
	1    0    0    -1  
$EndComp
Text Label 9725 2025 0    50   ~ 0
+5V
Wire Wire Line
	10425 2725 10775 2725
Text Label 10475 2725 0    50   ~ 0
MEAS_CURR_2
$Comp
L CRLG-Passive:C C?
U 1 1 5D406384
P 10625 3000
F 0 "C?" H 10510 2954 50  0000 R CNN
F 1 "1n" H 10510 3045 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10663 2850 50  0001 C CNN
F 3 "" H 10625 3000 50  0001 C CNN
	1    10625 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10025 3175 10625 3175
Wire Wire Line
	10625 3175 10625 3150
Connection ~ 10025 3175
Wire Wire Line
	10425 2825 10625 2825
Wire Wire Line
	10625 2825 10625 2850
$Comp
L power:GND #PWR?
U 1 1 5D40638F
P 10400 2250
F 0 "#PWR?" H 10400 2000 50  0001 C CNN
F 1 "GND" H 10405 2077 50  0000 C CNN
F 2 "" H 10400 2250 50  0001 C CNN
F 3 "" H 10400 2250 50  0001 C CNN
	1    10400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10025 2325 10025 2200
$Comp
L CRLG-Passive:C C?
U 1 1 5D406396
P 10250 2200
F 0 "C?" V 10450 2250 50  0000 C CNN
F 1 "100n" V 10375 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10288 2050 50  0001 C CNN
F 3 "" H 10250 2200 50  0001 C CNN
	1    10250 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10025 2025 9725 2025
Wire Wire Line
	10025 2200 10100 2200
Connection ~ 10025 2200
Wire Wire Line
	10025 2200 10025 2025
Wire Wire Line
	10400 2200 10400 2250
Wire Wire Line
	9125 2925 9625 2925
Wire Wire Line
	9125 3025 9200 3025
Wire Wire Line
	9200 3025 9200 3075
Text Label 9125 2925 0    50   ~ 0
OUT_MEAS_2
Wire Notes Line
	5875 1900 5875 3475
Wire Notes Line
	5875 3475 11025 3475
Wire Notes Line
	11025 3475 11025 1900
Wire Notes Line
	11025 1900 5875 1900
$EndSCHEMATC
