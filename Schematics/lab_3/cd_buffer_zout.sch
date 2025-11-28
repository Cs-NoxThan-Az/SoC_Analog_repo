v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 100 -640 900 -240 {flags=graph
y1=3.3
y2=5.2
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-0.15413075
x2=9.8458693
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=vout
color=8
dataset=-1
unitx=1
logx=1
logy=1
}
B 2 100 -220 900 180 {flags=graph
y1=-89
y2=60
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-0.15413075
x2=9.8458693
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color=6
node=ph(vout)}
N -240 -130 -170 -130 {lab=vin}
N -380 -130 -380 10 {lab=GND}
N -380 -130 -300 -130 {lab=GND}
N -130 -100 -130 -50 {lab=GND}
N -130 -170 -130 -160 {lab=vout}
N -130 -370 -130 -330 {lab=VDD}
N -380 -360 -380 -330 {lab=VDD}
N -380 -270 -380 -250 {lab=GND}
N -20 -210 30 -210 {lab=vout}
N -130 -270 -130 -210 {lab=vout}
N -130 -130 -120 -130 {lab=vout}
N -120 -170 -120 -130 {lab=vout}
N -130 -170 -120 -170 {lab=vout}
N -130 -210 -130 -170 {lab=vout}
N -20 -210 -20 -190 {lab=vout}
N -130 -210 -20 -210 {lab=vout}
N -20 -130 -20 -110 {lab=GND}
C {simulator_commands_shown.sym} -690 -430 0 0 {
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
C {sg13g2_pr/sg13_hv_pmos.sym} -150 -130 0 0 {name=M1
l=0.8u
w=10u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {res.sym} -270 -130 3 0 {name=R1
value=2meg
footprint=1206
device=resistor
m=1}
C {gnd.sym} -380 10 0 0 {name=l1 lab=GND}
C {gnd.sym} -130 -50 0 0 {name=l2 lab=GND}
C {isource.sym} -130 -300 0 0 {name=I0 value=10u}
C {vdd.sym} -130 -370 0 0 {name=l3 lab=VDD}
C {vdd.sym} -380 -360 0 0 {name=l4 lab=VDD}
C {vsource.sym} -380 -300 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -380 -250 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 30 -210 2 0 {name=p1 sig_type=std_logic lab=vout}
C {gnd.sym} -20 -110 0 0 {name=l6 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} -210 20 0 0 {name=annot1 ref=M1}
C {simulator_commands_shown.sym} -920 -230 0 0 {name=SimulatorNGSPICE1
simulator=ngspice
only_toplevel=false 
value="
.include cd_buffer_zout.save

.control
save all

set outfile = "zout_results.txt"
ac dec 10 1 10g
write cd_buffer_zout.raw

echo \\"CD Amplifier Zout results\\" > $outfile
meas ac zout_low_freq FIND vmag(vout) AT=1k
meas ac zout_high_freq MAX vmag(vout)

echo \\"zout @ 1khz = $&zout_low_freq\\" >> $outfile 

echo \\"zout peak (max) = $&zout_high_freq\\" >> $outfile 


.endc
"
}
C {lab_pin.sym} -200 -130 1 0 {name=p3 sig_type=std_logic lab=vin}
C {isource.sym} -20 -160 2 0 {name=I1 value="DC 0 AC 1"}
