v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {code_shown.sym} -110 230 0 0 {name=s1 only_toplevel=false value=".include /home/u5552_bharadw/cloudv/sensor/repo/try1.spice
 .lib /ef/tech/SW.2/sky130A/libs.tech/ngspice/sky130.lib.spice fs


.option trtol=1
.option chgtol=1e-16
.option temp=85
.tran 1n 500u 
.save vctrl vout
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
C {vsource.sym} 950 -110 2 0 {name=V2 value=1.8}
C {lab_pin.sym} 950 -80 3 0 {name=l1 sig_type=std_logic lab=vdd}
C {gnd.sym} 950 -140 2 0 {name=l2 lab=GND}
C {vsource.sym} 690 -90 2 0 {name=V1 value="pulse(1.8 0 1.8 1n 1n 0.2u)"}
C {lab_pin.sym} 690 -60 3 0 {name=l3 sig_type=std_logic lab=vinit}
C {gnd.sym} 690 -120 2 0 {name=l4 lab=GND}
C {vsource.sym} 760 -190 2 0 {name=V4 value=1.8
}
C {lab_pin.sym} 760 -160 3 0 {name=l5 sig_type=std_logic lab=reset}
C {gnd.sym} 760 -220 2 0 {name=l6 lab=GND}
C {res.sym} 280 40 0 0 {name=R11111
value=110k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 280 10 0 0 {name=l12 sig_type=std_logic lab=vbiasr}
C {gnd.sym} 280 70 0 0 {name=l11 lab=GND}
C {lab_pin.sym} -40 -280 2 0 {name=l13 sig_type=std_logic lab=aa}
C {lab_pin.sym} -40 -260 2 0 {name=l14 sig_type=std_logic lab=bb}
C {vsource.sym} -70 -280 3 0 {name=V3 value=0}
C {vsource.sym} -70 -260 3 0 {name=V6 value=0}
C {lab_pin.sym} -100 -280 0 0 {name=l7 sig_type=std_logic lab=a}
C {lab_pin.sym} -100 -260 0 0 {name=l8 sig_type=std_logic lab=b}
