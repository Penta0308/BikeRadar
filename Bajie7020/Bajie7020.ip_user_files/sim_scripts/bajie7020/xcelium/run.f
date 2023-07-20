-makelib xcelium_lib/xilinx_vip -sv \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_processing_system7_0_0_1/sim/bajie7020_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_160M_0/sim/bajie7020_rst_ps7_0_160M_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xlconcat_0_0/sim/bajie7020_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_proc_sys_reset_rfb_fclk_0/sim/bajie7020_proc_sys_reset_rfb_fclk_0.vhd" \
  "../../../bd/bajie7020/ip/bajie7020_rst_ps7_0_200M_0_1/sim/bajie7020_rst_ps7_0_200M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_firoutmixer_0_0_1/sim/bajie7020_firoutmixer_0_0.v" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v2_0_8 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_axis_data_fifo_0_0_1/sim/bajie7020_axis_data_fifo_0_0.v" \
-endlib
-makelib xcelium_lib/axis_register_slice_v1_1_26 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/aca3/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tdata_bajie7020_axis_subset_converter_1_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tuser_bajie7020_axis_subset_converter_1_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tstrb_bajie7020_axis_subset_converter_1_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tkeep_bajie7020_axis_subset_converter_1_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tid_bajie7020_axis_subset_converter_1_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tdest_bajie7020_axis_subset_converter_1_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_axis_subset_converter_1_0/hdl/tlast_bajie7020_axis_subset_converter_1_0.v" \
-endlib
-makelib xcelium_lib/axis_subset_converter_v1_1_26 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1676/hdl/axis_subset_converter_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_18 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/d172/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xadc_wiz_0_0_1/bajie7020_xadc_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_28 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_15 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_27 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_rfb_axi_dma_0/sim/bajie7020_rfb_axi_dma_0.vhd" \
  "../../../bd/bajie7020/ip/bajie7020_xfft_axi_dma_0/sim/bajie7020_xfft_axi_dma_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-makelib xcelium_lib/mult_gen_v12_0_18 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cmpy_v6_0_21 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/b7d0/hdl/cmpy_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_0_20 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/1b8e/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xfft_v9_1_8 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/102e/hdl/xfft_v9_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xfft_0_0_1/sim/bajie7020_xfft_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_xlconstant_32_0_0/sim/bajie7020_xlconstant_32_0_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/ip/ip_0/sim/bd_1229_ila_lib_0.v" \
-endlib
-makelib xcelium_lib/gigantic_mux \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/ip/ip_1/bd_1229_g_inst_0_gigantic_mux.v" \
  "../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/ip/ip_1/sim/bd_1229_g_inst_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/bd_0/sim/bd_1229.v" \
  "../../../bd/bajie7020/ip/bajie7020_system_ila_0_0/sim/bajie7020_system_ila_0_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_rfbdes_0_0_1/sim/bajie7020_rfbdes_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../Bajie7020.gen/sources_1/bd/bajie7020/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bajie7020/ip/bajie7020_auto_pc_0/sim/bajie7020_auto_pc_0.v" \
  "../../../bd/bajie7020/ip/bajie7020_auto_pc_1/sim/bajie7020_auto_pc_1.v" \
  "../../../bd/bajie7020/ip/bajie7020_auto_pc_2/sim/bajie7020_auto_pc_2.v" \
  "../../../bd/bajie7020/sim/bajie7020.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

