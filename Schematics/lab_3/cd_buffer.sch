v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 680 100 1480 500 {flags=graph
y1=-5.6
y2=0.25
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=vout
color=5
dataset=-1
unitx=1
logx=1
logy=1
}
N 320 200 390 200 {lab=#net1}
N 180 200 180 250 {lab=vsig}
N 180 200 260 200 {lab=vsig}
N 180 310 180 340 {lab=GND}
N 430 230 430 280 {lab=GND}
N 430 160 430 170 {lab=vout}
N 430 -40 430 -0 {lab=VDD}
N 180 -30 180 -0 {lab=VDD}
N 180 60 180 80 {lab=GND}
N 540 120 590 120 {lab=vout}
N 430 60 430 120 {lab=vout}
N 430 200 440 200 {lab=vout}
N 440 160 440 200 {lab=vout}
N 430 160 440 160 {lab=vout}
N 430 120 430 160 {lab=vout}
N 540 120 540 140 {lab=vout}
N 430 120 540 120 {lab=vout}
N 540 200 540 220 {lab=GND}
C {simulator_commands_shown.sym} -380 -90 0 0 {
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
C {simulator_commands_shown.sym} -400 50 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include cd_buffer.save

.control
save all
op

write cd_buffer.raw
.endc
"
spice_ignore=true}
C {sg13g2_pr/sg13_hv_pmos.sym} 410 200 0 0 {name=M1
l=0.8u
w=10u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {res.sym} 290 200 3 0 {name=R1
value=2meg
footprint=1206
device=resistor
m=1}
C {vsource.sym} 180 280 0 0 {name=V1 value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} 180 340 0 0 {name=l1 lab=GND}
C {gnd.sym} 430 280 0 0 {name=l2 lab=GND}
C {isource.sym} 430 30 0 0 {name=I0 value=10u}
C {vdd.sym} 430 -40 0 0 {name=l3 lab=VDD}
C {vdd.sym} 180 -30 0 0 {name=l4 lab=VDD}
C {vsource.sym} 180 30 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 180 80 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 590 120 2 0 {name=p1 sig_type=std_logic lab=vout}
C {lab_pin.sym} 180 200 0 0 {name=p2 sig_type=std_logic lab=vsig
}
C {capa.sym} 540 170 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 540 220 0 0 {name=l6 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} 480 270 0 0 {name=annot1 ref=M1}
C {simulator_commands_shown.sym} -390 310 0 0 {name=SimulatorNGSPICE1
simulator=ngspice
only_toplevel=false 
value="
.include cd_buffer.save

.control
save all
op
write cd_buffer.raw

ac dec 20 1 10g
set appendwrite

write cd_buffer.raw

.endc
"
}
