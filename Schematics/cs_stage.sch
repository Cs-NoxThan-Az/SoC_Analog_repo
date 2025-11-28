v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 950 110 950 120 {lab=Vout}
N 90 120 90 190 {lab=vdd}
N 90 250 90 280 {lab=GND}
N 950 110 1080 110 {lab=Vout}
N 950 90 950 110 {lab=Vout}
N 950 150 970 150 {lab=GND}
N 950 200 950 270 {lab=GND}
N 950 200 970 200 {lab=GND}
N 950 180 950 200 {lab=GND}
N 340 190 340 230 {lab=GND}
N 340 80 340 120 {lab=#net1}
N 340 80 410 80 {lab=#net1}
N 410 80 410 150 {lab=#net1}
N 380 150 410 150 {lab=#net1}
N 320 150 340 150 {lab=GND}
N 320 150 320 190 {lab=GND}
N 320 190 340 190 {lab=GND}
N 340 180 340 190 {lab=GND}
N 340 -80 340 -50 {lab=vdd}
N 340 10 340 80 {lab=#net1}
N 970 150 970 200 {lab=GND}
N 950 -20 950 30 {lab=vdd}
N 410 150 460 150 {lab=#net1}
N 580 150 580 210 {lab=#net2}
N 520 150 580 150 {lab=#net2}
N 580 270 580 300 {lab=#net3}
N 580 360 580 380 {lab=GND}
N 580 150 910 150 {lab=#net2}
C {simulator_commands_shown.sym} -320 -40 0 0 {
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
C {vsource.sym} 90 220 0 0 {name=V1 value=1.8 savecurrent=false}
C {res.sym} 950 60 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 90 280 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 950 -20 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {gnd.sym} 950 270 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 90 120 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {opin.sym} 1070 110 0 0 {name=p5 lab=Vout}
C {gnd.sym} 340 230 0 0 {name=l3 lab=GND}
C {isource.sym} 340 -20 0 0 {name=I0 value=10u}
C {lab_pin.sym} 340 -80 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_hv_nmos.sym} 360 150 0 1 {name=M4
l=2u
w=2.8u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {res_ac.sym} 490 150 1 0 {name=R7
value=1
ac=1e12
m=1}
C {res_ac.sym} 580 240 2 0 {name=R8
value=1e12
ac=1
m=1}
C {vsource.sym} 580 330 0 0 {name=V2 value="DC 0 AC 1" savecurrent=false}
C {gnd.sym} 580 380 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 150 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} 200 -380 0 0 {name=NGSPICE only_toplevel=true 
value="

.control
save all
op
write cs_stage.raw
ac dec 10 1 10g
.endc
"}
