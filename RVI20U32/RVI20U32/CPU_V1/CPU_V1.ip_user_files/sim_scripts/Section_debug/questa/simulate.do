onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Section_debug_opt

do {wave.do}

view wave
view structure
view signals

do {Section_debug.udo}

run -all

quit -force
