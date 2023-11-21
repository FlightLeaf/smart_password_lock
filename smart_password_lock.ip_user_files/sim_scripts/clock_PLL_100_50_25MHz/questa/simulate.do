onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clock_PLL_100_50_25MHz_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {clock_PLL_100_50_25MHz.udo}

run -all

quit -force
