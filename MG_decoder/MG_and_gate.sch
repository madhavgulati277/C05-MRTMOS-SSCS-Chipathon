v {xschem version=3.4.0 file_version=1.2}
G {}
K {}
V {}
S {}
E {}

# --- INPUT PINS ---
C {/foss/tools/xschem/share/xschem/xschem_library/devices/ipin.sym} -200 0 0 0 {name=p1 lab=P18}
N -200 0 -160 0 {lab=P18}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/ipin.sym} -200 100 0 0 {name=p2 lab=P13}
N -200 100 -160 100 {lab=P13}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/ipin.sym} -200 200 0 0 {name=p3 lab=P14}
N -200 200 -160 200 {lab=P14}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/ipin.sym} -200 300 0 0 {name=p4 lab=P15}
N -200 300 -160 300 {lab=P15}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/ipin.sym} -200 400 0 0 {name=p5 lab=P16}
N -200 400 -160 400 {lab=P16}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/ipin.sym} -200 500 0 0 {name=p6 lab=P17}
N -200 500 -160 500 {lab=P17}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/ipin.sym} -200 600 0 0 {name=p7 lab=P19}
N -200 600 -160 600 {lab=P19}


# --- INVERTERS (MG_not_gate) ---
C {MG_not_gate.sym} 0 100 0 0 {name=U_INV1}
N -120 100 -80 100 {lab=P13}
N 80 100 120 100 {lab=P13_B}
N 0 40 0 60 {lab=Vdd}
N 0 140 0 160 {lab=GND}

C {MG_not_gate.sym} 0 200 0 0 {name=U_INV2}
N -120 200 -80 200 {lab=P14}
N 80 200 120 200 {lab=P14_B}
N 0 140 0 160 {lab=Vdd}
N 0 240 0 260 {lab=GND}

C {MG_not_gate.sym} 0 300 0 0 {name=U_INV3}
N -120 300 -80 300 {lab=P15}
N 80 300 120 300 {lab=P15_B}
N 0 240 0 260 {lab=Vdd}
N 0 340 0 360 {lab=GND}

C {MG_not_gate.sym} 0 400 0 0 {name=U_INV4}
N -120 400 -80 400 {lab=P16}
N 80 400 120 400 {lab=P16_B}
N 0 340 0 360 {lab=Vdd}
N 0 440 0 460 {lab=GND}


# --- STAGE 1: LOGIC GATES ---
C {MG_or_gate.sym} 400 100 0 0 {name=U_OR1}
N 280 80 320 80 {lab=P13_B}
N 280 120 320 120 {lab=P14_B}
N 480 100 520 100 {lab=S4_OUT}
N 400 40 400 60 {lab=Vdd}
N 400 140 400 160 {lab=GND}

C {MG_and_gate.sym} 400 250 0 0 {name=U_AND3}
N 280 230 320 230 {lab=P15}
N 280 270 320 270 {lab=P16_B}
N 480 250 520 250 {lab=N_AND3}
N 400 190 400 210 {lab=Vdd}
N 400 290 400 310 {lab=GND}

C {MG_and_gate.sym} 400 400 0 0 {name=U_AND4}
N 280 380 320 380 {lab=P15_B}
N 280 420 320 420 {lab=P16}
N 480 400 520 400 {lab=N_AND4}
N 400 340 400 360 {lab=Vdd}
N 400 440 400 460 {lab=GND}

C {MG_and_gate.sym} 400 550 0 0 {name=U_AND9}
N 280 530 320 530 {lab=P15_B}
N 280 570 320 570 {lab=P16_B}
N 480 550 520 550 {lab=N_AND9}
N 400 490 400 510 {lab=Vdd}
N 400 590 400 610 {lab=GND}

C {MG_and_gate.sym} 400 700 0 0 {name=U_AND13}
N 280 680 320 680 {lab=P13}
N 280 720 320 720 {lab=P14}
N 480 700 520 700 {lab=N_AND13}
N 400 640 400 660 {lab=Vdd}
N 400 740 400 760 {lab=GND}


# --- STAGE 2: LOGIC GATES ---
C {MG_and_gate.sym} 800 100 0 0 {name=U_AND2}
N 680 80 720 80 {lab=S4_OUT}
N 680 120 720 120 {lab=P15}
N 880 100 920 100 {lab=S5_OUT}
N 800 40 800 60 {lab=Vdd}
N 800 140 800 160 {lab=GND}

C {MG_or_gate.sym} 800 250 0 0 {name=U_OR5}
N 680 230 720 230 {lab=S4_OUT}
N 680 270 720 270 {lab=N_AND3}
N 880 250 920 250 {lab=N_OR5}
N 800 190 800 210 {lab=Vdd}
N 800 290 800 310 {lab=GND}

