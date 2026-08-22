v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 760 -30 {}
N 660 -30 680 -30 {lab=Vin+}
N 510 -30 530 -30 {lab=Vdd}
N 810 -35 830 -35 {lab=Vin-}
N -50 -10 40 -10 {lab=Vin-}
N -50 -10 -50 -0 {lab=Vin-}
N 340 0 380 0 {lab=Vout}
N 170 -90 190 -90 {lab=Vdd}
N 190 -90 190 -60 {lab=Vdd}
N 380 0 410 -0 {lab=Vout}
C {vsource.sym} 530 0 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 530 30 0 0 {name=l1 lab=0}
C {gnd.sym} 190 60 0 0 {name=l4 lab=0}
C {ipin.sym} 510 -30 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 660 -30 0 0 {name=p8 lab=Vin+
}
C {vsource.sym} 680 0 0 0 {name=V2 value=3.333 savecurrent=false}
C {gnd.sym} 680 30 0 0 {name=l6 lab=0}
C {code.sym} 235 100 0 0 {name=s1 only_toplevel=false value="

.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical

.control
  save all
  op
  
  * ==========================================
  * 1. DIFFERENTIAL RUN (Adm & Noise)
  * ==========================================
  alter v2 ac = 1
  alter v3 ac = -1 ; Set this to 0 if v3 is just a DC reference
  
  ac dec 20 1 1G
  setplot ac1
  
  let gain_db = vdb(vout)
  let phase_deg = (180/PI) * ph(vout)
  meas ac dc_gain MAX gain_db
  
  * Run Noise Analysis on the Differential Setup
  noise v(vout) v2 dec 20 1 1G
  
  * ==========================================
  * 2. COMMON-MODE RUN (Acm)
  * ==========================================
  * Force both inputs to swing exactly the same way
  alter v2 ac = 1
  alter v3 ac = 1 
  
  ac dec 20 1 1G
  setplot ac2
  let cm_gain_db = vdb(vout)
  
  * ==========================================
  * 3. CMRR CALCULATION
  * ==========================================
  * CMRR = Differential Gain - Common Mode Gain
  let cmrr_db = ac1.gain_db - ac2.cm_gain_db
  meas ac max_cmrr MAX cmrr_db
  
  print ac1.dc_gain max_cmrr
  
  * Plot everything together
  plot ac1.gain_db ac2.cm_gain_db title 'Diff Gain vs CM Gain (dB)'
  plot cmrr_db title 'CMRR (dB)'

  * =========================================
  * 4. NOISE CALCULATION
  * =========================================

  * Syntax: noise v(output_node) input_source dec points fstart fstop
  noise v(vout) v2 dec 20 1 1G
  
  * ngspice creates 'noise1' for spectral density and 'noise2' for total noise
  setplot noise1
  
  * Plot spectral densities (V/sqrt(Hz))
  plot inoise_spectrum title 'Input Referred Noise Density'
  plot onoise_spectrum title 'Output Referred Noise Density'
  
  * Calculate and print total integrated input RMS noise over the bandwidth
  let total_in_noise = sqrt(integ(inoise_spectrum^2))
  print total_in_noise


.endc

*.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice

* MUST be defined here exactly as 1
*.param sw_stat_global=1
*.param sw_stat_mismatch=1

*.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice statistical
*.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_statistical
*.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
*.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical

*.control
*  let mc_runs = 50
*  let run_idx = 1
  
*  echo Run_Number DC_Gain_dB UGBW_Hz Phase_Margin_Deg > mc_results.txt
  
*  while run_idx <= mc_runs
    
    * 1. FLUSH THE CACHE: Turn off MC and reset
    * This forces NGSPICE to recognize a physical state change
*    alterparam sw_stat_global = 0
*    alterparam sw_stat_mismatch = 0
*    reset
    
    * 2. ROLL NEW DICE: Change seed, turn MC back on exactly to 1, and reset
    * Because the state changed from 0 -> 1, NGSPICE is forced to re-evaluate 
    * the agauss() functions with the new seed!
*    setseed $&run_idx
*    alterparam sw_stat_global = 1
*    alterparam sw_stat_mismatch = 1
*    reset 
    
*    op
*    print all

    
    * 3. Run Simulation
*    alter v2 ac = 1
*    ac dec 20 1 1G

    
    * 4. Measure
*    let gain_db = vdb(Vout)
*    let phase_deg = (180/PI) * ph(Vout)
    
*    meas ac dc_gain MAX gain_db
*    meas ac ugbw WHEN gain_db=0 FALL=1
*    meas ac ph_at_ugbw FIND phase_deg WHEN gain_db=0
*    let phase_margin = 180 + ph_at_ugbw
    
    * 5. Save data
*    echo $&run_idx $&dc_gain $&ugbw $&phase_margin >> /foss/designs/C05-MRTMOS-SSCS-Chipathon/MG_6T_OTA/plots_and_results/mc_results.txt
    
*    destroy all
*    let run_idx = run_idx + 1
*  end

*  echo Monte Carlo simulation complete check mc_results.txt
*.endc

"}
C {ipin.sym} 810 -35 0 0 {name=p4 lab=Vin-
}
C {vsource.sym} 830 -5 0 0 {name=V3 value=3.333 savecurrent=false}
C {gnd.sym} 830 25 0 0 {name=l2 lab=0}
C {gnd.sym} 380 60 0 0 {name=l11 lab=0}
C {capa.sym} 380 30 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 170 -90 0 0 {name=p2 lab=Vdd}
C {ipin.sym} 40 10 0 0 {name=p3 lab=Vin+
}
C {ipin.sym} -50 -5 0 0 {name=p5 lab=Vin-
}
C {MG_6t_ota.sym} 190 0 0 0 {name=x1}
C {opin.sym} 410 0 0 0 {name=p6 lab=Vout}
