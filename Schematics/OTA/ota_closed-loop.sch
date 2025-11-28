v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 170 -50 190 {lab=GND}
N -50 60 -50 90 {lab=#net1}
N -100 80 -100 170 {lab=GND}
N -100 170 -50 170 {lab=GND}
N -50 150 -50 170 {lab=GND}
N 50 -250 50 -200 {lab=VDD}
N 50 -140 50 -100 {lab=GND}
N 210 0 260 0 {lab=vout}
N -440 -50 -440 10 {lab=#net2}
N -440 70 -440 140 {lab=#net3}
N -440 200 -440 240 {lab=GND}
N 210 0 210 30 {lab=vout}
N 210 90 210 180 {lab=GND}
N -260 30 -170 30 {lab=#net4}
N -440 -50 -170 -50 {lab=#net2}
N -260 30 -260 230 {lab=#net4}
N 60 0 210 0 {lab=vout}
N -260 290 -260 310 {lab=GND}
C {/foss/designs/ADT_Designs/OTA/ota_sym.sym} -50 0 0 0 {name=x1}
C {isource.sym} -50 120 0 0 {name=I0 value=10u}
C {gnd.sym} -50 190 0 0 {name=l1 lab=GND}
C {vsource.sym} 50 -170 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} 50 -250 0 0 {name=l5 lab=VDD}
C {gnd.sym} 50 -100 0 0 {name=l6 lab=GND}
C {vdd.sym} -110 -100 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} 260 0 2 0 {name=p1 sig_type=std_logic lab=vout}
C {vsource.sym} -440 40 0 0 {name=V2 value="DC 0 AC 0" savecurrent=false}
C {vsource.sym} -440 170 0 0 {name=V3 value=0.6 savecurrent=false}
C {gnd.sym} -440 240 0 0 {name=l3 lab=GND}
C {capa.sym} 210 60 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 210 180 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} -760 -230 0 0 {
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
C {simulator_commands_shown.sym} -830 -20 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include ota_closed-loop.save

.control
save all
op
write ota_closed-loop.raw

.endc
"
}
C {vsource.sym} -260 260 0 0 {name=V4 value=0.6 savecurrent=false}
C {gnd.sym} -260 310 0 0 {name=l7 lab=GND}
