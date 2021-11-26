v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {code_shown.sym} -110 230 0 0 {name=s1 only_toplevel=false value=".include /home/u5552_bharadw/cloudv/sensor/repo/a.spice
 .lib /ef/tech/SW.2/sky130A/libs.tech/ngspice/sky130.lib.spice tt


.option trtol=1
.option chgtol=1e-16
.option temp=85
.tran 1n 500u 
.save all
.control
run 
meas tran vc find v(vctrl) at=495u
meas tran vc find v(vctrl) at=395u
meas tran vc find v(vctrl) at=490u


set color0 = white
set color1 = black
plot vctrl
.endc
"
}
C {vsource.sym} 690 -90 2 0 {name=V1 value=1.8}
C {lab_pin.sym} 690 -60 3 0 {name=l3 sig_type=std_logic lab=vinit}
C {gnd.sym} 690 -120 2 0 {name=l4 lab=GND}
C {res.sym} 280 40 0 0 {name=R11111
value=110k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 280 10 0 0 {name=l12 sig_type=std_logic lab=vbiasr}
C {gnd.sym} 280 70 0 0 {name=l11 lab=GND}
C {vsource.sym} 840 -180 2 0 {name=V5 value=1.8}
C {gnd.sym} 840 -210 2 0 {name=l10 lab=GND}
C {lab_pin.sym} 840 -150 3 0 {name=l9 sig_type=std_logic lab=reset}
C {lab_pin.sym} 360 -180 3 0 {name=l5 sig_type=std_logic lab=vdd}
C {gnd.sym} 360 -240 2 0 {name=l6 lab=GND}
C {vsource.sym} 360 -210 2 0 {name=V2 value=1.8}
