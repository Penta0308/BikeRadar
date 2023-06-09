onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bajie7020_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bajie7020.udo}

run -all

quit -force
