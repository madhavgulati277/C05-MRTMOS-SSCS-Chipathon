v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -80 10 {}
N 100 0 160 -0 {lab=Vout}
N 140 -0 140 20 {lab=Vout}
N -0 -0 40 0 {lab=Vin}
N 120 50 120 90 {lab=GND}
N 120 90 140 90 {lab=GND}
N 140 80 140 100 {lab=GND}
C {symbols/ppolyf_u_3k.sym} 140 50 0 0 {name=R1
W=1e-6
L=2500e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 70 0 1 0 {name=C1
W=5e-4
L=5e-4
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {iopin.sym} 160 0 0 0 {name=p1 lab=Vout}
C {iopin.sym} 0 0 0 1 {name=p2 lab=Vin}
C {ipin.sym} 140 100 3 0 {name=p4 lab=GND}
