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
N -290 30 -190 30 {lab=#net3}
N -1230 40 -1230 50 {lab=#net3}
N -1320 20 -1230 20 {lab=#net3}
N -160 -290 -160 -250 {lab=Vdd}
N -160 -330 -160 -290 {lab=Vdd}
N -160 -330 -70 -330 {lab=Vdd}
N -70 -330 -70 -320 {lab=Vdd}
N -300 -70 -280 -70 {lab=Vin+}
N -330 -250 -90 -250 {lab=Vdd}
N -280 -70 -240 -70 {lab=Vin+}
N -380 30 -290 30 {lab=#net3}
N -1230 50 -1230 60 {lab=#net3}
N -650 -260 -330 -260 {lab=Vdd}
N -330 -260 -330 -250 {lab=Vdd}
N -1230 30 -380 30 {lab=#net3}
N -640 -70 -620 -70 {lab=Vin+}
N -620 -70 -300 -70 {lab=Vin+}
N -1030 -70 -640 -70 {lab=Vin+}
N -1100 -70 -1030 -70 {lab=Vin+}
N 180 -70 220 -70 {lab=Vin-}
N 260 -70 280 -70 {lab=Vin-}
N 220 -70 260 -70 {lab=Vin-}
N 600 -70 620 -70 {lab=Vin-}
N 280 -70 600 -70 {lab=Vin-}
N 620 -70 1010 -70 {lab=Vin-}
N 1010 -70 1080 -70 {lab=Vin-}
N 50 -70 180 -70 {lab=Vin-}
N -20 -210 280 -210 {lab=Vdd}
N 280 -210 280 -150 {lab=Vdd}
N -1230 -260 -1230 -120 {lab=Vdd}
N -1230 -60 -1230 40 {lab=#net3}
N -1230 -260 -650 -260 {lab=Vdd}
N -620 -200 -620 -70 {lab=Vin+}
N 280 -90 280 -70 {lab=Vin-}
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
C {symbols/nfet_05v0.sym} -180 -70 0 0 {name=M2
L=1u
W=7.5u
nf=4
m=4
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
L=2u
W=17u
nf=10
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/cap_nmos_06v0.sym} -1350 20 1 0 {name=C3
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {symbols/cap_nmos_06v0.sym} -70 -290 0 0 {name=C4
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} -70 -260 0 1 {name=p20 sig_type=std_logic lab=GND}
C {lab_pin.sym} -1380 20 0 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} -30 -70 0 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} -150 -70 0 1 {name=p16 sig_type=std_logic lab=GND}
C {opin.sym} 90 -120 0 0 {name=p9 lab=Vout
}
C {symbols/nfet_05v0.sym} 0 -70 0 1 {name=M1
L=1u
W=7.5u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {ipin.sym} -1100 -70 0 0 {name=p11 lab=Vin+}
C {ipin.sym} 1080 -70 0 1 {name=p12 lab=Vin-}
C {symbols/pfet_05v0.sym} -40 -160 0 0 {name=M4
L=2u
W=17u
nf=10
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {lab_pin.sym} 280 -10 0 1 {name=p13 sig_type=std_logic lab=GND}
C {ipin.sym} -160 -300 0 0 {name=p1 lab=Vdd}
C {ipin.sym} -90 70 0 0 {name=p6 lab=GND}
C {lab_pin.sym} -1250 90 0 0 {name=p18 sig_type=std_logic lab=GND}
C {lab_pin.sym} -1230 120 0 0 {name=p74 sig_type=std_logic lab=GND}
C {lab_pin.sym} -1250 -90 0 0 {name=p2 sig_type=std_logic lab=GND}
C {symbols/ppolyf_u_1k_6p0.sym} -1230 90 0 0 {name=R2
W=2e-6
L=250e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -1230 -90 0 0 {name=R7
W=2e-6
L=750e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -620 -230 0 0 {name=R1
W=2e-6
L=1600e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -620 -40 0 0 {name=R3
W=2e-6
L=2400e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} -620 -10 0 0 {name=p3 sig_type=std_logic lab=GND}
C {symbols/ppolyf_u_1k_6p0.sym} 280 -120 0 0 {name=R4
W=2e-6
L=1600e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 280 -40 0 0 {name=R5
W=2e-6
L=2400e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 260 -40 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 260 -120 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -640 -40 0 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} -640 -230 0 0 {name=p10 sig_type=std_logic lab=GND}
