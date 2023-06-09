vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_11
vlib riviera/processing_system7_vip_v1_0_13
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14
vlib riviera/c_mux_bit_v12_0_6
vlib riviera/c_shift_ram_v12_0_14
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_17
vlib riviera/cmpy_v6_0_20
vlib riviera/floating_point_v7_0_19
vlib riviera/xfft_v9_1_7
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_25
vlib riviera/fifo_generator_v13_2_6
vlib riviera/axi_data_fifo_v2_1_24
vlib riviera/axi_crossbar_v2_1_26
vlib riviera/xlconcat_v2_1_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_15
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_27
vlib riviera/axi_sg_v4_1_14
vlib riviera/axi_dma_v7_1_26
vlib riviera/xlconstant_v1_1_7
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_register_slice_v1_1_25
vlib riviera/axis_subset_converter_v1_1_25
vlib riviera/axis_data_fifo_v2_0_7
vlib riviera/fir_compiler_v7_2_17
vlib riviera/axi_protocol_converter_v2_1_25

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 riviera/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 riviera/processing_system7_vip_v1_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14
vmap c_mux_bit_v12_0_6 riviera/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 riviera/c_shift_ram_v12_0_14
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 riviera/mult_gen_v12_0_17
vmap cmpy_v6_0_20 riviera/cmpy_v6_0_20
vmap floating_point_v7_0_19 riviera/floating_point_v7_0_19
vmap xfft_v9_1_7 riviera/xfft_v9_1_7
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 riviera/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 riviera/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 riviera/axi_crossbar_v2_1_26
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_15 riviera/lib_fifo_v1_0_15
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_27 riviera/axi_datamover_v5_1_27
vmap axi_sg_v4_1_14 riviera/axi_sg_v4_1_14
vmap axi_dma_v7_1_26 riviera/axi_dma_v7_1_26
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_25 riviera/axis_register_slice_v1_1_25
vmap axis_subset_converter_v1_1_25 riviera/axis_subset_converter_v1_1_25
vmap axis_data_fifo_v2_0_7 riviera/axis_data_fifo_v2_0_7
vmap fir_compiler_v7_2_17 riviera/fir_compiler_v7_2_17
vmap axi_protocol_converter_v2_1_25 riviera/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_processing_system7_0_0/sim/bajie7020_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_200M_0/sim/bajie7020_rst_ps7_0_200M_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

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

vcom -work mult_gen_v12_0_17 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_20 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/328f/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_19 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/08ac/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_7 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b7d6/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_xfft_0_0/sim/bajie7020_xfft_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_xbar_3/sim/bajie7020_xbar_3.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_xlconcat_0_4/sim/bajie7020_xlconcat_0_4.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_15 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/a4ed/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_27 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/9b19/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_14 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/bcf6/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_26 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/69a4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_axi_dma_1_1/sim/bajie7020_axi_dma_1_1.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_xlconstant_0_3/sim/bajie7020_xlconstant_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_xbar_4/sim/bajie7020_xbar_4.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_axi_dma_0_2/sim/bajie7020_axi_dma_0_2.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_25  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/d733/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tdata_bajie7020_axis_subset_converter_0_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tuser_bajie7020_axis_subset_converter_0_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tstrb_bajie7020_axis_subset_converter_0_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tkeep_bajie7020_axis_subset_converter_0_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tid_bajie7020_axis_subset_converter_0_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tdest_bajie7020_axis_subset_converter_0_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tlast_bajie7020_axis_subset_converter_0_2.v" \

vlog -work axis_subset_converter_v1_1_25  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ba57/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/top_bajie7020_axis_subset_converter_0_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/sim/bajie7020_axis_subset_converter_0_2.v" \

vlog -work axis_data_fifo_v2_0_7  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/4852/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_axis_data_fifo_0_0/sim/bajie7020_axis_data_fifo_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_proc_sys_reset_0_0/sim/bajie7020_proc_sys_reset_0_0.vhd" \

vcom -work fir_compiler_v7_2_17 -93 \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/cf11/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_fir_compiler_0_0/sim/bajie7020_fir_compiler_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_axis_data_fifo_1_0/sim/bajie7020_axis_data_fifo_1_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/tdata_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/tuser_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/tstrb_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/tkeep_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/tid_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/tdest_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/tlast_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/hdl/top_bajie7020_axis_subset_converter_1_2.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_2/sim/bajie7020_axis_subset_converter_1_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_133M_0/sim/bajie7020_rst_ps7_0_133M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_rfbdes_0_0/sim/bajie7020_rfbdes_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_firoutmixer_0_0/sim/bajie7020_firoutmixer_0_0.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/tdata_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/tuser_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/tstrb_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/tkeep_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/tid_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/tdest_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/tlast_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/hdl/top_bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_3/sim/bajie7020_axis_subset_converter_0_3.v" \
"../../../bd/bajie7020/sim/bajie7020.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl" "+incdir+../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/bajie7020/ip/bajie7020_auto_pc_0/sim/bajie7020_auto_pc_0.v" \
"../../../bd/bajie7020/ip/bajie7020_auto_pc_1/sim/bajie7020_auto_pc_1.v" \
"../../../bd/bajie7020/ip/bajie7020_auto_pc_2/sim/bajie7020_auto_pc_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

