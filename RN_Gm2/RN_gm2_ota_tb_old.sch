v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -130 110 -120 {lab=int2}
N 170 -120 240 -120 {lab=int2}
N 170 -120 170 -80 {lab=int2}
N 110 -150 120 -150 {lab=int2}
N 120 -150 120 -120 {lab=int2}
N 240 -150 250 -150 {lab=int2}
N 240 -150 240 -120 {lab=int2}
N 170 -50 180 -50 {lab=0}
N 170 -20 170 -10 {lab=0}
N 180 -50 180 -10 {lab=0}
N 170 -10 180 -10 {lab=0}
N 240 -120 250 -120 {lab=int2}
N 100 -240 110 -240 {lab=#net1}
N 100 -270 100 -240 {lab=#net1}
N 100 -270 110 -270 {lab=#net1}
N 250 -240 260 -240 {lab=#net1}
N 260 -270 260 -240 {lab=#net1}
N 250 -270 260 -270 {lab=#net1}
N 110 -200 110 -180 {lab=int1}
N 250 -200 250 -180 {lab=out2}
N 110 -290 110 -270 {lab=#net1}
N 180 -290 250 -290 {lab=#net1}
N 250 -290 250 -270 {lab=#net1}
N 160 -240 210 -240 {lab=int1}
N 160 -240 160 -200 {lab=int1}
N 110 -200 160 -200 {lab=int1}
N 290 -150 320 -150 {lab=#net2}
N 250 -200 300 -200 {lab=out2}
N 10 -330 10 -320 {lab=#net1}
N 10 -330 180 -330 {lab=#net1}
N 180 -330 180 -290 {lab=#net1}
N 30 -150 70 -150 {lab=#net3}
N 80 -50 130 -50 {lab=int3}
N 120 -120 170 -120 {lab=int2}
N 110 -120 120 -120 {lab=int2}
N 150 -240 160 -240 {lab=int1}
N 110 -210 110 -200 {lab=int1}
N 250 -210 250 -200 {lab=out2}
N 110 -290 180 -290 {lab=#net1}
N 300 -200 360 -200 {lab=out2}
N -60 -330 10 -330 {lab=#net1}
N -60 -330 -60 -180 {lab=#net1}
N -60 -120 -60 -90 {lab=int3}
N -80 -50 -60 -50 {lab=0}
N -80 -50 -80 -20 {lab=0}
N -80 -20 -60 -20 {lab=0}
N -60 -90 -60 -80 {lab=int3}
N -20 -50 80 -50 {lab=int3}
N -60 -100 0 -100 {lab=int3}
N -0 -100 -0 -50 {lab=int3}
C {symbols/nfet_05v0.sym} 270 -150 0 1 {name=M1
L=0.60u
W=8u
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
C {symbols/nfet_05v0.sym} 90 -150 0 0 {name=M2
L=0.60u
W=8u
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
C {symbols/nfet_05v0.sym} 150 -50 0 0 {name=M3
L=1.2u
W=16u
nf=8
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
C {gnd.sym} 170 -10 0 0 {name=l1 lab=0}
C {symbols/pfet_05v0.sym} 230 -240 0 0 {name=M4
L=0.60u
W=10u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 130 -240 0 1 {name=M5
L=0.60u
W=10u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {gnd.sym} 320 -90 0 0 {name=l6 lab=0}
C {lab_wire.sym} 300 -200 0 0 {name=p1 sig_type=std_logic lab=out2
}
C {vsource.sym} 10 -290 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 10 -260 0 0 {name=l2 lab=0}
C {vsource.sym} 30 -120 0 0 {name=V2 value="2.5 ac 1" savecurrent=false}
C {gnd.sym} 30 -90 0 0 {name=l3 lab=0}
C {vsource.sym} 320 -120 0 0 {name=V3 value=2.5 savecurrent=false}
C {gnd.sym} -60 -20 0 0 {name=l4 lab=0}
C {code_shown.sym} -350 70 0 0 {name=MODELS only_toplevel=true value="
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
"

}
C {code.sym} -320 -250 0 0 {name=SIMULATIONS only_toplevel=false value="
.control 
  	save all
	op
	ac dec 20 1 100Meg
	remzerovec
	write 1_OTA_ac.raw
.endc

.options savecurrents
"}
C {lab_wire.sym} 190 -240 0 0 {name=p2 sig_type=std_logic lab=int1
}
C {lab_wire.sym} 170 -100 0 0 {name=p3 sig_type=std_logic lab=int2
}
C {capa.sym} 360 -170 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 -140 0 0 {name=l5 lab=0}
C {isource.sym} -60 -150 0 0 {name=I0 value=500u}
C {symbols/nfet_05v0.sym} -40 -50 0 1 {name=M6
L=1.2u
W=16u
nf=8
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
C {lab_wire.sym} 70 -50 0 0 {name=p4 sig_type=std_logic lab=int3
}
