v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -250 370 -250 {
lab=ibias}
N 170 -300 170 -280 {
lab=ibias}
N 170 -300 230 -300 {
lab=ibias}
N 230 -300 230 -250 {
lab=ibias}
N 160 -250 170 -250 {
lab=VSS}
N 160 -250 160 -220 {
lab=VSS}
N 160 -220 170 -220 {
lab=VSS}
N 330 -370 330 -360 {
lab=Vsrc}
N 410 -360 490 -360 {
lab=Vsrc}
N 490 -370 490 -360 {
lab=Vsrc}
N 410 -360 410 -280 {
lab=Vsrc}
N 410 -400 490 -400 {
lab=VSS}
N 410 -250 420 -250 {
lab=VSS}
N 420 -250 420 -220 {
lab=VSS}
N 410 -220 420 -220 {
lab=VSS}
N 330 -610 330 -600 {
lab=VDD}
N 490 -610 490 -600 {
lab=VDD}
N 490 -570 500 -570 {
lab=VDD}
N 500 -610 500 -570 {
lab=VDD}
N 320 -570 330 -570 {
lab=VDD}
N 320 -610 320 -570 {
lab=VDD}
N 320 -610 330 -610 {
lab=VDD}
N 370 -570 450 -570 {
lab=Vas}
N 330 -540 330 -430 {
lab=Vas}
N 490 -480 490 -430 {
lab=OUT}
N 490 -480 670 -480 {
lab=OUT}
N 210 -250 230 -250 {
lab=ibias}
N 330 -360 410 -360 {
lab=Vsrc}
N 330 -400 410 -400 {
lab=VSS}
N 230 -250 330 -250 {
lab=ibias}
N 330 -610 490 -610 {
lab=VDD}
N 490 -610 500 -610 {
lab=VDD}
N 490 -540 490 -480 {
lab=OUT}
N 270 -400 290 -400 {
lab=IN_M}
N 530 -400 550 -400 {
lab=IN_P}
N 330 -510 400 -510 {
lab=Vas}
N 400 -570 400 -510 {
lab=Vas}
N 170 -420 170 -310 {
lab=ibias}
N 160 -230 170 -230 {
lab=VSS}
N 410 -320 420 -320 {
lab=Vsrc}
N 360 -400 360 -340 {
lab=VSS}
N 310 -510 330 -510 {
lab=Vas}
N 170 -310 170 -300 {
lab=ibias}
N 170 -520 170 -420 {
lab=ibias}
N 170 -220 170 -160 { lab=VSS}
N 410 -220 410 -160 { lab=VSS}
N 360 -340 360 -160 { lab=VSS}
N 170 -160 410 -160 {
lab=VSS}
C {devices/ipin.sym} -210 -570 0 0 {name=p2 lab=IN_M
}
C {devices/ipin.sym} -220 -520 0 0 {name=p1 lab=IN_P}
C {devices/ipin.sym} -220 -440 0 0 {name=p3 lab=OUT}
C {devices/ipin.sym} -220 -400 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -220 -360 0 0 {name=p5 lab=VSS
}
C {devices/ipin.sym} -210 -610 0 0 {name=p9 lab=ibias}
C {devices/lab_wire.sym} 270 -400 0 0 {name=l8 sig_type=std_logic lab=IN_M}
C {devices/lab_wire.sym} 550 -400 0 1 {name=l9 sig_type=std_logic lab=IN_P
\\
}
C {devices/lab_wire.sym} 670 -480 0 1 {name=l13 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 420 -320 0 1 {name=l15 sig_type=std_logic lab=Vsrc}
C {devices/lab_wire.sym} 310 -510 2 1 {name=l17 sig_type=std_logic lab=Vas}
C {devices/lab_wire.sym} 170 -520 0 1 {name=l18 sig_type=std_logic lab=ibias}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 310 -400 0 0 {name=M1
L=0.5
W=1
nf=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 510 -400 0 1 {name=M2
L=0.5
W=1
nf=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 350 -570 0 1 {name=M3
L=0.8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 470 -570 0 0 {name=M4
L=0.8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 -250 0 0 {name=M7
L=1
W=0.5
nf=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 190 -250 0 1 {name=M8
L=1
W=0.5
nf=1
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
C {devices/lab_wire.sym} 410 -610 0 1 {name=l25 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 260 -160 0 1 {name=l1 sig_type=std_logic lab=VSS
}
