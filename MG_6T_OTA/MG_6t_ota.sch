v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 900 -30 {}
P 4 1 320 -100 {}
N 50 -40 120 -40 {lab=0}
N 285 -160 335 -160 {lab=Vdd}
N -20 -40 10 -40 {lab=Vin+}
N 570 90 590 90 {lab=Vin+}
N 650 -140 670 -140 {lab=Vdd}
N 570 215 590 215 {lab=Vin-}
N 220 -40 290 -40 {lab=0}
N 330 -40 360 -40 {lab=Vin-}
N 5 -160 55 -160 {lab=Vdd}
N 60 -250 60 -190 {lab=Vdd}
N 60 -250 280 -250 {lab=Vdd}
N 280 -250 280 -190 {lab=Vdd}
N 50 -190 60 -190 {lab=Vdd}
N 280 -190 290 -190 {lab=Vdd}
N 90 -160 250 -160 {lab=#net1}
N 50 -130 50 -70 {lab=#net1}
N 50 -130 60 -130 {lab=#net1}
N 280 -130 290 -130 {lab=#net2}
N 290 -130 290 -70 {lab=#net2}
N 50 -100 140 -100 {lab=#net1}
N 140 -160 140 -100 {lab=#net1}
N 50 -10 50 40 {lab=#net3}
N 50 40 290 40 {lab=#net3}
N 290 -10 290 40 {lab=#net3}
N 170 100 240 100 {lab=0}
N 170 190 240 190 {lab=0}
N 170 40 170 70 {lab=#net3}
N 170 130 170 160 {lab=#net4}
N 170 220 170 270 {lab=0}
N 170 -330 170 -250 {lab=Vdd}
N 130 -330 170 -330 {lab=Vdd}
N -50 100 130 100 {lab=#net5}
N -50 190 130 190 {lab=#net6}
N 290 -100 460 -100 {lab=#net2}
N -120 -60 -120 20 {lab=Vdd}
N -160 -60 -120 -60 {lab=Vdd}
N -120 80 -120 110 {lab=#net5}
N -120 100 -50 100 {lab=#net5}
N -120 170 -120 210 {lab=#net6}
N -120 190 -50 190 {lab=#net6}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} 265 -160 0 0 {name=M4
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
C {vsource.sym} 670 -110 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 670 -80 0 0 {name=l1 lab=0}
C {gnd.sym} 170 270 0 0 {name=l4 lab=0}
C {gnd.sym} 120 -40 3 0 {name=l5 lab=0}
C {ipin.sym} 650 -140 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 130 -330 0 0 {name=p2 lab=Vdd}
C {ipin.sym} 335 -160 0 1 {name=p3 lab=Vdd}
C {ipin.sym} -20 -40 0 0 {name=p5 lab=Vin+
}
C {ipin.sym} 570 90 0 0 {name=p8 lab=Vin+
}
C {vsource.sym} 590 120 0 0 {name=V2 value=3.333 savecurrent=false}
C {gnd.sym} 590 150 0 0 {name=l6 lab=0}
C {code.sym} 505 -340 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.op"}
C {ipin.sym} 570 215 0 0 {name=p4 lab=Vin-
}
C {vsource.sym} 590 245 0 0 {name=V3 value=3.333 savecurrent=false}
C {gnd.sym} 590 275 0 0 {name=l2 lab=0}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 310 -40 0 1 {name=M2
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
C {gnd.sym} 220 -40 1 1 {name=l3 lab=0}
C {ipin.sym} 360 -40 0 1 {name=p6 lab=Vin-
}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 30 -40 0 0 {name=M1
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
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} 75 -160 0 1 {name=M3
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
C {ipin.sym} 5 -160 0 0 {name=p7 lab=Vdd}
C {gnd.sym} 240 100 3 0 {name=l7 lab=0}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 150 100 0 0 {name=M5b
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
C {gnd.sym} 240 190 3 0 {name=l8 lab=0}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 150 190 0 0 {name=M5a
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
C {gnd.sym} 460 -40 0 0 {name=l11 lab=0}
C {capa.sym} 460 -70 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
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
C {ipin.sym} -160 -60 0 0 {name=p9 lab=Vdd}
C {gnd.sym} -120 270 0 0 {name=l9 lab=0}
C {gnd.sym} -140 50 0 0 {name=l10 lab=0}
C {gnd.sym} -140 140 0 0 {name=l12 lab=0}
C {gnd.sym} -140 240 0 0 {name=l13 lab=0}
