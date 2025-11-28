v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 810 420 810 500 {lab=Vout}
N 550 530 770 530 {lab=#net1}
N 490 480 490 500 {lab=#net1}
N 490 480 550 480 {lab=#net1}
N 490 350 490 480 {lab=#net1}
N 550 480 550 530 {lab=#net1}
N 530 530 550 530 {lab=#net1}
N 490 560 490 620 {lab=Vss}
N 650 620 810 620 {lab=Vss}
N 810 560 810 620 {lab=Vss}
N 490 240 490 290 {lab=#net2}
N 650 240 810 240 {lab=#net2}
N 810 240 810 290 {lab=#net2}
N 650 320 810 320 {lab=Vdd}
N 650 200 650 240 {lab=#net2}
N 490 240 650 240 {lab=#net2}
N 650 100 650 140 {lab=Vdd}
N 650 170 670 170 {lab=Vdd}
N 670 100 670 170 {lab=Vdd}
N 650 100 670 100 {lab=Vdd}
N 170 170 610 170 {lab=ibias}
N 370 100 650 100 {lab=Vdd}
N 110 100 110 140 {lab=Vdd}
N 110 220 110 300 {lab=ibias}
N 110 220 170 220 {lab=ibias}
N 110 200 110 220 {lab=ibias}
N 170 170 170 220 {lab=ibias}
N 150 170 170 170 {lab=ibias}
N 650 620 650 660 {lab=Vss}
N 490 620 650 620 {lab=Vss}
N 480 530 490 530 {lab=Vss}
N 480 530 480 620 {lab=Vss}
N 480 620 490 620 {lab=Vss}
N 810 530 820 530 {lab=Vss}
N 820 530 820 620 {lab=Vss}
N 810 620 820 620 {lab=Vss}
N 850 320 890 320 {lab=V+}
N 810 420 960 420 {lab=Vout}
N 810 350 810 420 {lab=Vout}
N 370 70 370 100 {lab=Vdd}
N 110 100 370 100 {lab=Vdd}
N 650 300 650 320 {lab=Vdd}
N 490 320 650 320 {lab=Vdd}
N 100 170 110 170 {lab=Vdd}
N 100 100 100 170 {lab=Vdd}
N 100 100 110 100 {lab=Vdd}
N 890 270 890 320 {lab=V+}
N 370 320 370 370 {lab=V-}
N 370 320 450 320 {lab=V-}
C {sg13g2_pr/sg13_lv_pmos.sym} 470 320 0 0 {name=M1
l=0.5u
w=7.5u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 830 320 0 1 {name=M2
l=0.5u
w=7.5u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 510 530 0 1 {name=M3
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 790 530 0 0 {name=M4
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 170 0 0 {name=M5
l=0.9u
w=9u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 170 0 1 {name=M6
l=0.9u
w=4.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/annotate_fet_params.sym} 220 220 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 280 540 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 730 30 0 0 {name=annot5 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} -10 30 0 0 {name=annot6 ref=M6}
C {sg13g2_pr/annotate_fet_params.sym} 900 190 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} 960 540 0 0 {name=annot4 ref=M4}
C {iopin.sym} 110 300 1 0 {name=p1 lab=ibias

}
C {iopin.sym} 370 80 3 0 {name=p2 lab=Vdd

}
C {iopin.sym} 650 300 3 0 {name=p6 lab=Vdd

}
C {iopin.sym} 650 660 1 0 {name=p3 lab=Vss

}
C {iopin.sym} 370 370 2 0 {name=p7 lab=V-

}
C {iopin.sym} 870 320 3 0 {name=p8 lab=V+

}
C {iopin.sym} 960 420 0 0 {name=p4 lab=Vout

}
