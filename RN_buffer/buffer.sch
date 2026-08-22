v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -150 110 -120 {lab=Vout}
N 110 -290 180 -290 {lab=Vdd}
N -100 -90 -80 -90 {lab=GND}
N -100 -230 -100 -90 {lab=GND}
N -80 -50 110 -50 {lab=GND}
N -80 -200 -80 -150 {lab=#net1}
N -80 -290 110 -290 {lab=Vdd}
N -80 -290 -80 -280 {lab=Vdd}
N -80 -280 -80 -260 {lab=Vdd}
N -80 -90 -80 -50 {lab=GND}
N -80 -180 70 -180 {lab=#net1}
N 110 -60 110 -50 {lab=GND}
N 110 -290 110 -210 {lab=Vdd}
N 110 -180 160 -180 {lab=Vdd}
N 160 -290 160 -180 {lab=Vdd}
N 110 -90 140 -90 {lab=Vout}
N 140 -130 140 -90 {lab=Vout}
N 110 -130 140 -130 {lab=Vout}
N 110 -140 200 -140 {lab=Vout}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} 90 -90 0 0 {name=M1
L=1u
W=30u
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
C {ipin.sym} 180 -290 0 1 {name=p1 lab=Vdd}
C {ipin.sym} 110 -50 0 1 {name=p2 lab=GND}
C {iopin.sym} 70 -90 0 1 {name=p3 lab=Vin}
C {symbols/ppolyf_u_3k.sym} -80 -230 0 0 {name=R1
W=1e-6
L=150e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -80 -120 0 0 {name=R2
W=1e-6
L=350e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {iopin.sym} 200 -140 0 0 {name=p4 lab=Vout}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} 90 -180 0 0 {name=M2
L=1.2u
W=16u
nf=8
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
