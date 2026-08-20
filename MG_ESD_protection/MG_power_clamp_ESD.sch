v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -280 -100 200 -100 {lab=Vdd}
N -280 100 200 100 {lab=GND}
N -160 -100 -160 -70 {lab=Vdd}
N -160 -10 -160 10 {lab=#net1}
N -160 70 -160 100 {lab=GND}
N 0 -100 0 -80 {lab=Vdd}
N 0 80 0 100 {lab=GND}
N 160 -100 160 -30 {lab=Vdd}
N 160 30 160 100 {lab=GND}
N -260 -40 -260 100 {lab=GND}
N -260 -40 -180 -40 {lab=GND}
N -0 -50 90 -50 {lab=Vdd}
N 90 -100 90 -50 {lab=Vdd}
N -0 50 90 50 {lab=GND}
N 90 50 90 100 {lab=GND}
N 160 -0 240 -0 {lab=GND}
N 240 -0 240 100 {lab=GND}
N 200 100 240 100 {lab=GND}
N -0 -20 0 20 {lab=#net2}
N -40 -50 -40 50 {lab=#net1}
N -50 -0 -40 -0 {lab=#net1}
N -160 -0 -50 0 {lab=#net1}
N 0 0 120 0 {lab=#net2}
C {devices/ipin.sym} -280 -100 0 0 {name=p1 lab=Vdd}
C {devices/ipin.sym} -280 100 0 0 {name=p2 lab=GND}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/pfet_05v0.sym} -20 -50 0 0 {name=MM_p1 W=12.5u L=0.6u m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} -20 50 0 0 {name=MM_n1 W=5u L=0.6u m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/nfet_05v0.sym} 140 0 0 0 {name=MM_clamp W=10u L=0.6u m=40}
C {symbols/ppolyf_u_3k.sym} -160 -40 0 0 {name=R1
W=1e-6
L=40e-5
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} -160 40 0 0 {name=C1
W=20e-6
L=20e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
