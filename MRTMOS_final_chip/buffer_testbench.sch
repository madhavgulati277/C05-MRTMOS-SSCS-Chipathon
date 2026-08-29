v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -290 180 -290 {lab=#net1}
N -30 -290 -30 -260 {lab=#net1}
N -30 -290 110 -290 {lab=#net1}
N 120 -220 140 -220 {lab=#net2}
N -30 -160 140 -160 {lab=0}
N -30 -180 -30 -160 {lab=0}
C {vsource.sym} 180 -260 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 180 -230 0 0 {name=l3 lab=0}
C {capa.sym} 140 -190 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 140 -160 0 0 {name=l6 lab=0}
C {code.sym} -410 -280 0 0 {name=SIMULATIONS only_toplevel=false value="
Vin_src net3 0 DC 2.5 AC 1 PULSE(2.0 3.0 0n 1n 1n 0.5u 1u)

.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical

.control
  save all

  * --- 1. RUN AC SWEEP (Bode Plot) ---
  ac dec 20 1 100Meg
  set units = degrees
  plot vdb(net2) vs frequency title 'Buffer AC Magnitude (dB)'
  plot cph(net2) vs frequency title 'Buffer Phase Response (Degrees)'

  * --- 2. RUN TRANSIENT ANALYSIS (1MHz Speed Check) ---
  tran 1n 5u
  plot v(net3) v(net2) title '1MHz Transient Response: Vin (net3) vs Vout (net2)'

  write buffer_results.raw
.endc

.options savecurrents
"

}
C {buffer.sym} -30 -220 0 0 {name=x1}
