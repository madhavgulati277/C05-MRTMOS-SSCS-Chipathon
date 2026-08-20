v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -30 80 30 {lab=Vout}
N 80 90 80 120 {lab=GND}
N 80 -130 80 -90 {lab=Vdd}
N 0 -60 40 -60 {lab=Vin}
N 0 60 40 60 {lab=Vin}
N 80 -60 160 -60 {lab=Vdd}
N 160 -110 160 -60 {lab=Vdd}
N 80 -110 160 -110 {lab=Vdd}
N 80 60 190 60 {lab=GND}
N 190 60 190 100 {lab=GND}
N 80 100 190 100 {lab=GND}
N -0 -60 0 60 {lab=Vin}
N 80 -0 100 -0 {lab=Vout}
N -10 -0 -0 -0 {lab=Vin}
N 80 -120 210 -120 {lab=Vdd}
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
C {ipin.sym} 80 -130 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 80 120 0 0 {name=p2 lab=GND}
C {ipin.sym} -10 0 0 0 {name=p3 lab=Vin}
C {opin.sym} 100 0 0 0 {name=p4 lab=Vout}
C {symbols/cap_nmos_06v0.sym} 210 -90 0 0 {name=C1
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} 210 -60 0 0 {name=p5 sig_type=std_logic lab=GND}
