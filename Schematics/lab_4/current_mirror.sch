v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 980 10 1780 410 {flags=graph
y1=0
y2=2.2e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="i(vmeas)
i(vmeas1)"}
N 440 30 440 60 {lab=VDD}
N 300 170 300 200 {lab=GND}
N 440 230 440 260 {lab=#net1}
N 440 330 440 360 {lab=GND}
N 440 230 500 230 {lab=#net1}
N 440 200 440 230 {lab=#net1}
N 500 230 500 290 {lab=#net1}
N 480 290 500 290 {lab=#net1}
N 430 290 440 290 {lab=GND}
N 430 290 430 330 {lab=GND}
N 430 330 440 330 {lab=GND}
N 440 320 440 330 {lab=GND}
N 500 290 690 290 {lab=#net1}
N 730 330 730 360 {lab=GND}
N 730 240 730 260 {lab=#net2}
N 730 110 730 180 {lab=vout}
N 730 290 740 290 {lab=GND}
N 740 290 740 330 {lab=GND}
N 730 330 740 330 {lab=GND}
N 730 320 730 330 {lab=GND}
N 630 160 630 190 {lab=GND}
N 630 60 630 100 {lab=vout}
N 440 120 440 140 {lab=#net3}
C {simulator_commands_shown.sym} -60 -20 0 0 {
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
C {simulator_commands_shown.sym} -70 150 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include current_mirror.save
.control
save all
op
dc V2 0 1.8 10m
write current_mirror.raw
.endc
"}
C {isource.sym} 440 90 0 0 {name=I0 value=10u}
C {vdd.sym} 440 30 0 0 {name=l1 lab=VDD}
C {vsource.sym} 300 140 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} 300 110 0 0 {name=l2 lab=VDD}
C {gnd.sym} 300 200 0 0 {name=l3 lab=GND}
C {gnd.sym} 440 360 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} 460 290 0 1 {name=M1
l=2u
w=9u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 710 290 0 0 {name=M2
l=2u
w=9u
ng=1
m=8
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} 730 360 0 0 {name=l5 lab=GND}
C {ammeter.sym} 440 170 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 730 110 2 0 {name=p1 sig_type=std_logic lab=vout}
C {sg13g2_pr/annotate_fet_params.sym} 270 350 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 840 340 0 0 {name=annot2 ref=M2}
C {vsource.sym} 630 130 0 0 {name=V2 value=0.2 savecurrent=false}
C {gnd.sym} 630 190 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 630 60 2 0 {name=p2 sig_type=std_logic lab=vout}
C {ammeter.sym} 730 210 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
