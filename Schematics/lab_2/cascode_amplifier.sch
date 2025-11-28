v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 610 350 1410 750 {flags=graph
y1=-0.28
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0.30826137
x2=10.308262
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="vout2 
vout1"
color="4 5"
dataset=-1
unitx=1
logx=1
logy=1
}
N 420 80 420 140 {lab=GND}
N 420 -50 420 20 {lab=#net1}
N 520 50 520 140 {lab=GND}
N 420 50 520 50 {lab=GND}
N 520 -80 520 50 {lab=GND}
N 420 -80 520 -80 {lab=GND}
N 420 -130 420 -110 {lab=VB}
N 420 -250 420 -230 {lab=VDD}
N 180 80 180 100 {lab=VDD}
N 180 160 180 180 {lab=GND}
N 340 -80 380 -80 {lab=VB}
N 340 -130 340 -80 {lab=VB}
N 340 -130 420 -130 {lab=VB}
N 420 -170 420 -130 {lab=VB}
N 340 -80 340 50 {lab=VB}
N 340 50 380 50 {lab=VB}
N 1170 -230 1170 -210 {lab=VDD}
N 1170 50 1170 80 {lab=GND}
N 1170 0 1200 -0 {lab=GND}
N 1200 -0 1200 50 {lab=GND}
N 1170 50 1200 50 {lab=GND}
N 1170 30 1170 50 {lab=GND}
N 1010 0 1130 -0 {lab=VSIG}
N 860 240 860 260 {lab=GND}
N 860 140 860 180 {lab=#net2}
N 860 40 860 80 {lab=VSIG}
N 1170 -110 1170 -30 {lab=VOUT1}
N 1040 -110 1040 -60 {lab=#net3}
N 1120 -110 1170 -110 {lab=VOUT1}
N 1170 -150 1170 -110 {lab=VOUT1}
N 1040 -110 1060 -110 {lab=#net3}
N 1670 -210 1670 -190 {lab=VDD}
N 1670 250 1670 280 {lab=GND}
N 1670 200 1700 200 {lab=GND}
N 1700 200 1700 250 {lab=GND}
N 1670 250 1700 250 {lab=GND}
N 1670 230 1670 250 {lab=GND}
N 1540 -90 1540 -40 {lab=#net4}
N 1620 -90 1670 -90 {lab=VOUT2}
N 1670 -130 1670 -90 {lab=VOUT2}
N 1540 -90 1560 -90 {lab=#net4}
N 1670 -90 1670 30 {lab=VOUT2}
N 1540 200 1630 200 {lab=VSIG}
N 1540 20 1540 200 {lab=VSIG}
N 1450 200 1540 200 {lab=VSIG}
N 1600 60 1630 60 {lab=VB}
N 1670 90 1670 170 {lab=#net5}
N 1700 60 1700 200 {lab=GND}
N 1670 60 1700 60 {lab=GND}
C {simulator_commands_shown.sym} -360 -220 0 0 {
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
C {simulator_commands_shown.sym} -420 -60 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cascode_amplifier.save
.control

alterparam sw_stat_global = 0 
alterparam sw_stat_mismatch = 0 
reset


save all
op
write cascode_amplifier.raw
set appendwrite

ac dec 10 1 10g

meas ac DC_gain_1 find vmag(VOUT1) at=1 
let A3db= DC_gain_1 / sqrt(2)
meas ac BW_1 when vmag(VOUT1)=A3db fall=1 
let GBW_1 = DC_gain_1 * BW_1
meas ac UGF_1 when vmag(VOUT1)=1 fall=1 



meas ac DC_gain_2 find vmag(VOUT2) at=1 
let A3db= DC_gain_2 / sqrt(2)
meas ac BW_2 when vmag(VOUT2)=A3db fall=1 
let GBW_2 = DC_gain_2 * BW_2
meas ac UGF_2 when vmag(VOUT2)=1 fall=1 

print DC_gain_1 BW_1 GBW_1 UGF_1 > lab_2_results.txt 
print DC_gain_2 BW_2 GBW_2 UGF_2 >> lab_2_results.txt

remzerovec
write cascode_amplifier.raw


.endc
"
}
C {sg13g2_pr/sg13_hv_nmos.sym} 400 50 0 0 {name=M1
l=7.6u
w=5.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} 420 140 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} 400 -80 0 0 {name=M2
l=0.55u
w=5.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} 520 140 0 0 {name=l2 lab=GND}
C {isource.sym} 420 -200 0 0 {name=I0 value=20u}
C {vdd.sym} 420 -250 0 0 {name=l3 lab=VDD}
C {vdd.sym} 180 80 0 0 {name=l4 lab=VDD}
C {vsource.sym} 180 130 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 180 180 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 420 -130 0 1 {name=p1 sig_type=std_logic lab=VB}
C {sg13g2_pr/annotate_fet_params.sym} 580 60 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 570 -160 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/sg13_hv_nmos.sym} 1150 0 0 0 {name=M3
l=0.55u
w=5.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {isource.sym} 1170 -180 0 0 {name=I1 value=20u}
C {vdd.sym} 1170 -230 0 0 {name=l6 lab=VDD}
C {gnd.sym} 1170 80 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1010 0 0 0 {name=p2 sig_type=std_logic lab=VSIG
}
C {vsource.sym} 860 210 0 0 {name=V2 value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} 860 260 0 0 {name=l9 lab=GND}
C {res_ac.sym} 860 110 0 0 {name=R1
value=1e12
ac=1
m=1}
C {lab_pin.sym} 860 40 0 0 {name=p3 sig_type=std_logic lab=VSIG
}
C {lab_pin.sym} 1170 -110 0 1 {name=p4 sig_type=std_logic lab=VOUT1}
C {sg13g2_pr/annotate_fet_params.sym} 1290 -70 0 0 {name=annot3 ref=M3}
C {vsource.sym} 1040 -30 0 0 {name=V3 value="DC 100m AC 1" savecurrent=false}
C {res_ac.sym} 1090 -110 1 0 {name=R2
value=1
ac=1e12
m=1}
C {sg13g2_pr/sg13_hv_nmos.sym} 1650 200 0 0 {name=M4
l=0.55u
w=5.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {isource.sym} 1670 -160 0 0 {name=I2 value=20u}
C {vdd.sym} 1670 -210 0 0 {name=l8 lab=VDD}
C {gnd.sym} 1670 280 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 1450 200 0 0 {name=p5 sig_type=std_logic lab=VSIG
}
C {lab_pin.sym} 1670 -90 0 1 {name=p6 sig_type=std_logic lab=VOUT2}
C {sg13g2_pr/annotate_fet_params.sym} 1790 240 0 0 {name=annot4 ref=M4}
C {vsource.sym} 1540 -10 0 0 {name=V4 value="DC 100m AC 1" savecurrent=false}
C {res_ac.sym} 1590 -90 1 0 {name=R3
value=1
ac=1e12
m=1}
C {sg13g2_pr/sg13_hv_nmos.sym} 1650 60 0 0 {name=M5
l=0.55u
w=5.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1600 60 0 0 {name=p7 sig_type=std_logic lab=VB}
C {sg13g2_pr/annotate_fet_params.sym} 1780 50 0 0 {name=annot5 ref=M5}
