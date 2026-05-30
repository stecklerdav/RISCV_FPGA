onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RV32_IF_ID_opt

do {wave.do}

view wave
view structure
view signals

do {RV32_IF_ID.udo}

run -all

quit -force
