v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -170 540 -140 {lab=0}
N 540 -260 540 -230 {lab=VDD}
N -300 -110 -300 -80 {lab=0}
N -220 -110 -220 -80 {lab=0}
N -300 -200 -300 -170 {lab=Vin-}
N -220 -200 -220 -170 {lab=Vin+}
N 520 -70 520 -40 {lab=Vout}
N 520 20 520 50 {lab=0}
N 70 -140 100 -140 {lab=VDD}
N 100 -140 100 -80 {lab=VDD}
N 170 40 170 70 {lab=0}
N 340 -160 340 -130 {lab=#net1}
N 320 -20 390 -20 {lab=Vout}
N 230 -250 230 -80 {lab=#net2}
N 230 -250 340 -250 {lab=#net2}
N 340 -250 340 -220 {lab=#net2}
C {vsource.sym} 540 -200 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 540 -140 0 0 {name=l2 lab=0}
C {vdd.sym} 540 -260 0 0 {name=l3 lab=VDD}
C {vsource.sym} -300 -140 0 0 {name=V3 value=3 savecurrent=false}
C {vsource.sym} -220 -140 0 0 {name=V4 
*value="dc 2.5 ac 1 sin(2.5 1m 1Meg)" 
value= "3 ac 1" 
savecurrent=false
}
C {gnd.sym} -300 -80 0 0 {name=l7 lab=0}
C {gnd.sym} -220 -80 0 0 {name=l8 lab=0}
C {lab_wire.sym} -300 -200 0 0 {name=p6 sig_type=std_logic lab=Vin-}
C {lab_wire.sym} -220 -200 0 0 {name=p7 sig_type=std_logic lab=Vin+}
C {gnd.sym} 520 50 0 0 {name=l9 lab=0}
C {lab_wire.sym} 520 -70 0 0 {name=p8 sig_type=std_logic lab=Vout}
C {ipin.sym} 70 -140 0 0 {name=p3 lab=VDD}
C {ipin.sym} 20 -10 0 0 {name=p5 lab=Vin-}
C {ipin.sym} 20 -30 0 0 {name=p9 lab=Vin+}
C {simulator_commands.sym} 690 -20 0 0 {name=s1 only_toplevel=false value="
*==============================================================================
* TG_gm_ff  -  5T OTA transconductance / gain characterisation
*
* Sweeps the external bias network R1 (10 ohm .. 100 Meg, 1-2-4-8 per decade)
* against V2 (0.5 .. 5 V) and extracts, at every point:
*
*     Gm(f)   = Iout,short / Vid      <- the transconductance on its own
*     Zout(f) = output impedance incl. CL
*     Av(f)   = Gm * Zout             <- the loaded voltage gain
*
* Method: TWO ac analyses per bias point, sharing one operating point.
*   run A - differential drive on the inputs, Itest off        -> Av(f)
*   run B - inputs ac-grounded, 1 A ac injected at Vout        -> Zout(f)
*   then  Gm(f) = Av(f) / Zout(f), exact at every frequency.
*
* A single ac run (as in the original deck) can only ever give you the product
* Gm*Zout, never the two factors separately.
*
* Run with:   ngspice -i tg_gm_ff_sweep.spice
*   (use -i, not -b, so the plot windows appear)
*==============================================================================

.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical

* nominal device behaviour - no statistical spread on the sweep
.param sw_stat_global=0
.param sw_stat_mismatch=0

*==============================================================================
* Test sources
*==============================================================================
V1 VDD 0 5

* Differential AC drive: vid = v(Vin+) - v(Vin-) = 1 V, common mode = 3 V.
* Your original deck drove Vin+ with ac 1 single-ended; that mixes in a common
* mode of 0.5 V. Differential drive gives Gm and Av directly, no CM error.
V3 Vin- 0 3 ac 0.5 180
V4 Vin+ 0 3 ac 0.5 0

* External bias network (swept)
R1 net2 net1 100k
V2 net1 0 5

C1 Vout 0 50p

* AC-only probe current for the Zout measurement. dc 0 -> operating point
* is identical in both AC runs.
Itest 0 Vout dc 0 ac 0

x1 VDD Vout Vin+ Vin- net2 0 TG_gm_ff

*==============================================================================
* DUT
*
* NOTE ON PIN ORDER: the subckt header below is  VDD Vout Vin- Vin+ ext_bias GND
* but the instance above is  VDD Vout Vin+ Vin- net2 0.  Position 3 carries the
* top-level net "Vin+" into the port named "Vin-" (the gate of XM8, the
* output-side device).  As netlisted, the source labelled Vin+ drives the
* INVERTING input, so Av is negative.  That is why the Gm expression below
* carries a minus sign.  If you fix the pin order, drop the minus sign.
*==============================================================================
.subckt TG_gm_ff VDD Vout Vin- Vin+ ext_bias GND
XC3 ext_bias GND cap_nmos_06v0 c_width=60e-6 c_length=10e-6 m=6
XC1 VDD GND cap_nmos_06v0 c_width=60e-6 c_length=10e-6 m=6
XM7 net2 ext_bias GND GND nfet_05v0 L=1.2u W=16u nf=8 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0 m=2
XM8 Vout Vin- net2 GND nfet_05v0 L=1u W=7.5u nf=4 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0 m=4
XM9 net1 net1 VDD VDD pfet_05v0 L=2u W=17u nf=10 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0 m=2
XM5 ext_bias ext_bias GND GND nfet_05v0 L=1.2u W=16u nf=8 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0 m=2
XM1 net1 Vin+ net2 GND nfet_05v0 L=1u W=7.5u nf=4 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0 m=4
XM2 Vout net1 VDD VDD pfet_05v0 L=2u W=17u nf=10 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0 m=2
.ends

*==============================================================================
.control

*------------------------------------------------------------------ user knobs
set rsweep = ( 10 20 40 80 100 200 400 800 1000 2000 4000 8000 10000 20000 40000 80000 100000 200000 400000 800000 1000000 2000000 4000000 8000000 10000000 20000000 40000000 80000000 100000000 )
set vsweep = ( 0.5 1 1.5 2 3 4 5 )
set fstart = 0.1
set fstop  = 1G
set fppd   = 20                       $ ac points per decade

set plot_gm_mag                       $ unset any of these to skip that plot
set plot_gm_ph
set plot_av_mag
set plot_av_ph

set csvfile = "./tg_gm_ff_sweep_summary.csv"
*-----------------------------------------------------------------------------

set noaskquit

echo ""
echo "V2,R1,Ibias,Itail,Vout,Vnet1,Gm_S,Gm_dBS,Gain_dB,Zout_ohm,f3dB_Hz,UGBW_Hz,fGm_5deg_Hz,GmHF_ratio" > $csvfile

foreach vb $vsweep
  alter @v2[dc] = $vb

  * one storage plot per V2 so the vector names can be reused
  setplot new
  set store = $curplot

  echo ""
  echo "|=================================================================================================="
  echo "| V2 = $vb V   (Gm in S, gain in dB, all frequencies in Hz)"
  echo "|=================================================================================================="
  echo "|    R1        Ibias       Itail       Vout    Gm          Gain      f-3dB       UGBW        fGm(-5deg)"
  echo "| ---------------------------------------------------------------------------------------------------"

  foreach rb $rsweep
    alter r1 = $rb

    *---- run A : voltage gain -------------------------------------------
    alter @v3[acmag] = 0.5
    alter @v4[acmag] = 0.5
    alter @itest[acmag] = 0
    op
    set vout_op  = "$&v(Vout)"
    set vnet1_op = "$&v(x1.net1)"
    set ibias_op = "$&i(v2)"
    set itail_op = "$&@m.x1.xm7.m0[id]"
    ac dec $fppd $fstart $fstop
    set pav = $curplot

    *---- run B : output impedance ---------------------------------------
    alter @v3[acmag] = 0
    alter @v4[acmag] = 0
    alter @itest[acmag] = 1
    ac dec $fppd $fstart $fstop
    set pzo = $curplot

    *---- combine, inside the ac plot so 'meas ac' works ------------------
    setplot $pav
    let zov  = \{$pzo\}.v(Vout)
    let gmv  = -v(Vout) / zov           $ minus sign: see pin-order note above
    let avv  = -v(Vout)
    let gmdb = db(mag(gmv))
    let gmph = 180/PI * ph(gmv)
    let avdb = db(mag(avv))
    let zodb = db(mag(zov))

    let f3db = 0
    let ugbw = 0
    let fgm5 = 0

    meas ac gm_lf  FIND gmdb AT=$fstart
    meas ac a_lf   FIND avdb AT=$fstart
    meas ac z_lf   FIND zodb AT=$fstart
    meas ac gm_max MAX  gmdb
    meas ac a_max  MAX  avdb

    let thr_a = a_lf - 3
    meas ac f3db   WHEN avdb=$&thr_a FALL=1
    meas ac ugbw   WHEN avdb=0       FALL=1
    meas ac fgm5   WHEN gmph=-5      FALL=1

    let gm_s    = 10^(gm_lf/20)
    let zo_ohm  = 10^(z_lf/20)
    let gm_hf   = 10^((gm_max - gm_lf)/20)

    echo "| $rb  $ibias_op  $itail_op  $vout_op  $&gm_s  $&a_lf dB  $&f3db  $&ugbw  $&fgm5"
    echo "$vb,$rb,$ibias_op,$itail_op,$vout_op,$vnet1_op,$&gm_s,$&gm_lf,$&a_lf,$&zo_ohm,$&f3db,$&ugbw,$&fgm5,$&gm_hf" >> $csvfile

    *---- park the curves in the storage plot -----------------------------
    setplot $store
    let frequency = \{$pav\}.frequency
    let gm$rb = \{$pav\}.gmv
    let av$rb = \{$pav\}.avv
    let gp$rb = \{$pav\}.gmph
    let ap$rb = 180/PI * ph(\{$pav\}.avv)

    * keep memory flat - the curves we need are already copied out
    destroy $pav $pzo
  end

  *---- Bode plots: every R curve for this V2, on one pair of axes --------
  setplot $store
  if $?plot_gm_mag
    plot
+ db(mag(gm10)) db(mag(gm20)) db(mag(gm40)) db(mag(gm80))
+ db(mag(gm100)) db(mag(gm200)) db(mag(gm400)) db(mag(gm800))
+ db(mag(gm1000)) db(mag(gm2000)) db(mag(gm4000)) db(mag(gm8000))
+ db(mag(gm10000)) db(mag(gm20000)) db(mag(gm40000)) db(mag(gm80000))
+ db(mag(gm100000)) db(mag(gm200000)) db(mag(gm400000)) db(mag(gm800000))
+ db(mag(gm1000000)) db(mag(gm2000000)) db(mag(gm4000000)) db(mag(gm8000000))
+ db(mag(gm10000000)) db(mag(gm20000000)) db(mag(gm40000000)) db(mag(gm80000000))
+ db(mag(gm100000000))
+ vs frequency xlog
+ xlabel 'Frequency [Hz]' ylabel '|Gm|  [dB re 1 S]'
+ title 'Gm magnitude - V2 = $vb V - curves gmR, R = 10 ohm .. 100 Meg'
  end

  if $?plot_gm_ph
    plot
+ gp10 gp20 gp40 gp80
+ gp100 gp200 gp400 gp800
+ gp1000 gp2000 gp4000 gp8000
+ gp10000 gp20000 gp40000 gp80000
+ gp100000 gp200000 gp400000 gp800000
+ gp1000000 gp2000000 gp4000000 gp8000000
+ gp10000000 gp20000000 gp40000000 gp80000000
+ gp100000000
+ vs frequency xlog
+ xlabel 'Frequency [Hz]' ylabel 'phase(Gm)  [deg]'
+ title 'Gm phase - V2 = $vb V'
  end

  if $?plot_av_mag
    plot
+ db(mag(av10)) db(mag(av20)) db(mag(av40)) db(mag(av80))
+ db(mag(av100)) db(mag(av200)) db(mag(av400)) db(mag(av800))
+ db(mag(av1000)) db(mag(av2000)) db(mag(av4000)) db(mag(av8000))
+ db(mag(av10000)) db(mag(av20000)) db(mag(av40000)) db(mag(av80000))
+ db(mag(av100000)) db(mag(av200000)) db(mag(av400000)) db(mag(av800000))
+ db(mag(av1000000)) db(mag(av2000000)) db(mag(av4000000)) db(mag(av8000000))
+ db(mag(av10000000)) db(mag(av20000000)) db(mag(av40000000)) db(mag(av80000000))
+ db(mag(av100000000))
+ vs frequency xlog
+ xlabel 'Frequency [Hz]' ylabel '|Av| = |Gm*Zout|  [dB]'
+ title 'Voltage gain magnitude - V2 = $vb V - CL = 50 pF'
  end

  if $?plot_av_ph
    plot
+ ap10 ap20 ap40 ap80
+ ap100 ap200 ap400 ap800
+ ap1000 ap2000 ap4000 ap8000
+ ap10000 ap20000 ap40000 ap80000
+ ap100000 ap200000 ap400000 ap800000
+ ap1000000 ap2000000 ap4000000 ap8000000
+ ap10000000 ap20000000 ap40000000 ap80000000
+ ap100000000
+ vs frequency xlog
+ xlabel 'Frequency [Hz]' ylabel 'phase(Av)  [deg]'
+ title 'Voltage gain phase - V2 = $vb V'
  end


end

echo ""
echo "summary CSV written to $csvfile"
echo ""

.endc
.end
"}
C {res.sym} 340 -190 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 340 -100 0 0 {name=V2 value=5 savecurrent=false}
C {gnd.sym} 170 70 0 0 {name=l1 lab=0}
C {opin.sym} 390 -20 0 0 {name=p4 lab=Vout}
C {capa.sym} 520 -10 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 -70 0 0 {name=l4 lab=0}
C {TG_gm_ff.sym} 170 -20 0 0 {name=x1}
