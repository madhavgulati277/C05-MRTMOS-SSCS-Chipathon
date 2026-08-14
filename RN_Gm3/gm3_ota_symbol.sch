v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -70 100 -60 {lab=int2}
N 160 -60 230 -60 {lab=int2}
N 160 -60 160 -20 {lab=int2}
N 100 -90 110 -90 {lab=0}
N 230 -90 240 -90 {lab=0}
N 160 10 170 10 {lab=0}
N 160 40 160 50 {lab=0}
N 170 10 170 50 {lab=0}
N 160 50 170 50 {lab=0}
N 230 -60 240 -60 {lab=int2}
N 90 -180 100 -180 {lab=#net1}
N 90 -210 90 -180 {lab=#net1}
N 90 -210 100 -210 {lab=#net1}
N 240 -180 250 -180 {lab=#net1}
N 250 -210 250 -180 {lab=#net1}
N 240 -210 250 -210 {lab=#net1}
N 100 -140 100 -120 {lab=int1}
N 240 -140 240 -120 {lab=out2}
N 100 -230 100 -210 {lab=#net1}
N 170 -230 240 -230 {lab=#net1}
N 240 -230 240 -210 {lab=#net1}
N 150 -180 200 -180 {lab=int1}
N 150 -180 150 -140 {lab=int1}
N 100 -140 150 -140 {lab=int1}
N 280 -90 310 -90 {lab=#net2}
N 240 -140 290 -140 {lab=out2}
N 20 -90 60 -90 {lab=#net4}
N 70 10 120 10 {lab=#net5}
N 110 -60 160 -60 {lab=int2}
N 100 -60 110 -60 {lab=int2}
N 140 -180 150 -180 {lab=int1}
N 100 -150 100 -140 {lab=int1}
N 240 -150 240 -140 {lab=out2}
N 100 -230 170 -230 {lab=#net1}
C {symbols/nfet_05v0.sym} 260 -90 0 1 {name=M1
L=0.60u
W=42.9u
nf=17
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
C {symbols/nfet_05v0.sym} 80 -90 0 0 {name=M2
L=0.60u
W=42.9u
nf=17
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
C {symbols/nfet_05v0.sym} 140 10 0 0 {name=M3
L=1.2u
W=66.96u
nf=26
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
C {gnd.sym} 160 50 0 0 {name=l1 lab=0}
C {symbols/pfet_05v0.sym} 220 -180 0 0 {name=M4
L=1.2u
W=10u
nf=4
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
C {symbols/pfet_05v0.sym} 120 -180 0 1 {name=M5
L=1.2u
W=10u
nf=4
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
C {lab_wire.sym} 290 -140 0 0 {name=p1 sig_type=std_logic lab=out2
}
C {code_shown.sym} -360 130 0 0 {name=MODELS only_toplevel=true value="
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
"

}
C {lab_wire.sym} 180 -180 0 0 {name=p2 sig_type=std_logic lab=int1
}
C {lab_wire.sym} 160 -40 0 0 {name=p3 sig_type=std_logic lab=int2
}
C {gnd.sym} 110 -90 0 0 {name=l4 lab=0}
C {gnd.sym} 230 -90 0 0 {name=l8 lab=0}
