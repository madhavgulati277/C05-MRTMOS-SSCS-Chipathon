v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 380 -10 420 -10 {lab=#net1}
N -1040 -10 -980 -10 {lab=#net2}
N -90 -30 80 -30 {lab=#net3}
N -90 10 80 10 {lab=#net4}
N -560 -10 -390 -10 {lab=#net5}
N -390 -30 -390 -10 {lab=#net5}
N 1280 -20 1330 -20 {lab=#net6}
N 1280 20 1330 20 {lab=#net7}
N 930 -20 980 -20 {lab=#net8}
N 830 -20 870 -20 {lab=#net9}
N 420 -10 480 -10 {lab=#net1}
N 480 -20 530 -20 {lab=#net1}
N -680 -10 -650 -10 {lab=#net10}
N -590 -10 -560 -10 {lab=#net5}
N 1630 0 1800 0 {lab=out}
N 480 -20 480 -10 {lab=#net1}
N -1100 160 -1100 200 {lab=Vdd}
N -1190 50 -1190 80 {lab=gnd}
N -830 -100 -830 -80 {lab=gnd}
N -1440 -20 -1340 -20 {lab=Vin+}
N -1370 0 -1340 0 {lab=Vin-}
N -1030 170 -1030 200 {lab=gnd}
N -1190 -120 -1190 -70 {lab=Vdd}
N 980 -30 980 -20 {lab=#net8}
N -390 -40 -390 -30 {lab=#net5}
N -90 10 -90 20 {lab=#net4}
N -90 -40 -90 -30 {lab=#net3}
N 1280 -30 1280 -20 {lab=#net6}
N 1280 20 1280 30 {lab=#net7}
C {RN_Gm2/RN_gm2_ota.sym} 230 -10 0 0 {name=x1}
C {RN_Gm3/RN_gm3_ota.sym} 1480 0 0 0 {name=x2}
C {MG_6T_OTA/MG_6t_ota.sym} -1190 -10 0 0 {name=x3}
C {symbols/cap_mim_2f0fF.sym} -620 -10 3 0 {name=C2
W=50e-6
L=50e-6
model=cap_mim_2f0fF
spiceprefix=X
m=30}
C {symbols/cap_mim_2f0fF.sym} 900 -20 3 0 {name=C1
W=50e-6
L=50e-6
model=cap_mim_2f0fF
spiceprefix=X
m=30}
C {MG_switch/cmos_switch.sym} -830 -10 2 1 {name=x4}
C {MG_switch/cmos_cross_switch.sym} -240 -10 0 0 {name=x5}
C {MG_switch/cmos_cross_switch.sym} 1130 0 2 1 {name=x6}
C {MG_switch/cmos_switch.sym} 680 -20 2 1 {name=x7}
C {vsource.sym} -1100 230 0 0 {name=V4 value=5 savecurrent=false}
C {gnd.sym} -1100 260 0 0 {name=l9 lab=0}
C {lab_pin.sym} -1100 160 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -880 60 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 230 -70 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 630 50 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -1190 60 0 0 {name=p5 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -830 -100 0 0 {name=p6 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -390 20 0 0 {name=p7 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 230 50 0 0 {name=p8 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 680 -90 0 0 {name=p9 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1480 60 0 0 {name=p10 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1480 -60 0 0 {name=p11 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 740 50 0 0 {name=p12 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -250 -90 1 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1120 80 0 0 {name=p14 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -770 60 0 0 {name=p15 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 980 30 0 0 {name=p16 sig_type=std_logic lab=gnd}
C {capa.sym} 1800 30 0 0 {name=C3
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1800 60 0 0 {name=l8 lab=0}
C {lab_pin.sym} 1720 0 0 0 {name=p17 sig_type=std_logic lab=out}
C {vsource.sym} -1440 10 0 0 {name=V2 
*value="PULSE(2.8 3.2 10n 100p 100p 0.5u 1u)" 
*"SINE( 3 10m 1Meg)"
value="3.333 ac 1" 
savecurrent=false}
C {gnd.sym} -1440 40 0 0 {name=l3 lab=0}
C {lab_pin.sym} -1370 -20 0 0 {name=p18 sig_type=std_logic lab=Vin+}
C {vsource.sym} -1370 30 0 0 {name=V1 
*value="PULSE(2.8 3.2 10n 100p 100p 0.5u 1u)" 
*"SINE( 3 10m 1Meg)"
value="3.333" 
savecurrent=false}
C {gnd.sym} -1370 60 0 0 {name=l2 lab=0}
C {vsource.sym} -1030 230 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -1030 260 0 0 {name=l1 lab=0}
C {lab_pin.sym} -1030 170 0 0 {name=p19 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -1190 -120 0 0 {name=p20 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -210 -90 1 0 {name=p21 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -210 70 0 0 {name=p22 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1160 -80 0 0 {name=p23 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1160 80 0 0 {name=p24 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -1350 0 1 0 {name=p25 sig_type=std_logic lab=Vin-}
