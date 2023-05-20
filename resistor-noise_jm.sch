v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1550 -430 1550 -370 {
lab=GND}
N 1300 -550 1400 -550 {
lab=vin}
N 1460 -550 1550 -550 {
lab=vout}
N 1550 -550 1550 -490 {
lab=vout}
C {devices/code_shown.sym} 470 -650 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option wnflag = 1 scale=1e-6

vin vin 0 dc=0 ac=0

.control
save all


noise v(vout) vin dec 100 1 100MEG

setplot noise1
plot onoise_spectrum

setplot noise2
print onoise_total

.endc
" }
C {devices/iopin.sym} 1300 -550 0 1 {name=p2 lab=vin}
C {devices/gnd.sym} 1550 -370 0 0 {name=l3 lab=GND}
C {devices/res.sym} 1430 -550 1 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1550 -460 2 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 1550 -550 0 0 {name=p1 lab=vout}
