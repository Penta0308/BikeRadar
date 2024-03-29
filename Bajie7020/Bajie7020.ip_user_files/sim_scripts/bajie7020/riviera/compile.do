vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/processing_system7_vip_v1_0_14
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlconcat_v2_1_4
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v2_0_8
vlib riviera/axis_register_slice_v1_1_26
vlib riviera/axis_subset_converter_v1_1_26
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/fir_compiler_v7_2_18
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_7
vlib riviera/lib_fifo_v1_0_16
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_28
vlib riviera/axi_sg_v4_1_15
vlib riviera/axi_dma_v7_1_27
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_26
vlib riviera/axi_data_fifo_v2_1_25
vlib riviera/axi_crossbar_v2_1_27
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14
vlib riviera/c_mux_bit_v12_0_6
vlib riviera/c_shift_ram_v12_0_14
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/cmpy_v6_0_21
vlib riviera/floating_point_v7_0_20
vlib riviera/xfft_v9_1_8
vlib riviera/xlconstant_v1_1_7
vlib riviera/gigantic_mux
vlib riviera/axi_protocol_converter_v2_1_26

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 riviera/processing_system7_vip_v1_0_14
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_8 riviera/axis_data_fifo_v2_0_8
vmap axis_register_slice_v1_1_26 riviera/axis_register_slice_v1_1_26
vmap axis_subset_converter_v1_1_26 riviera/axis_subset_converter_v1_1_26
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap fir_compiler_v7_2_18 riviera/fir_compiler_v7_2_18
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 riviera/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_28 riviera/axi_datamover_v5_1_28
vmap axi_sg_v4_1_15 riviera/axi_sg_v4_1_15
vmap axi_dma_v7_1_27 riviera/axi_dma_v7_1_27
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 riviera/axi_register_slice_v2_1_26
vmap axi_data_fifo_v2_1_25 riviera/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 riviera/axi_crossbar_v2_1_27
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14
vmap c_mux_bit_v12_0_6 riviera/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 riviera/c_shift_ram_v12_0_14
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 riviera/mult_gen_v12_0_18
vmap cmpy_v6_0_21 riviera/cmpy_v6_0_21
vmap floating_point_v7_0_20 riviera/floating_point_v7_0_20
vmap xfft_v9_1_8 riviera/xfft_v9_1_8
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap gigantic_mux riviera/gigantic_mux
vmap axi_protocol_converter_v2_1_26 riviera/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_processing_system7_0_0_1/sim/bajie7020_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_160M_0/sim/bajie7020_rst_ps7_0_160M_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_xlconcat_0_0/sim/bajie7020_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_proc_sys_reset_rfb_fclk_0/sim/bajie7020_proc_sys_reset_rfb_fclk_0.vhd" \
"../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_200M_0_1/sim/bajie7020_rst_ps7_0_200M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_firoutmixer_0_0_1/sim/bajie7020_firoutmixer_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_8  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_axis_data_fifo_0_0_1/sim/bajie7020_axis_data_fifo_0_0.v" \

vlog -work axis_register_slice_v1_1_26  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/aca3/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tdata_bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tuser_bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tstrb_bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tkeep_bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tid_bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tdest_bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tlast_bajie7020_axis_subset_converter_1_0.v" \

vlog -work axis_subset_converter_v1_1_26  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1676/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/top_bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/sim/bajie7020_axis_subset_converter_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_data_fifo_1_0_1/sim/bajie7020_axis_data_fifo_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/tdata_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/tuser_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/tstrb_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/tkeep_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/tid_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/tdest_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/tlast_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/hdl/top_bajie7020_axis_subset_converter_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_0/sim/bajie7020_axis_subset_converter_0_0.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_18 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/d172/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_fir_compiler_0_0_1/sim/bajie7020_fir_compiler_0_0.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/proc_common_v3_30_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/proc_common_v3_30_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/proc_common_v3_30_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/proc_common_v3_30_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/proc_common_v3_30_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_family.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/proc_common_v3_30_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/proc_common_v3_30_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/interrupt_control_v2_01_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/bajie7020_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/bajie7020_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/bajie7020_xadc_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/bajie7020_xadc_wiz_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_28 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_27 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_rfb_axi_dma_0/sim/bajie7020_rfb_axi_dma_0.vhd" \
"../../../bd/bajie7020/ip/bajie7020_xfft_axi_dma_0/sim/bajie7020_xfft_axi_dma_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_xbar_0/sim/bajie7020_xbar_0.v" \
"../../../bd/bajie7020/ip/bajie7020_xbar_1/sim/bajie7020_xbar_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/tdata_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/tuser_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/tstrb_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/tkeep_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/tid_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/tdest_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/tlast_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/hdl/top_bajie7020_axis_subset_converter_0_1.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/sim/bajie7020_axis_subset_converter_0_1.v" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_21 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b7d0/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_20 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b8e/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_8 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/102e/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_xfft_0_0_1/sim/bajie7020_xfft_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_xlconstant_32_0_0/sim/bajie7020_xlconstant_32_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/ip/ip_0/sim/bd_1229_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/ip/ip_1/bd_1229_g_inst_0_gigantic_mux.v" \
"../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/ip/ip_1/sim/bd_1229_g_inst_0.v" \
"../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/sim/bd_1229.v" \
"../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/sim/bajie7020_system_ila_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_rfbdes_0_0_1/sim/bajie7020_rfbdes_0_0.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/122e/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b205/hdl/verilog" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fd26/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_auto_pc_0/sim/bajie7020_auto_pc_0.v" \
"../../../bd/bajie7020/ip/bajie7020_auto_pc_1/sim/bajie7020_auto_pc_1.v" \
"../../../bd/bajie7020/ip/bajie7020_auto_pc_2/sim/bajie7020_auto_pc_2.v" \
"../../../bd/bajie7020/sim/bajie7020.v" \

vlog -work xil_defaultlib \
"glbl.v"

