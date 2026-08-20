v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -10 70 10 {lab=external_input_pin}
N -40 0 70 0 {lab=external_input_pin}
N 70 70 70 90 {lab=GND}
N 70 -90 70 -70 {lab=Vdd}
N 70 0 130 0 {lab=external_input_pin}
N 190 0 210 0 {lab=pin_facing_input}
N 160 20 160 80 {lab=GND}
N 70 80 160 80 {lab=GND}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 70 -40 2 0 {name=D2
model=diode_nd2ps_06v0
r_w=1u
r_l=0.6u
m=180}
C {ipin.sym} -40 0 0 0 {name=p1 lab=external_input_pin}
C {ipin.sym} 70 -90 0 0 {name=p2 lab=Vdd}
C {ipin.sym} 70 90 0 0 {name=p3 lab=GND}
C {opin.sym} 210 0 0 0 {name=p4 lab=pin_facing_input}
C {symbols/ppolyf_u_3k.sym} 160 0 3 0 {name=R2
W=1e-6
L=1e-5
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 70 40 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=1u
r_l=0.6u
m=180}
