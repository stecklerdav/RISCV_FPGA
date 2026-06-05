onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RISCV_COCOTB -L xilinx_vip -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RISCV_COCOTB xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RISCV_COCOTB.udo}

run -all

endsim

quit -force
