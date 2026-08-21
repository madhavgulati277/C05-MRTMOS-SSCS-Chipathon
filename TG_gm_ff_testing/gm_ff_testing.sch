v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -170 540 -140 {lab=0}
N 540 -260 540 -230 {lab=VDD}
N -300 -110 -300 -80 {lab=0}
N -220 -110 -220 -80 {lab=0}
N -300 -200 -300 -170 {lab=Vin-}
N -220 -200 -220 -170 {lab=Vin+}
N 520 -70 520 -40 {lab=Vout}
N 520 20 520 50 {lab=0}
N 70 -140 100 -140 {lab=VDD}
N 100 -140 100 -80 {lab=VDD}
N 170 40 170 70 {lab=0}
N 340 -160 340 -130 {lab=#net1}
N 320 -20 390 -20 {lab=Vout}
N 230 -250 230 -80 {lab=#net2}
N 230 -250 340 -250 {lab=#net2}
N 340 -250 340 -220 {lab=#net2}
C {vsource.sym} 540 -200 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 540 -140 0 0 {name=l2 lab=0}
C {vdd.sym} 540 -260 0 0 {name=l3 lab=VDD}
C {vsource.sym} -300 -140 0 0 {name=V3 value=2.5 savecurrent=false}
C {vsource.sym} -220 -140 0 0 {name=V4 value="dc 2.5 ac 1 sin(2.5 1m 1Meg)" savecurrent=false
}
C {gnd.sym} -300 -80 0 0 {name=l7 lab=0}
C {gnd.sym} -220 -80 0 0 {name=l8 lab=0}
C {lab_wire.sym} -300 -200 0 0 {name=p6 sig_type=std_logic lab=Vin-}
C {lab_wire.sym} -220 -200 0 0 {name=p7 sig_type=std_logic lab=Vin+}
C {gnd.sym} 520 50 0 0 {name=l9 lab=0}
C {lab_wire.sym} 520 -70 0 0 {name=p8 sig_type=std_logic lab=Vout}
C {ipin.sym} 70 -140 0 0 {name=p3 lab=VDD}
C {iopin.sym} 20 -10 0 1 {name=p5 lab=Vin-}
C {iopin.sym} 20 -30 0 1 {name=p9 lab=Vin+}
C {simulator_commands.sym} 690 -20 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical

.control
  save all
  op
  print all
  print @m.xm2.m0[gm]
  print @m.xm2.m0[id]
  *show all
  ac dec 10 1 1G
  meas ac dc_gain MAX vdb(Vout)
  meas ac ugbw WHEN vdb(Vout)=0 FALL=1
  let phase_deg = (180/PI)*vp(Vout)
  plot vdb(Vout)
  plot phase_deg
.endc
"}
C {res.sym} 340 -190 0 0 {name=R1
value=10MEG
footprint=1206
device=resistor
m=1}
C {vsource.sym} 340 -100 0 0 {name=V2 value=2 savecurrent=false}
C {gnd.sym} 170 70 0 0 {name=l1 lab=0}
C {iopin.sym} 390 -20 0 0 {name=p4 lab=Vout}
C {capa.sym} 520 -10 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 -70 0 0 {name=l4 lab=0}
C {gm_ff.sym} 170 -20 0 0 {name=x1}
