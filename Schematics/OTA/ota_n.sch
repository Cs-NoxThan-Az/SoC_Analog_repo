v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
C {simulator_commands_shown.sym} -90 -30 0 0 {
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
C {simulator_commands_shown.sym} -90 150 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include <filename>.save
.param temp=27
.control
op
write <filename>.raw
.endc
"}
