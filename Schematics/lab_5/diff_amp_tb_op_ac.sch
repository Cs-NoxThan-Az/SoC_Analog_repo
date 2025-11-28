v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 150 340 950 740 {flags=graph
y1=-1.5
y2=1.1
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
dataset=-1
unitx=1
logx=1
logy=1
color=10
node=vod}
B 2 1010 340 1810 740 {flags=graph
y1=-1.8
y2=-1.5
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
dataset=-1
unitx=1
logx=1
logy=1
color=10
node=vocm}
B 2 150 760 950 1160 {flags=graph
y1=-35
y2=-34
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
dataset=-1
unitx=1
logx=1
logy=1
color=10
node="ph(vod) cph()"}
B 2 1010 770 1810 1170 {flags=graph
y1=-35
y2=2.3
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
dataset=-1
unitx=1
logx=1
logy=1
color=10
node=ph(vocm)}
N -120 50 -120 80 {lab=VDD}
N -120 140 -120 180 {lab=GND}
N 660 -80 660 -60 {lab=VDD}
N 660 80 680 80 {lab=GND}
N 10 140 10 180 {lab=GND}
N 110 140 110 180 {lab=GND}
N 10 20 10 80 {lab=Vdiff}
N 110 20 110 80 {lab=Vcm}
N 240 100 250 100 {lab=GND}
N 250 80 250 100 {lab=GND}
N 340 190 360 190 {lab=GND}
N 360 170 360 190 {lab=GND}
N 250 -30 580 -30 {lab=Vinp}
N 250 -30 250 20 {lab=Vinp}
N 360 50 360 110 {lab=Vinn}
N 360 50 580 50 {lab=Vinn}
N 620 100 620 130 {lab=#net1}
N 600 220 620 220 {lab=GND}
N 620 190 620 220 {lab=GND}
N 740 -10 820 -10 {lab=Voutp}
N 740 30 820 30 {lab=Voutn}
N 780 90 780 100 {lab=GND}
N 780 -90 780 -70 {lab=GND}
N 960 150 960 180 {lab=GND}
N 960 40 960 90 {lab=Vod}
N 1150 150 1150 180 {lab=GND}
N 1150 40 1150 90 {lab=Vocm}
C {/foss/designs/ADT_Designs/lab_5/diff_amp.sym} 680 10 0 0 {name=x1}
C {simulator_commands_shown.sym} -510 -210 0 0 {
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
C {simulator_commands_shown.sym} -680 -30 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include diff_amp_tb_op_ac.save
.param temp=27
.control
save all
op
write diff_amp_tb_op_ac.raw
set appendwrite 


*===  DIFF AC ====

alter V2 AC 1
alter V3 AC 0
ac dec 10 1 10e9


*===  CM AC ====

alter V2 AC 0
alter V3 AC 1
ac dec 10 1 10e9


*===  results ====
set units=degrees 
let vod= ac1.v(Vod)
let vocm= ac2.v(Vocm)

let CMRR = vdb(Vod) - vdb(Vocm)


meas ac Av_diff_db find vdb(vod) at=1
meas ac Av_diff_mag find vmag(vod) at=1

let A3db = Av_diff_mag / sqrt(2)

meas ac BW_diff when vmag(vod)=A3db fall=1 



meas ac Av_cm_db find vdb(vocm) at=1
meas ac Av_cm_mag find vmag(vocm) at=1
let A3db = Av_cm_mag / sqrt(2)
meas ac BW_cm when vmag(vocm)=A3db fall=1



let CMRR_db = Av_diff_db - Av_cm_db


*===== display ===


echo \\"==== AC Results ====   \\"

echo \\" Av diff  : $&Av_diff_db  db , BW :  $&BW_diff Hz \\"
echo \\" Av cm  : $&Av_cm_db  db , BW :  $&BW_cm Hz \\"



write diff_amp_tb_op_ac.raw

.endc
"}
C {asrc.sym} 250 50 0 0 {name=B1 function="v=v(Vdiff)/2 + v(Vcm)"}
C {asrc.sym} 360 140 0 0 {name=B2 function="v=-v(Vdiff)/2 + v(Vcm)"}
C {vsource.sym} -120 110 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 10 110 0 0 {name=V2 value="DC 0 AC 0" savecurrent=false}
C {vsource.sym} 110 110 0 0 {name=V3 value="DC 0.75 AC 0" savecurrent=false}
C {vdd.sym} 660 -80 0 0 {name=l3 lab=VDD}
C {vdd.sym} -120 50 0 0 {name=l4 lab=VDD}
C {gnd.sym} 680 80 0 0 {name=l5 lab=GND}
C {gnd.sym} -120 180 0 0 {name=l6 lab=GND}
C {gnd.sym} 10 180 0 0 {name=l7 lab=GND}
C {gnd.sym} 110 180 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 10 20 0 0 {name=p1 sig_type=std_logic lab=Vdiff}
C {lab_pin.sym} 110 20 0 0 {name=p2 sig_type=std_logic lab=Vcm}
C {gnd.sym} 243.5760309278351 100 0 0 {name=l9 lab=GND}
C {gnd.sym} 343.5760309278351 190 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 450 -30 1 0 {name=p3 sig_type=std_logic lab=Vinp}
C {lab_pin.sym} 510 50 1 0 {name=p4 sig_type=std_logic lab=Vinn}
C {isource.sym} 620 160 0 0 {name=I0 value=20u}
C {gnd.sym} 603.5760309278351 220 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 820 -10 2 0 {name=p5 sig_type=std_logic lab=Voutp}
C {lab_pin.sym} 820 30 2 0 {name=p6 sig_type=std_logic lab=Voutn}
C {capa.sym} 780 -40 2 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 780 60 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 780 100 0 0 {name=l12 lab=GND}
C {gnd.sym} 780 -90 2 0 {name=l13 lab=GND}
C {asrc.sym} 960 120 0 0 {name=B3 function="v=v(Voutp) - v(Voutn)"}
C {asrc.sym} 1150 120 0 0 {name=B4 function="v=(v(Voutp) + v(Voutn))/2"}
C {gnd.sym} 960 180 0 0 {name=l1 lab=GND}
C {gnd.sym} 1150 180 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 960 40 2 0 {name=p7 sig_type=std_logic lab=Vod}
C {lab_pin.sym} 1150 40 2 0 {name=p8 sig_type=std_logic lab=Vocm}
