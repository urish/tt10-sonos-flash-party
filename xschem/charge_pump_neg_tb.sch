v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 420 -300 1220 100 {flags=graph
y1=-5.3
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=4.8817531e-05
x2=4.9739867e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ua[0]
clk"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0
hilight_wave=-1}
B 2 420 -700 1220 -300 {flags=graph
y1=-0.00012
y2=1.1e-05
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=4.8817531e-05
x2=4.9739867e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0
color="4 5"
node="i(@r2[i])
i(v1)"}
B 2 1220 -300 2020 100 {flags=graph
y1=-0.14
y2=3.4
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=4.8817531e-05
x2=4.9739867e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0
color="7 13 14"
node="clk
x1.clkinb
x1.clkina"}
B 2 1220 -700 2020 -300 {flags=graph
y1=-5.8
y2=0.67
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=4.8817531e-05
x2=4.9739867e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0
color="5 6 4"
node="x1.stage1
x1.stage2
ua[0]"}
B 2 2020 -300 2820 100 {flags=graph
y1=-0.53
y2=3.4
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=4.8817531e-05
x2=4.9739867e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0
color="7 13 14"
node="clk
x1.clka
x1.clkb"}
B 2 2020 -700 2820 -300 {flags=graph
y1=-0.015
y2=5.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=4.8817531e-05
x2=4.9739867e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0
color="4 5"
node="VC1; x1.clka x1.stage1 -
VC2; x1.clkb x1.stage2 -"}
T {Model Tiny Tapeout analog parasitics} 60 -30 0 0 0.3 0.3 {}
N -110 -60 -80 -60 {
lab=GND}
N -80 -60 -80 -50 {
lab=GND}
N 110 -90 150 -90 {
lab=ua[0]}
N 130 -90 130 -80 {
lab=ua[0]}
N 210 -90 250 -90 {
lab=analog_pad}
N 230 -90 230 -80 {
lab=analog_pad}
N -110 -270 -80 -270 {
lab=VAPWR}
N -110 -250 -110 -120 {
lab=CLK}
N -110 -250 -80 -250 {
lab=CLK}
N -80 -230 -80 -210 {
lab=GND}
C {devices/code.sym} -160 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include ../../spice/charge_pump_neg_nmos/pex/charge_pump_neg_nmos.spice
*.include ../../spice/charge_pump_neg_nmos/sch/charge_pump_neg_nmos.spice
"
spice_ignore=false}
C {devices/lab_wire.sym} -110 -150 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/code.sym} -20 50 0 0 {name=STIMULI only_toplevel=false value="

.tran 10n 100u
.save all
.options savecurrents

.control
run
write charge_pump_neg_tb.raw
.endc
"}
C {devices/vsource.sym} -230 -240 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} -230 -210 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -230 -270 0 0 {name=l4 lab=VAPWR}
C {devices/launcher.sym} 480 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/charge_pump_neg_tb.raw tran"
}
C {devices/vsource.sym} -110 -90 0 1 {name=V2 value="PULSE(0 1.8 0 0 0 250n 500n)"}
C {devices/title.sym} 210 270 0 0 {name=l5 author="Uri Shaked"}
C {devices/gnd.sym} -80 -50 0 0 {name=l6 lab=GND}
C {devices/res.sym} 180 -90 3 1 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/parax_cap.sym} 130 -70 0 0 {name=C1 gnd=0 value=2.5p m=1}
C {devices/lab_pin.sym} 110 -90 0 0 {name=p4 sig_type=std_logic lab=ua[0]}
C {devices/lab_pin.sym} 250 -90 2 0 {name=p1 sig_type=std_logic lab=analog_pad}
C {devices/parax_cap.sym} 230 -70 0 0 {name=C2 gnd=0 value=2.5p m=1}
C {devices/vdd.sym} -110 -270 0 0 {name=l2 lab=VAPWR}
C {devices/gnd.sym} -80 -210 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 220 -270 2 0 {name=p5 sig_type=std_logic lab=ua[0]}
C {devices/gnd.sym} 210 -160 3 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 150 -160 0 0 {name=p3 sig_type=std_logic lab=ua[0]}
C {devices/res.sym} 180 -160 3 1 {name=R2
value=100meg
footprint=1206
device=resistor
m=1}
C {charge_pump_neg_nmos.sym} 70 -250 0 0 {name=x1}
