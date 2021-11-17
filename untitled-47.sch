v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -260 -660 -10 -660 { lab=#net1}
N -260 -660 -260 -430 { lab=#net1}
N -260 -430 -240 -430 { lab=#net1}
N -10 -520 -10 -350 { lab=#net2}
N -240 -350 -10 -350 { lab=#net2}
N -240 -410 -240 -350 { lab=#net2}
N 30 -600 50 -600 { lab=#net3}
N 30 -600 30 -460 { lab=#net3}
N 30 -460 60 -460 { lab=#net3}
N 60 -460 60 -430 { lab=#net3}
N 50 -580 50 -490 { lab=#net4}
N 50 -490 100 -480 { lab=#net4}
N 100 -480 100 -410 { lab=#net4}
N 60 -410 100 -410 { lab=#net4}
C {code_shown.sym} -120 -150 0 0 {name=s1 only_toplevel=false value=".include ~/test/a2.spice
.include ~/test/wb_flat.spice

.lib ~/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option temp=27
.tran 0.1n 500u 
.save vctrl fvco
.control
run 
set color0 = white
set color1 = black
plot vctrl
.endc
"
}
C {vsource.sym} 940 -490 2 0 {name=V2 value=1.8}
C {lab_pin.sym} 940 -460 3 0 {name=l1 sig_type=std_logic lab=vdd}
C {gnd.sym} 940 -520 2 0 {name=l2 lab=GND}
C {vsource.sym} 680 -470 2 0 {name=V1 value="pulse(1.8 0 1.8 1n 1n 0.2u)"}
C {lab_pin.sym} 680 -440 3 0 {name=l3 sig_type=std_logic lab=vinit}
C {gnd.sym} 680 -500 2 0 {name=l4 lab=GND}
C {vsource.sym} 750 -570 2 0 {name=V4 value=1.8
}
C {lab_pin.sym} 750 -540 3 0 {name=l5 sig_type=std_logic lab=RESET}
C {gnd.sym} 750 -600 2 0 {name=l6 lab=GND}
C {res.sym} 270 -340 0 0 {name=R11111
value=110k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 270 -370 0 0 {name=l12 sig_type=std_logic lab=vbiasr}
C {gnd.sym} 270 -310 0 0 {name=l11 lab=GND}
C {vsource.sym} 230 -610 3 0 {name=V5 value=0}
C {lab_pin.sym} 200 -610 0 0 {name=l9 sig_type=std_logic lab=z}
C {lab_pin.sym} 260 -610 0 0 {name=l10 sig_type=std_logic lab=zz}
C {lab_pin.sym} 110 -600 2 0 {name=l15 sig_type=std_logic lab=aa}
C {lab_pin.sym} 110 -580 2 0 {name=l16 sig_type=std_logic lab=bb}
C {lab_pin.sym} -10 -600 0 0 {name=l17 sig_type=std_logic lab=clk_by_4_IPH}
C {lab_pin.sym} -10 -580 0 0 {name=l18 sig_type=std_logic lab=clk_by_4_IPH_bar}
C {vsource.sym} -10 -630 2 0 {name=V7 value=0}
C {vsource.sym} -10 -550 0 0 {name=V8 value=0}
C {vsource.sym} 80 -600 3 0 {name=V9 value=0}
C {vsource.sym} 80 -580 3 0 {name=V10 value=0}
C {/home/harikailash/test/wb.sym} -90 -420 0 0 {name=x1}
