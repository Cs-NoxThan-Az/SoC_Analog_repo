v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 330 -190 1130 210 {flags=graph
y1=1.1
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.274106e-08
x2=1.9999996
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=12
node=vref}
N 110 -140 160 -140 {lab=vref}
N -40 -220 -40 -190 {lab=VDD}
N -40 -90 -40 -60 {lab=GND}
N -200 110 -200 140 {lab=GND}
N -200 20 -200 50 {lab=VDD}
C {simulator_commands_shown.sym} -600 -50 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include bgr_sym_test_tran.save

.control
save all
op
write bgr_cmos.raw
set appendwrite

*dc TEMP -50 125 5
tran 1m 2
write bgr_sym_test_tran.raw
.endc
"
}
C {simulator_commands_shown.sym} -490 -250 0 0 {
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
C {/foss/designs/ali_designs/bgr_cmos_circuit.sym} -40 -140 0 0 {name=x1}
C {lab_pin.sym} 160 -140 2 0 {name=p1 sig_type=std_logic lab=vref}
C {vdd.sym} -40 -220 0 0 {name=l1 lab=VDD}
C {gnd.sym} -40 -60 0 0 {name=l2 lab=GND}
C {vsource.sym} -200 80 0 0 {name=V1 value="1.8" savecurrent=false}
C {gnd.sym} -200 140 0 0 {name=l3 lab=GND}
C {vdd.sym} -200 20 0 0 {name=l4 lab=VDD}
