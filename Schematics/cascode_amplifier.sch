v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 100 -140 140 {lab=GND}
N -140 50 -120 50 {lab=GND}
N -120 50 -120 100 {lab=GND}
N -140 100 -120 100 {lab=GND}
N -140 80 -140 100 {lab=GND}
N -360 50 -180 50 {lab=vsig}
N -310 -70 -310 -10 {lab=#net1}
N -310 -70 -280 -70 {lab=#net1}
N -140 -70 -140 20 {lab=vout}
N -220 -70 -140 -70 {lab=vout}
N -140 -120 -140 -70 {lab=vout}
N -400 -200 -400 -170 {lab=GND}
N -400 -280 -400 -260 {lab=VDD}
N -140 -290 -140 -240 {lab=VDD}
N -140 -120 -0 -120 {lab=vout}
N -140 -180 -140 -120 {lab=vout}
N -0 -120 -0 -80 {lab=vout}
N 0 -20 0 -0 {lab=GND}
N -500 50 -470 50 {lab=vsig}
N -500 50 -500 60 {lab=vsig}
N -500 120 -500 140 {lab=#net2}
N -500 200 -500 220 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -160 50 0 0 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -140 140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -360 50 0 0 {name=p1 sig_type=std_logic lab=vsig}
C {vsource.sym} -310 20 0 0 {name=V1 value="DC 94m" savecurrent=false}
C {isource.sym} -140 -210 0 0 {name=I0 value=20u}
C {vsource.sym} -400 -230 0 0 {name=V2 value=1.2 savecurrent=false}
C {gnd.sym} -400 -170 0 0 {name=l2 lab=GND}
C {vdd.sym} -400 -280 0 0 {name=l3 lab=VDD}
C {vdd.sym} -140 -290 0 0 {name=l4 lab=VDD}
C {capa.sym} 0 -50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 0 0 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 0 -120 0 1 {name=p2 sig_type=std_logic lab=vout}
C {vsource.sym} -500 170 0 0 {name=V3 value="DC 0 AC 1 " savecurrent=false}
C {lab_pin.sym} -470 50 0 1 {name=p3 sig_type=std_logic lab=vsig}
C {gnd.sym} -500 220 0 0 {name=l6 lab=GND}
C {simulator_commands_shown.sym} -760 -260 0 0 {
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
C {sg13g2_pr/annotate_fet_params.sym} -90 -20 0 0 {name=annot1 ref=M1}
C {res_ac.sym} -250 -70 1 0 {name=R1
value=1
ac=1e12
m=1}
C {res_ac.sym} -500 90 0 0 {name=R2
value=1e12
ac=1
m=1}
C {devices/code_shown.sym} -1000 -160 0 0 {name=NGSPICE only_toplevel=true 
value="
.options savecurrents
.include cascode_amplifier.save
.param temp=27
.control 
save all
op
write cascode_amplifier.raw
set appendwrite
.endc
"}
