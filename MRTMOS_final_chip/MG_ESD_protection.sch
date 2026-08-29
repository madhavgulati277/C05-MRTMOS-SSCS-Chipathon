v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -10 70 10 {lab=#net1}
N 70 70 70 90 {lab=GND}
N 70 -90 70 -70 {lab=Vdd}
N 70 0 130 0 {lab=#net1}
N 400 0 420 0 {lab=pin_facing_input}
N 370 20 370 80 {lab=GND}
N 70 80 160 80 {lab=GND}
N 40 0 70 0 {lab=#net1}
N -40 -0 -20 -0 {lab=external_input_pin}
N 160 80 370 80 {lab=GND}
N 130 -10 130 10 {lab=#net1}
N 130 -90 130 -70 {lab=Vdd}
N 200 -10 200 10 {lab=#net1}
N 200 -90 200 -70 {lab=Vdd}
N 260 -10 260 10 {lab=#net1}
N 260 -90 260 -70 {lab=Vdd}
N 320 -10 320 10 {lab=#net1}
N 320 -90 320 -70 {lab=Vdd}
N 130 70 130 80 {lab=GND}
N 200 70 200 80 {lab=GND}
N 260 70 260 80 {lab=GND}
N 320 70 320 80 {lab=GND}
N 70 -90 320 -90 {lab=Vdd}
N 130 -0 200 0 {lab=#net1}
N 200 0 260 0 {lab=#net1}
N 260 -0 320 0 {lab=#net1}
N 320 0 340 0 {lab=#net1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 70 -40 2 0 {name=D2
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {ipin.sym} -40 0 0 0 {name=p1 lab=external_input_pin}
C {ipin.sym} 70 -90 0 0 {name=p2 lab=Vdd}
C {ipin.sym} 70 90 0 0 {name=p3 lab=GND}
C {opin.sym} 420 0 0 0 {name=p4 lab=pin_facing_input}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 70 40 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/ppolyf_u_1k_6p0.sym} 10 0 3 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 130 -40 2 0 {name=D3
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 130 40 2 0 {name=D4
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 200 -40 2 0 {name=D5
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 200 40 2 0 {name=D6
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 260 -40 2 0 {name=D7
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 260 40 2 0 {name=D8
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 320 -40 2 0 {name=D9
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/diode_nd2ps_06v0.sym} 320 40 2 0 {name=D10
model=diode_nd2ps_06v0
r_w=36u
r_l=0.6u
m=1}
C {/foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/xschem/symbols/ppolyf_u_1k_6p0.sym} 370 0 3 0 {name=R2
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
