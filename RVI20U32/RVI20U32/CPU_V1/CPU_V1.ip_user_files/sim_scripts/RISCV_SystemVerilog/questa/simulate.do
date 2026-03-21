onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RISCV_SystemVerilog_opt

do {wave.do}

view wave
view structure
view signals

do {RISCV_SystemVerilog.udo}

run -all

quit -force
