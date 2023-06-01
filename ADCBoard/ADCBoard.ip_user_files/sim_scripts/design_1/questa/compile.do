vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_clock_converter_v1_1_26
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axis_register_slice_v1_1_25
vlib questa_lib/msim/axis_subset_converter_v1_1_25
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/axis_data_fifo_v2_0_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/fifo_generator_v13_2_6
vlib questa_lib/msim/blk_mem_gen_v8_4_5

vmap xpm questa_lib/msim/xpm
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_clock_converter_v1_1_26 questa_lib/msim/axis_clock_converter_v1_1_26
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axis_register_slice_v1_1_25 questa_lib/msim/axis_register_slice_v1_1_25
vmap axis_subset_converter_v1_1_25 questa_lib/msim/axis_subset_converter_v1_1_25
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap axis_data_fifo_v2_0_7 questa_lib/msim/axis_data_fifo_v2_0_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap fifo_generator_v13_2_6 questa_lib/msim/fifo_generator_v13_2_6
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_clock_converter_v1_1_26  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/72b4/hdl/axis_clock_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_axis_clock_converter_0_0/sim/design_1_axis_clock_converter_0_0.v" \

vlog -work axis_register_slice_v1_1_25  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d733/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdata_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tuser_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tstrb_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tkeep_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tid_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdest_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tlast_design_1_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_25  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/ba57/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/top_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/sim/design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_smplctlr_0_1/sim/design_1_smplctlr_0_1.v" \
"../../../bd/design_1/ip/design_1_regcont_0_0/sim/design_1_regcont_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0_1/sim/design_1_xlconstant_1_0_1.v" \

vlog -work axis_data_fifo_v2_0_7  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/4852/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_3/sim/design_1_axis_data_fifo_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/tdata_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/tuser_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/tstrb_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/tkeep_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/tid_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/tdest_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/tlast_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/hdl/top_design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_3/sim/design_1_axis_subset_converter_0_3.v" \
"../../../bd/design_1/ip/design_1_fifovidmix_0_0/sim/design_1_fifovidmix_0_0.v" \
"../../../bd/design_1/ip/design_1_regcont_0_1/sim/design_1_regcont_0_1.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0_0/sim/design_1_xlconstant_1_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d57c/src/ClockGen.vhd" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/design_1/ip/design_1_rgb2dvi_0_0/sim/design_1_rgb2dvi_0_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_120M_0/sim/design_1_rst_clk_wiz_0_120M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_selectio_wiz_0_0/design_1_selectio_wiz_0_0_selectio_wiz.v" \
"../../../bd/design_1/ip/design_1_selectio_wiz_0_0/design_1_selectio_wiz_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_1/util_ds_buf.vhd" \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_1/sim/design_1_util_ds_buf_0_1.vhd" \
"../../../bd/design_1/ip/design_1_util_ds_buf_1_0/sim/design_1_util_ds_buf_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_72b_18b_512w/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_72b_18b_512w/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_72b_18b_512w/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_72b_18b_512w/sim/fifo_72b_18b_512w.v" \
"../../../bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_18b_18b_512w/sim/fifo_18b_18b_512w.v" \
"../../../bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_36b_18b_512w/sim/fifo_36b_18b_512w.v" \
"../../../bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_18b_72b_512w/sim/fifo_18b_72b_512w.v" \
"../../../bd/design_1/ip/design_1_OpenHBMC_0_1/hdl/ip/fifo_18b_36b_512w/sim/fifo_18b_36b_512w.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_arst_sync.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_bit_sync.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_bus_sync.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_clk_obuf.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_ctrl.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_dfifo.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_dru.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_elastic_buf.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_iobuf.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_ufifo.v" \
"../../../bd/design_1/ipshared/306f/hdl/hbmc_axi_top.v" \
"../../../bd/design_1/ip/design_1_OpenHBMC_0_1/sim/design_1_OpenHBMC_0_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_1/sim/design_1_proc_sys_reset_0_1.vhd" \
"../../../bd/design_1/ip/design_1_util_ds_buf_adc_fclk_0/sim/design_1_util_ds_buf_adc_fclk_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_axivfifo_0_0/sim/design_1_axivfifo_0_0.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_i2c_to_spi_0_0/sim/design_1_i2c_to_spi_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_2/sim/design_1_xlconstant_0_2.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_2/sim/design_1_proc_sys_reset_0_2.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../ADCBoard.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_i2ccont_0_0/sim/design_1_i2ccont_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_3/sim/design_1_xlconstant_0_3.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_1/sim/design_1_xlconstant_1_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

