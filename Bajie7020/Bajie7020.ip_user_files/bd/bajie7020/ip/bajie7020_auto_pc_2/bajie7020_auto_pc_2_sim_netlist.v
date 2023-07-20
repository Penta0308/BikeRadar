// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Jul 16 17:44:34 2023
// Host        : Penta0308-15U560-U running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_auto_pc_2/bajie7020_auto_pc_2_sim_netlist.v
// Design      : bajie7020_auto_pc_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bajie7020_auto_pc_2,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module bajie7020_auto_pc_2
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 133333344, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 133333344, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 133333344, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_bready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "0" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[3:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_axic_fifo" *) 
module bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo
   (\goreg_dm.dout_i_reg[4] ,
    full,
    empty_fwft_i_reg,
    din,
    wr_en,
    cmd_b_push_block_reg,
    m_axi_awvalid,
    E,
    \areset_d_reg[0] ,
    S_AXI_AREADY_I_reg,
    aclk,
    SR,
    Q,
    \goreg_dm.dout_i_reg[4]_0 ,
    command_ongoing,
    cmd_push_block,
    \pushed_commands_reg[3] ,
    cmd_b_push_block,
    cmd_b_push_block_reg_0,
    m_axi_awready,
    need_to_split_q,
    access_is_incr_q,
    S_AXI_AREADY_I_i_3,
    S_AXI_AREADY_I_reg_0,
    command_ongoing_reg,
    s_axi_awvalid,
    command_ongoing_reg_0);
  output [4:0]\goreg_dm.dout_i_reg[4] ;
  output full;
  output empty_fwft_i_reg;
  output [0:0]din;
  output wr_en;
  output cmd_b_push_block_reg;
  output m_axi_awvalid;
  output [0:0]E;
  output \areset_d_reg[0] ;
  output S_AXI_AREADY_I_reg;
  input aclk;
  input [0:0]SR;
  input [3:0]Q;
  input \goreg_dm.dout_i_reg[4]_0 ;
  input command_ongoing;
  input cmd_push_block;
  input \pushed_commands_reg[3] ;
  input cmd_b_push_block;
  input [0:0]cmd_b_push_block_reg_0;
  input m_axi_awready;
  input need_to_split_q;
  input access_is_incr_q;
  input [3:0]S_AXI_AREADY_I_i_3;
  input [1:0]S_AXI_AREADY_I_reg_0;
  input command_ongoing_reg;
  input s_axi_awvalid;
  input command_ongoing_reg_0;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]S_AXI_AREADY_I_i_3;
  wire S_AXI_AREADY_I_reg;
  wire [1:0]S_AXI_AREADY_I_reg_0;
  wire access_is_incr_q;
  wire aclk;
  wire \areset_d_reg[0] ;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire [0:0]cmd_b_push_block_reg_0;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire [0:0]din;
  wire empty_fwft_i_reg;
  wire full;
  wire [4:0]\goreg_dm.dout_i_reg[4] ;
  wire \goreg_dm.dout_i_reg[4]_0 ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire need_to_split_q;
  wire \pushed_commands_reg[3] ;
  wire s_axi_awvalid;
  wire wr_en;

  bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_i_3_0(S_AXI_AREADY_I_i_3),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .\areset_d_reg[0] (\areset_d_reg[0] ),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(cmd_b_push_block_reg),
        .cmd_b_push_block_reg_0(cmd_b_push_block_reg_0),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .command_ongoing_reg_0(command_ongoing_reg_0),
        .din(din),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .full(full),
        .\goreg_dm.dout_i_reg[4] (\goreg_dm.dout_i_reg[4] ),
        .\goreg_dm.dout_i_reg[4]_0 (\goreg_dm.dout_i_reg[4]_0 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .need_to_split_q(need_to_split_q),
        .\pushed_commands_reg[3] (\pushed_commands_reg[3] ),
        .s_axi_awvalid(s_axi_awvalid),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_axic_fifo" *) 
module bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo__xdcDup__1
   (dout,
    full,
    empty,
    SR,
    m_axi_awlen,
    aresetn_0,
    m_axi_wready_0,
    m_axi_wvalid,
    aclk,
    wr_en,
    rd_en,
    aresetn,
    cmd_push_block_reg,
    cmd_push_block,
    command_ongoing,
    m_axi_awready,
    m_axi_wready,
    s_axi_wvalid,
    Q,
    \m_axi_awlen[3] ,
    need_to_split_q);
  output [3:0]dout;
  output full;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output aresetn_0;
  output m_axi_wready_0;
  output m_axi_wvalid;
  input aclk;
  input wr_en;
  input rd_en;
  input aresetn;
  input cmd_push_block_reg;
  input cmd_push_block;
  input command_ongoing;
  input m_axi_awready;
  input m_axi_wready;
  input s_axi_wvalid;
  input [3:0]Q;
  input [3:0]\m_axi_awlen[3] ;
  input need_to_split_q;

  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire full;
  wire [3:0]m_axi_awlen;
  wire [3:0]\m_axi_awlen[3] ;
  wire m_axi_awready;
  wire m_axi_wready;
  wire m_axi_wready_0;
  wire m_axi_wvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_wvalid;
  wire wr_en;

  bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen__xdcDup__1 inst
       (.Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_push_block_reg),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .full(full),
        .m_axi_awlen(m_axi_awlen),
        .\m_axi_awlen[3] (\m_axi_awlen[3] ),
        .m_axi_awready(m_axi_awready),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0(m_axi_wready_0),
        .m_axi_wvalid(m_axi_wvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_fifo_gen" *) 
module bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen
   (\goreg_dm.dout_i_reg[4] ,
    full,
    empty_fwft_i_reg,
    din,
    wr_en,
    cmd_b_push_block_reg,
    m_axi_awvalid,
    E,
    \areset_d_reg[0] ,
    S_AXI_AREADY_I_reg,
    aclk,
    SR,
    Q,
    \goreg_dm.dout_i_reg[4]_0 ,
    command_ongoing,
    cmd_push_block,
    \pushed_commands_reg[3] ,
    cmd_b_push_block,
    cmd_b_push_block_reg_0,
    m_axi_awready,
    need_to_split_q,
    access_is_incr_q,
    S_AXI_AREADY_I_i_3_0,
    S_AXI_AREADY_I_reg_0,
    command_ongoing_reg,
    s_axi_awvalid,
    command_ongoing_reg_0);
  output [4:0]\goreg_dm.dout_i_reg[4] ;
  output full;
  output empty_fwft_i_reg;
  output [0:0]din;
  output wr_en;
  output cmd_b_push_block_reg;
  output m_axi_awvalid;
  output [0:0]E;
  output \areset_d_reg[0] ;
  output S_AXI_AREADY_I_reg;
  input aclk;
  input [0:0]SR;
  input [3:0]Q;
  input \goreg_dm.dout_i_reg[4]_0 ;
  input command_ongoing;
  input cmd_push_block;
  input \pushed_commands_reg[3] ;
  input cmd_b_push_block;
  input [0:0]cmd_b_push_block_reg_0;
  input m_axi_awready;
  input need_to_split_q;
  input access_is_incr_q;
  input [3:0]S_AXI_AREADY_I_i_3_0;
  input [1:0]S_AXI_AREADY_I_reg_0;
  input command_ongoing_reg;
  input s_axi_awvalid;
  input command_ongoing_reg_0;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]S_AXI_AREADY_I_i_3_0;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_i_4_n_0;
  wire S_AXI_AREADY_I_reg;
  wire [1:0]S_AXI_AREADY_I_reg_0;
  wire access_is_incr_q;
  wire aclk;
  wire \areset_d_reg[0] ;
  wire cmd_b_push;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire [0:0]cmd_b_push_block_reg_0;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire [0:0]din;
  wire empty_fwft_i_reg;
  wire full;
  wire [4:0]\goreg_dm.dout_i_reg[4] ;
  wire \goreg_dm.dout_i_reg[4]_0 ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire need_to_split_q;
  wire \pushed_commands_reg[3] ;
  wire s_axi_awvalid;
  wire wr_en;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'h444444F4FFFF44F4)) 
    S_AXI_AREADY_I_i_2
       (.I0(S_AXI_AREADY_I_reg_0[0]),
        .I1(S_AXI_AREADY_I_reg_0[1]),
        .I2(E),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(command_ongoing_reg),
        .I5(s_axi_awvalid),
        .O(\areset_d_reg[0] ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    S_AXI_AREADY_I_i_3
       (.I0(access_is_incr_q),
        .I1(S_AXI_AREADY_I_i_4_n_0),
        .I2(Q[0]),
        .I3(S_AXI_AREADY_I_i_3_0[0]),
        .I4(Q[2]),
        .I5(S_AXI_AREADY_I_i_3_0[2]),
        .O(S_AXI_AREADY_I_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    S_AXI_AREADY_I_i_4
       (.I0(Q[3]),
        .I1(S_AXI_AREADY_I_i_3_0[3]),
        .I2(Q[1]),
        .I3(S_AXI_AREADY_I_i_3_0[1]),
        .O(S_AXI_AREADY_I_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEAEAEE)) 
    cmd_b_push_block_i_1
       (.I0(cmd_b_push_block),
        .I1(command_ongoing),
        .I2(cmd_push_block),
        .I3(full),
        .I4(\pushed_commands_reg[3] ),
        .I5(cmd_b_push_block_reg_0),
        .O(cmd_b_push_block_reg));
  LUT6 #(
    .INIT(64'hFFFFFDDD0000F000)) 
    command_ongoing_i_1
       (.I0(E),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(command_ongoing_reg),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_reg_0),
        .I5(command_ongoing),
        .O(S_AXI_AREADY_I_reg));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  bajie7020_auto_pc_2_fifo_generator_v13_2_7 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({din,Q}),
        .dout(\goreg_dm.dout_i_reg[4] ),
        .empty(empty_fwft_i_reg),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(\goreg_dm.dout_i_reg[4]_0 ),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_b_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_1
       (.I0(need_to_split_q),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .O(din));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    fifo_gen_inst_i_1__0
       (.I0(command_ongoing),
        .I1(cmd_push_block),
        .I2(full),
        .I3(\pushed_commands_reg[3] ),
        .O(wr_en));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h40404044)) 
    fifo_gen_inst_i_2
       (.I0(cmd_b_push_block),
        .I1(command_ongoing),
        .I2(cmd_push_block),
        .I3(full),
        .I4(\pushed_commands_reg[3] ),
        .O(cmd_b_push));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h888A)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(cmd_push_block),
        .I2(full),
        .I3(\pushed_commands_reg[3] ),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80808088)) 
    split_ongoing_i_1
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(cmd_push_block),
        .I3(full),
        .I4(\pushed_commands_reg[3] ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_fifo_gen" *) 
module bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen__xdcDup__1
   (dout,
    full,
    empty,
    SR,
    m_axi_awlen,
    aresetn_0,
    m_axi_wready_0,
    m_axi_wvalid,
    aclk,
    wr_en,
    rd_en,
    aresetn,
    cmd_push_block_reg,
    cmd_push_block,
    command_ongoing,
    m_axi_awready,
    m_axi_wready,
    s_axi_wvalid,
    Q,
    \m_axi_awlen[3] ,
    need_to_split_q);
  output [3:0]dout;
  output full;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output aresetn_0;
  output m_axi_wready_0;
  output m_axi_wvalid;
  input aclk;
  input wr_en;
  input rd_en;
  input aresetn;
  input cmd_push_block_reg;
  input cmd_push_block;
  input command_ongoing;
  input m_axi_awready;
  input m_axi_wready;
  input s_axi_wvalid;
  input [3:0]Q;
  input [3:0]\m_axi_awlen[3] ;
  input need_to_split_q;

  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire full;
  wire [3:0]m_axi_awlen;
  wire [3:0]\m_axi_awlen[3] ;
  wire m_axi_awready;
  wire m_axi_wready;
  wire m_axi_wready_0;
  wire m_axi_wvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_wvalid;
  wire wr_en;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000AA00AA02AA00)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(full),
        .I2(cmd_push_block_reg),
        .I3(cmd_push_block),
        .I4(command_ongoing),
        .I5(m_axi_awready),
        .O(aresetn_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  bajie7020_auto_pc_2_fifo_generator_v13_2_7__xdcDup__1 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \m_axi_awlen[0]_INST_0 
       (.I0(Q[0]),
        .I1(\m_axi_awlen[3] [3]),
        .I2(\m_axi_awlen[3] [2]),
        .I3(\m_axi_awlen[3] [1]),
        .I4(\m_axi_awlen[3] [0]),
        .I5(need_to_split_q),
        .O(m_axi_awlen[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \m_axi_awlen[1]_INST_0 
       (.I0(Q[1]),
        .I1(\m_axi_awlen[3] [3]),
        .I2(\m_axi_awlen[3] [2]),
        .I3(\m_axi_awlen[3] [1]),
        .I4(\m_axi_awlen[3] [0]),
        .I5(need_to_split_q),
        .O(m_axi_awlen[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \m_axi_awlen[2]_INST_0 
       (.I0(Q[2]),
        .I1(\m_axi_awlen[3] [3]),
        .I2(\m_axi_awlen[3] [2]),
        .I3(\m_axi_awlen[3] [1]),
        .I4(\m_axi_awlen[3] [0]),
        .I5(need_to_split_q),
        .O(m_axi_awlen[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \m_axi_awlen[3]_INST_0 
       (.I0(Q[3]),
        .I1(\m_axi_awlen[3] [3]),
        .I2(\m_axi_awlen[3] [2]),
        .I3(\m_axi_awlen[3] [1]),
        .I4(\m_axi_awlen[3] [0]),
        .I5(need_to_split_q),
        .O(m_axi_awlen[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    s_axi_wready_INST_0
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .O(m_axi_wready_0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_a_axi3_conv" *) 
module bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv
   (dout,
    empty,
    aresetn_0,
    m_axi_awlen,
    \goreg_dm.dout_i_reg[4] ,
    empty_fwft_i_reg,
    E,
    m_axi_awaddr,
    m_axi_awvalid,
    m_axi_wready_0,
    m_axi_wvalid,
    m_axi_awlock,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    \goreg_dm.dout_i_reg[4]_0 ,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    aresetn,
    m_axi_awready,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output aresetn_0;
  output [3:0]m_axi_awlen;
  output [4:0]\goreg_dm.dout_i_reg[4] ;
  output empty_fwft_i_reg;
  output [0:0]E;
  output [31:0]m_axi_awaddr;
  output m_axi_awvalid;
  output m_axi_wready_0;
  output m_axi_wvalid;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input \goreg_dm.dout_i_reg[4]_0 ;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input aresetn;
  input m_axi_awready;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [31:0]S_AXI_AADDR_Q;
  wire [3:0]S_AXI_ALEN_Q;
  wire \S_AXI_ALOCK_Q_reg_n_0_[0] ;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_12 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_13 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_8 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_9 ;
  wire access_is_incr;
  wire access_is_incr_q;
  wire aclk;
  wire [11:5]addr_step;
  wire [11:5]addr_step_q;
  wire \addr_step_q[6]_i_1_n_0 ;
  wire \addr_step_q[7]_i_1_n_0 ;
  wire \addr_step_q[8]_i_1_n_0 ;
  wire \addr_step_q[9]_i_1_n_0 ;
  wire [1:0]areset_d;
  wire aresetn;
  wire aresetn_0;
  wire cmd_b_push_block;
  wire cmd_b_split_i;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire [11:4]first_step;
  wire [11:0]first_step_q;
  wire \first_step_q[0]_i_1_n_0 ;
  wire \first_step_q[10]_i_2_n_0 ;
  wire \first_step_q[11]_i_2_n_0 ;
  wire \first_step_q[1]_i_1_n_0 ;
  wire \first_step_q[2]_i_1_n_0 ;
  wire \first_step_q[3]_i_1_n_0 ;
  wire \first_step_q[6]_i_2_n_0 ;
  wire \first_step_q[7]_i_2_n_0 ;
  wire \first_step_q[8]_i_2_n_0 ;
  wire \first_step_q[9]_i_2_n_0 ;
  wire [4:0]\goreg_dm.dout_i_reg[4] ;
  wire \goreg_dm.dout_i_reg[4]_0 ;
  wire incr_need_to_split__0;
  wire \inst/full ;
  wire \inst/full_0 ;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wready_0;
  wire m_axi_wvalid;
  wire need_to_split_q;
  wire [31:0]next_mi_addr;
  wire \next_mi_addr[11]_i_2_n_0 ;
  wire \next_mi_addr[11]_i_3_n_0 ;
  wire \next_mi_addr[11]_i_4_n_0 ;
  wire \next_mi_addr[11]_i_5_n_0 ;
  wire \next_mi_addr[11]_i_6_n_0 ;
  wire \next_mi_addr[15]_i_2_n_0 ;
  wire \next_mi_addr[15]_i_3_n_0 ;
  wire \next_mi_addr[15]_i_4_n_0 ;
  wire \next_mi_addr[15]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_6_n_0 ;
  wire \next_mi_addr[15]_i_7_n_0 ;
  wire \next_mi_addr[15]_i_8_n_0 ;
  wire \next_mi_addr[15]_i_9_n_0 ;
  wire \next_mi_addr[19]_i_2_n_0 ;
  wire \next_mi_addr[19]_i_3_n_0 ;
  wire \next_mi_addr[19]_i_4_n_0 ;
  wire \next_mi_addr[19]_i_5_n_0 ;
  wire \next_mi_addr[23]_i_2_n_0 ;
  wire \next_mi_addr[23]_i_3_n_0 ;
  wire \next_mi_addr[23]_i_4_n_0 ;
  wire \next_mi_addr[23]_i_5_n_0 ;
  wire \next_mi_addr[27]_i_2_n_0 ;
  wire \next_mi_addr[27]_i_3_n_0 ;
  wire \next_mi_addr[27]_i_4_n_0 ;
  wire \next_mi_addr[27]_i_5_n_0 ;
  wire \next_mi_addr[31]_i_2_n_0 ;
  wire \next_mi_addr[31]_i_3_n_0 ;
  wire \next_mi_addr[31]_i_4_n_0 ;
  wire \next_mi_addr[31]_i_5_n_0 ;
  wire \next_mi_addr[3]_i_2_n_0 ;
  wire \next_mi_addr[3]_i_3_n_0 ;
  wire \next_mi_addr[3]_i_4_n_0 ;
  wire \next_mi_addr[3]_i_5_n_0 ;
  wire \next_mi_addr[3]_i_6_n_0 ;
  wire \next_mi_addr[7]_i_2_n_0 ;
  wire \next_mi_addr[7]_i_3_n_0 ;
  wire \next_mi_addr[7]_i_4_n_0 ;
  wire \next_mi_addr[7]_i_5_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_1 ;
  wire \next_mi_addr_reg[11]_i_1_n_2 ;
  wire \next_mi_addr_reg[11]_i_1_n_3 ;
  wire \next_mi_addr_reg[11]_i_1_n_4 ;
  wire \next_mi_addr_reg[11]_i_1_n_5 ;
  wire \next_mi_addr_reg[11]_i_1_n_6 ;
  wire \next_mi_addr_reg[11]_i_1_n_7 ;
  wire \next_mi_addr_reg[15]_i_1_n_0 ;
  wire \next_mi_addr_reg[15]_i_1_n_1 ;
  wire \next_mi_addr_reg[15]_i_1_n_2 ;
  wire \next_mi_addr_reg[15]_i_1_n_3 ;
  wire \next_mi_addr_reg[15]_i_1_n_4 ;
  wire \next_mi_addr_reg[15]_i_1_n_5 ;
  wire \next_mi_addr_reg[15]_i_1_n_6 ;
  wire \next_mi_addr_reg[15]_i_1_n_7 ;
  wire \next_mi_addr_reg[19]_i_1_n_0 ;
  wire \next_mi_addr_reg[19]_i_1_n_1 ;
  wire \next_mi_addr_reg[19]_i_1_n_2 ;
  wire \next_mi_addr_reg[19]_i_1_n_3 ;
  wire \next_mi_addr_reg[19]_i_1_n_4 ;
  wire \next_mi_addr_reg[19]_i_1_n_5 ;
  wire \next_mi_addr_reg[19]_i_1_n_6 ;
  wire \next_mi_addr_reg[19]_i_1_n_7 ;
  wire \next_mi_addr_reg[23]_i_1_n_0 ;
  wire \next_mi_addr_reg[23]_i_1_n_1 ;
  wire \next_mi_addr_reg[23]_i_1_n_2 ;
  wire \next_mi_addr_reg[23]_i_1_n_3 ;
  wire \next_mi_addr_reg[23]_i_1_n_4 ;
  wire \next_mi_addr_reg[23]_i_1_n_5 ;
  wire \next_mi_addr_reg[23]_i_1_n_6 ;
  wire \next_mi_addr_reg[23]_i_1_n_7 ;
  wire \next_mi_addr_reg[27]_i_1_n_0 ;
  wire \next_mi_addr_reg[27]_i_1_n_1 ;
  wire \next_mi_addr_reg[27]_i_1_n_2 ;
  wire \next_mi_addr_reg[27]_i_1_n_3 ;
  wire \next_mi_addr_reg[27]_i_1_n_4 ;
  wire \next_mi_addr_reg[27]_i_1_n_5 ;
  wire \next_mi_addr_reg[27]_i_1_n_6 ;
  wire \next_mi_addr_reg[27]_i_1_n_7 ;
  wire \next_mi_addr_reg[31]_i_1_n_1 ;
  wire \next_mi_addr_reg[31]_i_1_n_2 ;
  wire \next_mi_addr_reg[31]_i_1_n_3 ;
  wire \next_mi_addr_reg[31]_i_1_n_4 ;
  wire \next_mi_addr_reg[31]_i_1_n_5 ;
  wire \next_mi_addr_reg[31]_i_1_n_6 ;
  wire \next_mi_addr_reg[31]_i_1_n_7 ;
  wire \next_mi_addr_reg[3]_i_1_n_0 ;
  wire \next_mi_addr_reg[3]_i_1_n_1 ;
  wire \next_mi_addr_reg[3]_i_1_n_2 ;
  wire \next_mi_addr_reg[3]_i_1_n_3 ;
  wire \next_mi_addr_reg[3]_i_1_n_4 ;
  wire \next_mi_addr_reg[3]_i_1_n_5 ;
  wire \next_mi_addr_reg[3]_i_1_n_6 ;
  wire \next_mi_addr_reg[3]_i_1_n_7 ;
  wire \next_mi_addr_reg[7]_i_1_n_0 ;
  wire \next_mi_addr_reg[7]_i_1_n_1 ;
  wire \next_mi_addr_reg[7]_i_1_n_2 ;
  wire \next_mi_addr_reg[7]_i_1_n_3 ;
  wire \next_mi_addr_reg[7]_i_1_n_4 ;
  wire \next_mi_addr_reg[7]_i_1_n_5 ;
  wire \next_mi_addr_reg[7]_i_1_n_6 ;
  wire \next_mi_addr_reg[7]_i_1_n_7 ;
  wire [3:0]num_transactions_q;
  wire [3:0]p_0_in;
  wire \pushed_commands[3]_i_1_n_0 ;
  wire [3:0]pushed_commands_reg;
  wire pushed_new_cmd;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire [6:0]size_mask;
  wire [31:0]size_mask_q;
  wire split_ongoing;
  wire [3:3]\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED ;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(S_AXI_AADDR_Q[0]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(S_AXI_AADDR_Q[10]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(S_AXI_AADDR_Q[11]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(S_AXI_AADDR_Q[12]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(S_AXI_AADDR_Q[13]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(S_AXI_AADDR_Q[14]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(S_AXI_AADDR_Q[15]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(S_AXI_AADDR_Q[16]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(S_AXI_AADDR_Q[17]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(S_AXI_AADDR_Q[18]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(S_AXI_AADDR_Q[19]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(S_AXI_AADDR_Q[1]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(S_AXI_AADDR_Q[20]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(S_AXI_AADDR_Q[21]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(S_AXI_AADDR_Q[22]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(S_AXI_AADDR_Q[23]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(S_AXI_AADDR_Q[24]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(S_AXI_AADDR_Q[25]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(S_AXI_AADDR_Q[26]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(S_AXI_AADDR_Q[27]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(S_AXI_AADDR_Q[28]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(S_AXI_AADDR_Q[29]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(S_AXI_AADDR_Q[2]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(S_AXI_AADDR_Q[30]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(S_AXI_AADDR_Q[31]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(S_AXI_AADDR_Q[3]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(S_AXI_AADDR_Q[4]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(S_AXI_AADDR_Q[5]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(S_AXI_AADDR_Q[6]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(S_AXI_AADDR_Q[7]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(S_AXI_AADDR_Q[8]),
        .R(aresetn_0));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(S_AXI_AADDR_Q[9]),
        .R(aresetn_0));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(aresetn_0));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(aresetn_0));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(aresetn_0));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(aresetn_0));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(aresetn_0));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(aresetn_0));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(S_AXI_ALEN_Q[0]),
        .R(aresetn_0));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(S_AXI_ALEN_Q[1]),
        .R(aresetn_0));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(S_AXI_ALEN_Q[2]),
        .R(aresetn_0));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(S_AXI_ALEN_Q[3]),
        .R(aresetn_0));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .R(aresetn_0));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(aresetn_0));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(aresetn_0));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(aresetn_0));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(aresetn_0));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(aresetn_0));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(aresetn_0));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_12 ),
        .Q(E),
        .R(aresetn_0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(aresetn_0));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(aresetn_0));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(aresetn_0));
  bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo__xdcDup__1 \USE_BURSTS.cmd_queue 
       (.Q(S_AXI_ALEN_Q),
        .SR(aresetn_0),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_11 ),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(\inst/full_0 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .full(\inst/full ),
        .m_axi_awlen(m_axi_awlen),
        .\m_axi_awlen[3] (pushed_commands_reg),
        .m_axi_awready(m_axi_awready),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0(m_axi_wready_0),
        .m_axi_wvalid(m_axi_wvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_en(\USE_B_CHANNEL.cmd_b_queue_n_8 ));
  bajie7020_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo \USE_B_CHANNEL.cmd_b_queue 
       (.E(pushed_new_cmd),
        .Q(num_transactions_q),
        .SR(aresetn_0),
        .S_AXI_AREADY_I_i_3(pushed_commands_reg),
        .S_AXI_AREADY_I_reg(\USE_B_CHANNEL.cmd_b_queue_n_13 ),
        .S_AXI_AREADY_I_reg_0(areset_d),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .\areset_d_reg[0] (\USE_B_CHANNEL.cmd_b_queue_n_12 ),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(\USE_B_CHANNEL.cmd_b_queue_n_9 ),
        .cmd_b_push_block_reg_0(\pushed_commands[3]_i_1_n_0 ),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(E),
        .command_ongoing_reg_0(command_ongoing_i_2_n_0),
        .din(cmd_b_split_i),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .full(\inst/full_0 ),
        .\goreg_dm.dout_i_reg[4] (\goreg_dm.dout_i_reg[4] ),
        .\goreg_dm.dout_i_reg[4]_0 (\goreg_dm.dout_i_reg[4]_0 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .need_to_split_q(need_to_split_q),
        .\pushed_commands_reg[3] (\inst/full ),
        .s_axi_awvalid(s_axi_awvalid),
        .wr_en(\USE_B_CHANNEL.cmd_b_queue_n_8 ));
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(access_is_incr));
  FDRE #(
    .INIT(1'b0)) 
    access_is_incr_q_reg
       (.C(aclk),
        .CE(E),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr_step_q[10]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(addr_step[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr_step_q[11]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(addr_step[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[5]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(addr_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[6]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(\addr_step_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[7]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(\addr_step_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[8]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(\addr_step_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[9]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(\addr_step_q[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[10]),
        .Q(addr_step_q[10]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[11]),
        .Q(addr_step_q[11]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[5]),
        .Q(addr_step_q[5]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[6]_i_1_n_0 ),
        .Q(addr_step_q[6]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[7]_i_1_n_0 ),
        .Q(addr_step_q[7]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[8]_i_1_n_0 ),
        .Q(addr_step_q[8]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[9]_i_1_n_0 ),
        .Q(addr_step_q[9]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn_0),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_b_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_9 ),
        .Q(cmd_b_push_block),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(cmd_push_block),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    command_ongoing_i_2
       (.I0(areset_d[1]),
        .I1(areset_d[0]),
        .O(command_ongoing_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_13 ),
        .Q(command_ongoing),
        .R(aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \first_step_q[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[2]),
        .O(\first_step_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[10]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[10]));
  LUT6 #(
    .INIT(64'h2AAA800080000000)) 
    \first_step_q[10]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awsize[0]),
        .O(\first_step_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[11]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[11]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \first_step_q[11]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awlen[2]),
        .I5(s_axi_awsize[0]),
        .O(\first_step_q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000514)) 
    \first_step_q[1]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awsize[2]),
        .O(\first_step_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F3C6A)) 
    \first_step_q[2]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\first_step_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_step_q[3]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .O(\first_step_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \first_step_q[4]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[4]));
  LUT6 #(
    .INIT(64'h0036FFFF00360000)) 
    \first_step_q[5]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .I5(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[6]_i_1 
       (.I0(\first_step_q[6]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[6]));
  LUT5 #(
    .INIT(32'h07531642)) 
    \first_step_q[6]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[2]),
        .O(\first_step_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[7]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[7]));
  LUT6 #(
    .INIT(64'h07FD53B916EC42A8)) 
    \first_step_q[7]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awlen[2]),
        .I5(s_axi_awlen[3]),
        .O(\first_step_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[8]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[8]));
  LUT6 #(
    .INIT(64'h14EAEA6262C8C840)) 
    \first_step_q[8]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[3]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[0]),
        .I5(s_axi_awlen[2]),
        .O(\first_step_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[9]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[9]));
  LUT6 #(
    .INIT(64'h4AA2A2A228808080)) 
    \first_step_q[9]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awlen[3]),
        .O(\first_step_q[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[0]_i_1_n_0 ),
        .Q(first_step_q[0]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(first_step[10]),
        .Q(first_step_q[10]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(first_step[11]),
        .Q(first_step_q[11]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[1]_i_1_n_0 ),
        .Q(first_step_q[1]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[2]_i_1_n_0 ),
        .Q(first_step_q[2]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[3]_i_1_n_0 ),
        .Q(first_step_q[3]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(first_step[4]),
        .Q(first_step_q[4]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(first_step[5]),
        .Q(first_step_q[5]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(first_step[6]),
        .Q(first_step_q[6]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(first_step[7]),
        .Q(first_step_q[7]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(first_step[8]),
        .Q(first_step_q[8]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(first_step[9]),
        .Q(first_step_q[9]),
        .R(aresetn_0));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awlen[6]),
        .I5(s_axi_awlen[7]),
        .O(incr_need_to_split__0));
  FDRE #(
    .INIT(1'b0)) 
    incr_need_to_split_q_reg
       (.C(aclk),
        .CE(E),
        .D(incr_need_to_split__0),
        .Q(need_to_split_q),
        .R(aresetn_0));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(S_AXI_AADDR_Q[0]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[0]),
        .I4(next_mi_addr[0]),
        .O(m_axi_awaddr[0]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[10]_INST_0 
       (.I0(S_AXI_AADDR_Q[10]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[10]),
        .O(m_axi_awaddr[10]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[11]_INST_0 
       (.I0(S_AXI_AADDR_Q[11]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[11]),
        .O(m_axi_awaddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[12]_INST_0 
       (.I0(S_AXI_AADDR_Q[12]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[12]),
        .O(m_axi_awaddr[12]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[13]_INST_0 
       (.I0(S_AXI_AADDR_Q[13]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[13]),
        .O(m_axi_awaddr[13]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[14]_INST_0 
       (.I0(S_AXI_AADDR_Q[14]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[14]),
        .O(m_axi_awaddr[14]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[15]_INST_0 
       (.I0(S_AXI_AADDR_Q[15]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[15]),
        .O(m_axi_awaddr[15]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[16]_INST_0 
       (.I0(S_AXI_AADDR_Q[16]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[16]),
        .O(m_axi_awaddr[16]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[17]_INST_0 
       (.I0(S_AXI_AADDR_Q[17]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[17]),
        .O(m_axi_awaddr[17]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[18]_INST_0 
       (.I0(S_AXI_AADDR_Q[18]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[18]),
        .O(m_axi_awaddr[18]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[19]_INST_0 
       (.I0(S_AXI_AADDR_Q[19]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[19]),
        .O(m_axi_awaddr[19]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(S_AXI_AADDR_Q[1]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[1]),
        .I4(next_mi_addr[1]),
        .O(m_axi_awaddr[1]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[20]_INST_0 
       (.I0(S_AXI_AADDR_Q[20]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[20]),
        .O(m_axi_awaddr[20]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[21]_INST_0 
       (.I0(S_AXI_AADDR_Q[21]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[21]),
        .O(m_axi_awaddr[21]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[22]_INST_0 
       (.I0(S_AXI_AADDR_Q[22]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[22]),
        .O(m_axi_awaddr[22]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[23]_INST_0 
       (.I0(S_AXI_AADDR_Q[23]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[23]),
        .O(m_axi_awaddr[23]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[24]_INST_0 
       (.I0(S_AXI_AADDR_Q[24]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[24]),
        .O(m_axi_awaddr[24]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[25]_INST_0 
       (.I0(S_AXI_AADDR_Q[25]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[25]),
        .O(m_axi_awaddr[25]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[26]_INST_0 
       (.I0(S_AXI_AADDR_Q[26]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[26]),
        .O(m_axi_awaddr[26]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[27]_INST_0 
       (.I0(S_AXI_AADDR_Q[27]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[27]),
        .O(m_axi_awaddr[27]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[28]_INST_0 
       (.I0(S_AXI_AADDR_Q[28]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[28]),
        .O(m_axi_awaddr[28]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[29]_INST_0 
       (.I0(S_AXI_AADDR_Q[29]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[29]),
        .O(m_axi_awaddr[29]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(S_AXI_AADDR_Q[2]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[2]),
        .I4(next_mi_addr[2]),
        .O(m_axi_awaddr[2]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[30]_INST_0 
       (.I0(S_AXI_AADDR_Q[30]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[30]),
        .O(m_axi_awaddr[30]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[31]_INST_0 
       (.I0(S_AXI_AADDR_Q[31]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[31]),
        .O(m_axi_awaddr[31]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(S_AXI_AADDR_Q[3]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[3]),
        .I4(next_mi_addr[3]),
        .O(m_axi_awaddr[3]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(S_AXI_AADDR_Q[4]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[4]),
        .I4(next_mi_addr[4]),
        .O(m_axi_awaddr[4]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(S_AXI_AADDR_Q[5]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[5]),
        .I4(next_mi_addr[5]),
        .O(m_axi_awaddr[5]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[6]_INST_0 
       (.I0(S_AXI_AADDR_Q[6]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[6]),
        .I4(next_mi_addr[6]),
        .O(m_axi_awaddr[6]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[7]_INST_0 
       (.I0(S_AXI_AADDR_Q[7]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[7]),
        .O(m_axi_awaddr[7]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[8]_INST_0 
       (.I0(S_AXI_AADDR_Q[8]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[8]),
        .O(m_axi_awaddr[8]));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \m_axi_awaddr[9]_INST_0 
       (.I0(S_AXI_AADDR_Q[9]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[9]),
        .O(m_axi_awaddr[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_awlock[0]_INST_0 
       (.I0(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .I1(need_to_split_q),
        .O(m_axi_awlock));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_2 
       (.I0(m_axi_awaddr[11]),
        .I1(first_step_q[11]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(addr_step_q[11]),
        .O(\next_mi_addr[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_3 
       (.I0(m_axi_awaddr[10]),
        .I1(first_step_q[10]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(addr_step_q[10]),
        .O(\next_mi_addr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_4 
       (.I0(m_axi_awaddr[9]),
        .I1(first_step_q[9]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(addr_step_q[9]),
        .O(\next_mi_addr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_5 
       (.I0(m_axi_awaddr[8]),
        .I1(first_step_q[8]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(addr_step_q[8]),
        .O(\next_mi_addr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_mi_addr[11]_i_6 
       (.I0(pushed_commands_reg[3]),
        .I1(pushed_commands_reg[2]),
        .I2(pushed_commands_reg[1]),
        .I3(pushed_commands_reg[0]),
        .O(\next_mi_addr[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_2 
       (.I0(S_AXI_AADDR_Q[15]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[15]),
        .O(\next_mi_addr[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_3 
       (.I0(S_AXI_AADDR_Q[14]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[14]),
        .O(\next_mi_addr[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_4 
       (.I0(S_AXI_AADDR_Q[13]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[13]),
        .O(\next_mi_addr[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_5 
       (.I0(S_AXI_AADDR_Q[12]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[12]),
        .O(\next_mi_addr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_6 
       (.I0(S_AXI_AADDR_Q[15]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[15]),
        .O(\next_mi_addr[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_7 
       (.I0(S_AXI_AADDR_Q[14]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[14]),
        .O(\next_mi_addr[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_8 
       (.I0(S_AXI_AADDR_Q[13]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[13]),
        .O(\next_mi_addr[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[15]_i_9 
       (.I0(S_AXI_AADDR_Q[12]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[12]),
        .O(\next_mi_addr[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[19]_i_2 
       (.I0(S_AXI_AADDR_Q[19]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[19]),
        .O(\next_mi_addr[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[19]_i_3 
       (.I0(S_AXI_AADDR_Q[18]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[18]),
        .O(\next_mi_addr[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[19]_i_4 
       (.I0(S_AXI_AADDR_Q[17]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[17]),
        .O(\next_mi_addr[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[19]_i_5 
       (.I0(S_AXI_AADDR_Q[16]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[16]),
        .O(\next_mi_addr[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[23]_i_2 
       (.I0(S_AXI_AADDR_Q[23]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[23]),
        .O(\next_mi_addr[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[23]_i_3 
       (.I0(S_AXI_AADDR_Q[22]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[22]),
        .O(\next_mi_addr[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[23]_i_4 
       (.I0(S_AXI_AADDR_Q[21]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[21]),
        .O(\next_mi_addr[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[23]_i_5 
       (.I0(S_AXI_AADDR_Q[20]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[20]),
        .O(\next_mi_addr[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[27]_i_2 
       (.I0(S_AXI_AADDR_Q[27]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[27]),
        .O(\next_mi_addr[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[27]_i_3 
       (.I0(S_AXI_AADDR_Q[26]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[26]),
        .O(\next_mi_addr[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[27]_i_4 
       (.I0(S_AXI_AADDR_Q[25]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[25]),
        .O(\next_mi_addr[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[27]_i_5 
       (.I0(S_AXI_AADDR_Q[24]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[24]),
        .O(\next_mi_addr[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[31]_i_2 
       (.I0(S_AXI_AADDR_Q[31]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[31]),
        .O(\next_mi_addr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[31]_i_3 
       (.I0(S_AXI_AADDR_Q[30]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[30]),
        .O(\next_mi_addr[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[31]_i_4 
       (.I0(S_AXI_AADDR_Q[29]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[29]),
        .O(\next_mi_addr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A2A2A)) 
    \next_mi_addr[31]_i_5 
       (.I0(S_AXI_AADDR_Q[28]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(size_mask_q[31]),
        .I4(next_mi_addr[28]),
        .O(\next_mi_addr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF80807F7F808F808)) 
    \next_mi_addr[3]_i_2 
       (.I0(next_mi_addr[3]),
        .I1(size_mask_q[3]),
        .I2(\next_mi_addr[3]_i_6_n_0 ),
        .I3(S_AXI_AADDR_Q[3]),
        .I4(\next_mi_addr[11]_i_6_n_0 ),
        .I5(first_step_q[3]),
        .O(\next_mi_addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF80807F7F808F808)) 
    \next_mi_addr[3]_i_3 
       (.I0(next_mi_addr[2]),
        .I1(size_mask_q[2]),
        .I2(\next_mi_addr[3]_i_6_n_0 ),
        .I3(S_AXI_AADDR_Q[2]),
        .I4(\next_mi_addr[11]_i_6_n_0 ),
        .I5(first_step_q[2]),
        .O(\next_mi_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF80807F7F808F808)) 
    \next_mi_addr[3]_i_4 
       (.I0(next_mi_addr[1]),
        .I1(size_mask_q[1]),
        .I2(\next_mi_addr[3]_i_6_n_0 ),
        .I3(S_AXI_AADDR_Q[1]),
        .I4(\next_mi_addr[11]_i_6_n_0 ),
        .I5(first_step_q[1]),
        .O(\next_mi_addr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF80807F7F808F808)) 
    \next_mi_addr[3]_i_5 
       (.I0(next_mi_addr[0]),
        .I1(size_mask_q[0]),
        .I2(\next_mi_addr[3]_i_6_n_0 ),
        .I3(S_AXI_AADDR_Q[0]),
        .I4(\next_mi_addr[11]_i_6_n_0 ),
        .I5(first_step_q[0]),
        .O(\next_mi_addr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \next_mi_addr[3]_i_6 
       (.I0(access_is_incr_q),
        .I1(split_ongoing),
        .O(\next_mi_addr[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_2 
       (.I0(m_axi_awaddr[7]),
        .I1(first_step_q[7]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(addr_step_q[7]),
        .O(\next_mi_addr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_3 
       (.I0(m_axi_awaddr[6]),
        .I1(first_step_q[6]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(addr_step_q[6]),
        .O(\next_mi_addr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_4 
       (.I0(m_axi_awaddr[5]),
        .I1(first_step_q[5]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(addr_step_q[5]),
        .O(\next_mi_addr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_5 
       (.I0(m_axi_awaddr[4]),
        .I1(first_step_q[4]),
        .I2(\next_mi_addr[11]_i_6_n_0 ),
        .I3(size_mask_q[0]),
        .O(\next_mi_addr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_7 ),
        .Q(next_mi_addr[0]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[10] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_5 ),
        .Q(next_mi_addr[10]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[11] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_4 ),
        .Q(next_mi_addr[11]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[11]_i_1 
       (.CI(\next_mi_addr_reg[7]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[11]_i_1_n_0 ,\next_mi_addr_reg[11]_i_1_n_1 ,\next_mi_addr_reg[11]_i_1_n_2 ,\next_mi_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_awaddr[11:8]),
        .O({\next_mi_addr_reg[11]_i_1_n_4 ,\next_mi_addr_reg[11]_i_1_n_5 ,\next_mi_addr_reg[11]_i_1_n_6 ,\next_mi_addr_reg[11]_i_1_n_7 }),
        .S({\next_mi_addr[11]_i_2_n_0 ,\next_mi_addr[11]_i_3_n_0 ,\next_mi_addr[11]_i_4_n_0 ,\next_mi_addr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[12] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_7 ),
        .Q(next_mi_addr[12]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[13] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_6 ),
        .Q(next_mi_addr[13]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[14] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_5 ),
        .Q(next_mi_addr[14]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[15] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_4 ),
        .Q(next_mi_addr[15]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[15]_i_1 
       (.CI(\next_mi_addr_reg[11]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[15]_i_1_n_0 ,\next_mi_addr_reg[15]_i_1_n_1 ,\next_mi_addr_reg[15]_i_1_n_2 ,\next_mi_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\next_mi_addr[15]_i_2_n_0 ,\next_mi_addr[15]_i_3_n_0 ,\next_mi_addr[15]_i_4_n_0 ,\next_mi_addr[15]_i_5_n_0 }),
        .O({\next_mi_addr_reg[15]_i_1_n_4 ,\next_mi_addr_reg[15]_i_1_n_5 ,\next_mi_addr_reg[15]_i_1_n_6 ,\next_mi_addr_reg[15]_i_1_n_7 }),
        .S({\next_mi_addr[15]_i_6_n_0 ,\next_mi_addr[15]_i_7_n_0 ,\next_mi_addr[15]_i_8_n_0 ,\next_mi_addr[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[16] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_7 ),
        .Q(next_mi_addr[16]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[17] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_6 ),
        .Q(next_mi_addr[17]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[18] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_5 ),
        .Q(next_mi_addr[18]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[19] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_4 ),
        .Q(next_mi_addr[19]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[19]_i_1 
       (.CI(\next_mi_addr_reg[15]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[19]_i_1_n_0 ,\next_mi_addr_reg[19]_i_1_n_1 ,\next_mi_addr_reg[19]_i_1_n_2 ,\next_mi_addr_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[19]_i_1_n_4 ,\next_mi_addr_reg[19]_i_1_n_5 ,\next_mi_addr_reg[19]_i_1_n_6 ,\next_mi_addr_reg[19]_i_1_n_7 }),
        .S({\next_mi_addr[19]_i_2_n_0 ,\next_mi_addr[19]_i_3_n_0 ,\next_mi_addr[19]_i_4_n_0 ,\next_mi_addr[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_6 ),
        .Q(next_mi_addr[1]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[20] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_7 ),
        .Q(next_mi_addr[20]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[21] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_6 ),
        .Q(next_mi_addr[21]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[22] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_5 ),
        .Q(next_mi_addr[22]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[23] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_4 ),
        .Q(next_mi_addr[23]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[23]_i_1 
       (.CI(\next_mi_addr_reg[19]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[23]_i_1_n_0 ,\next_mi_addr_reg[23]_i_1_n_1 ,\next_mi_addr_reg[23]_i_1_n_2 ,\next_mi_addr_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[23]_i_1_n_4 ,\next_mi_addr_reg[23]_i_1_n_5 ,\next_mi_addr_reg[23]_i_1_n_6 ,\next_mi_addr_reg[23]_i_1_n_7 }),
        .S({\next_mi_addr[23]_i_2_n_0 ,\next_mi_addr[23]_i_3_n_0 ,\next_mi_addr[23]_i_4_n_0 ,\next_mi_addr[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[24] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_7 ),
        .Q(next_mi_addr[24]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[25] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_6 ),
        .Q(next_mi_addr[25]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[26] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_5 ),
        .Q(next_mi_addr[26]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[27] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_4 ),
        .Q(next_mi_addr[27]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[27]_i_1 
       (.CI(\next_mi_addr_reg[23]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[27]_i_1_n_0 ,\next_mi_addr_reg[27]_i_1_n_1 ,\next_mi_addr_reg[27]_i_1_n_2 ,\next_mi_addr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[27]_i_1_n_4 ,\next_mi_addr_reg[27]_i_1_n_5 ,\next_mi_addr_reg[27]_i_1_n_6 ,\next_mi_addr_reg[27]_i_1_n_7 }),
        .S({\next_mi_addr[27]_i_2_n_0 ,\next_mi_addr[27]_i_3_n_0 ,\next_mi_addr[27]_i_4_n_0 ,\next_mi_addr[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[28] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_7 ),
        .Q(next_mi_addr[28]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[29] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_6 ),
        .Q(next_mi_addr[29]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_5 ),
        .Q(next_mi_addr[2]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[30] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_5 ),
        .Q(next_mi_addr[30]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[31] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_4 ),
        .Q(next_mi_addr[31]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[31]_i_1 
       (.CI(\next_mi_addr_reg[27]_i_1_n_0 ),
        .CO({\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED [3],\next_mi_addr_reg[31]_i_1_n_1 ,\next_mi_addr_reg[31]_i_1_n_2 ,\next_mi_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[31]_i_1_n_4 ,\next_mi_addr_reg[31]_i_1_n_5 ,\next_mi_addr_reg[31]_i_1_n_6 ,\next_mi_addr_reg[31]_i_1_n_7 }),
        .S({\next_mi_addr[31]_i_2_n_0 ,\next_mi_addr[31]_i_3_n_0 ,\next_mi_addr[31]_i_4_n_0 ,\next_mi_addr[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_4 ),
        .Q(next_mi_addr[3]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\next_mi_addr_reg[3]_i_1_n_0 ,\next_mi_addr_reg[3]_i_1_n_1 ,\next_mi_addr_reg[3]_i_1_n_2 ,\next_mi_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_awaddr[3:0]),
        .O({\next_mi_addr_reg[3]_i_1_n_4 ,\next_mi_addr_reg[3]_i_1_n_5 ,\next_mi_addr_reg[3]_i_1_n_6 ,\next_mi_addr_reg[3]_i_1_n_7 }),
        .S({\next_mi_addr[3]_i_2_n_0 ,\next_mi_addr[3]_i_3_n_0 ,\next_mi_addr[3]_i_4_n_0 ,\next_mi_addr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[4] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_7 ),
        .Q(next_mi_addr[4]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[5] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_6 ),
        .Q(next_mi_addr[5]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[6] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_5 ),
        .Q(next_mi_addr[6]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[7] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_4 ),
        .Q(next_mi_addr[7]),
        .R(aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[7]_i_1 
       (.CI(\next_mi_addr_reg[3]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[7]_i_1_n_0 ,\next_mi_addr_reg[7]_i_1_n_1 ,\next_mi_addr_reg[7]_i_1_n_2 ,\next_mi_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_awaddr[7:4]),
        .O({\next_mi_addr_reg[7]_i_1_n_4 ,\next_mi_addr_reg[7]_i_1_n_5 ,\next_mi_addr_reg[7]_i_1_n_6 ,\next_mi_addr_reg[7]_i_1_n_7 }),
        .S({\next_mi_addr[7]_i_2_n_0 ,\next_mi_addr[7]_i_3_n_0 ,\next_mi_addr[7]_i_4_n_0 ,\next_mi_addr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[8] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_7 ),
        .Q(next_mi_addr[8]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[9] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_6 ),
        .Q(next_mi_addr[9]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[4]),
        .Q(num_transactions_q[0]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[5]),
        .Q(num_transactions_q[1]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[6]),
        .Q(num_transactions_q[2]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[7]),
        .Q(num_transactions_q[3]),
        .R(aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg[0]),
        .I1(pushed_commands_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg[2]),
        .I1(pushed_commands_reg[1]),
        .I2(pushed_commands_reg[0]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[3]_i_1 
       (.I0(E),
        .I1(aresetn),
        .O(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pushed_commands[3]_i_2 
       (.I0(pushed_commands_reg[3]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[1]),
        .I3(pushed_commands_reg[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg[0]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg[1]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg[2]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg[3]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(size_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(size_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \size_mask_q[2]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(size_mask[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \size_mask_q[3]_i_1 
       (.I0(s_axi_awsize[2]),
        .O(size_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \size_mask_q[4]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(size_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \size_mask_q[5]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(size_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \size_mask_q[6]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(size_mask[6]));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[0]),
        .Q(size_mask_q[0]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[1]),
        .Q(size_mask_q[1]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[2]),
        .Q(size_mask_q[2]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[31]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[3]),
        .Q(size_mask_q[3]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[4]),
        .Q(size_mask_q[4]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[5]),
        .Q(size_mask_q[5]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[6]),
        .Q(size_mask_q[6]),
        .R(aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    split_ongoing_reg
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(cmd_b_split_i),
        .Q(split_ongoing),
        .R(aresetn_0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_axi3_conv" *) 
module bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv
   (s_axi_bresp,
    m_axi_awlen,
    m_axi_bready,
    S_AXI_AREADY_I_reg,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    s_axi_wready,
    m_axi_wlast,
    m_axi_awaddr,
    s_axi_bvalid,
    m_axi_awvalid,
    m_axi_wvalid,
    m_axi_awlock,
    m_axi_bresp,
    s_axi_awsize,
    s_axi_awlen,
    aclk,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_bvalid,
    s_axi_bready,
    aresetn,
    m_axi_awready,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid);
  output [1:0]s_axi_bresp;
  output [3:0]m_axi_awlen;
  output m_axi_bready;
  output S_AXI_AREADY_I_reg;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output s_axi_wready;
  output m_axi_wlast;
  output [31:0]m_axi_awaddr;
  output s_axi_bvalid;
  output m_axi_awvalid;
  output m_axi_wvalid;
  output [0:0]m_axi_awlock;
  input [1:0]m_axi_bresp;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_bvalid;
  input s_axi_bready;
  input aresetn;
  input m_axi_awready;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;

  wire S_AXI_AREADY_I_reg;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire \USE_B_CHANNEL.cmd_b_queue/inst/empty ;
  wire \USE_WRITE.wr_cmd_b_ready ;
  wire [3:0]\USE_WRITE.wr_cmd_b_repeat ;
  wire \USE_WRITE.wr_cmd_b_split ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_wready;
  wire s_axi_wvalid;

  bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_b_downsizer \USE_WRITE.USE_SPLIT_W.write_resp_inst 
       (.E(m_axi_bready),
        .aclk(aclk),
        .dout({\USE_WRITE.wr_cmd_b_split ,\USE_WRITE.wr_cmd_b_repeat }),
        .empty(\USE_B_CHANNEL.cmd_b_queue/inst/empty ),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .rd_en(\USE_WRITE.wr_cmd_b_ready ),
        .\repeat_cnt_reg[0]_0 (\USE_WRITE.write_addr_inst_n_5 ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
  bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\USE_WRITE.write_addr_inst_n_5 ),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(\USE_B_CHANNEL.cmd_b_queue/inst/empty ),
        .\goreg_dm.dout_i_reg[4] ({\USE_WRITE.wr_cmd_b_split ,\USE_WRITE.wr_cmd_b_repeat }),
        .\goreg_dm.dout_i_reg[4]_0 (\USE_WRITE.wr_cmd_b_ready ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0(s_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv \USE_WRITE.write_data_inst 
       (.aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .\length_counter_1_reg[6]_0 (s_axi_wready),
        .\length_counter_1_reg[7]_0 (\USE_WRITE.write_addr_inst_n_5 ),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "0" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b011" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.S_AXI_AREADY_I_reg(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_b_downsizer" *) 
module bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_b_downsizer
   (E,
    s_axi_bresp,
    rd_en,
    s_axi_bvalid,
    \repeat_cnt_reg[0]_0 ,
    aclk,
    dout,
    m_axi_bresp,
    m_axi_bvalid,
    s_axi_bready,
    empty);
  output [0:0]E;
  output [1:0]s_axi_bresp;
  output rd_en;
  output s_axi_bvalid;
  input \repeat_cnt_reg[0]_0 ;
  input aclk;
  input [4:0]dout;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input s_axi_bready;
  input empty;

  wire [0:0]E;
  wire [1:0]S_AXI_BRESP_ACC;
  wire aclk;
  wire [4:0]dout;
  wire empty;
  wire first_mi_word;
  wire last_word;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [3:0]next_repeat_cnt;
  wire rd_en;
  wire \repeat_cnt[1]_i_1_n_0 ;
  wire \repeat_cnt[2]_i_2_n_0 ;
  wire \repeat_cnt[3]_i_2_n_0 ;
  wire [3:0]repeat_cnt_reg;
  wire \repeat_cnt_reg[0]_0 ;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;

  FDRE \S_AXI_BRESP_ACC_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_bresp[0]),
        .Q(S_AXI_BRESP_ACC[0]),
        .R(\repeat_cnt_reg[0]_0 ));
  FDRE \S_AXI_BRESP_ACC_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_bresp[1]),
        .Q(S_AXI_BRESP_ACC[1]),
        .R(\repeat_cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    fifo_gen_inst_i_3
       (.I0(last_word),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .I3(empty),
        .O(rd_en));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(E),
        .D(last_word),
        .Q(first_mi_word),
        .S(\repeat_cnt_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    m_axi_bready_INST_0
       (.I0(m_axi_bvalid),
        .I1(s_axi_bready),
        .I2(last_word),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \repeat_cnt[0]_i_1 
       (.I0(repeat_cnt_reg[0]),
        .I1(first_mi_word),
        .I2(dout[0]),
        .O(next_repeat_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \repeat_cnt[1]_i_1 
       (.I0(repeat_cnt_reg[1]),
        .I1(dout[1]),
        .I2(repeat_cnt_reg[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(\repeat_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFA051111FA05)) 
    \repeat_cnt[2]_i_1 
       (.I0(\repeat_cnt[2]_i_2_n_0 ),
        .I1(dout[1]),
        .I2(repeat_cnt_reg[1]),
        .I3(repeat_cnt_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(next_repeat_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \repeat_cnt[2]_i_2 
       (.I0(dout[0]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg[0]),
        .O(\repeat_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[3]_i_1 
       (.I0(dout[2]),
        .I1(repeat_cnt_reg[2]),
        .I2(\repeat_cnt[3]_i_2_n_0 ),
        .I3(repeat_cnt_reg[3]),
        .I4(first_mi_word),
        .I5(dout[3]),
        .O(next_repeat_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \repeat_cnt[3]_i_2 
       (.I0(repeat_cnt_reg[1]),
        .I1(dout[1]),
        .I2(repeat_cnt_reg[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(\repeat_cnt[3]_i_2_n_0 ));
  FDRE \repeat_cnt_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(next_repeat_cnt[0]),
        .Q(repeat_cnt_reg[0]),
        .R(\repeat_cnt_reg[0]_0 ));
  FDRE \repeat_cnt_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\repeat_cnt[1]_i_1_n_0 ),
        .Q(repeat_cnt_reg[1]),
        .R(\repeat_cnt_reg[0]_0 ));
  FDRE \repeat_cnt_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(next_repeat_cnt[2]),
        .Q(repeat_cnt_reg[2]),
        .R(\repeat_cnt_reg[0]_0 ));
  FDRE \repeat_cnt_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(next_repeat_cnt[3]),
        .Q(repeat_cnt_reg[3]),
        .R(\repeat_cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBAAABA8AAAAABAAA)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(first_mi_word),
        .I2(dout[4]),
        .I3(S_AXI_BRESP_ACC[0]),
        .I4(m_axi_bresp[1]),
        .I5(S_AXI_BRESP_ACC[1]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[1]),
        .I1(S_AXI_BRESP_ACC[1]),
        .I2(first_mi_word),
        .I3(dout[4]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axi_bvalid_INST_0
       (.I0(m_axi_bvalid),
        .I1(last_word),
        .O(s_axi_bvalid));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    s_axi_bvalid_INST_0_i_1
       (.I0(repeat_cnt_reg[0]),
        .I1(repeat_cnt_reg[3]),
        .I2(repeat_cnt_reg[1]),
        .I3(first_mi_word),
        .I4(repeat_cnt_reg[2]),
        .I5(dout[4]),
        .O(last_word));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_w_axi3_conv" *) 
module bajie7020_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv
   (m_axi_wlast,
    rd_en,
    \length_counter_1_reg[7]_0 ,
    \length_counter_1_reg[6]_0 ,
    aclk,
    dout,
    empty,
    s_axi_wvalid,
    m_axi_wready);
  output m_axi_wlast;
  output rd_en;
  input \length_counter_1_reg[7]_0 ;
  input \length_counter_1_reg[6]_0 ;
  input aclk;
  input [3:0]dout;
  input empty;
  input s_axi_wvalid;
  input m_axi_wready;

  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire fifo_gen_inst_i_3__0_n_0;
  wire first_mi_word;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[1]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:0]length_counter_1_reg;
  wire \length_counter_1_reg[6]_0 ;
  wire \length_counter_1_reg[7]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h4400000044040000)) 
    fifo_gen_inst_i_2__0
       (.I0(fifo_gen_inst_i_3__0_n_0),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(length_counter_1_reg[6]),
        .I3(first_mi_word),
        .I4(\length_counter_1_reg[6]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(rd_en));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h32)) 
    fifo_gen_inst_i_3__0
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[4]),
        .O(fifo_gen_inst_i_3__0_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(\length_counter_1_reg[6]_0 ),
        .D(m_axi_wlast),
        .Q(first_mi_word),
        .S(\length_counter_1_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \length_counter_1[0]_i_1 
       (.I0(length_counter_1_reg[0]),
        .I1(first_mi_word),
        .I2(dout[0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \length_counter_1[1]_i_1 
       (.I0(length_counter_1_reg[1]),
        .I1(dout[1]),
        .I2(length_counter_1_reg[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(\length_counter_1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \length_counter_1[2]_i_1 
       (.I0(m_axi_wlast_INST_0_i_2_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC355CCAACCAA)) 
    \length_counter_1[3]_i_1 
       (.I0(length_counter_1_reg[3]),
        .I1(dout[3]),
        .I2(dout[2]),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[2]),
        .I5(m_axi_wlast_INST_0_i_2_n_0),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9FFFFFF0A000000)) 
    \length_counter_1[4]_i_1 
       (.I0(m_axi_wlast_INST_0_i_1_n_0),
        .I1(first_mi_word),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(length_counter_1_reg[4]),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF90A)) 
    \length_counter_1[5]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(length_counter_1_reg[4]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFAF90A0A)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[4]),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44FBFFFF44040000)) 
    \length_counter_1[7]_i_1 
       (.I0(fifo_gen_inst_i_3__0_n_0),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(length_counter_1_reg[6]),
        .I3(first_mi_word),
        .I4(\length_counter_1_reg[6]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(\length_counter_1_reg[6]_0 ),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(length_counter_1_reg[0]),
        .R(\length_counter_1_reg[7]_0 ));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(\length_counter_1_reg[6]_0 ),
        .D(\length_counter_1[1]_i_1_n_0 ),
        .Q(length_counter_1_reg[1]),
        .R(\length_counter_1_reg[7]_0 ));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(\length_counter_1_reg[6]_0 ),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(\length_counter_1_reg[7]_0 ));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(\length_counter_1_reg[6]_0 ),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(\length_counter_1_reg[7]_0 ));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(\length_counter_1_reg[7]_0 ));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(\length_counter_1_reg[6]_0 ),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(\length_counter_1_reg[7]_0 ));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(\length_counter_1_reg[6]_0 ),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(\length_counter_1_reg[7]_0 ));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(\length_counter_1_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hCCCC0000CCCC0004)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(length_counter_1_reg[4]),
        .I3(length_counter_1_reg[5]),
        .I4(first_mi_word),
        .I5(length_counter_1_reg[7]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    m_axi_wlast_INST_0_i_1
       (.I0(m_axi_wlast_INST_0_i_2_n_0),
        .I1(dout[2]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[2]),
        .I4(dout[3]),
        .I5(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    m_axi_wlast_INST_0_i_2
       (.I0(length_counter_1_reg[1]),
        .I1(dout[1]),
        .I2(length_counter_1_reg[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module bajie7020_auto_pc_2_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module bajie7020_auto_pc_2_xpm_cdc_async_rst__2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 143376)
`pragma protect data_block
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
MdBTpX/4ZqlR3+h/zoCAnSDIknfD
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
