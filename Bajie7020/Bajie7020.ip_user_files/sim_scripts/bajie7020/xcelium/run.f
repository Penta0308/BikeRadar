-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_13 -sv \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_processing_system7_0_0/sim/bajie7020_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_200M_0/sim/bajie7020_rst_ps7_0_200M_0.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_14 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_mux_bit_v12_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_shift_ram_v12_0_14 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_17 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cmpy_v6_0_20 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/328f/hdl/cmpy_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_0_19 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/08ac/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xfft_v9_1_7 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b7d6/hdl/xfft_v9_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xfft_0_0/sim/bajie7020_xfft_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_24 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_26 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xbar_3/sim/bajie7020_xbar_3.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xlconcat_0_4/sim/bajie7020_xlconcat_0_4.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_15 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/a4ed/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_27 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/9b19/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_14 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/bcf6/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_26 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/69a4/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_axi_dma_1_1/sim/bajie7020_axi_dma_1_1.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xlconstant_0_3/sim/bajie7020_xlconstant_0_3.v" \
  "../../../bd/bajie7020/ip/bajie7020_xbar_4/sim/bajie7020_xbar_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_axi_dma_0_2/sim/bajie7020_axi_dma_0_2.vhd" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_register_slice_v1_1_25 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/d733/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tdata_bajie7020_axis_subset_converter_0_2.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tuser_bajie7020_axis_subset_converter_0_2.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tstrb_bajie7020_axis_subset_converter_0_2.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tkeep_bajie7020_axis_subset_converter_0_2.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tid_bajie7020_axis_subset_converter_0_2.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tdest_bajie7020_axis_subset_converter_0_2.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/tlast_bajie7020_axis_subset_converter_0_2.v" \
-endlib
-makelib xcelium_lib/axis_subset_converter_v1_1_25 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ba57/hdl/axis_subset_converter_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/hdl/top_bajie7020_axis_subset_converter_0_2.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_0_2/sim/bajie7020_axis_subset_converter_0_2.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v2_0_7 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/4852/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_axis_data_fifo_0_0/sim/bajie7020_axis_data_fifo_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_proc_sys_reset_0_0/sim/bajie7020_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_17 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/cf11/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_fir_compiler_0_0/sim/bajie7020_fir_compiler_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_133M_0/sim/bajie7020_rst_ps7_0_133M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_25 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_auto_pc_0/sim/bajie7020_auto_pc_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_auto_pc_1/sim/bajie7020_auto_pc_1.v" \
  "../../../bd/bajie7020/ip/bajie7020_auto_pc_2/sim/bajie7020_auto_pc_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

