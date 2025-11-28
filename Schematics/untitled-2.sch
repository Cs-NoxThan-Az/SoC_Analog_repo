v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 210 230 1010 630 {flags=graph
y1=0.025
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.974106e-09
x2=3
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
y2=3}
B 2 210 -190 1010 210 {flags=graph
y1=-12
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.974106e-09
x2=3
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
N 80 510 80 550 {lab=GND}
N 80 370 80 440 {lab=vout}
N 80 230 80 310 {lab=VDD}
N -390 730 -390 750 {lab=GND}
N -390 630 -390 670 {lab=VDD}
N -100 590 -100 610 {lab=GND}
N -100 470 -100 530 {lab=#net1}
N 80 470 100 470 {lab=GND}
N 100 470 100 510 {lab=GND}
N 80 510 100 510 {lab=GND}
N 80 500 80 510 {lab=GND}
N -100 470 40 470 {lab=#net1}
C {gnd.sym} 80 550 0 0 {name=l1 lab=GND}
C {res.sym} 80 340 0 0 {name=R1
value=15k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 80 230 0 0 {name=l2 lab=VDD}
C {vsource.sym} -390 700 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -390 750 0 0 {name=l5 lab=GND}
C {vdd.sym} -390 630 0 0 {name=l6 lab=VDD}
C {vsource.sym} -100 560 0 0 {name=V2 value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} -100 610 0 0 {name=l7 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} -80 330 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} 80 400 0 1 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -820 170 0 0 {
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
C {simulator_commands_shown.sym} -830 340 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cs_amplifier_hv_dc.save

.control
save all
*op
*ac dec 10 1 10g
dc V2 0 3 10m
write cs_amplifier_hv_dc.raw
.endc
"
}
C {sg13g2_pr/sg13_hv_nmos.sym} 60 470 0 0 {name=M1
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {simulator_commands_shown.sym} -840 600 0 0 {name=SimulatorNGSPICE1
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
