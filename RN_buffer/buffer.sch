v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -190 110 -160 {lab=out}
N 110 -130 140 -130 {lab=0}
N 140 -130 140 -100 {lab=0}
N 110 -100 140 -100 {lab=0}
N 110 -220 140 -220 {lab=0}
N 110 -290 180 -290 {lab=#net1}
N 110 -290 110 -250 {lab=#net1}
N 0 -240 70 -220 {lab=#net2}
N -50 -130 70 -130 {lab=int1}
N -100 -130 -90 -130 {lab=0}
N -100 -130 -100 -100 {lab=0}
N -100 -100 -90 -100 {lab=0}
N -90 -290 110 -290 {lab=#net1}
N -90 -290 -90 -250 {lab=#net1}
N -90 -190 -90 -170 {lab=int1}
N -90 -170 -90 -160 {lab=int1}
N -90 -180 -30 -180 {lab=int1}
N -30 -180 -30 -130 {lab=int1}
N 110 -180 190 -180 {lab=out}
N 190 -180 220 -180 {lab=out}
C {symbols/nfet_05v0.sym} 90 -220 0 0 {name=M1
L=0.6u
W=1.287u
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
C {symbols/nfet_05v0.sym} 90 -130 0 0 {name=M2
L=1.2u
W=0.383u
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
C {gnd.sym} 110 -100 0 0 {name=l1 lab=0}
C {gnd.sym} 140 -220 3 0 {name=l2 lab=0}
C {vsource.sym} 180 -260 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 180 -230 0 0 {name=l3 lab=0}
C {vsource.sym} 0 -210 0 0 {name=V2 value="2.5 ac 1" savecurrent=false}
C {gnd.sym} 0 -180 0 0 {name=l4 lab=0}
C {symbols/nfet_05v0.sym} -70 -130 0 1 {name=M3
L=1.2u
W=0.383u
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
C {gnd.sym} -90 -100 0 0 {name=l5 lab=0}
C {isource.sym} -90 -220 0 0 {name=I0 value=3.33u}
C {capa.sym} 220 -150 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 220 -120 0 0 {name=l6 lab=0}
C {code.sym} -410 -280 0 0 {name=SIMULATIONS only_toplevel=false value="
.control 
  	save all
	op
	ac dec 20 1 100Meg
	remzerovec
	write buffer_op.raw
.endc

.options savecurrents
"}
C {code_shown.sym} -530 -10 0 0 {name=MODELS only_toplevel=true value="
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
"

}
C {lab_wire.sym} 190 -180 0 0 {name=p1 sig_type=std_logic lab=out}
C {lab_wire.sym} 30 -130 0 0 {name=p3 sig_type=std_logic lab=int1}
