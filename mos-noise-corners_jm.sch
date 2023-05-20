v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1090 -360 1140 -360 {
lab=g1}
N 1180 -290 1180 -230 {
lab=GND}
N 1180 -360 1260 -360 {
lab=GND}
N 1260 -360 1260 -290 {
lab=GND}
N 1180 -290 1260 -290 {
lab=GND}
N 1180 -530 1180 -400 {
lab=d1}
N 1180 -530 1330 -530 {
lab=d1}
N 1180 -330 1180 -290 {
lab=GND}
N 1180 -400 1180 -390 {
lab=d1}
C {devices/code_shown.sym} 470 -650 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option wnflag = 1 scale=1e-6

vgs g1 0 dc=0.9 ac=1
vds d1 0 dc=0.9
hout io 0 vds 1

.control
save all

set sqrnoise
noise v(io) vgs dec 100 1 100G

setplot noise1
plot 10*log10(onoise_spectrum)

setplot noise2
print onoise_total

.endc
" }
C {devices/ipin.sym} 1090 -360 0 0 {name=p1 lab=g1}
C {devices/iopin.sym} 1330 -530 0 0 {name=p2 lab=d1}
C {devices/gnd.sym} 1180 -230 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1160 -360 0 0 {name=M1
L=0.3
W=10
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
