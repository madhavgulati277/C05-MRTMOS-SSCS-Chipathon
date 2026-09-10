v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 70 110 70 {lab=Vout}
N 50 -140 60 -140 {lab=Vin+}
N 120 -140 130 -140 {lab=Vin+}
N 260 -140 270 -140 {lab=Vin-}
N 330 -140 350 -140 {lab=Vin-}
N -1100 60 -970 60 {lab=#net1}
N -970 50 -970 60 {lab=#net1}
N -910 50 -820 50 {lab=#net2}
N -820 40 -820 50 {lab=#net2}
N -520 50 -380 50 {lab=#net3}
N -380 50 -380 90 {lab=#net3}
N -320 90 -220 90 {lab=#net4}
N 60 -140 120 -140 {lab=Vin+}
N 270 -140 330 -140 {lab=Vin-}
N -350 -80 -350 -50 {lab=0}
N -270 -80 -270 -50 {lab=0}
N -350 -170 -350 -140 {lab=ffVin-}
N -270 -170 -270 -140 {lab=ffVin+}
N -1120 200 -1120 230 {lab=#net5}
N -1230 140 -1120 140 {lab=#net6}
N -1230 140 -1230 280 {lab=#net6}
N -1140 340 100 340 {lab=Vout}
N 80 70 80 340 {lab=Vout}
C {code.sym} 200 30 0 0 {name=SIMULATIONS only_toplevel=false value="
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
  write RN_finaltb_sim.raw
.endc

.options savecurrents
"}
C {lab_pin.sym} -70 10 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -1400 70 0 0 {name=p3 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -1400 50 0 0 {name=p4 sig_type=std_logic lab=Vin-}
C {capa.sym} 110 100 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 110 130 0 0 {name=l1 lab=0}
C {gnd.sym} -70 130 0 0 {name=l2 lab=0}
C {vsource.sym} -30 -70 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -30 -100 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {gnd.sym} -30 -40 0 0 {name=l3 lab=0}
C {lab_pin.sym} 110 70 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {vsource.sym} 130 -110 0 0 {name=V2 value="DC 3.333 AC 0.5" savecurrent=false}
C {lab_pin.sym} 50 -140 0 0 {name=p5 sig_type=std_logic lab=Vin+}
C {gnd.sym} 130 -80 0 0 {name=l4 lab=0}
C {vsource.sym} 350 -110 0 0 {name=V3 value="DC 3.333 AC -0.5" savecurrent=false}
C {lab_pin.sym} 260 -140 0 0 {name=p6 sig_type=std_logic lab=Vin-}
C {gnd.sym} 350 -80 0 0 {name=l5 lab=0}
C {RN_Gm2/RN_gm2_ota.sym} -670 60 0 0 {name=x1}
C {RN_Gm3/RN_gm3_ota.sym} -70 70 0 0 {name=x2}
C {MG_6T_OTA/MG_6t_ota.sym} -1250 60 0 0 {name=x3}
C {gnd.sym} -660 120 0 0 {name=l6 lab=0}
C {gnd.sym} -1250 120 0 0 {name=l7 lab=0}
C {lab_pin.sym} -660 0 0 0 {name=p8 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -1250 0 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {capa.sym} -350 90 1 0 {name=C2
m=1
value=60.7p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -940 50 1 0 {name=C3
m=1
value=60.7p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -820 80 0 0 {name=l8 lab=0}
C {gnd.sym} -220 50 0 0 {name=l9 lab=0}
C {TG_gm_ff/gm_ff.sym} -1290 340 0 0 {name=x4}
C {vsource.sym} -350 -110 0 0 {name=V4 value=3 savecurrent=false}
C {vsource.sym} -270 -110 0 0 {name=V5 
*value="dc 2.5 ac 1 sin(2.5 1m 1Meg)" 
value= "3 ac 1" 
savecurrent=false
}
C {gnd.sym} -350 -50 0 0 {name=l10 lab=0}
C {gnd.sym} -270 -50 0 0 {name=l11 lab=0}
C {lab_wire.sym} -350 -170 0 0 {name=p10 sig_type=std_logic lab=ffVin-}
C {lab_wire.sym} -270 -170 0 0 {name=p11 sig_type=std_logic lab=ffVin+}
C {lab_wire.sym} -1440 330 0 0 {name=p12 sig_type=std_logic lab=ffVin-}
C {lab_wire.sym} -1440 350 0 0 {name=p13 sig_type=std_logic lab=ffVin+}
C {gnd.sym} -1290 400 0 0 {name=l12 lab=0}
C {lab_pin.sym} -1360 280 0 0 {name=p14 sig_type=std_logic lab=Vdd}
C {res.sym} -1120 170 0 0 {name=R1
value=10MEG
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1120 260 0 0 {name=V6 value=5 savecurrent=false}
C {gnd.sym} -1120 290 0 0 {name=l13 lab=0}
