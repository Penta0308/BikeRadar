onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xlconcat_v2_1_4 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_8 -L axis_register_slice_v1_1_26 -L axis_subset_converter_v1_1_26 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L fir_compiler_v7_2_18 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_7 -L lib_fifo_v1_0_16 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_28 -L axi_sg_v4_1_15 -L axi_dma_v7_1_27 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_26 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L cmpy_v6_0_21 -L floating_point_v7_0_20 -L xfft_v9_1_8 -L xlconstant_v1_1_7 -L gigantic_mux -L axi_protocol_converter_v2_1_26 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.bajie7020 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bajie7020.udo}

run -all

quit -force