v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 900 -30 {}
P 4 1 320 -100 {}
P 4 1 -230 -240 {}
N 50 -40 120 -40 {lab=GND}
N 220 -40 290 -40 {lab=GND}
N 330 -40 360 -40 {lab=#net1}
N 60 -250 60 -190 {lab=Vdd}
N 60 -250 280 -250 {lab=Vdd}
N 280 -250 280 -190 {lab=Vdd}
N 50 -190 60 -190 {lab=Vdd}
N 280 -190 290 -190 {lab=Vdd}
N 90 -160 250 -160 {lab=#net2}
N 50 -130 50 -70 {lab=#net2}
N 50 -130 60 -130 {lab=#net2}
N 280 -130 290 -130 {lab=Vout}
N 290 -130 290 -70 {lab=Vout}
N 50 -100 140 -100 {lab=#net2}
N 140 -160 140 -100 {lab=#net2}
N 50 -10 50 40 {lab=#net3}
N 50 40 290 40 {lab=#net3}
N 290 -10 290 40 {lab=#net3}
N 170 100 240 100 {lab=GND}
N 170 190 240 190 {lab=GND}
N 170 40 170 70 {lab=#net3}
N 170 130 170 160 {lab=#net4}
N 170 220 170 270 {lab=GND}
N 170 -330 170 -250 {lab=Vdd}
N 130 -330 170 -330 {lab=Vdd}
N -50 100 130 100 {lab=#net5}
N -50 190 130 190 {lab=#net6}
N -120 -60 -120 20 {lab=Vdd}
N -120 80 -120 110 {lab=#net5}
N -120 100 -50 100 {lab=#net5}
N -120 170 -120 210 {lab=#net6}
N -120 190 -50 190 {lab=#net6}
N -120 270 -120 290 {lab=GND}
N -20 -160 60 -160 {lab=Vdd}
N 280 -160 360 -160 {lab=Vdd}
N 290 -90 440 -90 {lab=Vout}
N -300 100 -120 100 {lab=#net5}
N -300 190 -120 190 {lab=#net6}
N 170 -360 170 -330 {lab=Vdd}
N 170 -360 240 -360 {lab=Vdd}
N -120 -120 -0 -120 {lab=#net7}
N -0 -120 -0 -40 {lab=#net7}
N -0 -40 10 -40 {lab=#net7}
N 360 -60 530 -60 {lab=#net1}
N 360 -60 360 -40 {lab=#net1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 265 -160 2 1 {name=M4
L=2u
W=27u
nf=14
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {ipin.sym} 130 -330 0 0 {name=p2 lab=Vdd}
C {ipin.sym} -420 -120 0 0 {name=p5 lab=Vin+
}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 310 -40 0 1 {name=M2
L=1u
W=16u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {ipin.sym} 830 -60 0 1 {name=p6 lab=Vin-
}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 30 -40 0 0 {name=M1
L=1u
W=16u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} 75 -160 0 1 {name=M3
L=2u
W=27u
nf=14
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 150 100 0 0 {name=M5b
L=1.25u
W=12u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 150 190 0 0 {name=M5a
L=1.25u
W=6u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/ppolyf_u_3k.sym} -120 50 0 0 {name=R1
W=1e-6
L=3e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -120 140 0 0 {name=R2
W=1e-6
L=1e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -120 240 0 0 {name=R3
W=1e-6
L=1e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {ipin.sym} 170 270 0 1 {name=p1 lab=GND
}
C {lab_pin.sym} -20 -160 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 360 -160 0 1 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 120 -40 0 1 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 220 -40 0 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} 240 100 0 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 240 190 0 1 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} -120 -60 0 0 {name=p11 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -120 290 0 1 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} -140 50 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} -140 140 0 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_pin.sym} -140 240 0 0 {name=p15 sig_type=std_logic lab=GND}
C {opin.sym} 440 -90 0 0 {name=p16 lab=Vout
}
C {symbols/cap_nmos_06v0.sym} -300 130 0 0 {name=C1
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} -300 160 0 1 {name=p17 sig_type=std_logic lab=GND}
C {symbols/cap_nmos_06v0.sym} -300 220 0 0 {name=C2
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} -300 250 0 1 {name=p18 sig_type=std_logic lab=GND}
C {symbols/cap_nmos_06v0.sym} 240 -330 0 0 {name=C3
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} 240 -300 0 1 {name=p20 sig_type=std_logic lab=GND}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} -270 -120 0 0 {name=x1}
C {lab_pin.sym} -270 -70 0 1 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} -270 -170 0 1 {name=p21 sig_type=std_logic lab=Vdd}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_ESD_protection/MG_ESD_protection.sym} 680 -60 0 1 {name=x2}
C {lab_pin.sym} 680 -10 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 680 -110 0 0 {name=p24 sig_type=std_logic lab=Vdd}
