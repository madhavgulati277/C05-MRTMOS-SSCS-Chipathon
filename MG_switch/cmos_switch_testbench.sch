v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -180 100 -180 {lab=0}
C {gnd.sym} 10 -180 0 0 {name=l4 lab=0}
C {ipin.sym} 50 -320 0 0 {name=p2 lab=Vdd}
C {ipin.sym} 160 -320 0 0 {name=p4 lab=Vin
}
C {code.sym} -350 -230 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ff

* ==========================================
* 1. TESTBENCH COMPONENTS (Stimuli & Loads)
* ==========================================
V_Vdd Vdd 0 5
V_ctrl Vin 0 5
V_in_stim in 0 DC 0 PULSE(0 5 0 100p 100p 10u 20u)
I_test out in 0
R_dummy out 0 100Meg

* ---> THE MISSING CAPACITOR <---
C_load out 0 1p 

* ==========================================
* 2. AUTOMATED SIMULATION SCRIPT
* ==========================================
.control

  * Color Customization (color2 = 1st trace, color3 = 2nd trace)
  set color0 = black
  set color1 = white
  set color2 = red
  set color3 = green
  
  * ----------------------------------------
  * TEST 1: TRANSIENT (Delay & Functionality)
  * ----------------------------------------
  alter I_test = 0
  tran 0.1n 20u
  plot v(in) v(out) title 'Test 1: Transient Step Response'

  * ----------------------------------------
  * TEST 2: DC SWEEP (Ron Bathtub Curve)
  * ----------------------------------------
  alter I_test = 1u
  dc V_in_stim 0 5 0.01
  let ron = (v(in) - v(out)) / 1u
  plot ron title 'Test 2: Switch ON-Resistance' ylabel 'Resistance (Ohms)' xlabel 'Input Voltage (V)'

  * ----------------------------------------
  * TEST 3: OFF-STATE LEAKAGE (Blocking Strength)
  * ----------------------------------------
  * 1. Turn the transmission gate completely OFF
  alter V_ctrl = 0
  alter I_test = 0
  
  * 2. Force the output to 0V by lowering the dummy resistor to 1 milli-ohm
  * This creates the maximum VDS across the switch.
  alter R_dummy = 1e-3
  
  * 3. Sweep the input voltage from 0V to 5V
  dc V_in_stim 0 5 0.01
  
  * 4. Measure the current drawn by the input source (absolute value for readability)
  let i_leakage = abs(i(V_in_stim))
  plot i_leakage title 'Test 3: OFF-State Leakage Current' ylabel 'Leakage Current (A)' xlabel 'Input Voltage (V)'

  * ----------------------------------------
  * TEST 4: CHARGE INJECTION & CLOCK FEEDTHROUGH
  * ----------------------------------------
  * 1. Ensure test current is off and dummy resistor is high
  alter I_test = 0
  alter R_dummy = 100Meg
  
  * 2. Force Input to constant 2.5V (Worst-case for CMOS Tx-Gate)
  alter V_in_stim pulse = [ 2.5 2.5 0 1n 1n 1s 2s ] 
  
  * 3. Pulse the Control pin from 5V (ON) to 0V (OFF) at 5us
  alter V_ctrl pulse = [ 5 0 5u 100p 100p 5u 10u ]
  
  * 4. Run transient analysis
  tran 10p 10u
  
  * 5. Plot the exact moment the switch turns OFF
  plot v(in) v(out) xl 4.9u 5.2u title 'Test 4: Charge Injection (Mid-Rail)'

.endc
"}
C {ipin.sym} -50 -250 0 0 {name=p1 lab=in}
C {ipin.sym} 250 -250 0 1 {name=p6 lab=out}
C {cmos_switch.sym} 100 -250 0 0 {name=x1}
