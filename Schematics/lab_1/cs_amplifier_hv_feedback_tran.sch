v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 260 180 1060 580 {flags=graph
y1=0.88
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.1652577e-08
x2=2.0616521e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node=vin
color=12
dataset=-1
unitx=1
logx=0
logy=0
y2=0.89}
B 2 260 -240 1060 160 {flags=graph
y1=0.94
y2=0.97
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.1652577e-08
x2=2.0616521e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 110 390 110 430 {lab=GND}
N -60 350 70 350 {lab=vin}
N -360 610 -360 630 {lab=GND}
N -360 510 -360 550 {lab=VDD}
N -200 580 -200 600 {lab=GND}
N 110 350 130 350 {lab=GND}
N 130 350 130 390 {lab=GND}
N 110 390 130 390 {lab=GND}
N 110 380 110 390 {lab=GND}
N -200 350 -200 520 {lab=vsig}
N -200 350 -140 350 {lab=vsig}
N 110 70 110 100 {lab=VDD}
N 110 70 130 70 {lab=VDD}
N 110 40 110 70 {lab=VDD}
N -270 70 -270 100 {lab=VDD}
N -290 130 -270 130 {lab=VDD}
N -290 70 -290 130 {lab=VDD}
N -290 70 -270 70 {lab=VDD}
N -270 40 -270 70 {lab=VDD}
N 130 70 130 130 {lab=VDD}
N 110 130 130 130 {lab=VDD}
N -200 130 70 130 {lab=#net1}
N -270 160 -270 190 {lab=#net1}
N -270 190 -200 190 {lab=#net1}
N -200 130 -200 190 {lab=#net1}
N -230 130 -200 130 {lab=#net1}
N -270 290 -270 330 {lab=GND}
N -270 190 -270 230 {lab=#net1}
N 110 230 110 320 {lab=vout}
N 40 230 110 230 {lab=vout}
N 110 160 110 230 {lab=vout}
N -60 230 -20 230 {lab=vin}
N -60 230 -60 350 {lab=vin}
N -80 350 -60 350 {lab=vin}
C {gnd.sym} 110 430 0 0 {name=l1 lab=GND}
C {vdd.sym} 110 40 0 0 {name=l2 lab=VDD}
C {vdd.sym} -270 40 0 0 {name=l3 lab=VDD}
C {vsource.sym} -360 580 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -360 630 0 0 {name=l5 lab=GND}
C {vdd.sym} -360 510 0 0 {name=l6 lab=VDD}
C {vsource.sym} -200 550 0 0 {name=V2 value="sin(0.88 0.2 1k 0 0)" savecurrent=false}
C {gnd.sym} -200 600 0 0 {name=l7 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} -20 500 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} -200 490 0 0 {name=p1 sig_type=std_logic lab=vsig}
C {lab_pin.sym} 110 280 0 1 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -790 50 0 0 {
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
C {simulator_commands_shown.sym} -800 220 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cs_amplifier_hv_feedback_tran.save

.control
save all
*op
*ac dec 10 1 10g
tran 10u 2m
write cs_amplifier_hv_feedback_tran.raw
.endc
"
}
C {sg13g2_pr/sg13_hv_nmos.sym} 90 350 0 0 {name=M1
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {res.sym} -110 350 3 0 {name=R2
value=1MEG
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 40 350 3 0 {name=p3 sig_type=std_logic lab=vin}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 130 0 0 {name=M2
l=2u
w=10u
ng=1
m=10
model=sg13_lv_pmos
spiceprefix=X
}
C {isource.sym} -270 260 0 0 {name=I0 value=100u}
C {gnd.sym} -270 330 0 0 {name=l4 lab=GND}
C {res.sym} 10 230 3 0 {name=R1
value=10MEG
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_lv_pmos.sym} -250 130 0 1 {name=M3
l=2u
w=10u
ng=1
m=10
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/annotate_fet_params.sym} -50 -70 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} -450 -80 0 0 {name=annot3 ref=M3}
