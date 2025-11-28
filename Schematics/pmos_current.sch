v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -70 -30 {}
N -120 30 -100 30 {lab=#net1}
N -100 40 -100 90 {lab=#net1}
N -160 90 -100 90 {lab=#net1}
N -100 40 60 40 {lab=#net1}
N -100 30 -100 40 {lab=#net1}
N -160 -10 -160 0 {lab=vdd}
N -160 -70 100 -70 {lab=vdd}
N 100 -0 100 10 {lab=vdd}
N -180 30 -160 30 {lab=vdd}
N 100 70 100 110 {lab=#net2}
N -160 60 -160 90 {lab=#net1}
N -330 20 -330 60 {lab=GND}
N -330 -60 -330 -40 {lab=vdd}
N 310 230 310 270 {lab=GND}
N 310 150 310 170 {lab=vout}
N -160 150 -160 170 {lab=#net3}
N -160 230 -160 240 {lab=GND}
N 100 170 100 200 {lab=vout}
N -180 -10 -180 30 {lab=vdd}
N -180 -10 -160 -10 {lab=vdd}
N -160 -70 -160 -10 {lab=vdd}
N 100 40 110 40 {lab=vdd}
N 110 0 110 40 {lab=vdd}
N 100 -0 110 0 {lab=vdd}
N 100 -70 100 -0 {lab=vdd}
C {lab_pin.sym} -160 -70 0 0 {name=p4 sig_type=std_logic lab=vdd
}
C {isource.sym} -160 120 0 0 {name=I0 value=100u}
C {gnd.sym} -160 240 0 0 {name=l1 lab=GND}
C {vsource.sym} -330 -10 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -330 60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -330 -60 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {vsource.sym} 310 200 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 310 270 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 310 150 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_pin.sym} 100 200 0 0 {name=p2 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} 200 -60 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.control
save all 
op
dc V3 0 3.3 0.001
plot i(vmeas) i(vmeas1)

.endc
"
}
C {simulator_commands_shown.sym} 450 -80 0 0 {
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
C {simulator_commands_shown.sym} 430 120 0 0 {name=SimulatorNGSPICE1
simulator=ngspice
only_toplevel=false 
value="
.control
save all 
op
tran 1n 10u
plot i(vmeas)
.endc
"
spice_ignore=true}
C {ammeter.sym} -160 200 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 100 140 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 40 0 0 {name=M2
l=2u
w=10u
ng=1
m=10
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -140 30 0 1 {name=M1
l=2u
w=10u
ng=1
m=10
model=sg13_lv_pmos
spiceprefix=X
}
