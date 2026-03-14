onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Sections_opt

do {wave.do}

view wave
view structure
view signals

do {Sections.udo}

run -all

quit -force
