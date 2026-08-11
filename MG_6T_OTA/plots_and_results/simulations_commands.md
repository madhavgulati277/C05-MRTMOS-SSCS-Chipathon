## DC operating point

ngspice 1 -> op
ngspice 2 -> print all > <filename.txt>


## Differential Gain, AC Analysis and Phase Margin

destroy all
reset

alter v2 ac 0.5
alter v3 ac -0.5
alter v1 ac 0
ac dec 50 1 1G

plot vdb(net2) title 'Differential Gain (dB)'
plot cph(v(net2))*(180/PI) title 'Differential Phase (Degrees)'

meas ac A_diff_dB MAX vdb(net2)
meas ac f_unity when vdb(net2)=0
meas ac phase_rad find vp(net2) at=f_unity

let phase_deg = phase_rad * (180 / PI)
let Phase_Margin = 180 + phase_deg

print A_diff_dB f_unity Phase_Margin
print A_diff_dB f_unity Phase_Margin > Diff_Specs.txt


## CMRR

destroy all
reset

* Run 1: Differential Sweep (creates dataset ac1)
alter v2 ac 0.5
alter v3 ac -0.5
alter v1 ac 0
ac dec 50 1 1G
meas ac A_diff_dB MAX vdb(net2)

* Run 2: Common-Mode Sweep (creates dataset ac2)
alter v2 ac 1
alter v3 ac 1
alter v1 ac 0
ac dec 50 1 1G
meas ac A_cm_dB MAX vdb(net2)

* Calculate using ac1.A_diff_dB
let CMRR_dB = ac1.A_diff_dB - A_cm_dB

print A_cm_dB CMRR_dB
print A_cm_dB CMRR_dB > CMRR_Specs.txt

plot ac1.vdb(net2) - ac2.vdb(net2) title 'CMRR vs Frequency (dB)'



## PSRR


destroy all
reset

* Run 1: Differential Sweep (creates dataset ac1)
alter v2 ac 0.5
alter v3 ac -0.5
alter v1 ac 0
ac dec 50 1 1G
meas ac A_diff_dB MAX vdb(net2)

* Run 2: VDD Supply Sweep (creates dataset ac2)
alter v2 ac 0
alter v3 ac 0
alter v1 ac 1
ac dec 50 1 1G
meas ac A_dd_dB MAX vdb(net2)

* Calculate using ac1.A_diff_dB
let PSRR_dB = ac1.A_diff_dB - A_dd_dB

print A_dd_dB PSRR_dB
print A_dd_dB PSRR_dB > PSRR_Specs.txt

plot ac1.vdb(net2) - ac2.vdb(net2) title 'PSRR vs Frequency (dB)'
