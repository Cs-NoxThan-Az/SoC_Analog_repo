v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 80 160 120 {lab=Voutp}
N 160 180 160 220 {lab=AGnd}
N -160 220 160 220 {lab=AGnd}
N -160 180 -160 220 {lab=AGnd}
N -160 80 -160 120 {lab=Voutn}
N -240 -0 -200 -0 {lab=Vinp}
N 200 -0 240 -0 {lab=Vinn}
N -0 0 160 0 {lab=AVdd}
N -0 0 0 30 {lab=AVdd}
N -160 -0 -0 0 {lab=AVdd}
N -160 -100 -160 -30 {lab=#net1}
N -0 -100 160 -100 {lab=#net1}
N 160 -100 160 -30 {lab=#net1}
N -0 -160 -0 -100 {lab=#net1}
N -160 -100 -0 -100 {lab=#net1}
N 0 -260 0 -220 {lab=AVdd}
N -380 -260 0 -260 {lab=AVdd}
N -380 -260 -380 -220 {lab=AVdd}
N -300 -190 -40 -190 {lab=Ib}
N -380 -140 -380 -100 {lab=Ib}
N -300 -190 -300 -140 {lab=Ib}
N -340 -190 -300 -190 {lab=Ib}
N -380 -140 -300 -140 {lab=Ib}
N -380 -160 -380 -140 {lab=Ib}
N 160 80 200 80 {lab=Voutp}
N 160 30 160 80 {lab=Voutp}
N -200 80 -160 80 {lab=Voutn}
N -160 30 -160 80 {lab=Voutn}
N -390 -260 -390 -190 {lab=AVdd}
N -390 -260 -380 -260 {lab=AVdd}
N -0 -190 10 -190 {lab=AVdd}
N 10 -260 10 -190 {lab=AVdd}
N 0 -260 10 -260 {lab=AVdd}
N -390 -190 -380 -190 {lab=AVdd}
C {sg13g2_pr/sg13_hv_pmos.sym} -180 0 0 0 {name=M1
l=0.4u
w=8u
ng=1
m=15
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 180 0 0 1 {name=M2
l=0.4u
w=8u
ng=1
m=15
model=sg13_hv_pmos
spiceprefix=X
}
C {res.sym} -160 150 0 0 {name=R1
value=30k
footprint=1206
device=resistor
m=1}
C {res.sym} 160 150 0 0 {name=R2
value=30k
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_hv_pmos.sym} -20 -190 0 0 {name=M3
l=1u
w=10u
ng=1
m=8
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -360 -190 0 1 {name=M4
l=1u
w=10u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} -240 0 0 0 {name=p1 lab=Vinp}
C {ipin.sym} 240 0 2 0 {name=p2 lab=Vinn}
C {opin.sym} -200 80 2 0 {name=p3 lab=Voutn}
C {opin.sym} 200 80 0 0 {name=p4 lab=Voutp}
C {iopin.sym} -200 -260 3 0 {name=p5 lab=AVdd}
C {iopin.sym} 0 220 3 0 {name=p6 lab=AGnd}
C {lab_pin.sym} 0 30 3 0 {name=p7 sig_type=std_logic lab=AVdd}
C {iopin.sym} -380 -100 1 0 {name=p8 lab=Ib}
C {sg13g2_pr/annotate_fet_params.sym} -400 20 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 320 10 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} 140 -260 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} -590 -250 0 0 {name=annot4 ref=M4}
