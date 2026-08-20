v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {xINV13   P13B = !P13} -1290 100 0 0 0.3 0.3 {}
T {xINV14   P14B = !P14} -1290 400 0 0 0.3 0.3 {}
T {xINV15   P15B = !P15} -1290 700 0 0 0.3 0.3 {}
T {xINV16   P16B = !P16} -1290 1000 0 0 0.3 0.3 {}
T {xOR_S4   S4 = P13B + P14B} -90 100 0 0 0.3 0.3 {}
T {xAND1   N1 = P15B . P16} -90 400 0 0 0.3 0.3 {}
T {xAND2   N3 = P15 . P16B} -90 700 0 0 0.3 0.3 {}
T {xAND3   N5 = P13 . P14} -90 1000 0 0 0.3 0.3 {}
T {xAND6   N8 = P14 . P13} -90 1300 0 0 0.3 0.3 {}
T {xAND_S5   S5 = P15 . S4} 1110 100 0 0 0.3 0.3 {}
T {xOR1   N2 = P14B + N1} 1110 400 0 0 0.3 0.3 {}
T {xOR2   N4 = P13B + N3} 1110 700 0 0 0.3 0.3 {}
T {xAND4   N6 = N5 . P15} 1110 1000 0 0 0.3 0.3 {}
T {xAND5   N7 = S4 . P16} 1110 1300 0 0 0.3 0.3 {}
T {xAND7   N9 = P17 . N8} 1110 1600 0 0 0.3 0.3 {}
T {xAND_S7   S7 = S4 . P17} 1110 1900 0 0 0.3 0.3 {}
T {xAND_S1   S1 = P13 . N2} 2310 400 0 0 0.3 0.3 {}
T {xAND_S2   S2 = P14 . N4} 2310 700 0 0 0.3 0.3 {}
T {xAND_S3   S3 = P16 . N6} 2310 1000 0 0 0.3 0.3 {}
T {xOR_S6   S6 = N7 + N9} 2310 1600 0 0 0.3 0.3 {}
T {xAND_S9   S9 = S6 . P19} 3510 1600 0 0 0.3 0.3 {}
N -1200 -80 -1200 -40 {lab=VDD}
N -1200 40 -1200 80 {lab=GND}
N -1200 220 -1200 260 {lab=VDD}
N -1200 340 -1200 380 {lab=GND}
N -1200 520 -1200 560 {lab=VDD}
N -1200 640 -1200 680 {lab=GND}
N -1200 820 -1200 860 {lab=VDD}
N -1200 940 -1200 980 {lab=GND}
N 0 -80 0 -40 {lab=VDD}
N 0 40 0 80 {lab=GND}
N 0 220 0 260 {lab=VDD}
N 0 340 0 380 {lab=GND}
N 0 520 0 560 {lab=VDD}
N 0 640 0 680 {lab=GND}
N 0 820 0 860 {lab=VDD}
N 0 940 0 980 {lab=GND}
N 0 1120 0 1160 {lab=VDD}
N 0 1240 0 1280 {lab=GND}
N 1200 -80 1200 -40 {lab=VDD}
N 1200 40 1200 80 {lab=GND}
N 1200 220 1200 260 {lab=VDD}
N 1200 340 1200 380 {lab=GND}
N 1200 520 1200 560 {lab=VDD}
N 1200 640 1200 680 {lab=GND}
N 1200 820 1200 860 {lab=VDD}
N 1200 940 1200 980 {lab=GND}
N 1200 1120 1200 1160 {lab=VDD}
N 1200 1240 1200 1280 {lab=GND}
N 1200 1420 1200 1460 {lab=VDD}
N 1200 1540 1200 1580 {lab=GND}
N 1200 1720 1200 1760 {lab=VDD}
N 1200 1840 1200 1880 {lab=GND}
N 2400 220 2400 260 {lab=VDD}
N 2400 340 2400 380 {lab=GND}
N 2400 520 2400 560 {lab=VDD}
N 2400 640 2400 680 {lab=GND}
N 2400 820 2400 860 {lab=VDD}
N 2400 940 2400 980 {lab=GND}
N 2400 1420 2400 1460 {lab=VDD}
N 2400 1540 2400 1580 {lab=GND}
N 3600 1420 3600 1460 {lab=VDD}
N 3600 1540 3600 1580 {lab=GND}
N 2990 720 3110 720 {lab=VDD}
N 2990 620 3110 620 {lab=GND}
N -2400 -150 1320 -150 {lab=#net1}
N -2280 -150 -2280 0 {lab=#net1}
N -2280 0 -1280 0 {lab=#net1}
N -1080 -150 -1080 880 {lab=#net1}
N -1080 880 -80 880 {lab=#net1}
N -1040 -150 -1040 1220 {lab=#net1}
N -1040 1220 -80 1220 {lab=#net1}
N 1320 -150 1320 280 {lab=#net1}
N 1320 280 2320 280 {lab=#net1}
N -2400 150 1360 150 {lab=#net2}
N -2240 150 -2240 300 {lab=#net2}
N -2240 300 -1280 300 {lab=#net2}
N -1000 150 -1000 920 {lab=#net2}
N -1000 920 -80 920 {lab=#net2}
N -960 150 -960 1180 {lab=#net2}
N -960 1180 -80 1180 {lab=#net2}
N 1360 150 1360 580 {lab=#net2}
N 1360 580 2320 580 {lab=#net2}
N -2400 450 160 450 {lab=#net3}
N -2200 450 -2200 600 {lab=#net3}
N -2200 600 -1280 600 {lab=#net3}
N -920 450 -920 580 {lab=#net3}
N -920 580 -80 580 {lab=#net3}
N 120 -20 120 450 {lab=#net3}
N 120 -20 1120 -20 {lab=#net3}
N 160 450 160 920 {lab=#net3}
N 160 920 1120 920 {lab=#net3}
N -2400 750 1400 750 {lab=#net4}
N -2160 750 -2160 900 {lab=#net4}
N -2160 900 -1280 900 {lab=#net4}
N -880 320 -880 750 {lab=#net4}
N -880 320 -80 320 {lab=#net4}
N 200 750 200 1220 {lab=#net4}
N 200 1220 1120 1220 {lab=#net4}
N 1400 750 1400 880 {lab=#net4}
N 1400 880 2320 880 {lab=#net4}
N -2400 1050 280 1050 {lab=#net5}
N 240 1050 240 1480 {lab=#net5}
N 240 1480 1120 1480 {lab=#net5}
N 280 1050 280 1820 {lab=#net5}
N 280 1820 1120 1820 {lab=#net5}
N -2400 1350 2520 1350 {lab=P19}
N 2520 1350 2520 1520 {lab=P19}
N 2520 1520 3520 1520 {lab=P19}
N -1120 0 -840 0 {lab=#net6}
N -840 0 -840 1650 {lab=#net6}
N -840 1650 320 1650 {lab=#net6}
N -800 -20 -800 1650 {lab=#net6}
N -800 -20 -80 -20 {lab=#net6}
N 320 580 320 1650 {lab=#net6}
N 320 580 1120 580 {lab=#net6}
N -1120 300 -760 300 {lab=#net7}
N -760 300 -760 1950 {lab=#net7}
N -760 1950 360 1950 {lab=#net7}
N -720 20 -720 1950 {lab=#net7}
N -720 20 -80 20 {lab=#net7}
N 360 280 360 1950 {lab=#net7}
N 360 280 1120 280 {lab=#net7}
N -1120 600 -680 600 {lab=#net8}
N -680 280 -680 600 {lab=#net8}
N -680 280 -80 280 {lab=#net8}
N -1120 900 -640 900 {lab=#net9}
N -640 620 -640 900 {lab=#net9}
N -640 620 -80 620 {lab=#net9}
N 80 0 440 0 {lab=S4}
N 400 0 400 1780 {lab=S4}
N 400 20 1120 20 {lab=S4}
N 400 1180 1120 1180 {lab=S4}
N 400 1780 1120 1780 {lab=S4}
N 80 300 480 300 {lab=#net10}
N 480 300 480 320 {lab=#net10}
N 480 320 1120 320 {lab=#net10}
N 80 600 520 600 {lab=#net11}
N 520 600 520 620 {lab=#net11}
N 520 620 1120 620 {lab=#net11}
N 80 900 560 900 {lab=#net12}
N 560 880 560 900 {lab=#net12}
N 560 880 1120 880 {lab=#net12}
N 80 1200 600 1200 {lab=#net13}
N 600 1200 600 1520 {lab=#net13}
N 600 1520 1120 1520 {lab=#net13}
N 1280 0 1440 0 {lab=S5}
N 1280 300 1480 300 {lab=#net14}
N 1480 300 1480 320 {lab=#net14}
N 1480 320 2320 320 {lab=#net14}
N 1280 600 1520 600 {lab=#net15}
N 1520 600 1520 620 {lab=#net15}
N 1520 620 2320 620 {lab=#net15}
N 1280 900 1560 900 {lab=#net16}
N 1560 900 1560 920 {lab=#net16}
N 1560 920 2320 920 {lab=#net16}
N 1280 1200 1600 1200 {lab=#net17}
N 1600 1200 1600 1480 {lab=#net17}
N 1600 1480 2320 1480 {lab=#net17}
N 1280 1500 1640 1500 {lab=#net18}
N 1640 1500 1640 1520 {lab=#net18}
N 1640 1520 2320 1520 {lab=#net18}
N 1280 1800 1680 1800 {lab=S7}
N 2480 300 2560 300 {lab=S1}
N 2480 600 2600 600 {lab=S2}
N 2480 900 2640 900 {lab=S3}
N 2480 1500 2720 1500 {lab=S6}
N 2680 1480 2680 1500 {lab=S6}
N 2680 1480 3520 1480 {lab=S6}
C {MG_not_gate.sym} -1200 0 0 0 {name=xINV13}
C {lab_pin.sym} -1200 -80 1 0 {name=l1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1200 80 3 0 {name=l2 sig_type=std_logic lab=GND}
C {MG_not_gate.sym} -1200 300 0 0 {name=xINV14}
C {lab_pin.sym} -1200 220 1 0 {name=l3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1200 380 3 0 {name=l4 sig_type=std_logic lab=GND}
C {MG_not_gate.sym} -1200 600 0 0 {name=xINV15}
C {lab_pin.sym} -1200 520 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1200 680 3 0 {name=l6 sig_type=std_logic lab=GND}
C {MG_not_gate.sym} -1200 900 0 0 {name=xINV16}
C {lab_pin.sym} -1200 820 1 0 {name=l7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1200 980 3 0 {name=l8 sig_type=std_logic lab=GND}
C {MG_or_gate.sym} 0 0 0 0 {name=xOR_S4}
C {lab_pin.sym} 0 -80 1 0 {name=l9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 80 3 0 {name=l10 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 0 300 0 0 {name=xAND1}
C {lab_pin.sym} 0 220 1 0 {name=l11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 380 3 0 {name=l12 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 0 600 0 0 {name=xAND2}
C {lab_pin.sym} 0 520 1 0 {name=l13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 680 3 0 {name=l14 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 0 900 0 0 {name=xAND3}
C {lab_pin.sym} 0 820 1 0 {name=l15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 980 3 0 {name=l16 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 0 1200 0 0 {name=xAND6}
C {lab_pin.sym} 0 1120 1 0 {name=l17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 1280 3 0 {name=l18 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 1200 0 0 0 {name=xAND_S5}
C {lab_pin.sym} 1200 -80 1 0 {name=l19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 80 3 0 {name=l20 sig_type=std_logic lab=GND}
C {MG_or_gate.sym} 1200 300 0 0 {name=xOR1}
C {lab_pin.sym} 1200 220 1 0 {name=l21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 380 3 0 {name=l22 sig_type=std_logic lab=GND}
C {MG_or_gate.sym} 1200 600 0 0 {name=xOR2}
C {lab_pin.sym} 1200 520 1 0 {name=l23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 680 3 0 {name=l24 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 1200 900 0 0 {name=xAND4}
C {lab_pin.sym} 1200 820 1 0 {name=l25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 980 3 0 {name=l26 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 1200 1200 0 0 {name=xAND5}
C {lab_pin.sym} 1200 1120 1 0 {name=l27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 1280 3 0 {name=l28 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 1200 1500 0 0 {name=xAND7}
C {lab_pin.sym} 1200 1420 1 0 {name=l29 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 1580 3 0 {name=l30 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 1200 1800 0 0 {name=xAND_S7}
C {lab_pin.sym} 1200 1720 1 0 {name=l31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 1880 3 0 {name=l32 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 2400 300 0 0 {name=xAND_S1}
C {lab_pin.sym} 2400 220 1 0 {name=l33 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2400 380 3 0 {name=l34 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 2400 600 0 0 {name=xAND_S2}
C {lab_pin.sym} 2400 520 1 0 {name=l35 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2400 680 3 0 {name=l36 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 2400 900 0 0 {name=xAND_S3}
C {lab_pin.sym} 2400 820 1 0 {name=l37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2400 980 3 0 {name=l38 sig_type=std_logic lab=GND}
C {MG_or_gate.sym} 2400 1500 0 0 {name=xOR_S6}
C {lab_pin.sym} 2400 1420 1 0 {name=l39 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2400 1580 3 0 {name=l40 sig_type=std_logic lab=GND}
C {MG_and_gate.sym} 3600 1500 0 0 {name=xAND_S9}
C {lab_pin.sym} 3600 1420 1 0 {name=l41 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 3600 1580 3 0 {name=l42 sig_type=std_logic lab=GND}
C {ipin.sym} -2700 -150 0 0 {name=p_P13 lab=P13}
C {ipin.sym} -2700 150 0 0 {name=p_P14 lab=P14}
C {ipin.sym} -2700 450 0 0 {name=p_P15 lab=P15}
C {ipin.sym} -2700 750 0 0 {name=p_P16 lab=P16}
C {ipin.sym} -2690 1050 0 0 {name=p_P17 lab=P17}
C {ipin.sym} -2680 1350 0 0 {name=p_P19 lab=P19}
C {ipin.sym} 2990 720 0 0 {name=p_VDD lab=VDD}
C {ipin.sym} 2990 620 0 0 {name=p_GND lab=GND}
C {opin.sym} 440 0 0 0 {name=p_S4 lab=S4}
C {opin.sym} 1440 0 0 0 {name=p_S5 lab=S5}
C {opin.sym} 1680 1800 0 0 {name=p_S7 lab=S7}
C {opin.sym} 2560 300 0 0 {name=p_S1 lab=S1}
C {opin.sym} 2600 600 0 0 {name=p_S2 lab=S2}
C {opin.sym} 2640 900 0 0 {name=p_S3 lab=S3}
C {opin.sym} 2720 1500 0 0 {name=p_S6 lab=S6}
C {opin.sym} 3750 1500 0 0 {name=p_S9 lab=S9}
C {lab_pin.sym} 3110 720 1 0 {name=l56 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 3110 620 3 0 {name=l57 sig_type=std_logic lab=GND}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} -2550 -150 0 0 {name=x1}
C {lab_pin.sym} -2550 -200 1 0 {name=l43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -2550 -100 3 0 {name=l44 sig_type=std_logic lab=GND}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} -2550 150 0 0 {name=x2}
C {lab_pin.sym} -2550 100 1 0 {name=l45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -2550 200 3 0 {name=l46 sig_type=std_logic lab=GND}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} -2550 450 0 0 {name=x3}
C {lab_pin.sym} -2550 400 1 0 {name=l47 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -2550 500 3 0 {name=l48 sig_type=std_logic lab=GND}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} -2550 750 0 0 {name=x4}
C {lab_pin.sym} -2550 700 1 0 {name=l49 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -2550 800 3 0 {name=l50 sig_type=std_logic lab=GND}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} -2540 1050 0 0 {name=x5}
C {lab_pin.sym} -2540 1000 1 0 {name=l51 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -2540 1100 3 0 {name=l52 sig_type=std_logic lab=GND}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} -2530 1350 0 0 {name=x6}
C {lab_pin.sym} -2530 1300 1 0 {name=l53 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -2530 1400 3 0 {name=l54 sig_type=std_logic lab=GND}
