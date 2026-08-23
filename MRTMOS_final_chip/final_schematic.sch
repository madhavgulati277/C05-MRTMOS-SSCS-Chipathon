v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1000 -100 1040 -100 {lab=P9}
N -420 -100 -360 -100 {lab=#net1}
N -300 -100 -240 -100 {lab=#net2}
N -570 -210 -570 -160 {lab=Vdd}
N -140 -30 -140 0 {lab=Vdd}
N -570 -40 -570 -20 {lab=Gnd}
N 530 -120 700 -120 {lab=#net3}
N 530 -80 700 -80 {lab=#net4}
N 210 -80 230 -80 {lab=GND}
N 210 -80 210 -60 {lab=GND}
N 60 -100 230 -100 {lab=#net5}
N 230 -120 230 -100 {lab=#net5}
N 1580 -70 1600 -70 {lab=GND}
N 1580 -70 1580 -50 {lab=GND}
N 1900 -110 1950 -110 {lab=#net6}
N 1900 -70 1950 -70 {lab=#net7}
N 1550 -110 1600 -110 {lab=#net8}
N 1250 -40 1250 -10 {lab=Vdd}
N 1450 -110 1490 -110 {lab=#net9}
N 1040 -100 1100 -100 {lab=P9}
N 1100 -110 1100 -100 {lab=P9}
N 1100 -110 1150 -110 {lab=P9}
N -800 -110 -730 -110 {lab=P1}
N -730 -110 -720 -110 {lab=P1}
N -800 -90 -720 -90 {lab=P2}
N -30 -30 -30 70 {lab=#net10}
N -30 70 1350 70 {lab=#net10}
N 1350 70 1360 70 {lab=#net10}
N 1360 -40 1360 70 {lab=#net10}
N 1040 -100 1040 -60 {lab=P9}
N 1040 -30 1040 140 {lab=#net11}
N 1040 140 1040 200 {lab=#net11}
C {RN_Gm2/RN_gm2_ota.sym} 850 -100 0 0 {name=x1}
C {RN_Gm3/RN_gm3_ota.sym} 2100 -90 0 0 {name=x2}
C {MG_6T_OTA/MG_6t_ota.sym} -570 -100 0 0 {name=x3}
C {symbols/cap_mim_2f0fF.sym} -330 -100 3 0 {name=C2
W=50e-6
L=50e-6
model=cap_mim_2f0fF
spiceprefix=X
m=30}
C {symbols/cap_mim_2f0fF.sym} 1520 -110 3 0 {name=C1
W=50e-6
L=50e-6
model=cap_mim_2f0fF
spiceprefix=X
m=30}
C {MG_switch/cmos_switch.sym} -90 -100 2 1 {name=x4}
C {lab_pin.sym} -140 0 2 0 {name=p24 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -90 -170 2 1 {name=p11 sig_type=std_logic lab=GND}
C {MG_switch/cmos_cross_switch.sym} 380 -100 0 0 {name=x5}
C {lab_pin.sym} 210 -60 0 0 {name=p1 sig_type=std_logic lab=GND}
C {MG_switch/cmos_cross_switch.sym} 1750 -90 0 0 {name=x6}
C {lab_pin.sym} 1580 -50 0 0 {name=p2 sig_type=std_logic lab=GND}
C {MG_switch/cmos_switch.sym} 1300 -110 2 1 {name=x7}
C {lab_pin.sym} 1250 -10 2 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1300 -180 2 1 {name=p4 sig_type=std_logic lab=GND}
C {iopin.sym} -570 -210 0 0 {name=p12 lab=Vdd}
C {iopin.sym} -570 -20 0 0 {name=p5 lab=Gnd}
C {ipin.sym} -800 -110 0 0 {name=p6 lab=P1}
C {ipin.sym} -800 -90 0 0 {name=p7 lab=P2
}
C {iopin.sym} 1040 -60 0 0 {name=p8 lab=P9}
C {iopin.sym} 1040 -30 0 0 {name=p9 lab=P10}
