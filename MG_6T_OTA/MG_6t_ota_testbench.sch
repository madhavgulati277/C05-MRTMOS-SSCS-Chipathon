v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 760 -30 {}
N 660 -30 680 -30 {lab=Vin+}
N 510 -30 530 -30 {lab=Vdd}
N 810 -35 830 -35 {lab=Vin-}
N -50 -10 40 -10 {lab=Vin-}
N -50 -10 -50 -0 {lab=Vin-}
N 340 0 380 0 {lab=#net1}
N 170 -90 190 -90 {lab=Vdd}
N 190 -90 190 -60 {lab=Vdd}
C {vsource.sym} 530 0 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 530 30 0 0 {name=l1 lab=0}
C {gnd.sym} 190 60 0 0 {name=l4 lab=0}
C {ipin.sym} 510 -30 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 660 -30 0 0 {name=p8 lab=Vin+
}
C {vsource.sym} 680 0 0 0 {name=V2 value=3.333 savecurrent=false}
C {gnd.sym} 680 30 0 0 {name=l6 lab=0}
C {code.sym} 235 120 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.op"}
C {ipin.sym} 810 -35 0 0 {name=p4 lab=Vin-
}
C {vsource.sym} 830 -5 0 0 {name=V3 value=3.333 savecurrent=false}
C {gnd.sym} 830 25 0 0 {name=l2 lab=0}
C {gnd.sym} 380 60 0 0 {name=l11 lab=0}
C {capa.sym} 380 30 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 170 -90 0 0 {name=p2 lab=Vdd}
C {ipin.sym} 40 10 0 0 {name=p3 lab=Vin+
}
C {ipin.sym} -50 -5 0 0 {name=p5 lab=Vin-
}
C {MG_6t_ota.sym} 190 0 0 0 {name=x1}
