onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RV32UI_opt

do {wave.do}

view wave
view structure
view signals

do {RV32UI.udo}

run -all

quit -force
