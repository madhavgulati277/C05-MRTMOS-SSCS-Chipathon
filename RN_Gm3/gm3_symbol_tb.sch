v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 5 -292.5 -552.5 -287.5 -547.5 {name=Vout dir=out}
B 5 -592.5 -532.5 -587.5 -527.5 {name=Vin+ dir=in}
B 5 -592.5 -512.5 -587.5 -507.5 {name=Vin- dir=in}
B 5 -432.5 -462.5 -427.5 -457.5 {name=GND dir=in}
T {@name} -305 -572 0 0 0.2 0.2 {}
N -530 -690 -530 -660 {lab=#net1}
N -530 -690 -450 -690 {lab=#net1}
N -290 -550 -270 -550 {lab=out}
N -630 -530 -590 -530 {lab=in+}
N -610 -510 -590 -510 {lab=in-}
N -700 -530 -630 -530 {lab=in+}
N -640 -510 -610 -510 {lab=in-}
N -430 -690 -430 -580 {lab=#net1}
N -450 -690 -430 -690 {lab=#net1}
C {schema_ram/gm3_makesymbol.sym} -440 -520 0 0 {name=x1}
C {code.sym} -860 -560 0 0 {name=SIMULATIONS only_toplevel=false value="
.control 
  	save all
	*op
	ac dec 20 1 100Meg
	remzerovec
	write gm3_sym.raw
.endc

.options savecurrents
"}
C {code_shown.sym} -860 -380 0 0 {name=MODELS only_toplevel=true value="
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
"

}
C {vsource.sym} -530 -630 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} -530 -600 0 0 {name=l2 lab=0}
C {gnd.sym} -430 -460 0 0 {name=l1 lab=0}
C {lab_pin.sym} -270 -550 0 1 {name=p24 sig_type=std_logic lab=out}
C {lab_pin.sym} -630 -530 0 0 {name=p1 sig_type=std_logic lab=in+}
C {lab_pin.sym} -610 -510 0 0 {name=p2 sig_type=std_logic lab=in-}
C {vsource.sym} -700 -500 0 0 {name=V2 value="0 ac 1" savecurrent=false}
C {gnd.sym} -700 -470 0 0 {name=l3 lab=0}
C {gnd.sym} -640 -450 0 0 {name=l6 lab=0}
C {vsource.sym} -640 -480 0 0 {name=V3 value=0 savecurrent=false}
C {capa.sym} -270 -520 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -270 -490 0 0 {name=l5 lab=0}
