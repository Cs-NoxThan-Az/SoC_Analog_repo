v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 260 -330 1060 70 {flags=graph
y1=4.6
y2=6.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.1578306e+09
x2=7.8421711e+09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
dataset=-1
unitx=1
logx=0
logy=0
color=4}
N -20 40 -20 80 {lab=GND}
N -20 -100 -20 -30 {lab=vout}
N -20 -240 -20 -160 {lab=VDD}
N -400 -240 -400 -200 {lab=VDD}
N -160 -0 -60 0 {lab=#net1}
N -400 -60 -400 -30 {lab=#net2}
N -320 -0 -270 0 {lab=#net2}
N -400 -60 -320 -60 {lab=#net2}
N -400 -140 -400 -60 {lab=#net2}
N -320 -60 -320 -0 {lab=#net2}
N -360 -0 -320 -0 {lab=#net2}
N -400 40 -400 80 {lab=GND}
N -160 -0 -160 80 {lab=#net1}
N -210 -0 -160 -0 {lab=#net1}
N -490 260 -490 280 {lab=GND}
N -490 160 -490 200 {lab=VDD}
N -160 260 -160 280 {lab=GND}
N -160 140 -160 200 {lab=vin}
N -20 0 -0 0 {lab=GND}
N -0 0 -0 40 {lab=GND}
N -20 40 -0 40 {lab=GND}
N -20 30 -20 40 {lab=GND}
N -410 0 -400 0 {lab=GND}
N -410 0 -410 40 {lab=GND}
N -410 40 -400 40 {lab=GND}
N -400 30 -400 40 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -40 0 0 0 {name=M1
l=2u
w=8.4u
ng=1
m=3
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -20 80 0 0 {name=l1 lab=GND}
C {res.sym} -20 -130 0 0 {name=R1
value=6k
footprint=1206
device=resistor
m=1}
C {vdd.sym} -20 -240 0 0 {name=l2 lab=VDD}
C {vdd.sym} -400 -240 0 0 {name=l3 lab=VDD}
C {isource.sym} -400 -170 0 0 {name=I0 value=100u}
C {res_ac.sym} -240 0 1 0 {name=R2
value=1
ac=1e12
m=1}
C {sg13g2_pr/sg13_lv_nmos.sym} -380 0 0 1 {name=M2
l=2u
w=8.4u
ng=1
m=3
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -400 80 0 0 {name=l4 lab=GND}
C {res_ac.sym} -160 110 0 0 {name=R3
value=1e12
ac=1
m=1}
C {vsource.sym} -490 230 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -490 280 0 0 {name=l5 lab=GND}
C {vdd.sym} -490 160 0 0 {name=l6 lab=VDD}
C {vsource.sym} -160 230 0 0 {name=V2 value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} -160 280 0 0 {name=l7 lab=GND}
C {simulator_commands_shown.sym} -900 -190 0 0 {
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
C {simulator_commands_shown.sym} -910 -20 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cs_amplifier.save

.control
save all
op
*ac dec 10 1 10g
write cs_amplifier.raw
.endc
"}
C {sg13g2_pr/annotate_fet_params.sym} 80 -80 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} -600 -70 0 0 {name=annot2 ref=M2}
C {lab_pin.sym} -160 170 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} -20 -70 0 1 {name=p2 sig_type=std_logic lab=vout}
