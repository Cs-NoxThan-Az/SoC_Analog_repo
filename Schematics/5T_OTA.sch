v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 700 -630 {}
P 4 1 1230 -540 {}
N 390 130 750 130 {lab=#net1}
N 310 70 310 100 {lab=#net1}
N 310 70 390 70 {lab=#net1}
N 390 70 390 130 {lab=#net1}
N 350 130 390 130 {lab=#net1}
N 310 170 310 210 {lab=GND}
N 290 130 310 130 {lab=GND}
N 290 130 290 170 {lab=GND}
N 290 170 310 170 {lab=GND}
N 310 160 310 170 {lab=GND}
N 790 190 790 210 {lab=GND}
N 1000 -560 1000 -520 {lab=GND}
N 1000 -640 1000 -620 {lab=vdd}
N 790 130 810 130 {lab=GND}
N 810 130 810 170 {lab=GND}
N 790 170 810 170 {lab=GND}
N 790 160 790 170 {lab=GND}
N 310 -150 310 70 {lab=#net1}
N 310 -260 310 -220 {lab=#net2}
N 310 -260 380 -260 {lab=#net2}
N 380 -260 380 -190 {lab=#net2}
N 350 -190 380 -190 {lab=#net2}
N 790 -140 790 100 {lab=#net3}
N 380 -190 750 -190 {lab=#net2}
N 790 -240 790 -220 {lab=#net4}
N 290 -190 310 -190 {lab=#net1}
N 290 -190 290 -150 {lab=#net1}
N 290 -150 310 -150 {lab=#net1}
N 310 -160 310 -150 {lab=#net1}
N 790 -190 810 -190 {lab=#net3}
N 810 -190 810 -140 {lab=#net3}
N 790 -140 810 -140 {lab=#net3}
N 790 -160 790 -140 {lab=#net3}
N 310 -420 310 -390 {lab=vdd}
N 310 -330 310 -260 {lab=#net2}
N 980 -240 980 20 {lab=#net5}
N 980 20 1270 20 {lab=#net5}
N 1270 -40 1270 20 {lab=#net5}
N 1270 -40 1400 -40 {lab=#net5}
N 1400 -80 1400 -40 {lab=#net5}
N 1140 -40 1270 -40 {lab=#net5}
N 1140 -80 1140 -40 {lab=#net5}
N 1440 -130 1520 -130 {lab=vinn}
N 1380 -130 1400 -130 {lab=#net5}
N 1380 -130 1380 -80 {lab=#net5}
N 1380 -80 1400 -80 {lab=#net5}
N 1400 -100 1400 -80 {lab=#net5}
N 1140 -130 1160 -130 {lab=#net5}
N 1160 -130 1160 -80 {lab=#net5}
N 1140 -80 1160 -80 {lab=#net5}
N 1140 -100 1140 -80 {lab=#net5}
N 1690 -280 1790 -280 {lab=vout}
N 1550 -530 1550 -490 {lab=GND}
N 1550 -610 1550 -590 {lab=vicm}
N 1400 -190 1400 -160 {lab=#net6}
N 1140 -220 1140 -160 {lab=#net7}
N 1180 -480 1200 -480 {lab=vg}
N 1200 -470 1200 -420 {lab=vg}
N 1140 -420 1200 -420 {lab=vg}
N 1200 -470 1360 -470 {lab=vg}
N 1200 -480 1200 -470 {lab=vg}
N 1140 -520 1140 -510 {lab=vdd}
N 1140 -580 1400 -580 {lab=vdd}
N 1400 -510 1400 -500 {lab=vdd}
N 1120 -480 1140 -480 {lab=vdd}
N 1400 -440 1400 -280 {lab=vout}
N 1140 -450 1140 -420 {lab=vg}
N 1120 -520 1120 -480 {lab=vdd}
N 1120 -520 1140 -520 {lab=vdd}
N 1140 -580 1140 -520 {lab=vdd}
N 1400 -470 1410 -470 {lab=vdd}
N 1410 -510 1410 -470 {lab=vdd}
N 1400 -510 1410 -510 {lab=vdd}
N 1400 -580 1400 -510 {lab=vdd}
N 1400 -280 1400 -250 {lab=vout}
N 1140 -420 1140 -280 {lab=vg}
N 940 -240 980 -240 {lab=#net5}
N 790 -240 880 -240 {lab=#net4}
N 1660 -530 1660 -490 {lab=GND}
N 1660 -610 1660 -590 {lab=vidiff}
N 1020 -130 1020 70 {lab=vinp}
N 1020 -130 1100 -130 {lab=vinp}
N 1520 -130 1520 20 {lab=vinn}
N 1020 180 1020 190 {lab=GND}
N 790 190 1020 190 {lab=GND}
N 790 170 790 190 {lab=GND}
N 1520 80 1520 180 {lab=GND}
N 1020 180 1520 180 {lab=GND}
N 1020 130 1020 180 {lab=GND}
N 1690 -280 1690 -220 {lab=vout}
N 1400 -280 1690 -280 {lab=vout}
N 1690 -160 1690 180 {lab=GND}
N 1520 180 1690 180 {lab=GND}
C {gnd.sym} 310 210 0 0 {name=l1 lab=GND}
C {gnd.sym} 790 210 0 0 {name=l2 lab=GND}
C {vsource.sym} 1000 -590 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 1000 -520 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1000 -640 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {isource.sym} 310 -360 0 0 {name=I0 value=10u}
C {lab_pin.sym} 310 -420 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {simulator_commands_shown.sym} 290 -600 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
"
      }
C {simulator_commands_shown.sym} 580 -640 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.control
save all 
op
dc V1 0 1.8 0.001
plot vout
.endc
"
spice_ignore=true}
C {sg13g2_pr/sg13_hv_nmos.sym} 330 130 0 1 {name=M1
l=2u
w=2.8u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 770 130 0 0 {name=M2
l=2u
w=2.8u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {simulator_commands_shown.sym} 450 -410 0 0 {name=SimulatorNGSPICE1
simulator=ngspice
only_toplevel=false 
value="
.control
save all 
op
tran 1n 10u 
plot i(vmeas)
plot i(vmeas1)
.endc
"
spice_ignore=true}
C {sg13g2_pr/sg13_hv_nmos.sym} 330 -190 0 1 {name=M3
l=2u
w=2.8u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 770 -190 0 0 {name=M4
l=2u
w=2.8u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1120 -130 0 0 {name=M5
l=0.5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1420 -130 0 1 {name=M6
l=0.5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1790 -280 0 1 {name=p6 sig_type=std_logic lab=vout
}
C {vsource.sym} 1550 -560 0 0 {name=V3 value="DC 1.2 AC 0" savecurrent=false}
C {gnd.sym} 1550 -490 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1550 -610 0 0 {name=p7 sig_type=std_logic lab=vicm}
C {ammeter.sym} 1400 -220 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -250 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_pmos.sym} 1160 -480 0 1 {name=M7
l=2u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1140 -570 0 0 {name=p4 sig_type=std_logic lab=vdd
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1380 -470 0 0 {name=M8
l=2u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1280 -470 1 1 {name=p10 sig_type=std_logic lab=vg}
C {ammeter.sym} 910 -240 1 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {vsource.sym} 1660 -560 0 0 {name=V2 value="DC 0 AC 0" savecurrent=false}
C {gnd.sym} 1660 -490 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1660 -610 0 0 {name=p3 sig_type=std_logic lab=vidiff}
C {asrc.sym} 1020 100 0 0 {name=B1 function="v=v(vidiff)/2 + v(vicm)"}
C {lab_pin.sym} 1070 -130 0 0 {name=p5 sig_type=std_logic lab=vinp
}
C {lab_pin.sym} 1520 -130 0 1 {name=p8 sig_type=std_logic lab=vinn
}
C {asrc.sym} 1520 50 0 0 {name=B2 function="v=-v(vidiff)/2 + v(vicm)"}
C {capa.sym} 1690 -190 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {simulator_commands_shown.sym} 1880 -530 0 0 {name=SimulatorNGSPICE2
simulator=ngspice
only_toplevel=false 
value="
.control
save all 

alter V2 AC=1
alter V3 AC=0
ac dec 10 1 10e9


alter V2 AC=0
alter V3 AC=1
ac dec 10 1 10e9


let vod= ac1.v(vout)
let vocm= ac2.v(vout)
let CMRR = vdb(vod)-vdb(vocm)

meas ac av_diff_db find vdb(vod) at=1
meas ac av_diff_MAG find vmag(vod) at=1








.endc
"
spice_ignore=true}
