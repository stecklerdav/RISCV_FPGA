onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RV32MI_opt

do {wave.do}

view wave
view structure
view signals

do {RV32MI.udo}

run -all

quit -force
