onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RISCV_opt

do {wave.do}

view wave
view structure
view signals

do {RISCV.udo}

run -all

quit -force
