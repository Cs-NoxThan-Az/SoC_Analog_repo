v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 390 -150 1190 250 {flags=graph
y1=11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.3057953e-07
x2=10.000002
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="vout db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
y2=20}
N 260 130 260 170 {lab=GND}
N 260 -10 260 60 {lab=vout}
N 260 -150 260 -70 {lab=VDD}
N -120 -150 -120 -110 {lab=VDD}
N 120 90 220 90 {lab=#net1}
N -120 30 -120 60 {lab=#net2}
N -40 90 10 90 {lab=#net2}
N -120 30 -40 30 {lab=#net2}
N -120 -50 -120 30 {lab=#net2}
N -40 30 -40 90 {lab=#net2}
N -80 90 -40 90 {lab=#net2}
N -120 130 -120 170 {lab=GND}
N 120 90 120 170 {lab=#net1}
N 70 90 120 90 {lab=#net1}
N -210 350 -210 370 {lab=GND}
N -210 250 -210 290 {lab=VDD}
N 120 350 120 370 {lab=GND}
N 120 230 120 290 {lab=vin}
N 260 90 280 90 {lab=GND}
N 280 90 280 130 {lab=GND}
N 260 130 280 130 {lab=GND}
N 260 120 260 130 {lab=GND}
N -130 90 -120 90 {lab=GND}
N -130 90 -130 130 {lab=GND}
N -130 130 -120 130 {lab=GND}
N -120 120 -120 130 {lab=GND}
C {gnd.sym} 260 170 0 0 {name=l1 lab=GND}
C {res.sym} 260 -40 0 0 {name=R1
value=15k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 260 -150 0 0 {name=l2 lab=VDD}
C {vdd.sym} -120 -150 0 0 {name=l3 lab=VDD}
C {isource.sym} -120 -80 0 0 {name=I0 value=100u}
C {res_ac.sym} 40 90 1 0 {name=R2
value=1
ac=1e12
m=1}
C {gnd.sym} -120 170 0 0 {name=l4 lab=GND}
C {res_ac.sym} 120 200 0 0 {name=R3
value=1e12
ac=1
m=1}
C {vsource.sym} -210 320 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -210 370 0 0 {name=l5 lab=GND}
C {vdd.sym} -210 250 0 0 {name=l6 lab=VDD}
C {vsource.sym} 120 320 0 0 {name=V2 value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} 120 370 0 0 {name=l7 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} 360 10 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} 120 260 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 260 20 0 1 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -640 -210 0 0 {
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
C {simulator_commands_shown.sym} -650 -40 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cs_amplifier_hv.save

.control
save all
*op
ac dec 10 1 10g
write cs_amplifier_hv.raw
.endc
"
}
C {sg13g2_pr/annotate_fet_params.sym} -340 -90 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/sg13_hv_nmos.sym} 240 90 0 0 {name=M1
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -100 90 0 1 {name=M2
l=2u
w=10u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {simulator_commands_shown.sym} -650 200 0 0 {name=SimulatorNGSPICE1
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
