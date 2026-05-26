onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BASIC -L xil_defaultlib -L xlconstant_v1_1_7 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BASIC xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BASIC.udo}

run -all

endsim

quit -force
