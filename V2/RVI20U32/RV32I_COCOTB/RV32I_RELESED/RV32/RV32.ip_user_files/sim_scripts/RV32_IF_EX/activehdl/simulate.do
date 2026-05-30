onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RV32_IF_EX -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RV32_IF_EX xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RV32_IF_EX.udo}

run -all

endsim

quit -force
