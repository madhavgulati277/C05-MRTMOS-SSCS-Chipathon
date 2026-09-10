v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 20 100 20 {lab=Vout}
N 40 -190 50 -190 {lab=Vin+}
N 110 -190 120 -190 {lab=Vin+}
N 250 -190 260 -190 {lab=Vin-}
N 320 -190 340 -190 {lab=Vin-}
N 50 -190 110 -190 {lab=Vin+}
N 260 -190 320 -190 {lab=Vin-}
C {code.sym} 190 -20 0 0 {name=SIMULATIONS only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim




* AC & Transient Step Stimulus 
* - DC bias: 3.0V
* - AC magnitude: 1V (for Bode plot)
* - Pulse: 2.95V to 3.05V step (100mV step), 5ns edges, 1MHz frequency (0.5us width, 1us period)


* --- 2. Simulation Control Block ---
.control
  save all
  
  * A. DC Operating Point Analysis
  op
  print v(Vout) v(Vin+) v(Vin-)
  
  * B. AC Sweep (Bode Plot: Gain & Phase)
  ac dec 20 1 100Meg
  set units = degrees
  plot vdb(Vout) vs frequency title 'Open-Loop AC Gain (dB)'
  plot cph(Vout) vs frequency title 'Open-Loop AC Phase (Degrees)'
  
  * C. Transient Analysis (1 MHz Step Response)
  * Run for 5 microseconds (5 complete 1MHz cycles) with a 1ns step
*  alter @v2[pulse] = [ 2.9 3.1 0 5n 5n 0.495u 1u ]
*  tran 1n 5u
*  plot v(Vin+) v(Vin-) v(Vout) title '1MHz Transient Step Response'
  
  * Save the raw data
  write RN_gm3_ota_sim.raw
.endc

.options savecurrents
"}
C {lab_pin.sym} -80 -40 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -230 0 0 0 {name=p3 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -230 40 0 0 {name=p4 sig_type=std_logic lab=Vin-}
C {capa.sym} 100 50 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 100 80 0 0 {name=l1 lab=0}
C {gnd.sym} -80 80 0 0 {name=l2 lab=0}
C {vsource.sym} -40 -120 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -40 -150 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {gnd.sym} -40 -90 0 0 {name=l3 lab=0}
C {lab_pin.sym} 100 20 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {vsource.sym} 120 -160 0 0 {name=V2 value="DC 0 AC 0.5" savecurrent=false}
C {lab_pin.sym} 40 -190 0 0 {name=p5 sig_type=std_logic lab=Vin+}
C {gnd.sym} 120 -130 0 0 {name=l4 lab=0}
C {vsource.sym} 340 -160 0 0 {name=V3 value="DC 0 AC -0.5" savecurrent=false}
C {lab_pin.sym} 250 -190 0 0 {name=p6 sig_type=std_logic lab=Vin-}
C {gnd.sym} 340 -130 0 0 {name=l5 lab=0}
