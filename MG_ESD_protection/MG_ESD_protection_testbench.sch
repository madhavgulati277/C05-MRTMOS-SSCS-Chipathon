v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -50 320 -50 {lab=Vdd}
N 30 50 320 50 {lab=0}
N 400 -30 480 -30 {lab=Vdd}
N 400 30 480 30 {lab=0}
N 440 -50 440 -30 {lab=Vdd}
N 440 30 440 50 {lab=0}
N 440 -50 760 -50 {lab=Vdd}
N 320 -50 440 -50 {lab=Vdd}
N 320 50 440 50 {lab=0}
N 440 50 440 70 {lab=0}
N 440 70 760 70 {lab=0}
C {MG_ESD_protection.sym} 30 0 0 0 {name=x1}
C {ipin.sym} -120 0 0 0 {name=p1 lab=external_input_pin}
C {ipin.sym} 30 -50 0 0 {name=p2 lab=Vdd}
C {opin.sym} 180 0 0 0 {name=p3 lab=pin_facing_input}
C {gnd.sym} 30 50 0 0 {name=l1 lab=0}
C {capa.sym} 400 0 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 480 0 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {MG_power_clamp_ESD.sym} 760 10 0 0 {name=x2}
C {code.sym} 120 -250 0 0 {name=s1 only_toplevel=false value="

.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical

* 1. Add ESD Current Source and Core Load Capacitor
* I_ESD injects the strike, and C_load represents the core receiver gate capacitance

I_ESD 0 external_input_pin PWL(0 0 1n 0)
C_load pin_facing_input 0 100f
Rleak Vdd 0 1G

.control

  * ==========================================
  * 3. HBM (Human Body Model) - 2kV Equivalent
  * Peak Current: ~1.33A, Rise: 5ns, Decay: ~150ns
  * ==========================================
  alter @I_ESD[pwl] = [ 0 0 5n 1.33 155n 0.49 305n 0.18 500n 0 ]
  
  * Run Transient Simulation (500ns duration, 1ns steps)
  tran 0.1n 500n
  
  * Extract Peak Voltages
  meas tran V_pad_max_HBM MAX v(external_input_pin)
  meas tran V_core_max_HBM MAX v(pin_facing_input)
  meas tran V_vdd_max_HBM MAX v(Vdd)

  * Print to Console
  print V_pad_max_HBM V_core_max_HBM

  
  * Plot HBM Waveforms
  plot v(external_input_pin) v(pin_facing_input) title 'HBM 2kV ESD Event' ylabel 'Voltage (V)' xlabel 'Time (s)'
  plot v(pin_facing_input) title 'HBM 2kV ESD Event' ylabel 'Voltage (V)' xlabel 'Time (s)'


  * ==========================================
  * 4. CDM (Charged Device Model) - 500V Equivalent
  * Peak Current: ~5A, Rise: 250ps, Duration: ~2ns
  * ==========================================
  alter @I_ESD[pwl] = [ 0 0 250p 5.0 750p 0 1n -1.0 1.5n 0 3n 0 ]
  
  * Run Transient Simulation (3ns duration, 10ps steps)
  tran 5p 3n  
  * Extract Peak Voltages
  meas tran V_pad_max_CDM MAX v(external_input_pin)
  meas tran V_core_max_CDM MAX v(pin_facing_input)
  meas tran V_vdd_max_CDM MAX v(Vdd)
  
  * Print to Console
  print V_pad_max_CDM V_core_max_CDM
  
  
  * Plot CDM Waveforms
  plot v(external_input_pin) v(pin_facing_input) title 'CDM 500V ESD Event' ylabel 'Voltage (V)' xlabel 'Time (s)'
  plot v(pin_facing_input) title 'CDM 500V ESD Event' ylabel 'Voltage (V)' xlabel 'Time (s)'


.endc
"}
