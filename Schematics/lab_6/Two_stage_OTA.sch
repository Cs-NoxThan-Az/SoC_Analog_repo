v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -255 200 -215 {
lab=#net1}
N 200 -255 310 -255 {
lab=#net1}
N 410 -125 610 -125 {
lab=GND}
N 310 -185 370 -185 {
lab=#net1}
N 310 -255 310 -185 {
lab=#net1}
N 240 -185 310 -185 {
lab=#net1}
N 200 -315 200 -255 {
lab=#net1}
N 200 -345 410 -345 {
lab=vdd}
N 200 -395 200 -375 {
lab=#net2}
N 410 -395 410 -375 {
lab=#net2}
N 310 -395 410 -395 {
lab=#net2}
N 130 -345 160 -345 {
lab=vc}
N -80 -395 -80 -340 {
lab=#net3}
N -80 -395 -30 -395 {
lab=#net3}
N -80 -415 -80 -395 {
lab=#net3}
N -30 -445 -30 -395 {
lab=#net3}
N -40 -445 -30 -445 {
lab=#net3}
N 610 -345 650 -345 {
lab=vout}
N 610 -415 610 -345 {
lab=vout}
N 410 -220 410 -215 {
lab=#net4}
N 310 -495 610 -495 {
lab=vdd}
N 310 -415 310 -395 {
lab=#net2}
N 200 -395 310 -395 {
lab=#net2}
N 510 -220 570 -220 {
lab=#net4}
N 410 -315 410 -220 {
lab=#net4}
N 510 -280 510 -220 {
lab=#net4}
N 410 -220 510 -220 {
lab=#net4}
N 610 -280 610 -250 {
lab=vout}
N 570 -280 610 -280 {
lab=vout}
N 610 -345 610 -280 {
lab=vout}
N 200 -125 410 -125 {
lab=GND}
N 610 -495 610 -445 {
lab=vdd}
N -80 -495 -80 -445 {
lab=vdd}
N 310 -495 310 -445 {
lab=vdd}
N -80 -495 310 -495 {
lab=vdd}
N 200 -185 200 -125 {
lab=GND}
N 610 -220 610 -125 {
lab=GND}
N 410 -185 410 -125 {
lab=GND}
N -80 -280 -80 -265 {
lab=GND}
N 155 -20 155 10 {
lab=vc}
N 390 -20 390 10 {
lab=vdd}
N 390 70 390 90 {
lab=GND}
N 265 90 390 90 {
lab=GND}
N 265 90 265 110 {
lab=GND}
N 155 90 265 90 {
lab=GND}
N 155 70 155 90 {
lab=GND}
N 235 -445 270 -445 {
lab=#net3}
N 235 -445 235 -420 {lab=#net3}
N -30 -445 235 -445 {
lab=#net3}
N 235 -420 415 -420 {lab=#net3}
N 415 -445 415 -420 {lab=#net3}
N 415 -445 570 -445 {lab=#net3}
C {simulator_commands_shown.sym} -905 -615 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
C {simulator_commands_shown.sym} -875 -365 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include Two_stage_OTA.save
.param temp=27
.control
op
write Two_stage_OTA.raw
.endc
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 390 -185 2 1 {name=M4
l=9.75u
w=720n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 -185 2 0 {name=M3
l=9.75u
w=720n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -345 0 0 {name=M1
l=3.7u
w=3.64u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 430 -345 0 1 {name=M2
l=3.7u
w=3.64u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 290 -445 0 0 {name=M5
l=1.95u
w=5.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 590 -445 0 0 {name=M7
l=2.08u
w=75u
ng=8
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 590 -220 2 1 {name=M6
l=9.75u
w=28.8u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -60 -445 0 1 {name=M9
l=2.08u
w=75u
ng=8
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 540 -280 3 0 {name=C2
model=cap_cmim
w=22.295e-6
l=22.295e-6
m=1
spiceprefix=X}
C {lab_pin.sym} 305 -345 3 0 {name=p2 sig_type=std_logic lab=vdd}
C {sg13g2_pr/annotate_fet_params.sym} -450 -165 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} -130 -170 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} -445 50 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} -130 50 0 0 {name=annot4 ref=M4}
C {sg13g2_pr/annotate_fet_params.sym} 830 -470 0 0 {name=annot5 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} 830 -230 0 0 {name=annot6 ref=M6}
C {sg13g2_pr/annotate_fet_params.sym} -285 -630 0 0 {name=annot7 ref=M9}
C {sg13g2_pr/annotate_fet_params.sym} 245 -635 0 0 {name=annot8 ref=M5}
C {isource.sym} -80 -310 0 0 {name=I0 value=80u}
C {gnd.sym} -80 -265 0 0 {name=l3 lab=GND}
C {gnd.sym} 310 -125 0 0 {name=l1 lab=GND}
C {vsource.sym} 155 40 0 0 {name=V1 value="DC 0.6 AC 1 0"
}
C {vsource.sym} 390 40 0 0 {name=VDD value="DC 1.2"}
C {gnd.sym} 265 110 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 390 -20 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 155 -20 0 0 {name=p5 sig_type=std_logic lab=vc}
C {lab_pin.sym} 310 -495 1 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 650 -345 2 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_pin.sym} 130 -345 0 0 {name=p6 sig_type=std_logic lab=vc}
C {lab_pin.sym} 450 -345 2 0 {name=p7 sig_type=std_logic lab=vc}
