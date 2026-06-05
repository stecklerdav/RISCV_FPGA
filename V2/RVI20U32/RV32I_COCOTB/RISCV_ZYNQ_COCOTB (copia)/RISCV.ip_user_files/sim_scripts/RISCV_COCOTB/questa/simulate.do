onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RISCV_COCOTB_opt

do {wave.do}

view wave
view structure
view signals

do {RISCV_COCOTB.udo}

run -all

quit -force
