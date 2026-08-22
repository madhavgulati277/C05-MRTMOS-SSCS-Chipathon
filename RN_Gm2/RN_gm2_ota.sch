v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -580 -170 -580 -160 {lab=int2}
N -520 -160 -450 -160 {lab=int2}
N -520 -160 -520 -120 {lab=int2}
N -580 -190 -570 -190 {lab=GND}
N -450 -190 -440 -190 {lab=GND}
N -520 -90 -510 -90 {lab=GND}
N -520 -60 -520 -50 {lab=GND}
N -510 -90 -510 -50 {lab=GND}
N -520 -50 -510 -50 {lab=GND}
N -450 -160 -440 -160 {lab=int2}
N -590 -280 -580 -280 {lab=Vdd}
N -590 -310 -590 -280 {lab=Vdd}
N -590 -310 -580 -310 {lab=Vdd}
N -440 -280 -430 -280 {lab=Vdd}
N -430 -310 -430 -280 {lab=Vdd}
N -440 -310 -430 -310 {lab=Vdd}
N -580 -240 -580 -220 {lab=int1}
N -440 -240 -440 -220 {lab=Vout}
N -580 -330 -580 -310 {lab=Vdd}
N -510 -330 -440 -330 {lab=Vdd}
N -440 -330 -440 -310 {lab=Vdd}
N -530 -280 -480 -280 {lab=int1}
N -530 -280 -530 -240 {lab=int1}
N -580 -240 -530 -240 {lab=int1}
N -400 -190 -370 -190 {lab=Vin-}
N -440 -240 -390 -240 {lab=Vout}
N -510 -370 -510 -330 {lab=Vdd}
N -660 -190 -620 -190 {lab=Vin+}
N -570 -160 -520 -160 {lab=int2}
N -580 -160 -570 -160 {lab=int2}
N -540 -280 -530 -280 {lab=int1}
N -580 -250 -580 -240 {lab=int1}
N -440 -250 -440 -240 {lab=Vout}
N -580 -330 -510 -330 {lab=Vdd}
N -390 -240 -330 -240 {lab=Vout}
N -750 -120 -750 -30 {lab=#net1}
N -840 -60 -750 -60 {lab=#net1}
N -750 -90 -560 -90 {lab=#net1}
N -750 -220 -750 -180 {lab=Vdd}
N -510 -410 -510 -370 {lab=Vdd}
N -510 -410 -420 -410 {lab=Vdd}
N -420 -410 -420 -400 {lab=Vdd}
N -190 -230 -190 -170 {lab=Vin-}
N -190 -110 -190 -100 {lab=GND}
N -340 -200 -190 -200 {lab=Vin-}
N -190 -310 -190 -290 {lab=Vdd}
N -380 -200 -340 -200 {lab=Vin-}
N -380 -200 -380 -190 {lab=Vin-}
N -650 -110 -650 -100 {lab=GND}
N -650 -310 -650 -290 {lab=Vdd}
N -650 -230 -650 -190 {lab=Vin+}
N -650 -190 -650 -170 {lab=Vin+}
C {symbols/nfet_05v0.sym} -420 -190 0 1 {name=M1
L=1u
W=20u
nf=10
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
C {symbols/nfet_05v0.sym} -600 -190 0 0 {name=M2
L=1u
W=20u
nf=10
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
C {symbols/nfet_05v0.sym} -540 -90 0 0 {name=M3
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
C {symbols/pfet_05v0.sym} -460 -280 0 0 {name=M4
L=1.2u
W=20u
nf=8
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} -560 -280 0 1 {name=M5
L=1.2u
W=20u
nf=8
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {lab_wire.sym} -500 -280 0 0 {name=p2 sig_type=std_logic lab=int1
}
C {lab_wire.sym} -520 -140 0 0 {name=p3 sig_type=std_logic lab=int2
}
C {ipin.sym} -510 -370 0 0 {name=p5 lab=Vdd}
C {ipin.sym} -510 -50 0 1 {name=p6 lab=GND
}
C {lab_pin.sym} -570 -190 0 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} -450 -190 0 0 {name=p7 sig_type=std_logic lab=GND}
C {opin.sym} -330 -240 0 0 {name=p16 lab=Vout
}
C {ipin.sym} -660 -190 0 0 {name=p1 lab=Vin+
}
C {ipin.sym} -370 -190 0 1 {name=p4 lab=Vin-
}
C {symbols/ppolyf_u_3k.sym} -750 -150 0 0 {name=R3
W=2e-6
L=30e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -750 0 0 0 {name=R4
W=2e-6
L=10e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/cap_nmos_06v0.sym} -840 -30 0 0 {name=C1
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} -750 30 0 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} -840 0 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} -770 -150 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} -770 0 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} -750 -220 0 1 {name=p21 sig_type=std_logic lab=Vdd}
C {symbols/cap_nmos_06v0.sym} -420 -370 0 0 {name=C3
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} -420 -340 0 1 {name=p20 sig_type=std_logic lab=GND}
C {symbols/ppolyf_u_3k.sym} -190 -260 0 0 {name=R5
W=2e-6
L=4e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -190 -140 0 0 {name=R6
W=2e-6
L=6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} -210 -260 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} -210 -140 0 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_pin.sym} -190 -100 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} -190 -310 0 1 {name=p18 sig_type=std_logic lab=Vdd}
C {symbols/ppolyf_u_3k.sym} -650 -260 0 0 {name=R1
W=2e-6
L=4e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} -650 -140 0 0 {name=R2
W=2e-6
L=6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} -670 -260 0 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} -670 -140 0 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} -650 -100 0 0 {name=p22 sig_type=std_logic lab=GND}
C {lab_pin.sym} -650 -310 0 1 {name=p23 sig_type=std_logic lab=Vdd}
