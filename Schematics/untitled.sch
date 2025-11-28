v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -685 -45 -685 -15 {
lab=vp}
N -450 -45 -450 -15 {
lab=vdd}
N -450 60 -450 65 {
lab=GND}
N -575 65 -450 65 {
lab=GND}
N -575 65 -575 85 {
lab=GND}
N -685 65 -575 65 {
lab=GND}
N -685 45 -685 65 {
lab=GND}
N -170 40 -170 50 {
lab=GND}
N -325 -75 -305 -75 {
lab=vp}
N 15 25 15 40 {
lab=GND}
N -5 -35 105 -35 {
lab=vout1}
N -245 50 -245 85 {
lab=#net1}
N -245 145 -245 160 {
lab=GND}
N -5 -35 0 -30 {lab=vout1}
N -10 -40 -5 -35 {lab=vout1}
N -170 -100 -160 -90 {lab=vdd}
N -170 -115 -170 -100 {
lab=vdd}
N -305 -75 -300 -70 {lab=vp}
N -310 -80 -305 -75 {lab=vp}
N -240 50 -240 60 {lab=#net1}
N -250 50 -240 60 {lab=#net1}
N -245 50 -240 50 {lab=#net1}
N -250 50 -245 50 {lab=#net1}
N -170 30 -160 40 {lab=GND}
N -170 40 -160 40 {lab=GND}
N -170 30 -170 40 {
lab=GND}
N -170 -90 -160 -90 {lab=vdd}
N -170 -100 -170 -90 {lab=vdd}
N -300 200 -20 200 {lab=vout1}
N -20 -40 -20 200 {lab=vout1}
N -20 -40 -10 -40 {lab=vout1}
N -480 100 -450 60 {lab=GND}
N -450 45 -450 60 {
lab=GND}
N -480 160 -480 180 {lab=#net2}
N -480 180 -410 170 {lab=#net2}
N -410 100 -410 170 {lab=#net2}
N -410 100 -390 100 {lab=#net2}
N -410 100 -340 20 {lab=#net2}
N -340 20 -300 10 {lab=#net2}
N -330 100 -300 100 {lab=vout1}
N -300 100 -300 200 {lab=vout1}
N -300 10 -300 20 {lab=#net2}
C {vsource.sym} -685 15 0 0 {name=V1 value="DC 1.2 "
}
C {vsource.sym} -450 15 0 0 {name=VDD value="DC 1.8"}
C {lab_pin.sym} -450 -45 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -685 -45 0 0 {name=p3 sig_type=std_logic lab=vp}
C {gnd.sym} -170 50 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -170 -115 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -325 -75 0 0 {name=p10 sig_type=std_logic lab=vp}
C {isource.sym} -245 115 0 0 {name=I1 value=80u}
C {gnd.sym} -245 160 0 0 {name=l9 lab=GND}
C {capa.sym} 15 -5 0 0 {name=Cload1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 15 40 0 0 {name=l10 lab=GND}
C {iopin.sym} 105 -35 0 0 {name=p12 lab=vout1}
C {/foss/designs/IHP-AnalogAcademy/modules/module_1_bandgap_reference/part_1_OTA/schematic/two_stage_OTA.sym} -150 -30 0 0 {name=x3}
C {devices/code_shown.sym} -775 -210 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -245 -480 0 0 {name=NGSPICE only_toplevel=false 
value="
.control
op
save all
tran 1n 10u
plot vout1
.endc


"}
C {res.sym} -480 130 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -360 100 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -575 85 0 0 {name=l2 lab=GND}
