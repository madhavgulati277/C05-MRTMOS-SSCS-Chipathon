v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -150 80 -110 {lab=#net1}
N 80 -50 80 10 {lab=#net2}
N 80 10 180 10 {lab=#net2}
N 180 10 180 20 {lab=#net2}
N 300 -50 300 10 {lab=#net2}
N 180 10 300 10 {lab=#net2}
N 180 20 180 40 {lab=#net2}
N 80 -80 300 -80 {lab=0}
N 80 -240 80 -210 {lab=GND}
N 300 -240 300 -210 {lab=GND}
N 80 -240 300 -240 {lab=GND}
N 60 -180 80 -180 {lab=GND}
N 60 -220 60 -180 {lab=GND}
N 60 -220 80 -220 {lab=GND}
N 300 -180 320 -180 {lab=GND}
N 320 -220 320 -180 {lab=GND}
N 300 -220 320 -220 {lab=GND}
N 120 -180 260 -180 {lab=#net1}
N 140 -180 140 -130 {lab=#net1}
N 80 -130 140 -130 {lab=#net1}
N 180 70 200 70 {lab=GND}
N 200 70 200 120 {lab=GND}
N 180 100 180 120 {lab=GND}
N 180 120 180 140 {lab=GND}
N 180 120 200 120 {lab=GND}
N 20 70 140 70 {lab=ext_bias}
N -20 -20 -20 40 {lab=ext_bias}
N -200 -20 -20 -20 {lab=ext_bias}
N -200 -20 -200 40 {lab=ext_bias}
N -20 100 -20 130 {lab=GND}
N 150 140 180 140 {lab=GND}
N -20 20 40 20 {lab=ext_bias}
N 40 20 40 70 {lab=ext_bias}
N 300 -150 300 -110 {lab=Vout}
N 160 -300 190 -300 {lab=GND}
N 190 -300 190 -240 {lab=GND}
N 300 -130 360 -130 {lab=Vout}
N -40 70 -20 70 {lab=GND}
N -40 70 -40 110 {lab=GND}
N -40 110 -20 110 {lab=GND}
C {symbols/nfet_05v0.sym} 320 -80 0 1 {name=M1
L=1u
W=4u
nf=2
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
C {symbols/nfet_05v0.sym} 60 -80 0 0 {name=M2
L=1u
W=4u
nf=2
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
C {symbols/nfet_05v0.sym} 160 70 0 0 {name=M3
L=1u
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
C {symbols/pfet_05v0.sym} 280 -180 0 0 {name=M4
L=1.5u
W=3u
nf=1
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
C {symbols/pfet_05v0.sym} 100 -180 0 1 {name=M5
L=1.5u
W=3u
nf=1
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
C {gnd.sym} 190 -80 0 0 {name=l5 lab=0}
C {symbols/nfet_05v0.sym} 0 70 0 1 {name=M6
L=1u
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
C {ipin.sym} 150 140 0 0 {name=p1 lab=GND}
C {ipin.sym} -20 130 0 0 {name=p2 lab=GND}
C {ipin.sym} 160 -300 0 0 {name=p3 lab=VDD}
C {iopin.sym} -200 40 0 0 {name=p4 lab=ext_bias}
C {iopin.sym} 340 -80 0 0 {name=p5 lab=Vin-}
C {iopin.sym} 40 -80 0 1 {name=p9 lab=Vin+}
C {iopin.sym} 360 -130 0 0 {name=p6 lab=Vout}
