onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_1 -L xpm -L axis_infrastructure_v1_1_0 -L axis_clock_converter_v1_1_26 -L xil_defaultlib -L axis_register_slice_v1_1_25 -L axis_subset_converter_v1_1_25 -L xlconstant_v1_1_7 -L axis_data_fifo_v2_0_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L fifo_generator_v13_2_6 -L blk_mem_gen_v8_4_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
