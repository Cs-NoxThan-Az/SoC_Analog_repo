v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 210 1840 610 {flags=graph
y1=0.00064
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1220681e-07
x2=1.8877925e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
y2=0.0007
color=4
node=@n.xm1.nsg13_hv_nmos[gm]}
B 2 230 210 1030 610 {flags=graph
y1=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1220681e-07
x2=1.8877925e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
y2=1.6}
B 2 230 -210 1030 190 {flags=graph
y1=-610000
y2=600000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1220681e-07
x2=1.8877925e-06
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
B 2 1040 -210 1840 190 {flags=graph
y1=0.87
y2=0.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1220681e-07
x2=1.8877925e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=5
node=vin}
N 90 490 90 530 {lab=GND}
N 90 350 90 420 {lab=vout}
N 90 210 90 290 {lab=VDD}
N -290 210 -290 250 {lab=VDD}
N -50 450 50 450 {lab=vin}
N -290 390 -290 420 {lab=#net1}
N -210 450 -160 450 {lab=#net1}
N -290 390 -210 390 {lab=#net1}
N -290 310 -290 390 {lab=#net1}
N -210 390 -210 450 {lab=#net1}
N -250 450 -210 450 {lab=#net1}
N -290 490 -290 530 {lab=GND}
N -50 450 -50 530 {lab=vin}
N -100 450 -50 450 {lab=vin}
N -380 710 -380 730 {lab=GND}
N -380 610 -380 650 {lab=VDD}
N -50 710 -50 730 {lab=GND}
N -50 590 -50 650 {lab=vsig}
N 90 450 110 450 {lab=GND}
N 110 450 110 490 {lab=GND}
N 90 490 110 490 {lab=GND}
N 90 480 90 490 {lab=GND}
N -300 450 -290 450 {lab=GND}
N -300 450 -300 490 {lab=GND}
N -300 490 -290 490 {lab=GND}
N -290 480 -290 490 {lab=GND}
C {gnd.sym} 90 530 0 0 {name=l1 lab=GND}
C {res.sym} 90 320 0 0 {name=R1
value=15k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 90 210 0 0 {name=l2 lab=VDD}
C {vdd.sym} -290 210 0 0 {name=l3 lab=VDD}
C {isource.sym} -290 280 0 0 {name=I0 value=100u}
C {gnd.sym} -290 530 0 0 {name=l4 lab=GND}
C {vsource.sym} -380 680 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -380 730 0 0 {name=l5 lab=GND}
C {vdd.sym} -380 610 0 0 {name=l6 lab=VDD}
C {vsource.sym} -50 680 0 0 {name=V2 value="sin(0 10m 1meg)" savecurrent=false}
C {gnd.sym} -50 730 0 0 {name=l7 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} -60 260 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} -50 620 0 0 {name=p1 sig_type=std_logic lab=vsig}
C {lab_pin.sym} 90 380 0 1 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -810 150 0 0 {
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
C {simulator_commands_shown.sym} -820 320 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cs_amplifier_hv_tran.save

.control
save all
*op
*ac dec 10 1 10g
tran 0.1u 2u
write cs_amplifier_hv_tran.raw
.endc
"
}
C {sg13g2_pr/annotate_fet_params.sym} -430 270 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/sg13_hv_nmos.sym} 70 450 0 0 {name=M1
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -270 450 0 1 {name=M2
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {simulator_commands_shown.sym} -820 560 0 0 {name=SimulatorNGSPICE1
simulator=ngspice
only_toplevel=false 
value="
.include cs_amplifier_hv.save

.control
save all
op
*ac dec 10 1 10g
write cs_amplifier_hv.raw
.endc
"
spice_ignore=true}
C {res.sym} -130 450 3 0 {name=R2
value=1MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} -50 560 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 20 450 3 0 {name=p3 sig_type=std_logic lab=vin}
