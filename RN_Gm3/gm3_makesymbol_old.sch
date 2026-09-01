v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -50 -160 -40 {lab=#net1}
N -100 -40 -30 -40 {lab=#net1}
N -100 -40 -100 0 {lab=#net1}
N -160 -70 -150 -70 {lab=GND}
N -30 -70 -20 -70 {lab=GND}
N -100 30 -90 30 {lab=GND}
N -100 60 -100 70 {lab=GND}
N -90 30 -90 70 {lab=GND}
N -100 70 -90 70 {lab=GND}
N -30 -40 -20 -40 {lab=#net1}
N -170 -160 -160 -160 {lab=Vdd}
N -170 -190 -170 -160 {lab=Vdd}
N -170 -190 -160 -190 {lab=Vdd}
N -20 -160 -10 -160 {lab=Vdd}
N -10 -190 -10 -160 {lab=Vdd}
N -20 -190 -10 -190 {lab=Vdd}
N -160 -120 -160 -100 {lab=#net2}
N -20 -120 -20 -100 {lab=Vout}
N -160 -210 -160 -190 {lab=Vdd}
N -90 -210 -20 -210 {lab=Vdd}
N -20 -210 -20 -190 {lab=Vdd}
N -110 -160 -60 -160 {lab=#net2}
N -110 -160 -110 -120 {lab=#net2}
N -160 -120 -110 -120 {lab=#net2}
N 20 -70 50 -70 {lab=Vin-}
N -20 -120 30 -120 {lab=Vout}
N -90 -250 -90 -210 {lab=Vdd}
N -240 -70 -200 -70 {lab=Vin+}
N -190 30 -140 30 {lab=#net3}
N -150 -40 -100 -40 {lab=#net1}
N -160 -40 -150 -40 {lab=#net1}
N -120 -160 -110 -160 {lab=#net2}
N -160 -130 -160 -120 {lab=#net2}
N -20 -130 -20 -120 {lab=Vout}
N -160 -210 -90 -210 {lab=Vdd}
N 30 -120 90 -120 {lab=Vout}
N -330 -250 -330 -100 {lab=Vdd}
N -290 30 -190 30 {lab=#net3}
N -330 30 -330 40 {lab=#net3}
N -330 -20 -330 30 {lab=#net3}
N -420 10 -330 10 {lab=#net3}
N -330 30 -290 30 {lab=#net3}
N -160 -290 -160 -250 {lab=Vdd}
N -160 -330 -160 -290 {lab=Vdd}
N -160 -330 -70 -330 {lab=Vdd}
N -70 -330 -70 -320 {lab=Vdd}
N -330 -100 -330 -80 {lab=Vdd}
N -260 -90 -260 -50 {lab=Vin+}
N -260 10 -260 20 {lab=GND}
N -260 -70 -240 -70 {lab=Vin+}
N -330 -250 -90 -250 {lab=Vdd}
N -260 -250 -260 -150 {lab=Vdd}
N 180 -110 180 -50 {lab=Vin-}
N 180 10 180 20 {lab=GND}
N 30 -80 30 -70 {lab=Vin-}
N 30 -80 180 -80 {lab=Vin-}
N 180 -190 180 -170 {lab=Vdd}
C {symbols/nfet_05v0.sym} -120 30 0 0 {name=M3
L=1.2u
W=16u
nf=8
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} -40 -160 0 0 {name=M4
L=1.2u
W=34.4u
nf=20
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
C {symbols/nfet_05v0.sym} -180 -70 0 0 {name=M2
L=0.60u
W=10u
nf=4
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} -140 -160 0 1 {name=M5
L=1.2u
W=34.4u
nf=20
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
C {symbols/ppolyf_u_3k.sym} -330 -50 0 0 {name=R1
W=2e-6
L=17.5e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -330 70 0 0 {name=R2
W=2e-6
L=7.5e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/cap_nmos_06v0.sym} -420 40 0 0 {name=C3
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {ipin.sym} -160 -290 0 0 {name=p6 lab=Vdd}
C {symbols/cap_nmos_06v0.sym} -70 -290 0 0 {name=C4
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} -70 -260 0 1 {name=p20 sig_type=std_logic lab=GND}
C {lab_pin.sym} -350 -50 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} -350 70 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} -420 70 0 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} -330 100 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -30 -70 0 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} -150 -70 0 1 {name=p16 sig_type=std_logic lab=GND}
C {ipin.sym} -90 70 0 1 {name=p1 lab=GND
}
C {opin.sym} 90 -120 0 0 {name=p9 lab=Vout
}
C {symbols/nfet_05v0.sym} 0 -70 0 1 {name=M1
L=0.60u
W=10u
nf=4
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/ppolyf_u_3k.sym} -260 -120 0 0 {name=R3
W=2e-6
L=4e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -260 -20 0 0 {name=R4
W=2e-6
L=6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} -260 20 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -280 -120 0 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} -280 -20 0 0 {name=p10 sig_type=std_logic lab=GND}
C {ipin.sym} -260 -70 0 0 {name=p11 lab=Vin+}
C {ipin.sym} 50 -70 0 1 {name=p12 lab=Vin-}
C {symbols/ppolyf_u_3k.sym} 180 -140 0 0 {name=R5
W=2e-6
L=4e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 180 -20 0 0 {name=R6
W=2e-6
L=6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} 160 -140 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} 160 -20 0 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_pin.sym} 180 20 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 180 -190 0 1 {name=p18 sig_type=std_logic lab=Vdd}
