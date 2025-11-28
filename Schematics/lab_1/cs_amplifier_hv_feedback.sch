v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 220 250 1020 650 {flags=graph
y1=0.025
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.3377313
x2=2.9622689
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
y2=3}
B 2 220 -170 1020 230 {flags=graph
y1=-9.4
y2=7.2e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.3377313
x2=2.9622689
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout deriv()"
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 70 460 70 500 {lab=GND}
N -100 420 30 420 {lab=vin}
N -400 680 -400 700 {lab=GND}
N -400 580 -400 620 {lab=VDD}
N -240 650 -240 670 {lab=GND}
N 70 420 90 420 {lab=GND}
N 90 420 90 460 {lab=GND}
N 70 460 90 460 {lab=GND}
N 70 450 70 460 {lab=GND}
N -240 420 -240 590 {lab=vsig}
N -240 420 -180 420 {lab=vsig}
N 70 140 70 170 {lab=VDD}
N 70 140 90 140 {lab=VDD}
N 70 110 70 140 {lab=VDD}
N -310 140 -310 170 {lab=VDD}
N -330 200 -310 200 {lab=VDD}
N -330 140 -330 200 {lab=VDD}
N -330 140 -310 140 {lab=VDD}
N -310 110 -310 140 {lab=VDD}
N 90 140 90 200 {lab=VDD}
N 70 200 90 200 {lab=VDD}
N -240 200 30 200 {lab=#net1}
N -310 230 -310 260 {lab=#net1}
N -310 260 -240 260 {lab=#net1}
N -240 200 -240 260 {lab=#net1}
N -270 200 -240 200 {lab=#net1}
N -310 360 -310 400 {lab=GND}
N -310 260 -310 300 {lab=#net1}
N 70 300 70 390 {lab=vout}
N 0 300 70 300 {lab=vout}
N 70 230 70 300 {lab=vout}
N -100 300 -60 300 {lab=vin}
N -100 300 -100 420 {lab=vin}
N -120 420 -100 420 {lab=vin}
C {gnd.sym} 70 500 0 0 {name=l1 lab=GND}
C {vdd.sym} 70 110 0 0 {name=l2 lab=VDD}
C {vdd.sym} -310 110 0 0 {name=l3 lab=VDD}
C {vsource.sym} -400 650 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -400 700 0 0 {name=l5 lab=GND}
C {vdd.sym} -400 580 0 0 {name=l6 lab=VDD}
C {vsource.sym} -240 620 0 0 {name=V2 value="sin(0.88 10m 1meg)" savecurrent=false}
C {gnd.sym} -240 670 0 0 {name=l7 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} -60 570 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} -240 560 0 0 {name=p1 sig_type=std_logic lab=vsig}
C {lab_pin.sym} 70 350 0 1 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -830 120 0 0 {
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
C {simulator_commands_shown.sym} -840 290 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cs_amplifier_hv_feedback.save

.control
save all
*op
*ac dec 10 1 10g
*tran 0.1u 2u
dc V2 0 3.3 10m
write cs_amplifier_hv_feedback.raw
.endc
"
}
C {sg13g2_pr/sg13_hv_nmos.sym} 50 420 0 0 {name=M1
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {res.sym} -150 420 3 0 {name=R2
value=1MEG
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 0 420 3 0 {name=p3 sig_type=std_logic lab=vin}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 200 0 0 {name=M2
l=2u
w=10u
ng=1
m=10
model=sg13_lv_pmos
spiceprefix=X
}
C {isource.sym} -310 330 0 0 {name=I0 value=100u}
C {gnd.sym} -310 400 0 0 {name=l4 lab=GND}
C {res.sym} -30 300 3 0 {name=R1
value=10MEG
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_lv_pmos.sym} -290 200 0 1 {name=M3
l=2u
w=10u
ng=1
m=10
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/annotate_fet_params.sym} -90 0 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} -490 -10 0 0 {name=annot3 ref=M3}
