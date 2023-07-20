//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Sun Jul 16 17:31:58 2023
//Host        : Penta0308-15U560-U running 64-bit Ubuntu 22.04.2 LTS
//Command     : generate_target bajie7020.bd
//Design      : bajie7020
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bajie7020,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bajie7020,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=38,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=14,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=12,da_board_cnt=1,da_clkrst_cnt=30,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bajie7020.hwdef" *) 
module bajie7020
   (CAN0_rx,
    CAN0_tx,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    RFB_DCLK_clk_n,
    RFB_DCLK_clk_p,
    RFB_FCLK_clk_n,
    RFB_FCLK_clk_p,
    RFB_IN_dv,
    RFB_IN_n,
    RFB_IN_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:can:1.0 CAN0 RX" *) input CAN0_rx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:can:1.0 CAN0 TX" *) output CAN0_tx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *) input [0:0]RFB_DCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P" *) input [0:0]RFB_DCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]RFB_FCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P" *) input [0:0]RFB_FCLK_clk_p;
  input RFB_IN_dv;
  input [3:0]RFB_IN_n;
  input [3:0]RFB_IN_p;

  wire RFB_DATAVALID_1;
  wire [0:0]RFB_DCLK_1_CLK_N;
  wire [0:0]RFB_DCLK_1_CLK_P;
  wire [0:0]RFB_FCLK_1_CLK_N;
  wire [0:0]RFB_FCLK_1_CLK_P;
  wire [3:0]RFB_IN_n_0_1;
  wire [3:0]RFB_IN_p_0_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [11:0]S00_AXI_1_ARID;
  wire [3:0]S00_AXI_1_ARLEN;
  wire [1:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [11:0]S00_AXI_1_AWID;
  wire [3:0]S00_AXI_1_AWLEN;
  wire [1:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [11:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [11:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [11:0]S00_AXI_1_WID;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [7:0]S00_AXI_2_AWLEN;
  wire [2:0]S00_AXI_2_AWPROT;
  wire S00_AXI_2_AWREADY;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [63:0]S00_AXI_2_WDATA;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [7:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [63:0]axi_dma_1_M_AXIS_MM2S_TDATA;
  wire axi_dma_1_M_AXIS_MM2S_TLAST;
  wire axi_dma_1_M_AXIS_MM2S_TREADY;
  wire axi_dma_1_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_1_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_1_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_1_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARPROT;
  wire [0:0]axi_dma_1_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARSIZE;
  wire axi_dma_1_M_AXI_MM2S_ARVALID;
  wire [63:0]axi_dma_1_M_AXI_MM2S_RDATA;
  wire [0:0]axi_dma_1_M_AXI_MM2S_RLAST;
  wire axi_dma_1_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_1_M_AXI_MM2S_RRESP;
  wire [0:0]axi_dma_1_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_1_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_1_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_1_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_1_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWPROT;
  wire [0:0]axi_dma_1_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWSIZE;
  wire axi_dma_1_M_AXI_S2MM_AWVALID;
  wire axi_dma_1_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_1_M_AXI_S2MM_BRESP;
  wire [0:0]axi_dma_1_M_AXI_S2MM_BVALID;
  wire [63:0]axi_dma_1_M_AXI_S2MM_WDATA;
  wire axi_dma_1_M_AXI_S2MM_WLAST;
  wire [0:0]axi_dma_1_M_AXI_S2MM_WREADY;
  wire [7:0]axi_dma_1_M_AXI_S2MM_WSTRB;
  wire axi_dma_1_M_AXI_S2MM_WVALID;
  wire axi_dma_1_mm2s_introut;
  wire axi_dma_1_mm2s_prmry_reset_out_n;
  wire axi_dma_1_s2mm_introut;
  wire axi_dma_1_s2mm_prmry_reset_out_n;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [0:0]axi_interconnect_1_M00_AXI_ARID;
  wire [3:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [1:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [0:0]axi_interconnect_1_M00_AXI_AWID;
  wire [3:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [1:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire [2:0]axi_interconnect_1_M00_AXI_BID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_RDATA;
  wire [2:0]axi_interconnect_1_M00_AXI_RID;
  wire axi_interconnect_1_M00_AXI_RLAST;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_1_M00_AXI_WID;
  wire axi_interconnect_1_M00_AXI_WLAST;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_gp0_M02_AXI_ARADDR;
  wire axi_interconnect_gp0_M02_AXI_ARREADY;
  wire [0:0]axi_interconnect_gp0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_gp0_M02_AXI_AWADDR;
  wire axi_interconnect_gp0_M02_AXI_AWREADY;
  wire [0:0]axi_interconnect_gp0_M02_AXI_AWVALID;
  wire [0:0]axi_interconnect_gp0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_gp0_M02_AXI_BRESP;
  wire axi_interconnect_gp0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_gp0_M02_AXI_RDATA;
  wire [0:0]axi_interconnect_gp0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_gp0_M02_AXI_RRESP;
  wire axi_interconnect_gp0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_gp0_M02_AXI_WDATA;
  wire axi_interconnect_gp0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_gp0_M02_AXI_WSTRB;
  wire [0:0]axi_interconnect_gp0_M02_AXI_WVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [63:0]axis_subset_converter_0_M_AXIS_TDATA;
  wire [7:0]axis_subset_converter_0_M_AXIS_TKEEP;
  wire axis_subset_converter_0_M_AXIS_TLAST;
  wire axis_subset_converter_0_M_AXIS_TREADY;
  wire axis_subset_converter_0_M_AXIS_TVALID;
  wire hdmi_axi_dma_0_s2mm_introut;
  wire hdmi_axi_dma_0_s2mm_prmry_reset_out_n;
  wire [0:0]proc_sys_reset_rfb_288M_peripheral_aresetn;
  wire [0:0]proc_sys_reset_rfb_fclk_peripheral_aresetn;
  wire [0:0]proc_sys_reset_rfb_fclk_peripheral_reset;
  wire processing_system7_0_CAN_0_RX;
  wire processing_system7_0_CAN_0_TX;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [63:0]rfb_fir_M_AXIS_TDATA;
  wire rfb_fir_M_AXIS_TLAST;
  wire rfb_fir_M_AXIS_TREADY;
  wire rfb_fir_M_AXIS_TVALID;
  wire rfb_fir_transfer_dropped;
  (* CONN_BUS_INFO = "rfbdes_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [23:0]rfbdes_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "rfbdes_0_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]rfbdes_0_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "rfbdes_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire rfbdes_0_M_AXIS_TVALID;
  wire [5:0]rfbdes_0_isd_q0;
  wire [5:0]rfbdes_0_isd_q1;
  wire [5:0]rfbdes_0_isd_q2;
  wire [5:0]rfbdes_0_isd_q3;
  wire [5:0]rfbdes_0_isd_q4;
  wire [5:0]rfbdes_0_isd_q5;
  wire [0:0]rst_ps7_0_160M_peripheral_aresetn;
  wire [0:0]rst_ps7_0_200M_peripheral_reset;
  wire util_ds_buf_rfb_fclk_IBUF_OUT;
  wire xadc_wiz_0_ip2intc_irpt;
  wire [63:0]xfft_0_M_AXIS_DATA_TDATA;
  wire xfft_0_M_AXIS_DATA_TLAST;
  wire xfft_0_M_AXIS_DATA_TREADY;
  wire xfft_0_M_AXIS_DATA_TVALID;
  wire xfft_0_s_axis_config_tready;
  wire [4:0]xlconcat_0_dout;
  wire [31:0]xlconstant_0_dout;

  assign CAN0_tx = processing_system7_0_CAN_0_TX;
  assign RFB_DATAVALID_1 = RFB_IN_dv;
  assign RFB_DCLK_1_CLK_N = RFB_DCLK_clk_n[0];
  assign RFB_DCLK_1_CLK_P = RFB_DCLK_clk_p[0];
  assign RFB_FCLK_1_CLK_N = RFB_FCLK_clk_n[0];
  assign RFB_FCLK_1_CLK_P = RFB_FCLK_clk_p[0];
  assign RFB_IN_n_0_1 = RFB_IN_n[3:0];
  assign RFB_IN_p_0_1 = RFB_IN_p[3:0];
  assign processing_system7_0_CAN_0_RX = CAN0_rx;
  bajie7020_axi_interconnect_acp_0 axi_interconnect_acp
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_1_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_1_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_1_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_1_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wid(axi_interconnect_1_M00_AXI_WID),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(axi_dma_1_mm2s_prmry_reset_out_n),
        .S00_AXI_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .S00_AXI_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .S00_AXI_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .S01_ACLK(processing_system7_0_FCLK_CLK0),
        .S01_ARESETN(axi_dma_1_s2mm_prmry_reset_out_n),
        .S01_AXI_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .S01_AXI_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .S01_AXI_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_1_M_AXI_S2MM_WVALID));
  bajie7020_axi_interconnect_gp0_0 axi_interconnect_gp0
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(processing_system7_0_FCLK_CLK0),
        .M01_ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(processing_system7_0_FCLK_CLK0),
        .M02_ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_gp0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_gp0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_gp0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_gp0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_gp0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_gp0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_gp0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_gp0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_gp0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_gp0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_gp0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_gp0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_gp0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_gp0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_gp0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_gp0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_gp0_M02_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wid(S00_AXI_1_WID),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  bajie7020_axi_interconnect_hp0_0 axi_interconnect_hp0
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_ps7_0_160M_peripheral_aresetn),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(hdmi_axi_dma_0_s2mm_prmry_reset_out_n),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID));
  bajie7020_axis_subset_converter_0_1 axis_subset_converter_0
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_160M_peripheral_aresetn),
        .m_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(rfb_fir_M_AXIS_TDATA),
        .s_axis_tlast(rfb_fir_M_AXIS_TLAST),
        .s_axis_tready(rfb_fir_M_AXIS_TREADY),
        .s_axis_tvalid(rfb_fir_M_AXIS_TVALID));
  bajie7020_proc_sys_reset_rfb_fclk_0 proc_sys_reset_rfb_fclk
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(rst_ps7_0_160M_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_rfb_fclk_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_rfb_fclk_peripheral_reset),
        .slowest_sync_clk(util_ds_buf_rfb_fclk_IBUF_OUT));
  bajie7020_processing_system7_0_0 processing_system7_0
       (.CAN0_PHY_RX(processing_system7_0_CAN_0_RX),
        .CAN0_PHY_TX(processing_system7_0_CAN_0_TX),
        .DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(1'b0),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(S00_AXI_1_ARADDR),
        .M_AXI_GP0_ARBURST(S00_AXI_1_ARBURST),
        .M_AXI_GP0_ARCACHE(S00_AXI_1_ARCACHE),
        .M_AXI_GP0_ARID(S00_AXI_1_ARID),
        .M_AXI_GP0_ARLEN(S00_AXI_1_ARLEN),
        .M_AXI_GP0_ARLOCK(S00_AXI_1_ARLOCK),
        .M_AXI_GP0_ARPROT(S00_AXI_1_ARPROT),
        .M_AXI_GP0_ARQOS(S00_AXI_1_ARQOS),
        .M_AXI_GP0_ARREADY(S00_AXI_1_ARREADY),
        .M_AXI_GP0_ARSIZE(S00_AXI_1_ARSIZE),
        .M_AXI_GP0_ARVALID(S00_AXI_1_ARVALID),
        .M_AXI_GP0_AWADDR(S00_AXI_1_AWADDR),
        .M_AXI_GP0_AWBURST(S00_AXI_1_AWBURST),
        .M_AXI_GP0_AWCACHE(S00_AXI_1_AWCACHE),
        .M_AXI_GP0_AWID(S00_AXI_1_AWID),
        .M_AXI_GP0_AWLEN(S00_AXI_1_AWLEN),
        .M_AXI_GP0_AWLOCK(S00_AXI_1_AWLOCK),
        .M_AXI_GP0_AWPROT(S00_AXI_1_AWPROT),
        .M_AXI_GP0_AWQOS(S00_AXI_1_AWQOS),
        .M_AXI_GP0_AWREADY(S00_AXI_1_AWREADY),
        .M_AXI_GP0_AWSIZE(S00_AXI_1_AWSIZE),
        .M_AXI_GP0_AWVALID(S00_AXI_1_AWVALID),
        .M_AXI_GP0_BID(S00_AXI_1_BID),
        .M_AXI_GP0_BREADY(S00_AXI_1_BREADY),
        .M_AXI_GP0_BRESP(S00_AXI_1_BRESP),
        .M_AXI_GP0_BVALID(S00_AXI_1_BVALID),
        .M_AXI_GP0_RDATA(S00_AXI_1_RDATA),
        .M_AXI_GP0_RID(S00_AXI_1_RID),
        .M_AXI_GP0_RLAST(S00_AXI_1_RLAST),
        .M_AXI_GP0_RREADY(S00_AXI_1_RREADY),
        .M_AXI_GP0_RRESP(S00_AXI_1_RRESP),
        .M_AXI_GP0_RVALID(S00_AXI_1_RVALID),
        .M_AXI_GP0_WDATA(S00_AXI_1_WDATA),
        .M_AXI_GP0_WID(S00_AXI_1_WID),
        .M_AXI_GP0_WLAST(S00_AXI_1_WLAST),
        .M_AXI_GP0_WREADY(S00_AXI_1_WREADY),
        .M_AXI_GP0_WSTRB(S00_AXI_1_WSTRB),
        .M_AXI_GP0_WVALID(S00_AXI_1_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_ACP_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_ACP_ARADDR(axi_interconnect_1_M00_AXI_ARADDR),
        .S_AXI_ACP_ARBURST(axi_interconnect_1_M00_AXI_ARBURST),
        .S_AXI_ACP_ARCACHE(axi_interconnect_1_M00_AXI_ARCACHE),
        .S_AXI_ACP_ARID({1'b0,1'b0,axi_interconnect_1_M00_AXI_ARID}),
        .S_AXI_ACP_ARLEN(axi_interconnect_1_M00_AXI_ARLEN),
        .S_AXI_ACP_ARLOCK(axi_interconnect_1_M00_AXI_ARLOCK),
        .S_AXI_ACP_ARPROT(axi_interconnect_1_M00_AXI_ARPROT),
        .S_AXI_ACP_ARQOS(axi_interconnect_1_M00_AXI_ARQOS),
        .S_AXI_ACP_ARREADY(axi_interconnect_1_M00_AXI_ARREADY),
        .S_AXI_ACP_ARSIZE(axi_interconnect_1_M00_AXI_ARSIZE),
        .S_AXI_ACP_ARUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARVALID(axi_interconnect_1_M00_AXI_ARVALID),
        .S_AXI_ACP_AWADDR(axi_interconnect_1_M00_AXI_AWADDR),
        .S_AXI_ACP_AWBURST(axi_interconnect_1_M00_AXI_AWBURST),
        .S_AXI_ACP_AWCACHE(axi_interconnect_1_M00_AXI_AWCACHE),
        .S_AXI_ACP_AWID({1'b0,1'b0,axi_interconnect_1_M00_AXI_AWID}),
        .S_AXI_ACP_AWLEN(axi_interconnect_1_M00_AXI_AWLEN),
        .S_AXI_ACP_AWLOCK(axi_interconnect_1_M00_AXI_AWLOCK),
        .S_AXI_ACP_AWPROT(axi_interconnect_1_M00_AXI_AWPROT),
        .S_AXI_ACP_AWQOS(axi_interconnect_1_M00_AXI_AWQOS),
        .S_AXI_ACP_AWREADY(axi_interconnect_1_M00_AXI_AWREADY),
        .S_AXI_ACP_AWSIZE(axi_interconnect_1_M00_AXI_AWSIZE),
        .S_AXI_ACP_AWUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_AWVALID(axi_interconnect_1_M00_AXI_AWVALID),
        .S_AXI_ACP_BID(axi_interconnect_1_M00_AXI_BID),
        .S_AXI_ACP_BREADY(axi_interconnect_1_M00_AXI_BREADY),
        .S_AXI_ACP_BRESP(axi_interconnect_1_M00_AXI_BRESP),
        .S_AXI_ACP_BVALID(axi_interconnect_1_M00_AXI_BVALID),
        .S_AXI_ACP_RDATA(axi_interconnect_1_M00_AXI_RDATA),
        .S_AXI_ACP_RID(axi_interconnect_1_M00_AXI_RID),
        .S_AXI_ACP_RLAST(axi_interconnect_1_M00_AXI_RLAST),
        .S_AXI_ACP_RREADY(axi_interconnect_1_M00_AXI_RREADY),
        .S_AXI_ACP_RRESP(axi_interconnect_1_M00_AXI_RRESP),
        .S_AXI_ACP_RVALID(axi_interconnect_1_M00_AXI_RVALID),
        .S_AXI_ACP_WDATA(axi_interconnect_1_M00_AXI_WDATA),
        .S_AXI_ACP_WID({1'b0,1'b0,axi_interconnect_1_M00_AXI_WID}),
        .S_AXI_ACP_WLAST(axi_interconnect_1_M00_AXI_WLAST),
        .S_AXI_ACP_WREADY(axi_interconnect_1_M00_AXI_WREADY),
        .S_AXI_ACP_WSTRB(axi_interconnect_1_M00_AXI_WSTRB),
        .S_AXI_ACP_WVALID(axi_interconnect_1_M00_AXI_WVALID),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARBURST({1'b0,1'b1}),
        .S_AXI_HP0_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARVALID(1'b0),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RREADY(1'b0),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID));
  bajie7020_rfb_axi_dma_0 rfb_axi_dma
       (.axi_resetn(rst_ps7_0_160M_peripheral_aresetn),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_s2mm_awaddr(S00_AXI_2_AWADDR),
        .m_axi_s2mm_awburst(S00_AXI_2_AWBURST),
        .m_axi_s2mm_awcache(S00_AXI_2_AWCACHE),
        .m_axi_s2mm_awlen(S00_AXI_2_AWLEN),
        .m_axi_s2mm_awprot(S00_AXI_2_AWPROT),
        .m_axi_s2mm_awready(S00_AXI_2_AWREADY),
        .m_axi_s2mm_awsize(S00_AXI_2_AWSIZE),
        .m_axi_s2mm_awvalid(S00_AXI_2_AWVALID),
        .m_axi_s2mm_bready(S00_AXI_2_BREADY),
        .m_axi_s2mm_bresp(S00_AXI_2_BRESP),
        .m_axi_s2mm_bvalid(S00_AXI_2_BVALID),
        .m_axi_s2mm_wdata(S00_AXI_2_WDATA),
        .m_axi_s2mm_wlast(S00_AXI_2_WLAST),
        .m_axi_s2mm_wready(S00_AXI_2_WREADY),
        .m_axi_s2mm_wstrb(S00_AXI_2_WSTRB),
        .m_axi_s2mm_wvalid(S00_AXI_2_WVALID),
        .s2mm_introut(hdmi_axi_dma_0_s2mm_introut),
        .s2mm_prmry_reset_out_n(hdmi_axi_dma_0_s2mm_prmry_reset_out_n),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(axi_interconnect_0_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_subset_converter_0_M_AXIS_TVALID));
  rfb_fir_imp_1XB3GYN rfb_fir
       (.M_AXIS_tdata(rfb_fir_M_AXIS_TDATA),
        .M_AXIS_tlast(rfb_fir_M_AXIS_TLAST),
        .M_AXIS_tready(rfb_fir_M_AXIS_TREADY),
        .M_AXIS_tvalid(rfb_fir_M_AXIS_TVALID),
        .S_AXIS_tdata(rfbdes_0_M_AXIS_TDATA),
        .S_AXIS_tuser(rfbdes_0_M_AXIS_TUSER),
        .S_AXIS_tvalid(rfbdes_0_M_AXIS_TVALID),
        .fir_aclk(processing_system7_0_FCLK_CLK1),
        .fir_aresetn(proc_sys_reset_rfb_288M_peripheral_aresetn),
        .fir_reset(rst_ps7_0_200M_peripheral_reset),
        .m_axis_aclk(processing_system7_0_FCLK_CLK0),
        .s_axis_aclk(util_ds_buf_rfb_fclk_IBUF_OUT),
        .s_axis_aresetn(proc_sys_reset_rfb_fclk_peripheral_aresetn),
        .transfer_dropped(rfb_fir_transfer_dropped));
  bajie7020_rfbdes_0_0 rfbdes_0
       (.RFB_AXIS_CLK(util_ds_buf_rfb_fclk_IBUF_OUT),
        .RFB_AXIS_DATA(rfbdes_0_M_AXIS_TDATA),
        .RFB_AXIS_USER(rfbdes_0_M_AXIS_TUSER),
        .RFB_AXIS_VALID(rfbdes_0_M_AXIS_TVALID),
        .RFB_DCLK_clk_n(RFB_DCLK_1_CLK_N),
        .RFB_DCLK_clk_p(RFB_DCLK_1_CLK_P),
        .RFB_FCLK_clk_n(RFB_FCLK_1_CLK_N),
        .RFB_FCLK_clk_p(RFB_FCLK_1_CLK_P),
        .RFB_IN_dv(RFB_DATAVALID_1),
        .RFB_IN_n(RFB_IN_n_0_1),
        .RFB_IN_p(RFB_IN_p_0_1),
        .idelay_refclk(processing_system7_0_FCLK_CLK1),
        .isd_q0(rfbdes_0_isd_q0),
        .isd_q1(rfbdes_0_isd_q1),
        .isd_q2(rfbdes_0_isd_q2),
        .isd_q3(rfbdes_0_isd_q3),
        .isd_q4(rfbdes_0_isd_q4),
        .isd_q5(rfbdes_0_isd_q5),
        .reset(proc_sys_reset_rfb_fclk_peripheral_reset));
  bajie7020_rst_ps7_0_160M_0 rst_ps7_0_160M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_160M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  bajie7020_rst_ps7_0_200M_0 rst_ps7_0_200M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(rst_ps7_0_160M_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_rfb_288M_peripheral_aresetn),
        .peripheral_reset(rst_ps7_0_200M_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK1));
  bajie7020_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(rfbdes_0_M_AXIS_TDATA),
        .SLOT_0_AXIS_tlast(1'b0),
        .SLOT_0_AXIS_tuser(rfbdes_0_M_AXIS_TUSER),
        .SLOT_0_AXIS_tvalid(rfbdes_0_M_AXIS_TVALID),
        .clk(util_ds_buf_rfb_fclk_IBUF_OUT),
        .probe0(rfbdes_0_isd_q0),
        .probe1(rfbdes_0_isd_q1),
        .probe2(rfbdes_0_isd_q2),
        .probe3(rfbdes_0_isd_q3),
        .probe4(rfbdes_0_isd_q4),
        .probe5(rfbdes_0_isd_q5),
        .resetn(proc_sys_reset_rfb_fclk_peripheral_aresetn));
  bajie7020_xadc_wiz_0_0 xadc_wiz_0
       (.ip2intc_irpt(xadc_wiz_0_ip2intc_irpt),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_interconnect_gp0_M02_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_ps7_0_160M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_gp0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_gp0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_gp0_M02_AXI_AWADDR[10:0]),
        .s_axi_awready(axi_interconnect_gp0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_gp0_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_gp0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_gp0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_gp0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_gp0_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_gp0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_gp0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_gp0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_gp0_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_gp0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_gp0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_gp0_M02_AXI_WVALID),
        .vn_in(1'b0),
        .vp_in(1'b0));
  bajie7020_xfft_0_0 xfft_0
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_160M_peripheral_aresetn),
        .m_axis_data_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .m_axis_data_tready(xfft_0_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_0_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(xlconstant_0_dout),
        .s_axis_config_tready(xfft_0_s_axis_config_tready),
        .s_axis_config_tvalid(xfft_0_s_axis_config_tready),
        .s_axis_data_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .s_axis_data_tlast(axi_dma_1_M_AXIS_MM2S_TLAST),
        .s_axis_data_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .s_axis_data_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID));
  bajie7020_xfft_axi_dma_0 xfft_axi_dma
       (.axi_resetn(rst_ps7_0_160M_peripheral_aresetn),
        .m_axi_mm2s_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_mm2s_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_s2mm_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_dma_1_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_dma_1_mm2s_introut),
        .mm2s_prmry_reset_out_n(axi_dma_1_mm2s_prmry_reset_out_n),
        .s2mm_introut(axi_dma_1_s2mm_introut),
        .s2mm_prmry_reset_out_n(axi_dma_1_s2mm_prmry_reset_out_n),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(axi_interconnect_0_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .s_axis_s2mm_tready(xfft_0_M_AXIS_DATA_TREADY),
        .s_axis_s2mm_tvalid(xfft_0_M_AXIS_DATA_TVALID));
  bajie7020_xlconcat_0_0 xlconcat_0
       (.In0(axi_dma_1_s2mm_introut),
        .In1(axi_dma_1_mm2s_introut),
        .In2(hdmi_axi_dma_0_s2mm_introut),
        .In3(rfb_fir_transfer_dropped),
        .In4(xadc_wiz_0_ip2intc_irpt),
        .dout(xlconcat_0_dout));
  bajie7020_xlconstant_32_0_0 xlconstant_32_0
       (.dout(xlconstant_0_dout));
endmodule

module bajie7020_axi_interconnect_acp_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [2:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [2:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  output [63:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  input [63:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_interconnect_acp_ACLK_net;
  wire axi_interconnect_acp_ARESETN_net;
  wire [31:0]axi_interconnect_acp_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_acp_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_acp_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_acp_to_s00_couplers_ARLEN;
  wire [2:0]axi_interconnect_acp_to_s00_couplers_ARPROT;
  wire [0:0]axi_interconnect_acp_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_acp_to_s00_couplers_ARSIZE;
  wire [0:0]axi_interconnect_acp_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_acp_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_acp_to_s00_couplers_RLAST;
  wire [0:0]axi_interconnect_acp_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_acp_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_acp_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_acp_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_acp_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_acp_to_s01_couplers_AWCACHE;
  wire [7:0]axi_interconnect_acp_to_s01_couplers_AWLEN;
  wire [2:0]axi_interconnect_acp_to_s01_couplers_AWPROT;
  wire [0:0]axi_interconnect_acp_to_s01_couplers_AWREADY;
  wire [2:0]axi_interconnect_acp_to_s01_couplers_AWSIZE;
  wire [0:0]axi_interconnect_acp_to_s01_couplers_AWVALID;
  wire [0:0]axi_interconnect_acp_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_acp_to_s01_couplers_BRESP;
  wire [0:0]axi_interconnect_acp_to_s01_couplers_BVALID;
  wire [63:0]axi_interconnect_acp_to_s01_couplers_WDATA;
  wire [0:0]axi_interconnect_acp_to_s01_couplers_WLAST;
  wire [0:0]axi_interconnect_acp_to_s01_couplers_WREADY;
  wire [7:0]axi_interconnect_acp_to_s01_couplers_WSTRB;
  wire [0:0]axi_interconnect_acp_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_acp_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_acp_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_acp_ARCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_acp_ARID;
  wire [3:0]m00_couplers_to_axi_interconnect_acp_ARLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_acp_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_acp_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_acp_ARQOS;
  wire m00_couplers_to_axi_interconnect_acp_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_acp_ARSIZE;
  wire m00_couplers_to_axi_interconnect_acp_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_acp_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_acp_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_acp_AWCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_acp_AWID;
  wire [3:0]m00_couplers_to_axi_interconnect_acp_AWLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_acp_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_acp_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_acp_AWQOS;
  wire m00_couplers_to_axi_interconnect_acp_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_acp_AWSIZE;
  wire m00_couplers_to_axi_interconnect_acp_AWVALID;
  wire [2:0]m00_couplers_to_axi_interconnect_acp_BID;
  wire m00_couplers_to_axi_interconnect_acp_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_acp_BRESP;
  wire m00_couplers_to_axi_interconnect_acp_BVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_acp_RDATA;
  wire [2:0]m00_couplers_to_axi_interconnect_acp_RID;
  wire m00_couplers_to_axi_interconnect_acp_RLAST;
  wire m00_couplers_to_axi_interconnect_acp_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_acp_RRESP;
  wire m00_couplers_to_axi_interconnect_acp_RVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_acp_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_acp_WID;
  wire m00_couplers_to_axi_interconnect_acp_WLAST;
  wire m00_couplers_to_axi_interconnect_acp_WREADY;
  wire [7:0]m00_couplers_to_axi_interconnect_acp_WSTRB;
  wire m00_couplers_to_axi_interconnect_acp_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire [0:0]s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [1:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_acp_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_acp_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_acp_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_interconnect_acp_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_interconnect_acp_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_interconnect_acp_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_acp_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_acp_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_acp_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_acp_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_acp_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_acp_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_acp_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_interconnect_acp_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_interconnect_acp_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_interconnect_acp_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_acp_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_acp_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_acp_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_acp_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_acp_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_acp_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_interconnect_acp_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_interconnect_acp_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_acp_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_interconnect_acp_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_acp_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_interconnect_acp_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[63:0] = axi_interconnect_acp_to_s00_couplers_RDATA;
  assign S00_AXI_rlast[0] = axi_interconnect_acp_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_acp_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_acp_to_s00_couplers_RVALID;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_awready[0] = axi_interconnect_acp_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_acp_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = axi_interconnect_acp_to_s01_couplers_BVALID;
  assign S01_AXI_wready[0] = axi_interconnect_acp_to_s01_couplers_WREADY;
  assign axi_interconnect_acp_ACLK_net = ACLK;
  assign axi_interconnect_acp_ARESETN_net = ARESETN;
  assign axi_interconnect_acp_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_acp_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_acp_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_acp_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_acp_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_acp_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_acp_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_acp_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_acp_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_acp_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_acp_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_acp_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_acp_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_acp_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_acp_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign axi_interconnect_acp_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign axi_interconnect_acp_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_interconnect_acp_to_s01_couplers_WLAST = S01_AXI_wlast[0];
  assign axi_interconnect_acp_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_interconnect_acp_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_acp_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_acp_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_acp_BID = M00_AXI_bid[2:0];
  assign m00_couplers_to_axi_interconnect_acp_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_acp_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_acp_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_interconnect_acp_RID = M00_AXI_rid[2:0];
  assign m00_couplers_to_axi_interconnect_acp_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_acp_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_acp_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_acp_WREADY = M00_AXI_wready;
  m00_couplers_imp_1SUNL9N m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_acp_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_acp_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_acp_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_acp_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_acp_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_acp_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_acp_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_acp_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_acp_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_acp_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_acp_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_acp_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_acp_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_acp_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_acp_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_acp_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_acp_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_acp_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_acp_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_acp_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_acp_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_acp_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_acp_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_acp_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_acp_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_acp_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_acp_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_acp_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_acp_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_acp_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_acp_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_acp_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_acp_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_interconnect_acp_WID),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_acp_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_acp_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_acp_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_acp_WVALID),
        .S_ACLK(axi_interconnect_acp_ACLK_net),
        .S_ARESETN(axi_interconnect_acp_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_VIESS7 s00_couplers
       (.M_ACLK(axi_interconnect_acp_ACLK_net),
        .M_ARESETN(axi_interconnect_acp_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_acp_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_acp_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_acp_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_acp_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_interconnect_acp_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_acp_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_acp_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_acp_to_s00_couplers_ARVALID),
        .S_AXI_rdata(axi_interconnect_acp_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_acp_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_acp_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_acp_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_acp_to_s00_couplers_RVALID));
  s01_couplers_imp_1A6MFSF s01_couplers
       (.M_ACLK(axi_interconnect_acp_ACLK_net),
        .M_ARESETN(axi_interconnect_acp_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_awaddr(axi_interconnect_acp_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_acp_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_acp_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_acp_to_s01_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_acp_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_acp_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_acp_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_acp_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_acp_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_acp_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_acp_to_s01_couplers_BVALID),
        .S_AXI_wdata(axi_interconnect_acp_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_acp_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_acp_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_acp_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_acp_to_s01_couplers_WVALID));
  bajie7020_xbar_1 xbar
       (.aclk(axi_interconnect_acp_ACLK_net),
        .aresetn(axi_interconnect_acp_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize({1'b0,1'b0,1'b1,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,1'b0,1'b1,1'b1}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready({1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module bajie7020_axi_interconnect_gp0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_gp0_ACLK_net;
  wire axi_interconnect_gp0_ARESETN_net;
  wire [31:0]axi_interconnect_gp0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_gp0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_gp0_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_gp0_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_gp0_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_gp0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_gp0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_gp0_to_s00_couplers_ARQOS;
  wire axi_interconnect_gp0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_gp0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_gp0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_gp0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_gp0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_gp0_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_gp0_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_gp0_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_gp0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_gp0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_gp0_to_s00_couplers_AWQOS;
  wire axi_interconnect_gp0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_gp0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_gp0_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_gp0_to_s00_couplers_BID;
  wire axi_interconnect_gp0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_gp0_to_s00_couplers_BRESP;
  wire axi_interconnect_gp0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_gp0_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_gp0_to_s00_couplers_RID;
  wire axi_interconnect_gp0_to_s00_couplers_RLAST;
  wire axi_interconnect_gp0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_gp0_to_s00_couplers_RRESP;
  wire axi_interconnect_gp0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_gp0_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_gp0_to_s00_couplers_WID;
  wire axi_interconnect_gp0_to_s00_couplers_WLAST;
  wire axi_interconnect_gp0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_gp0_to_s00_couplers_WSTRB;
  wire axi_interconnect_gp0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_gp0_ARADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_ARREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_gp0_AWADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_AWREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_gp0_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_gp0_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_gp0_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_gp0_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_WREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_gp0_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_gp0_ARADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_gp0_AWADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_gp0_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_gp0_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_gp0_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_gp0_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_WREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_gp0_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_gp0_ARADDR;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_ARREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_gp0_AWADDR;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_AWREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_AWVALID;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_gp0_BRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_gp0_RDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_gp0_RRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_gp0_WDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_gp0_WSTRB;
  wire [0:0]m02_couplers_to_axi_interconnect_gp0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [11:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_gp0_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_gp0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_gp0_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_gp0_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_gp0_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_gp0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_gp0_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_gp0_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_gp0_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_gp0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_gp0_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_gp0_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_gp0_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_gp0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_gp0_WDATA;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_gp0_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_gp0_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_interconnect_gp0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_gp0_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_interconnect_gp0_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_interconnect_gp0_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_interconnect_gp0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_gp0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_gp0_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_interconnect_gp0_WVALID;
  assign S00_AXI_arready = axi_interconnect_gp0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_gp0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_gp0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_gp0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_gp0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_gp0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_gp0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_gp0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_gp0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_gp0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_gp0_to_s00_couplers_WREADY;
  assign axi_interconnect_gp0_ACLK_net = ACLK;
  assign axi_interconnect_gp0_ARESETN_net = ARESETN;
  assign axi_interconnect_gp0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_gp0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_gp0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_gp0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_gp0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_gp0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_gp0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_gp0_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_gp0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_gp0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_gp0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_gp0_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_gp0_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_gp0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_gp0_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_gp0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_gp0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_gp0_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_gp0_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_gp0_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_gp0_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_gp0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_gp0_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_gp0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_gp0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_gp0_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_gp0_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_interconnect_gp0_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_interconnect_gp0_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_interconnect_gp0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_gp0_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_interconnect_gp0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_gp0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_gp0_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_interconnect_gp0_WREADY = M02_AXI_wready[0];
  m00_couplers_imp_18MUXGO m00_couplers
       (.M_ACLK(axi_interconnect_gp0_ACLK_net),
        .M_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_gp0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_gp0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_gp0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_gp0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_gp0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_gp0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_gp0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_gp0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_gp0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_gp0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_gp0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_gp0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_gp0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_gp0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_gp0_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_gp0_WVALID),
        .S_ACLK(axi_interconnect_gp0_ACLK_net),
        .S_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_X30Q0G m01_couplers
       (.M_ACLK(axi_interconnect_gp0_ACLK_net),
        .M_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_gp0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_gp0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_gp0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_gp0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_gp0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_gp0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_gp0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_gp0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_gp0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_gp0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_gp0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_gp0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_gp0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_gp0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_gp0_WREADY),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_gp0_WVALID),
        .S_ACLK(axi_interconnect_gp0_ACLK_net),
        .S_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1MXQVQ1 m02_couplers
       (.M_ACLK(axi_interconnect_gp0_ACLK_net),
        .M_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_gp0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_gp0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_gp0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_gp0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_gp0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_gp0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_gp0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_gp0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_gp0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_gp0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_gp0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_gp0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_gp0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_gp0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_gp0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_gp0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_gp0_WVALID),
        .S_ACLK(axi_interconnect_gp0_ACLK_net),
        .S_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_FSXINO s00_couplers
       (.M_ACLK(axi_interconnect_gp0_ACLK_net),
        .M_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_gp0_ACLK_net),
        .S_ARESETN(axi_interconnect_gp0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_gp0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_gp0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_gp0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_gp0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_gp0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_gp0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_gp0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_gp0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_gp0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_gp0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_gp0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_gp0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_gp0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_gp0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_gp0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_gp0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_gp0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_gp0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_gp0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_gp0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_gp0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_gp0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_gp0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_gp0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_gp0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_gp0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_gp0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_gp0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_gp0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_gp0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_gp0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_gp0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_gp0_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_gp0_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_gp0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_gp0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_gp0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_gp0_to_s00_couplers_WVALID));
  bajie7020_xbar_0 xbar
       (.aclk(axi_interconnect_gp0_ACLK_net),
        .aresetn(axi_interconnect_gp0_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[7:0]}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module bajie7020_axi_interconnect_hp0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_hp0_ACLK_net;
  wire axi_interconnect_hp0_ARESETN_net;
  wire [31:0]axi_interconnect_hp0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_hp0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_hp0_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_hp0_to_s00_couplers_AWLEN;
  wire [2:0]axi_interconnect_hp0_to_s00_couplers_AWPROT;
  wire axi_interconnect_hp0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_hp0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_hp0_to_s00_couplers_AWVALID;
  wire axi_interconnect_hp0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_hp0_to_s00_couplers_BRESP;
  wire axi_interconnect_hp0_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_hp0_to_s00_couplers_WDATA;
  wire axi_interconnect_hp0_to_s00_couplers_WLAST;
  wire axi_interconnect_hp0_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_hp0_to_s00_couplers_WSTRB;
  wire axi_interconnect_hp0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_hp0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_hp0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_hp0_AWCACHE;
  wire [3:0]s00_couplers_to_axi_interconnect_hp0_AWLEN;
  wire [1:0]s00_couplers_to_axi_interconnect_hp0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_hp0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_hp0_AWQOS;
  wire s00_couplers_to_axi_interconnect_hp0_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_hp0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_hp0_AWVALID;
  wire s00_couplers_to_axi_interconnect_hp0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_hp0_BRESP;
  wire s00_couplers_to_axi_interconnect_hp0_BVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_hp0_WDATA;
  wire s00_couplers_to_axi_interconnect_hp0_WLAST;
  wire s00_couplers_to_axi_interconnect_hp0_WREADY;
  wire [7:0]s00_couplers_to_axi_interconnect_hp0_WSTRB;
  wire s00_couplers_to_axi_interconnect_hp0_WVALID;

  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_hp0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_hp0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_hp0_AWCACHE;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_interconnect_hp0_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_interconnect_hp0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_hp0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_hp0_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_hp0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_hp0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_hp0_BREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_interconnect_hp0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_hp0_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_interconnect_hp0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_hp0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_awready = axi_interconnect_hp0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_hp0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_hp0_to_s00_couplers_BVALID;
  assign S00_AXI_wready = axi_interconnect_hp0_to_s00_couplers_WREADY;
  assign axi_interconnect_hp0_ACLK_net = M00_ACLK;
  assign axi_interconnect_hp0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_hp0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_hp0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_hp0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_hp0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_hp0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_hp0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_hp0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_hp0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_hp0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_hp0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_hp0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_hp0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_hp0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_hp0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_hp0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_hp0_WREADY = M00_AXI_wready;
  s00_couplers_imp_1OOCKOB s00_couplers
       (.M_ACLK(axi_interconnect_hp0_ACLK_net),
        .M_ARESETN(axi_interconnect_hp0_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_hp0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_hp0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_hp0_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_hp0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_hp0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_hp0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_hp0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_hp0_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_hp0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_hp0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_hp0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_hp0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_hp0_BVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_hp0_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_hp0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_hp0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_hp0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_hp0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_awaddr(axi_interconnect_hp0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_hp0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_hp0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_hp0_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_hp0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_hp0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_hp0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_hp0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_hp0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_hp0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_hp0_to_s00_couplers_BVALID),
        .S_AXI_wdata(axi_interconnect_hp0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_hp0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_hp0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_hp0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_hp0_to_s00_couplers_WVALID));
endmodule

module m00_couplers_imp_18MUXGO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_1SUNL9N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [2:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [2:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [0:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [0:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [0:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[2:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[2:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  bajie7020_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_X30Q0G
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1MXQVQ1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module rfb_fir_imp_1XB3GYN
   (M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    fir_aclk,
    fir_aresetn,
    fir_reset,
    m_axis_aclk,
    s_axis_aclk,
    s_axis_aresetn,
    transfer_dropped);
  output [63:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;
  input fir_aclk;
  input fir_aresetn;
  input fir_reset;
  input m_axis_aclk;
  input s_axis_aclk;
  input s_axis_aresetn;
  output transfer_dropped;

  wire [63:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [31:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_1_M_AXIS_TUSER;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [63:0]fir_compiler_0_M_AXIS_DATA_TDATA;
  wire [1:0]fir_compiler_0_M_AXIS_DATA_TUSER;
  wire fir_compiler_0_M_AXIS_DATA_TVALID;
  wire proc_sys_reset_rfb_288M_peripheral_aresetn;
  wire proc_sys_reset_rfb_fclk_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire reset_1;
  wire rfb_fir_out_transfer_dropped_0;
  wire [23:0]rfbdes_0_M_AXIS_TDATA;
  wire [0:0]rfbdes_0_M_AXIS_TUSER;
  wire rfbdes_0_M_AXIS_TVALID;
  wire util_ds_buf_rfb_fclk_IBUF_OUT;

  assign Conn1_TREADY = M_AXIS_tready;
  assign M_AXIS_tdata[63:0] = Conn1_TDATA;
  assign M_AXIS_tlast = Conn1_TLAST;
  assign M_AXIS_tvalid = Conn1_TVALID;
  assign proc_sys_reset_rfb_288M_peripheral_aresetn = fir_aresetn;
  assign proc_sys_reset_rfb_fclk_peripheral_aresetn = s_axis_aresetn;
  assign processing_system7_0_FCLK_CLK0 = m_axis_aclk;
  assign processing_system7_0_FCLK_CLK1 = fir_aclk;
  assign reset_1 = fir_reset;
  assign rfbdes_0_M_AXIS_TDATA = S_AXIS_tdata[23:0];
  assign rfbdes_0_M_AXIS_TUSER = S_AXIS_tuser[0];
  assign rfbdes_0_M_AXIS_TVALID = S_AXIS_tvalid;
  assign transfer_dropped = rfb_fir_out_transfer_dropped_0;
  assign util_ds_buf_rfb_fclk_IBUF_OUT = s_axis_aclk;
  bajie7020_fir_compiler_0_0 fir_compiler_0
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aresetn(1'b1),
        .m_axis_data_tdata(fir_compiler_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tuser(fir_compiler_0_M_AXIS_DATA_TUSER),
        .m_axis_data_tvalid(fir_compiler_0_M_AXIS_DATA_TVALID),
        .s_axis_data_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .s_axis_data_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .s_axis_data_tuser(axis_data_fifo_1_M_AXIS_TUSER),
        .s_axis_data_tvalid(axis_data_fifo_1_M_AXIS_TVALID));
  rfb_fir_in_imp_MBIF6R rfb_fir_in
       (.M_AXIS_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .M_AXIS_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .M_AXIS_tuser(axis_data_fifo_1_M_AXIS_TUSER),
        .M_AXIS_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .S_AXIS_tdata(rfbdes_0_M_AXIS_TDATA),
        .S_AXIS_tuser(rfbdes_0_M_AXIS_TUSER),
        .S_AXIS_tvalid(rfbdes_0_M_AXIS_TVALID),
        .m_axis_aclk(processing_system7_0_FCLK_CLK1),
        .s_axis_aclk(util_ds_buf_rfb_fclk_IBUF_OUT),
        .s_axis_aresetn(proc_sys_reset_rfb_fclk_peripheral_aresetn));
  rfb_fir_out_imp_19ITTPK rfb_fir_out
       (.M_AXIS_tdata(Conn1_TDATA),
        .M_AXIS_tlast(Conn1_TLAST),
        .M_AXIS_tready(Conn1_TREADY),
        .M_AXIS_tvalid(Conn1_TVALID),
        .S_AXIS_tdata(fir_compiler_0_M_AXIS_DATA_TDATA),
        .S_AXIS_tuser(fir_compiler_0_M_AXIS_DATA_TUSER),
        .S_AXIS_tvalid(fir_compiler_0_M_AXIS_DATA_TVALID),
        .m_axis_aclk(processing_system7_0_FCLK_CLK0),
        .s_axis_aclk(processing_system7_0_FCLK_CLK1),
        .s_axis_aresetn(proc_sys_reset_rfb_288M_peripheral_aresetn),
        .s_axis_reset(reset_1),
        .transfer_dropped(rfb_fir_out_transfer_dropped_0));
endmodule

module rfb_fir_in_imp_MBIF6R
   (M_AXIS_tdata,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    m_axis_aclk,
    s_axis_aclk,
    s_axis_aresetn);
  output [31:0]M_AXIS_tdata;
  input M_AXIS_tready;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;
  input m_axis_aclk;
  input s_axis_aclk;
  input s_axis_aresetn;

  wire [31:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_1_M_AXIS_TUSER;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [31:0]axis_subset_converter_0_M_AXIS_TDATA;
  wire axis_subset_converter_0_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_0_M_AXIS_TUSER;
  wire axis_subset_converter_0_M_AXIS_TVALID;
  wire proc_sys_reset_rfb_fclk_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK1;
  wire [23:0]rfbdes_0_M_AXIS_TDATA;
  wire [0:0]rfbdes_0_M_AXIS_TUSER;
  wire rfbdes_0_M_AXIS_TVALID;
  wire util_ds_buf_rfb_fclk_IBUF_OUT;

  assign M_AXIS_tdata[31:0] = axis_data_fifo_1_M_AXIS_TDATA;
  assign M_AXIS_tuser[0] = axis_data_fifo_1_M_AXIS_TUSER;
  assign M_AXIS_tvalid = axis_data_fifo_1_M_AXIS_TVALID;
  assign axis_data_fifo_1_M_AXIS_TREADY = M_AXIS_tready;
  assign proc_sys_reset_rfb_fclk_peripheral_aresetn = s_axis_aresetn;
  assign processing_system7_0_FCLK_CLK1 = m_axis_aclk;
  assign rfbdes_0_M_AXIS_TDATA = S_AXIS_tdata[23:0];
  assign rfbdes_0_M_AXIS_TUSER = S_AXIS_tuser[0];
  assign rfbdes_0_M_AXIS_TVALID = S_AXIS_tvalid;
  assign util_ds_buf_rfb_fclk_IBUF_OUT = s_axis_aclk;
  bajie7020_axis_data_fifo_1_0 axis_data_fifo_1
       (.m_axis_aclk(processing_system7_0_FCLK_CLK1),
        .m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_1_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(util_ds_buf_rfb_fclk_IBUF_OUT),
        .s_axis_aresetn(proc_sys_reset_rfb_fclk_peripheral_aresetn),
        .s_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .s_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .s_axis_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID));
  bajie7020_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(util_ds_buf_rfb_fclk_IBUF_OUT),
        .aresetn(proc_sys_reset_rfb_fclk_peripheral_aresetn),
        .m_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(rfbdes_0_M_AXIS_TDATA),
        .s_axis_tuser(rfbdes_0_M_AXIS_TUSER),
        .s_axis_tvalid(rfbdes_0_M_AXIS_TVALID));
endmodule

module rfb_fir_out_imp_19ITTPK
   (M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    m_axis_aclk,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_reset,
    transfer_dropped);
  output [63:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tuser;
  input S_AXIS_tvalid;
  input m_axis_aclk;
  input s_axis_aclk;
  input s_axis_aresetn;
  input s_axis_reset;
  output transfer_dropped;

  wire [63:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [63:0]axis_subset_converter_1_M_AXIS_TDATA;
  wire axis_subset_converter_1_M_AXIS_TLAST;
  wire axis_subset_converter_1_M_AXIS_TREADY;
  wire axis_subset_converter_1_M_AXIS_TVALID;
  wire axis_subset_converter_1_transfer_dropped;
  wire [63:0]fir_compiler_0_M_AXIS_DATA_TDATA;
  wire [1:0]fir_compiler_0_M_AXIS_DATA_TUSER;
  wire fir_compiler_0_M_AXIS_DATA_TVALID;
  wire [63:0]firoutmixer_0_M_AXIS_TDATA;
  wire firoutmixer_0_M_AXIS_TVALID;
  wire proc_sys_reset_rfb_288M_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire reset_1;

  assign Conn1_TREADY = M_AXIS_tready;
  assign M_AXIS_tdata[63:0] = Conn1_TDATA;
  assign M_AXIS_tlast = Conn1_TLAST;
  assign M_AXIS_tvalid = Conn1_TVALID;
  assign fir_compiler_0_M_AXIS_DATA_TDATA = S_AXIS_tdata[63:0];
  assign fir_compiler_0_M_AXIS_DATA_TUSER = S_AXIS_tuser[1:0];
  assign fir_compiler_0_M_AXIS_DATA_TVALID = S_AXIS_tvalid;
  assign proc_sys_reset_rfb_288M_peripheral_aresetn = s_axis_aresetn;
  assign processing_system7_0_FCLK_CLK0 = m_axis_aclk;
  assign processing_system7_0_FCLK_CLK1 = s_axis_aclk;
  assign reset_1 = s_axis_reset;
  assign transfer_dropped = axis_subset_converter_1_transfer_dropped;
  bajie7020_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_aclk(processing_system7_0_FCLK_CLK0),
        .m_axis_tdata(Conn1_TDATA),
        .m_axis_tlast(Conn1_TLAST),
        .m_axis_tready(Conn1_TREADY),
        .m_axis_tvalid(Conn1_TVALID),
        .s_axis_aclk(processing_system7_0_FCLK_CLK1),
        .s_axis_aresetn(proc_sys_reset_rfb_288M_peripheral_aresetn),
        .s_axis_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .s_axis_tdest({1'b0,1'b0}),
        .s_axis_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .s_axis_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_subset_converter_1_M_AXIS_TVALID));
  bajie7020_axis_subset_converter_1_0 axis_subset_converter_1
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aresetn(proc_sys_reset_rfb_288M_peripheral_aresetn),
        .m_axis_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .m_axis_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_subset_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(firoutmixer_0_M_AXIS_TDATA),
        .s_axis_tlast(1'b0),
        .s_axis_tvalid(firoutmixer_0_M_AXIS_TVALID),
        .transfer_dropped(axis_subset_converter_1_transfer_dropped));
  bajie7020_firoutmixer_0_0 firoutmixer_0
       (.clk(processing_system7_0_FCLK_CLK1),
        .m_axis_data(firoutmixer_0_M_AXIS_TDATA),
        .m_axis_valid(firoutmixer_0_M_AXIS_TVALID),
        .reset(reset_1),
        .s_axis_data(fir_compiler_0_M_AXIS_DATA_TDATA),
        .s_axis_user(fir_compiler_0_M_AXIS_DATA_TUSER[0]),
        .s_axis_valid(fir_compiler_0_M_AXIS_DATA_TVALID));
endmodule

module s00_couplers_imp_1OOCKOB
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  bajie7020_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_FSXINO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  bajie7020_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_VIESS7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
endmodule

module s01_couplers_imp_1A6MFSF
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [63:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WLAST;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [7:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast[0] = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast[0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule
