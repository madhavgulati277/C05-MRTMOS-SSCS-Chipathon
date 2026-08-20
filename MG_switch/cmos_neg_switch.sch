v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 190 -240 420 -240 {lab=in}
N 190 -120 420 -120 {lab=out}
N -90 -200 -90 -160 {lab=#net1}
N -130 -230 -130 -130 {lab=Vin}
N 190 -150 190 -120 {lab=out}
N 420 -150 420 -120 {lab=out}
N 190 -240 190 -210 {lab=in}
N 420 -240 420 -210 {lab=in}
N 370 -180 420 -180 {lab=Vdd}
N 120 -180 150 -180 {lab=Vin}
N -150 -180 -130 -180 {lab=Vin}
N -90 -230 20 -230 {lab=Vdd}
N -90 -130 0 -130 {lab=GND}
N -90 -180 120 -180 {lab=#net1}
N 320 -310 320 -240 {lab=in}
N 310 -120 310 -60 {lab=out}
N -90 -100 -90 -70 {lab=GND}
N 190 -180 250 -180 {lab=GND}
N -120 -320 -90 -320 {lab=Vdd}
N -90 -320 -90 -260 {lab=Vdd}
N -90 -320 -20 -320 {lab=Vdd}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 170 -180 0 0 {name=M1
L=0.6u
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
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} 440 -180 0 1 {name=M2
L=0.6u
W=6u
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
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} -110 -130 0 0 {name=M3
L=0.6u
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
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} -110 -230 0 0 {name=M4
L=0.6u
W=3u
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
C {ipin.sym} -120 -320 0 0 {name=p2 lab=Vdd}
C {ipin.sym} -150 -180 0 0 {name=p4 lab=Vin
}
C {ipin.sym} 320 -310 0 0 {name=p1 lab=in}
C {ipin.sym} 310 -60 0 0 {name=p6 lab=out}
C {ipin.sym} -90 -70 0 0 {name=p7 lab=GND}
C {lab_pin.sym} 20 -230 0 1 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 370 -180 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 0 -130 0 1 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} 250 -180 0 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 460 -180 0 1 {name=p10 sig_type=std_logic lab=Vin}
C {symbols/cap_nmos_06v0.sym} -20 -290 0 0 {name=C3
W=60e-6
L=10e-6
model=cap_nmos_06v0
spiceprefix=X
m=6}
C {lab_pin.sym} -20 -260 0 1 {name=p20 sig_type=std_logic lab=GND}
