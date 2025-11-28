v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 20 -20 820 380 {flags=graph
y1=0.025
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
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
B 2 20 -440 820 -40 {flags=graph
y1=-12
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
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
N -110 260 -110 300 {lab=GND}
N -110 120 -110 190 {lab=vout}
N -110 -20 -110 60 {lab=VDD}
N -580 480 -580 500 {lab=GND}
N -580 380 -580 420 {lab=VDD}
N -290 340 -290 360 {lab=GND}
N -290 220 -290 280 {lab=#net1}
N -110 220 -90 220 {lab=GND}
N -90 220 -90 260 {lab=GND}
N -110 260 -90 260 {lab=GND}
N -110 250 -110 260 {lab=GND}
N -290 220 -150 220 {lab=#net1}
C {gnd.sym} -110 300 0 0 {name=l1 lab=GND}
C {res.sym} -110 90 0 0 {name=R1
value=15k
footprint=1206
device=resistor
m=1}
C {vdd.sym} -110 -20 0 0 {name=l2 lab=VDD}
C {vsource.sym} -580 450 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -580 500 0 0 {name=l5 lab=GND}
C {vdd.sym} -580 380 0 0 {name=l6 lab=VDD}
C {vsource.sym} -290 310 0 0 {name=V2 value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} -290 360 0 0 {name=l7 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} -270 80 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} -110 150 0 1 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -1010 -80 0 0 {
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
C {simulator_commands_shown.sym} -1020 90 0 0 {name=SimulatorNGSPICE
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
C {sg13g2_pr/sg13_hv_nmos.sym} -130 220 0 0 {name=M1
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {simulator_commands_shown.sym} -1030 350 0 0 {name=SimulatorNGSPICE1
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
