v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 140 60 {}
C {gnd.sym} 100 20 0 0 {name=l1 lab=0}
C {iopin.sym} 250 -20 0 0 {name=p1 lab=Vout}
C {iopin.sym} -50 -20 0 1 {name=p2 lab=Vin}
C {code.sym} 350 -140 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim

Vin Vin 0 DC 0 AC 1 PULSE(0 1 10p 10p 10p 0.5m 1m)

.control
  save v(Vin) v(Vout)

  * --- AC Analysis ---
  ac dec 50 1Hz 1GHz
  let vout = v(Vout)
  let vout_db = db(v(Vout))
  let vout_phase = ph(v(Vout)) * 180 / PI
  meas ac f_3db WHEN vout_db = -3 FALL=1
  plot vout vs frequency xlabel 'Frequency [Hz]' ylabel 'Gain' title 'GF180MCU Gain Response'
  plot vout_db vs frequency xlabel 'Frequency [Hz]' ylabel 'Gain [dB]' title 'GF180MCU Gain Response in dB'
  plot vout_phase vs frequency xlabel 'Frequency [Hz]' ylabel 'Phase [deg]' title 'GF180MCU Phase Response'

  * --- Transient Analysis ---
  tran 10p 1m
  plot v(Vin) v(Vout) xlabel 'Time [s]' ylabel 'Voltage [V]' title 'GF180MCU Step Response'
.endc
"}
C {MG_highpass_filter.sym} 100 -20 0 0 {name=x1}
