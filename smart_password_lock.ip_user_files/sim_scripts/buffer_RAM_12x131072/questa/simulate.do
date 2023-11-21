onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib buffer_RAM_12x131072_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {buffer_RAM_12x131072.udo}

run -all

quit -force
