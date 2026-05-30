onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RV32_IF_EX_opt

do {wave.do}

view wave
view structure
view signals

do {RV32_IF_EX.udo}

run -all

quit -force
