onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Debug_2_opt

do {wave.do}

view wave
view structure
view signals

do {Debug_2.udo}

run -all

quit -force