C {MG_or_gate.sym} 800 400 0 0 {name=U_OR6}
N 680 380 720 380 {lab=N_AND4}
N 680 420 720 420 {lab=P14_B}
N 880 400 920 400 {lab=N_OR6}
N 800 340 800 360 {lab=Vdd}
N 800 440 800 460 {lab=GND}

C {MG_and_gate.sym} 800 550 0 0 {name=U_AND10}
N 680 530 720 530 {lab=N_AND9}
N 680 570 720 570 {lab=P14_B}
N 880 550 920 550 {lab=N_AND10}
N 800 490 800 510 {lab=Vdd}
N 800 590 800 610 {lab=GND}

C {MG_and_gate.sym} 800 700 0 0 {name=U_AND14}
N 680 680 720 680 {lab=N_AND13}
N 680 720 720 720 {lab=P15}
N 880 700 920 700 {lab=N_AND14}
N 800 640 800 660 {lab=Vdd}
N 800 740 800 760 {lab=GND}

C {MG_and_gate.sym} 800 850 0 0 {name=U_AND15}
N 680 830 720 830 {lab=P16}
N 680 870 720 870 {lab=P17}
N 880 850 920 850 {lab=N_AND15}
N 800 790 800 810 {lab=Vdd}
N 800 890 800 910 {lab=GND}


# --- STAGE 3: LOGIC GATES ---
C {MG_and_gate.sym} 1200 250 0 0 {name=U_AND7}
N 1080 230 1120 230 {lab=N_OR5}
N 1080 270 1120 270 {lab=P17}
N 1280 250 1320 250 {lab=S1_OUT}
N 1200 190 1200 210 {lab=Vdd}
N 1200 290 1200 310 {lab=GND}

C {MG_and_gate.sym} 1200 400 0 0 {name=U_AND8}
N 1080 380 1120 380 {lab=N_OR6}
N 1080 420 1120 420 {lab=P17}
N 1280 400 1320 400 {lab=S2_OUT}
N 1200 340 1200 360 {lab=Vdd}
N 1200 440 1200 460 {lab=GND}

C {MG_and_gate.sym} 1200 550 0 0 {name=U_AND11}
N 1080 530 1120 530 {lab=N_AND10}
N 1080 570 1120 570 {lab=P13_B}
N 1280 550 1320 550 {lab=S3_OUT}
N 1200 490 1200 510 {lab=Vdd}
N 1200 590 1200 610 {lab=GND}

C {MG_and_gate.sym} 1200 700 0 0 {name=U_AND12}
N 1080 680 1120 680 {lab=P17}
N 1080 720 1120 720 {lab=P16}
N 1280 700 1320 700 {lab=S7_OUT}
N 1200 640 1200 660 {lab=Vdd}
N 1200 740 1200 760 {lab=GND}

C {MG_or_gate.sym} 1200 850 0 0 {name=U_OR16}
N 1080 830 1120 830 {lab=N_AND15}
N 1080 870 1120 870 {lab=N_AND14}
N 1280 850 1320 850 {lab=S6_OUT}
N 1200 790 1200 810 {lab=Vdd}
N 1200 890 1200 910 {lab=GND}


# --- STAGE 4: FINAL GATE ---
C {MG_and_gate.sym} 1600 850 0 0 {name=U_AND17}
N 1480 830 1520 830 {lab=S6_OUT}
N 1480 870 1520 870 {lab=P19}
N 1680 850 1720 850 {lab=S9_OUT}
N 1600 790 1600 810 {lab=Vdd}
N 1600 890 1600 910 {lab=GND}


# --- OUTPUT PINS ---
C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 0 0 0 {name=p8 lab=S8_OUT}
N 1760 0 1800 0 {lab=P18}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 100 0 0 {name=p9 lab=S4_OUT}
N 1760 100 1800 100 {lab=S4_OUT}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 200 0 0 {name=p10 lab=S5_OUT}
N 1760 200 1800 200 {lab=S5_OUT}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 300 0 0 {name=p11 lab=S1_OUT}
N 1760 300 1800 300 {lab=S1_OUT}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 400 0 0 {name=p12 lab=S2_OUT}
N 1760 400 1800 400 {lab=S2_OUT}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 500 0 0 {name=p13 lab=S3_OUT}
N 1760 500 1800 500 {lab=S3_OUT}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 600 0 0 {name=p14 lab=S7_OUT}
N 1760 600 1800 600 {lab=S7_OUT}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 700 0 0 {name=p15 lab=S6_OUT}
N 1760 700 1800 700 {lab=S6_OUT}

C {/foss/tools/xschem/share/xschem/xschem_library/devices/opin.sym} 1800 850 0 0 {name=p16 lab=S9_OUT}
N 1760 850 1800 850 {lab=S9_OUT}
