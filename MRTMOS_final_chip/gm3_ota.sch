v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -40 180 -30 {lab=int2}
N 240 -30 310 -30 {lab=int2}
N 240 -30 240 10 {lab=int2}
N 180 -60 190 -60 {lab=0}
N 310 -60 320 -60 {lab=0}
N 240 40 250 40 {lab=0}
N 240 70 240 80 {lab=0}
N 250 40 250 80 {lab=0}
N 240 80 250 80 {lab=0}
N 310 -30 320 -30 {lab=int2}
N 170 -150 180 -150 {lab=#net1}
N 170 -180 170 -150 {lab=#net1}
N 170 -180 180 -180 {lab=#net1}
N 320 -150 330 -150 {lab=#net1}
N 330 -180 330 -150 {lab=#net1}
N 320 -180 330 -180 {lab=#net1}
N 180 -110 180 -90 {lab=int1}
N 320 -110 320 -90 {lab=out2}
N 180 -200 180 -180 {lab=#net1}
N 250 -200 320 -200 {lab=#net1}
N 320 -200 320 -180 {lab=#net1}
N 230 -150 280 -150 {lab=int1}
N 230 -150 230 -110 {lab=int1}
N 180 -110 230 -110 {lab=int1}
N 360 -60 390 -60 {lab=#net2}
N 320 -110 370 -110 {lab=out2}
N 80 -240 80 -230 {lab=#net1}
N 80 -240 250 -240 {lab=#net1}
N 250 -240 250 -200 {lab=#net1}
N 100 -60 140 -60 {lab=#net3}
N 150 40 200 40 {lab=int3}
N 190 -30 240 -30 {lab=int2}
N 180 -30 190 -30 {lab=int2}
N 220 -150 230 -150 {lab=int1}
N 180 -120 180 -110 {lab=int1}
N 320 -120 320 -110 {lab=out2}
N 180 -200 250 -200 {lab=#net1}
N 370 -110 430 -110 {lab=out2}
N 10 -240 80 -240 {lab=#net1}
N 10 -240 10 -90 {lab=#net1}
N 50 40 150 40 {lab=int3}
N 10 -30 10 10 {lab=int3}
N 10 -10 60 -10 {lab=int3}
N 60 -10 60 40 {lab=int3}
N -10 40 10 40 {lab=0}
N -10 40 -10 70 {lab=0}
N -10 70 10 70 {lab=0}
C {symbols/nfet_05v0.sym} 340 -60 0 1 {name=M1
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
C {symbols/nfet_05v0.sym} 160 -60 0 0 {name=M2
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
C {symbols/nfet_05v0.sym} 220 40 0 0 {name=M3
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
C {gnd.sym} 240 80 0 0 {name=l1 lab=0}
C {symbols/pfet_05v0.sym} 300 -150 0 0 {name=M4
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
C {symbols/pfet_05v0.sym} 200 -150 0 1 {name=M5
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
C {gnd.sym} 390 0 0 0 {name=l6 lab=0}
C {lab_wire.sym} 370 -110 0 0 {name=p1 sig_type=std_logic lab=out2
}
C {vsource.sym} 80 -200 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 80 -170 0 0 {name=l2 lab=0}
C {vsource.sym} 100 -30 0 0 {name=V2 value="1.684 ac 1" savecurrent=false}
C {gnd.sym} 100 0 0 0 {name=l3 lab=0}
C {vsource.sym} 390 -30 0 0 {name=V3 value=1.684 savecurrent=false}
C {code_shown.sym} -280 160 0 0 {name=MODELS only_toplevel=true value="
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
"

}
C {code.sym} -250 -160 0 0 {name=SIMULATIONS only_toplevel=false value="
.control 
  	save all
	op
	ac dec 20 1 100Meg
	remzerovec
	write gm3_OTA_ac.raw
.endc

.options savecurrents
"}
C {lab_wire.sym} 260 -150 0 0 {name=p2 sig_type=std_logic lab=int1
}
C {lab_wire.sym} 240 -10 0 0 {name=p3 sig_type=std_logic lab=int2
}
C {capa.sym} 430 -80 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 430 -50 0 0 {name=l5 lab=0}
C {isource.sym} 10 -60 0 0 {name=I0 value=375u}
C {symbols/nfet_05v0.sym} 30 40 0 1 {name=M6
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
C {gnd.sym} 10 70 0 0 {name=l7 lab=0}
C {gnd.sym} 190 -60 0 0 {name=l4 lab=0}
C {gnd.sym} 310 -60 0 0 {name=l8 lab=0}
C {lab_wire.sym} 120 40 0 0 {name=p4 sig_type=std_logic lab=int3
}
