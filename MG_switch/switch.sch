v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 -100 280 -100 {lab=#net1}
N 50 20 280 20 {lab=0}
N -90 -200 -90 -160 {lab=#net2}
N -130 -230 -130 -130 {lab=Vin}
N 320 -160 320 -40 {lab=#net2}
N -90 -180 320 -160 {lab=#net2}
N 50 -10 50 20 {lab=0}
N 280 -10 280 20 {lab=0}
N 50 -100 50 -70 {lab=#net1}
N 280 -100 280 -70 {lab=#net1}
N 50 -40 120 -40 {lab=0}
N 230 -40 280 -40 {lab=Vdd}
N -20 -40 10 -40 {lab=Vin}
N -150 -180 -130 -180 {lab=Vin}
N 170 20 170 60 {lab=0}
N -350 -90 -330 -90 {lab=Vin}
N -270 -320 -250 -320 {lab=Vdd}
N -120 -320 -90 -260 {lab=Vdd}
N -90 -230 20 -230 {lab=Vdd}
N -90 -130 0 -130 {lab=0}
N 140 -140 170 -100 {lab=#net1}
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 30 -40 0 0 {name=M1
L=0.6u
W=20u
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
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} 300 -40 0 1 {name=M2
L=0.6u
W=60u
nf=6
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
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} -110 -130 0 0 {name=M3
L=30u
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
C {/foss/designs/C05-MRTMOS-SSCS-Chipathon/gf180mcu/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} -110 -230 0 0 {name=M4
L=1u
W=90u
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
C {vsource.sym} -250 -290 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} -250 -260 0 0 {name=l1 lab=0}
C {gnd.sym} -90 -100 0 0 {name=l4 lab=0}
C {gnd.sym} 120 -40 3 0 {name=l5 lab=0}
C {ipin.sym} -270 -320 0 0 {name=p1 lab=Vdd}
C {ipin.sym} -120 -320 0 0 {name=p2 lab=Vdd}
C {ipin.sym} 230 -40 0 0 {name=p3 lab=Vdd}
C {ipin.sym} -150 -180 0 0 {name=p4 lab=Vin
}
C {ipin.sym} -20 -40 0 0 {name=p5 lab=Vin
}
C {ipin.sym} -350 -90 0 0 {name=p8 lab=Vin
}
C {vsource.sym} -330 -60 0 0 {name=V2 value=0.5 savecurrent=false}
C {gnd.sym} -330 -30 0 0 {name=l6 lab=0}
C {vsource.sym} 110 -140 1 0 {name=V4 value=5 savecurrent=false}
C {gnd.sym} 80 -140 1 0 {name=l8 lab=0}
C {ipin.sym} 20 -230 0 1 {name=p11 lab=Vdd}
C {gnd.sym} 0 -130 3 0 {name=l2 lab=0}
C {code.sym} 400 -170 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical 
.tran 0.1n 20u"}
C {gnd.sym} 170 60 0 0 {name=l3 lab=0}
