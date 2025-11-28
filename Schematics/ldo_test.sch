v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -500 -570 300 -170 {flags=graph
y1=1.5
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vreg
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -230 -40 -110 -40 {lab=vref}
N 180 180 180 220 {lab=vf}
N -430 240 -430 270 {lab=GND}
N -430 150 -430 180 {lab=VDD}
N -70 110 -70 130 {lab=GND}
N -70 40 -70 50 {lab=#net1}
N -180 180 180 180 {lab=vf}
N 180 130 180 180 {lab=vf}
N -180 0 -180 180 {lab=vf}
N -180 0 -110 0 {lab=vf}
N 180 -60 180 -50 {lab=VDD}
N 30 -20 140 -20 {lab=vota}
N 180 40 180 70 {lab=vreg}
N 180 10 180 40 {lab=vreg}
N 180 -20 190 -20 {lab=VDD}
N 190 -60 190 -20 {lab=VDD}
N 180 -60 190 -60 {lab=VDD}
N 180 -80 180 -60 {lab=VDD}
N 180 40 410 40 {lab=vreg}
N 180 280 180 300 {lab=GND}
C {/foss/designs/IHP-Open-DesignLib/AnalogLDO_exampleDesign/design_data/xschem/OTA/ihp_ota_v3.sym} -50 -20 0 0 {name=x1}
C {/foss/designs/ali_designs/bgr_cmos_circuit.sym} -380 -40 0 0 {name=x2}
C {res.sym} 180 100 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 180 250 0 0 {name=R2
value=3k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -430 210 0 0 {name=V1 value="1.8" savecurrent=false}
C {gnd.sym} -430 270 0 0 {name=l3 lab=GND}
C {vdd.sym} -430 150 0 0 {name=l4 lab=VDD}
C {vdd.sym} -380 -90 0 0 {name=l1 lab=VDD}
C {gnd.sym} -380 10 0 0 {name=l2 lab=GND}
C {vdd.sym} -50 -70 0 0 {name=l5 lab=VDD}
C {gnd.sym} -30 20 0 0 {name=l6 lab=GND}
C {devices/isource.sym} -70 80 2 0 {name=I0 value=5u}
C {gnd.sym} -70 130 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -170 -40 1 0 {name=p2 sig_type=std_logic lab=vref}
C {vdd.sym} 180 -80 0 0 {name=l8 lab=VDD}
C {gnd.sym} 180 300 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 90 -20 1 0 {name=p1 sig_type=std_logic lab=vota}
C {lab_pin.sym} 410 40 1 0 {name=p3 sig_type=std_logic lab=vreg}
C {simulator_commands_shown.sym} -910 0 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include ldo_test.save

.control
save all
op
write ldo_test.raw
set appendwrite

*dc TEMP -50 125 5
tran 1m 2
write ldo_test.raw
.endc
"
}
C {sg13g2_pr/annotate_fet_params.sym} 270 -160 0 0 {name=annot1 ref=M1}
C {simulator_commands_shown.sym} -910 -210 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ

"
      }
C {sg13g2_pr/sg13_hv_pmos.sym} 160 -20 0 0 {name=M1
l=2u
w=10u
ng=1
m=10
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -180 180 0 0 {name=p4 sig_type=std_logic lab=vf}
