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
N 80 -240 80 -210 {lab=VDD}
N 300 -240 300 -210 {lab=VDD}
N 80 -240 300 -240 {lab=VDD}
N 60 -180 80 -180 {lab=VDD}
N 60 -220 60 -180 {lab=VDD}
N 60 -220 80 -220 {lab=VDD}
N 300 -180 320 -180 {lab=VDD}
N 320 -220 320 -180 {lab=VDD}
N 300 -220 320 -220 {lab=VDD}
N 120 -180 260 -180 {lab=#net1}
N 140 -180 140 -130 {lab=#net1}
N 80 -130 140 -130 {lab=#net1}
N 180 70 200 70 {lab=0}
N 200 70 200 120 {lab=0}
N 540 -170 540 -140 {lab=0}
N 540 -260 540 -230 {lab=VDD}
N -300 -110 -300 -80 {lab=0}
N -220 -110 -220 -80 {lab=0}
N -300 -200 -300 -170 {lab=Vin-}
N -220 -200 -220 -170 {lab=Vin+}
N 520 -70 520 -40 {lab=Vout}
N 520 20 520 50 {lab=0}
N 180 100 180 120 {lab=0}
N 180 120 200 120 {lab=0}
N 20 70 140 70 {lab=#net3}
N -20 -20 -20 40 {lab=#net3}
N -200 -20 -20 -20 {lab=#net3}
N -200 -20 -200 40 {lab=#net3}
N -20 100 -20 130 {lab=0}
N -20 20 40 20 {lab=#net3}
N 40 20 40 70 {lab=#net3}
N 300 -150 300 -110 {lab=Vout}
N 160 -300 190 -300 {lab=VDD}
N 190 -300 190 -240 {lab=VDD}
N -50 70 -20 70 {lab=0}
N -50 70 -50 110 {lab=0}
N -50 110 -20 110 {lab=0}
N -200 190 -200 220 {lab=0}
N -200 100 -200 130 {lab=#net4}
N 300 -130 370 -130 {lab=Vout}
C {symbols/nfet_05v0.sym} 320 -80 0 1 {name=M1
L=1u
W=2u
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
W=2u
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
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 280 -180 0 0 {name=M4
L=1.5u
W=2u
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
W=2u
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
C {vsource.sym} 540 -200 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 540 -140 0 0 {name=l2 lab=0}
C {vdd.sym} 540 -260 0 0 {name=l3 lab=VDD}
C {gnd.sym} 190 -80 0 0 {name=l5 lab=0}
C {vsource.sym} -300 -140 0 0 {name=V3 value=3.33 savecurrent=false}
C {vsource.sym} -220 -140 0 0 {name=V4 value="dc 3.33 ac 1 sin(2.5 10m 1Meg)" savecurrent=false
}
C {gnd.sym} -300 -80 0 0 {name=l7 lab=0}
C {gnd.sym} -220 -80 0 0 {name=l8 lab=0}
C {lab_wire.sym} -300 -200 0 0 {name=p6 sig_type=std_logic lab=Vin-}
C {lab_wire.sym} -220 -200 0 0 {name=p7 sig_type=std_logic lab=Vin+}
C {gnd.sym} 520 50 0 0 {name=l9 lab=0}
C {lab_wire.sym} 520 -70 0 0 {name=p8 sig_type=std_logic lab=Vout}
C {symbols/nfet_05v0.sym} 0 70 0 1 {name=M6
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
model=nfet_05v0
spiceprefix=X
}
C {ipin.sym} 160 -300 0 0 {name=p3 lab=VDD}
C {iopin.sym} 340 -80 0 0 {name=p5 lab=Vin-}
C {iopin.sym} 40 -80 0 1 {name=p9 lab=Vin+}
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
C {res.sym} -200 70 0 0 {name=R1
value=1MEG
footprint=1206
device=resistor
m=1}
C {vsource.sym} -200 160 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} -200 220 0 0 {name=l1 lab=0}
C {iopin.sym} 370 -130 0 0 {name=p4 lab=Vout}
C {gnd.sym} 180 120 0 0 {name=l4 lab=0}
C {gnd.sym} -20 130 0 0 {name=l6 lab=0}
C {capa.sym} 520 -10 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
