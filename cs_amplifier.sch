v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -50 220 -20 {lab=VOUT}
N -170 -60 -170 -30 { lab=VIN}
N 220 10 220 40 {lab=GND}
N 220 -20 360 -20 {lab=VOUT}
N 70 10 180 10 {lab=VIN}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 200 10 0 0 {name=M9
L=1
W=30
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 220 -110 1 0 {name=l22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 10 0 0 {name=l1 sig_type=std_logic lab=VIN}
C {gnd.sym} 220 40 0 0 {name=l2 lab=GND}
C {vsource.sym} -90 -80 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -90 -50 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -90 -110 2 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -170 30 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -170 0 0 0 {name=V2 value="0.7 AC 0.002 SINE(0.7 0.002 1G)" only_toplevel=true}
C {devices/lab_pin.sym} -170 -60 2 0 {name=l5 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} -280 140 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
* 1. Run the simulations
op
tran 10p 5n

* 2. Switch the active data to the transient results
* 'tran1' is the default name for the first transient simulation run
setplot tran1

* 3. Plot the waveforms
plot v(vin) v(vout)

write q2_waveform.raw
.endc"}
C {sky130_fd_pr/corner.sym} -430 120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {iopin.sym} 360 -20 0 0 {name=p1 lab=VOUT
}
C {devices/res.sym} 220 -80 0 0 {name=R1
value=1K
device=resistor
m=1}
