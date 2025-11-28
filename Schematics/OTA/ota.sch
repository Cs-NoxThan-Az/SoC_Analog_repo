v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1240 180 1240 260 {lab=vout}
N 980 290 1200 290 {lab=#net1}
N 920 240 920 260 {lab=#net1}
N 920 240 980 240 {lab=#net1}
N 920 110 920 240 {lab=#net1}
N 980 240 980 290 {lab=#net1}
N 960 290 980 290 {lab=#net1}
N 920 320 920 380 {lab=GND}
N 1080 380 1240 380 {lab=GND}
N 1240 320 1240 380 {lab=GND}
N 920 0 920 50 {lab=#net2}
N 1080 -0 1240 -0 {lab=#net2}
N 1240 -0 1240 50 {lab=#net2}
N 1080 80 1240 80 {lab=VDD}
N 1080 -40 1080 -0 {lab=#net2}
N 920 -0 1080 -0 {lab=#net2}
N 1080 -140 1080 -100 {lab=VDD}
N 1080 -70 1100 -70 {lab=VDD}
N 1100 -140 1100 -70 {lab=VDD}
N 1080 -140 1100 -140 {lab=VDD}
N 600 -70 1040 -70 {lab=#net3}
N 800 -140 1080 -140 {lab=VDD}
N 540 -140 540 -100 {lab=VDD}
N 540 -20 540 60 {lab=#net3}
N 540 -20 600 -20 {lab=#net3}
N 540 -40 540 -20 {lab=#net3}
N 600 -70 600 -20 {lab=#net3}
N 580 -70 600 -70 {lab=#net3}
N 540 120 540 160 {lab=GND}
N 1080 380 1080 420 {lab=GND}
N 920 380 1080 380 {lab=GND}
N 910 290 920 290 {lab=GND}
N 910 290 910 380 {lab=GND}
N 910 380 920 380 {lab=GND}
N 1240 290 1250 290 {lab=GND}
N 1250 290 1250 380 {lab=GND}
N 1240 380 1250 380 {lab=GND}
N 1280 80 1320 80 {lab=vinp}
N 1240 180 1390 180 {lab=vout}
N 1240 110 1240 180 {lab=vout}
N 800 -170 800 -140 {lab=VDD}
N 540 -140 800 -140 {lab=VDD}
N 1080 60 1080 80 {lab=VDD}
N 920 80 1080 80 {lab=VDD}
N 400 270 400 320 {lab=VDD}
N 400 380 400 420 {lab=GND}
N 530 -70 540 -70 {lab=VDD}
N 530 -140 530 -70 {lab=VDD}
N 530 -140 540 -140 {lab=VDD}
N 660 680 660 720 {lab=GND}
N 760 680 760 720 {lab=GND}
N 660 560 660 620 {lab=Vdiff}
N 760 560 760 620 {lab=Vcm}
N 1320 30 1320 80 {lab=vinp}
N 1320 -80 1320 -30 {lab=GND}
N 800 80 800 130 {lab=vinn}
N 800 80 880 80 {lab=vinn}
N 800 190 800 230 {lab=GND}
N 1340 240 1340 290 {lab=GND}
C {simulator_commands_shown.sym} 1510 -120 0 0 {
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
C {simulator_commands_shown.sym} -240 -270 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include ota.save
.param temp=27
.control
save all
op

*===  DIFF AC ====

alter V2 AC 1
alter V3 AC 0
ac dec 10 1 10e9


*===  CM AC ====

alter V2 AC 0
alter V3 AC 1
ac dec 10 1 10e9

set units=degrees
let vod = ac1.v(vout)
let vocm = ac2.v(vout)


plot vdb(vod) 
plot vdb(vocm)
plot ph(vod)-180
plot ph(vocm)

let CMRR = vdb(vod) - vdb(vocm)

plot CMRR


meas ac Av_Diff_db find vdb(vod) at = 1 
meas ac Av_Diff_mag find vmag(vod) at = 1 

let A3db = Av_diff_mag / sqrt(2)
meas ac BW_diff when vmag(vod)=A3db fall=1
meas ac UGF when vmag(vod)=1 fall=1
meas ac PH_UGF find vp(vod) at=UGF 
let GBW = Av_diff_mag* BW_diff
let PM = 180+ PH_UGF

meas ac Av_CM_db find vdb(vocm) at=1 
meas ac Av_CM_mag find vmag(vocm) at=1
let A3db = Av_CM_mag / sqrt(2)
meas ac BW_CM when vmag(vocm)=A3db fall=1

let CMRR_db = Av_diff_db - Av_CM_db


echo \\" ===== AC Results ==== \\"
echo \\" Av_diff : $&Av_diff_db db , BW : $&BW_diff Hz\\"
echo \\" UGF : $&UGF Hz \\"
echo \\" GBW : $&GBW Hz \\"
echo \\" PM : $&PM deg \\"
echo \\" Av_CM : $&Av_CM_db  db \\"
echo \\" CMRR : $&CMRR_db db \\"
write ota.raw


.endc
"
spice_ignore=true}
C {sg13g2_pr/sg13_lv_pmos.sym} 900 80 0 0 {name=M1
l=0.5u
w=7.5u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1260 80 0 1 {name=M2
l=0.5u
w=7.5u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 940 290 0 1 {name=M3
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 290 0 0 {name=M4
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1060 -70 0 0 {name=M5
l=0.9u
w=9u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -70 0 1 {name=M6
l=0.9u
w=4.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {isource.sym} 540 90 0 0 {name=I0 value=10u}
C {gnd.sym} 540 160 0 0 {name=l1 lab=GND}
C {gnd.sym} 1080 420 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 840 80 1 0 {name=p4 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 1320 80 2 0 {name=p5 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 1390 180 2 0 {name=p3 sig_type=std_logic lab=vout}
C {vsource.sym} 400 350 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} 800 -170 0 0 {name=l3 lab=VDD}
C {vdd.sym} 1080 60 0 0 {name=l4 lab=VDD}
C {vdd.sym} 400 270 0 0 {name=l5 lab=VDD}
C {gnd.sym} 400 420 0 0 {name=l6 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} 650 -20 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 1360 0 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} 710 300 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 1360 280 0 0 {name=annot4 ref=M4}
C {sg13g2_pr/annotate_fet_params.sym} 1160 -210 0 0 {name=annot5 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 420 -210 0 0 {name=annot6 ref=M6}
C {vsource.sym} 660 650 0 0 {name=V2 value="DC 0 AC 0" savecurrent=false}
C {vsource.sym} 760 650 0 0 {name=V3 value="DC 0.6 AC 0" savecurrent=false}
C {gnd.sym} 660 720 0 0 {name=l7 lab=GND}
C {gnd.sym} 760 720 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 660 560 0 0 {name=p1 sig_type=std_logic lab=Vdiff}
C {lab_pin.sym} 760 560 0 0 {name=p2 sig_type=std_logic lab=Vcm}
C {asrc.sym} 1320 0 2 0 {name=B1 function="v=v(Vdiff)/2 + v(Vcm)"}
C {gnd.sym} 1320 -80 2 0 {name=l9 lab=GND}
C {asrc.sym} 800 160 0 0 {name=B2 function="v=-v(Vdiff)/2 + v(Vcm)"}
C {gnd.sym} 800 230 0 0 {name=l10 lab=GND}
C {capa.sym} 1340 210 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1340 290 0 0 {name=l11 lab=GND}
C {simulator_commands_shown.sym} 2350 330 0 0 {name=SimulatorNGSPICE1
simulator=ngspice
only_toplevel=false 
value="
.include ota.save
.param temp=27
.control
save all
op

*==== Diff large signal ==== *


dc V2 -1.8 1.8 10m 

let vmax = maximum(vout)
let vmin = minimum(vout)

 
echo \\" DIFF LARGE SIGN Results \\"
echo \\" vmax = $&vmax V \\"
echo \\" vmin = $&vmin V \\"


plot vout
plor deriv(vout)

write ota_large_signal.raw
.endc
"
spice_ignore=true}
C {simulator_commands_shown.sym} 1540 100 0 0 {name=SimulatorNGSPICE2
simulator=ngspice
only_toplevel=false 
value="
.include ota.save
.param temp=27
.control
save all
op



write ota.raw
.endc
"
}
