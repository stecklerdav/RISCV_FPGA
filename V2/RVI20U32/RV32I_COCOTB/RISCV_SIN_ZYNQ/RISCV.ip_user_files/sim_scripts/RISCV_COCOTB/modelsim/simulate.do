onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xil_defaultlib -L xlconstant_v1_1_7 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.RISCV_COCOTB xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {RISCV_COCOTB.udo}

run -all

quit -force
