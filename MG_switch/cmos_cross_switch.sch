v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 380 -190 540 140 {lab=Vin_D}
N 380 40 550 -300 {lab=Vin_C}
N 380 -410 550 -300 {lab=Vin_C}
N 380 250 540 140 {lab=Vin_D}
N 10 -310 80 -410 {lab=Vin_A}
N 10 -310 80 -190 {lab=Vin_A}
N 10 140 80 40 {lab=Vin_B}
N 10 140 80 250 {lab=Vin_B}
C {cmos_neg_switch.sym} 230 -190 0 0 {name=x1}
C {cmos_switch.sym} 230 250 0 0 {name=x3}
C {gnd.sym} 230 -120 0 0 {name=l1 lab=0}
C {lab_pin.sym} 170 -260 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 180 180 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {cmos_neg_switch.sym} 230 40 0 0 {name=x2}
C {gnd.sym} 230 110 0 0 {name=l2 lab=0}
C {lab_pin.sym} 170 -30 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {cmos_switch.sym} 230 -410 0 0 {name=x4}
C {lab_pin.sym} 180 -480 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {ipin.sym} 230 -70 0 0 {name=p5 lab=Vin}
C {lab_pin.sym} 280 -260 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 280 -30 0 0 {name=p7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 290 180 0 0 {name=p8 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 290 -480 0 0 {name=p9 sig_type=std_logic lab=Vin}
C {gnd.sym} 230 -340 0 0 {name=l3 lab=0}
C {gnd.sym} 230 320 0 0 {name=l4 lab=0}
C {lab_pin.sym} 230 -70 0 1 {name=p10 sig_type=std_logic lab=Vin}
C {iopin.sym} 10 -310 0 1 {name=p11 lab=Vin_A}
C {iopin.sym} 10 140 0 1 {name=p12 lab=Vin_B}
C {iopin.sym} 550 -300 0 0 {name=p13 lab=Vin_C}
C {iopin.sym} 540 140 0 0 {name=p14 lab=Vin_D}
