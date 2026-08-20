v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -50 440 -50 {lab=Vdd}
N 150 50 440 50 {lab=0}
N 400 -30 480 -30 {lab=Vdd}
N 400 30 480 30 {lab=0}
N 440 -50 440 -30 {lab=Vdd}
N 440 30 440 50 {lab=0}
N 440 -50 760 -50 {lab=Vdd}
N 440 50 760 70 {lab=0}
C {MG_ESD_protection.sym} 150 0 0 0 {name=x1}
C {ipin.sym} 0 0 0 0 {name=p1 lab=Vin}
C {ipin.sym} 150 -50 0 0 {name=p2 lab=Vdd}
C {opin.sym} 300 0 0 0 {name=p3 lab=Vout}
C {gnd.sym} 150 50 0 0 {name=l1 lab=0}
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
* --- 1. GF180MCU PDK Libraries --
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical

* --- 2. Chip Power Supply ---
* Vdd is grounded for testing (chip is OFF)
V1 Vdd 0 0.0

* --- 3. 2kV HBM Strike Generator ---
* A 100pF capacitor charged to 2000 Volts (ic=2000)
C_HBM hbm_node 0 100p ic=2000
* A 1.5k resistor discharging the capacitor directly into your 'Vin' pad
R_HBM hbm_node Vin 1.5k

* --- 4. Internal Logic Dummy Load ---
* A 50fF capacitor on Vout to simulate the gate capacitance of your decoder
C_load Vout 0 50f

* --- 5. Simulation Control ---
.options method=gear reltol=1e-4

.control
* Run a 1us transient simulation. 
* 'uic' is REQUIRED to apply the 2000V initial condition to the capacitor.
tran 0.1n 1u uic

* Plot 1: See the raw 2000V spike discharging
plot v(hbm_node) title 'Raw 2kV HBM Spike'

* Plot 2: Verify the protection. 
* v(Vin) should be clamped to a few volts safely above Vdd or below GND.
* v(Vout) is the safe voltage your logic gates will actually see.
plot v(Vin) v(Vout) title 'Clamped Voltage at Pad and Logic'
.endc
"
}
