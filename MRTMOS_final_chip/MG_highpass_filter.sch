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
N 140 80 140 100 {lab=#net1}
N 140 170 140 190 {lab=#net2}
N 140 100 140 110 {lab=#net1}
N 140 250 140 270 {lab=#net3}
N 140 340 140 360 {lab=#net4}
N 140 270 140 280 {lab=#net3}
N 140 360 140 370 {lab=#net4}
N 140 520 140 540 {lab=#net5}
N 140 610 140 630 {lab=#net6}
N 140 540 140 550 {lab=#net5}
N 140 690 140 710 {lab=#net7}
N 140 780 140 800 {lab=#net8}
N 140 710 140 720 {lab=#net7}
N 140 800 140 810 {lab=#net8}
N 140 430 140 460 {lab=#net9}
N 140 870 140 890 {lab=GND}
N 120 880 140 880 {lab=GND}
N 120 50 120 880 {lab=GND}
C {symbols/ppolyf_u_3k.sym} 140 50 0 0 {name=R1
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/cap_mim_2f0fF.sym} 70 0 3 0 {name=C1
W=4e-4
L=4e-4
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {iopin.sym} 160 0 0 0 {name=p1 lab=Vout}
C {iopin.sym} 0 0 0 1 {name=p2 lab=Vin}
C {ipin.sym} 140 890 3 0 {name=p4 lab=GND}
C {symbols/ppolyf_u_3k.sym} 140 140 0 0 {name=R2
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 220 0 0 {name=R3
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 310 0 0 {name=R4
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 400 0 0 {name=R5
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 490 0 0 {name=R6
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 580 0 0 {name=R7
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 660 0 0 {name=R8
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 750 0 0 {name=R9
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
C {symbols/ppolyf_u_3k.sym} 140 840 0 0 {name=R10
W=1e-6
L=100e-6
model=ppolyf_u_3k
spiceprefix=X}
