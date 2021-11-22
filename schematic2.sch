v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {code_shown.sym} 310 730 0 0 {name=s1 only_toplevel=false value=".include /home/u5552_bharadw/cloudv/sensor/repo/loopwithesd.spice
.lib /ef/tech/SW.2/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option temp=27
.tran 1n 30u
.save vctrl
.control
run 
set color0 = white
set color1 = black
plot vctrl
.endc
"
}
C {vsource.sym} 1370 390 2 0 {name=V2 value=1.8}
C {lab_pin.sym} 1370 420 3 0 {name=l1 sig_type=std_logic lab=vdd}
C {gnd.sym} 1370 360 2 0 {name=l2 lab=GND}
C {vsource.sym} 1110 410 2 0 {name=V1 value=1.8}
C {lab_pin.sym} 1110 440 3 0 {name=l3 sig_type=std_logic lab=vinit}
C {gnd.sym} 1110 380 2 0 {name=l4 lab=GND}
C {vsource.sym} 1180 310 2 0 {name=V4 value=1.8
}
C {lab_pin.sym} 1180 340 3 0 {name=l5 sig_type=std_logic lab=RESET}
C {gnd.sym} 1180 280 2 0 {name=l6 lab=GND}
C {res.sym} 700 540 0 0 {name=R11111
value=110k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 700 510 0 0 {name=l12 sig_type=std_logic lab=vbiasr}
C {gnd.sym} 700 570 0 0 {name=l11 lab=GND}
C {vsource.sym} 660 270 3 0 {name=V5 value=0}
C {lab_pin.sym} 630 270 0 0 {name=l9 sig_type=std_logic lab=z}
C {lab_pin.sym} 690 270 0 0 {name=l10 sig_type=std_logic lab=zz}
C {lab_pin.sym} 540 280 2 0 {name=l15 sig_type=std_logic lab=aa}
C {lab_pin.sym} 540 300 2 0 {name=l16 sig_type=std_logic lab=bb}
C {vsource.sym} 510 280 3 0 {name=V9 value=0}
C {vsource.sym} 510 300 3 0 {name=V10 value=0}
C {lab_pin.sym} 480 280 0 0 {name=l7 sig_type=std_logic lab=a}
C {lab_pin.sym} 480 300 0 0 {name=l8 sig_type=std_logic lab=b}
