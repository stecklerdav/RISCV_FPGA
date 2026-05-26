onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BASIC_opt

do {wave.do}

view wave
view structure
view signals

do {BASIC.udo}

run -all

quit -force
