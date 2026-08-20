v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -30 80 30 {lab=Vout}
N 80 90 80 120 {lab=GND}
N 80 -150 80 -110 {lab=Vdd}
N 0 -60 40 -60 {lab=#net1}
N 0 60 40 60 {lab=#net1}
N 80 -60 160 -60 {lab=Vdd}
N 160 -110 160 -60 {lab=Vdd}
N 80 -130 160 -130 {lab=Vdd}
N 80 60 190 60 {lab=GND}
N 190 60 190 100 {lab=GND}
N 80 100 190 100 {lab=GND}
N -0 -60 0 60 {lab=#net1}
N 80 -0 100 -0 {lab=Vout}
N -130 -130 80 -130 {lab=Vdd}
N -130 -130 -130 -110 {lab=Vdd}
N 80 -110 80 -90 {lab=Vdd}
N 160 -130 160 -110 {lab=Vdd}
N -20 130 -20 150 {lab=GND}
N -20 150 80 150 {lab=GND}
N 80 120 80 150 {lab=GND}
N 80 -140 210 -140 {lab=Vdd}
N -220 -30 -90 -30 {lab=#net1}
N -220 -90 -90 -90 {lab=Vdd}
N -130 -110 -130 -90 {lab=Vdd}
N -90 -60 -60 -60 {lab=Vdd}
N -60 -130 -60 -60 {lab=Vdd}
N -220 -60 -180 -60 {lab=Vdd}
N -180 -90 -180 -60 {lab=Vdd}
N -150 -30 -150 -0 {lab=#net1}
N -150 -20 -0 -20 {lab=#net1}
N -150 130 -20 130 {lab=GND}
N -150 100 -80 100 {lab=GND}
N -80 100 -80 130 {lab=GND}
N -150 30 -50 30 {lab=GND}
N -50 30 -50 130 {lab=GND}
N -320 -60 -260 -60 {lab=Vin_A}
N -270 -60 -270 30 {lab=Vin_A}
N -270 30 -190 30 {lab=Vin_A}
N -200 -10 -200 100 {lab=Vin_B}
N -200 100 -190 100 {lab=Vin_B}
N -200 -10 -160 -10 {lab=Vin_B}
N -160 -60 -160 -10 {lab=Vin_B}
N -160 -60 -130 -60 {lab=Vin_B}
N -150 60 -150 70 {lab=#net2}
C {symbols/pfet_05v0.sym} 60 -60 0 0 {name=M1
L=0.6u
W=2.2u
nf=2
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
C {symbols/nfet_05v0.sym} 60 60 0 0 {name=M2
L=0.6u
W=1u
nf=1
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
C {ipin.sym} 80 -150 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 80 120 0 0 {name=p2 lab=GND}
C {ipin.sym} -320 -60 0 0 {name=p3 lab=Vin_A}
C {opin.sym} 100 0 0 0 {name=p4 lab=Vout}
C {symbols/pfet_05v0.sym} -240 -60 0 0 {name=M3
L=0.6u
W=2.2u
nf=2
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
C {symbols/pfet_05v0.sym} -110 -60 0 0 {name=M4
L=0.6u
W=2.2u
nf=2
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
C {ipin.sym} -200 -10 0 0 {name=p5 lab=Vin_B}
C {symbols/nfet_05v0.sym} -170 30 0 0 {name=M5
L=0.6u
W=2u
nf=1
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
C {symbols/nfet_05v0.sym} -170 100 0 0 {name=M6
L=0.6u
W=2u
nf=1
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
C {symbols/cap_nmos_06v0.sym} 210 -110 0 0 {name=C1
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} 210 -80 0 0 {name=p6 sig_type=std_logic lab=GND}
