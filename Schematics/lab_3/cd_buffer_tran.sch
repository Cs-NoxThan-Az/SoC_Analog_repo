v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 800 60 1600 460 {flags=graph
y1=0
y2=0.1
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=1e-05
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node=vsig
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 800 -360 1600 40 {flags=graph
y1=0.77
y2=0.88
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=1e-05
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node=vout
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 800 480 1600 880 {flags=graph
y1=-0.0028
y2=0.11
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=1e-05
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=8
node=vin}
N 440 160 510 160 {lab=vin}
N 300 160 300 210 {lab=vsig}
N 300 160 380 160 {lab=vsig}
N 300 270 300 300 {lab=GND}
N 550 190 550 240 {lab=GND}
N 550 120 550 130 {lab=vout}
N 550 -80 550 -40 {lab=VDD}
N 300 -70 300 -40 {lab=VDD}
N 300 20 300 40 {lab=GND}
N 660 80 710 80 {lab=vout}
N 550 20 550 80 {lab=vout}
N 550 160 560 160 {lab=vout}
N 560 120 560 160 {lab=vout}
N 550 120 560 120 {lab=vout}
N 550 80 550 120 {lab=vout}
N 660 80 660 100 {lab=vout}
N 550 80 660 80 {lab=vout}
N 660 160 660 180 {lab=GND}
C {simulator_commands_shown.sym} -10 -140 0 0 {
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
C {simulator_commands_shown.sym} -30 0 0 0 {name=SimulatorNGSPICE
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
C {sg13g2_pr/sg13_hv_pmos.sym} 530 160 0 0 {name=M1
l=0.8u
w=10u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {res.sym} 410 160 3 0 {name=R1
value=2meg
footprint=1206
device=resistor
m=1}
C {vsource.sym} 300 240 0 0 {name=V1 value="PULSE(0 100m 2u 1u 1u 4u 8u)" savecurrent=false}
C {gnd.sym} 300 300 0 0 {name=l1 lab=GND}
C {gnd.sym} 550 240 0 0 {name=l2 lab=GND}
C {isource.sym} 550 -10 0 0 {name=I0 value=10u}
C {vdd.sym} 550 -80 0 0 {name=l3 lab=VDD}
C {vdd.sym} 300 -70 0 0 {name=l4 lab=VDD}
C {vsource.sym} 300 -10 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 300 40 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 710 80 2 0 {name=p1 sig_type=std_logic lab=vout}
C {lab_pin.sym} 300 160 0 0 {name=p2 sig_type=std_logic lab=vsig
}
C {capa.sym} 660 130 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 660 180 0 0 {name=l6 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} 600 230 0 0 {name=annot1 ref=M1}
C {simulator_commands_shown.sym} -20 260 0 0 {name=SimulatorNGSPICE1
simulator=ngspice
only_toplevel=false 
value="
.include cd_buffer_tran.save

.control
save all
op
write cd_buffer_tran.raw

tran 10n 10u
set appendwrite

write cd_buffer_tran.raw

.endc
"
}
C {lab_pin.sym} 480 160 1 0 {name=p3 sig_type=std_logic lab=vin}
