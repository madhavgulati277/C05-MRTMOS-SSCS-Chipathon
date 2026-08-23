v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 530 -150 {}
N -190 -30 -90 -30 {lab=Vin+}
N -120 -10 -90 -10 {lab=out}
N 50 -190 50 -80 {lab=#net1}
N 50 -190 100 -190 {lab=#net1}
N 760 -190 760 -80 {lab=#net2}
N 760 -190 810 -190 {lab=#net2}
N 810 -190 810 -150 {lab=#net2}
N 210 -50 410 -50 {lab=#net3}
N 410 -50 410 10 {lab=#net3}
N 410 10 600 10 {lab=#net3}
N 600 -10 600 10 {lab=#net3}
N 490 -120 490 10 {lab=#net3}
N 490 -190 490 -120 {lab=#net3}
N 550 -190 600 -190 {lab=#net4}
N 600 -190 650 -190 {lab=#net4}
N 650 -190 650 -80 {lab=#net4}
N 600 -80 650 -80 {lab=#net4}
N 600 -80 600 -30 {lab=#net4}
N 900 -50 940 -50 {lab=out}
N 940 -50 1030 -50 {lab=out}
N 1030 -50 1030 120 {lab=out}
N -120 120 1030 120 {lab=out}
N -120 -10 -120 120 {lab=out}
N 100 -190 100 -150 {lab=#net1}
C {schema_ram/gm2_ota_sym.sym} 60 -20 0 0 {name=x1}
C {schema_ram/gm3_makesymbol.sym} 750 -20 0 0 {name=x2}
C {code_shown.sym} -460 250 0 0 {name=MODELS only_toplevel=true value="
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
"

}
C {code.sym} -480 -80 0 0 {name=SIMULATIONS only_toplevel=false value="
.control 
  	save all
        op
	*ac dec 20 1 100Meg
	tran 1n 5u
	remzerovec
	write gm1+gm3_test_tran.raw
.endc

.options savecurrents method=gear
"}
C {vsource.sym} -190 0 0 0 {name=V2 
*value="PULSE(2.8 3.2 10n 100p 100p 0.5u 1u)" 
"SINE( 3 10m 1Meg)" 
savecurrent=false}
C {gnd.sym} -190 30 0 0 {name=l3 lab=0}
C {gnd.sym} 70 40 0 0 {name=l1 lab=0}
C {gnd.sym} 760 40 0 0 {name=l2 lab=0}
C {vsource.sym} 100 -120 0 0 {name=V4 value=5 savecurrent=false}
C {gnd.sym} 100 -90 0 0 {name=l9 lab=0}
C {vsource.sym} 810 -120 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 810 -90 0 0 {name=l4 lab=0}
C {gnd.sym} 600 -130 0 0 {name=l7 lab=0}
C {symbols/ppolyf_u_3k.sym} 520 -190 1 0 {name=R7
W=1e-6
L=2500e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 600 -160 2 0 {name=C6
W=5e-4
L=5e-4
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {gnd.sym} 520 -210 2 1 {name=l5 lab=0}
C {lab_pin.sym} 940 -50 0 1 {name=p24 sig_type=std_logic lab=out}
C {capa.sym} 940 -20 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 940 10 0 0 {name=l8 lab=0}
C {lab_pin.sym} -120 -30 0 0 {name=p1 sig_type=std_logic lab=Vin+}
