//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Mon May 15 23:06:29 2023
//Host        : Penta0308-E402N running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adcsample_divd_0_imp_90E11S
   (M_AXIS_0_tdata,
    M_AXIS_0_tready,
    M_AXIS_0_tvalid,
    N_0,
    i_reg,
    m_axis_aclk,
    m_axis_aresetn,
    o_reg,
    r_reg,
    regclk,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    smpl_fin,
    smpl_last,
    w_reg);
  output [31:0]M_AXIS_0_tdata;
  input M_AXIS_0_tready;
  output M_AXIS_0_tvalid;
  input [19:0]N_0;
  output [7:0]i_reg;
  input m_axis_aclk;
  input m_axis_aresetn;
  input [7:0]o_reg;
  input r_reg;
  input regclk;
  input s_axis_aclk;
  input s_axis_aresetn;
  input [23:0]s_axis_tdata;
  input s_axis_tvalid;
  output smpl_fin;
  output smpl_last;
  input w_reg;

  wire [19:0]N_0_1;
  wire aresetn_1;
  wire [31:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [31:0]axis_subset_converter_0_M_AXIS_TDATA;
  wire axis_subset_converter_0_M_AXIS_TREADY;
  wire axis_subset_converter_0_M_AXIS_TVALID;
  wire m_axis_aclk_1;
  wire m_axis_aresetn_1;
  wire [7:0]o_reg_1;
  wire r_reg_1;
  wire regclk_1;
  wire [7:0]regcont_0_i_reg;
  wire regcont_0_o_00;
  wire [23:0]s_axis_tdata_1;
  wire s_axis_tvalid_1;
  wire selectio_wiz_0_clk_div_out;
  wire smplctlr_0_fin;
  wire smplctlr_0_last;
  wire smplctlr_0_pulse;
  wire w_reg_1;
  wire [0:0]xlconstant_1_0_dout;

  assign M_AXIS_0_tdata[31:0] = axis_clock_converter_0_M_AXIS_TDATA;
  assign M_AXIS_0_tvalid = axis_clock_converter_0_M_AXIS_TVALID;
  assign N_0_1 = N_0[19:0];
  assign aresetn_1 = s_axis_aresetn;
  assign axis_clock_converter_0_M_AXIS_TREADY = M_AXIS_0_tready;
  assign i_reg[7:0] = regcont_0_i_reg;
  assign m_axis_aclk_1 = m_axis_aclk;
  assign m_axis_aresetn_1 = m_axis_aresetn;
  assign o_reg_1 = o_reg[7:0];
  assign r_reg_1 = r_reg;
  assign regclk_1 = regclk;
  assign s_axis_tdata_1 = s_axis_tdata[23:0];
  assign s_axis_tvalid_1 = s_axis_tvalid;
  assign selectio_wiz_0_clk_div_out = s_axis_aclk;
  assign smpl_fin = smplctlr_0_fin;
  assign smpl_last = smplctlr_0_last;
  assign w_reg_1 = w_reg;
  design_1_axis_clock_converter_0_0 axis_clock_converter_0
       (.m_axis_aclk(m_axis_aclk_1),
        .m_axis_aresetn(m_axis_aresetn_1),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(selectio_wiz_0_clk_div_out),
        .s_axis_aresetn(aresetn_1),
        .s_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .s_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID));
  design_1_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(selectio_wiz_0_clk_div_out),
        .aresetn(aresetn_1),
        .m_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(s_axis_tdata_1),
        .s_axis_tlast(smplctlr_0_last),
        .s_axis_tvalid(smplctlr_0_pulse));
  design_1_regcont_0_0 regcont_0
       (.aresetn(aresetn_1),
        .clk(selectio_wiz_0_clk_div_out),
        .i_00(smplctlr_0_pulse),
        .i_01(xlconstant_1_0_dout),
        .i_02(xlconstant_1_0_dout),
        .i_03(xlconstant_1_0_dout),
        .i_04(xlconstant_1_0_dout),
        .i_05(xlconstant_1_0_dout),
        .i_06(xlconstant_1_0_dout),
        .i_07(xlconstant_1_0_dout),
        .i_reg(regcont_0_i_reg),
        .o_00(regcont_0_o_00),
        .o_reg(o_reg_1),
        .r_reg(r_reg_1),
        .regclk(regclk_1),
        .w_reg(w_reg_1));
  design_1_smplctlr_0_1 smplctlr_0
       (.N(N_0_1),
        .activate(regcont_0_o_00),
        .aresetn(aresetn_1),
        .clk(selectio_wiz_0_clk_div_out),
        .fin(smplctlr_0_fin),
        .last(smplctlr_0_last),
        .pulse(smplctlr_0_pulse),
        .valid(s_axis_tvalid_1));
  design_1_xlconstant_1_0_1 xlconstant_1_0
       (.dout(xlconstant_1_0_dout));
endmodule

module adcsample_mix_0_imp_1MZK9XM
   (RGB_PixClk,
    RGB_aresetn,
    RGB_vid_pData,
    RGB_vid_pHSync,
    RGB_vid_pVDE,
    RGB_vid_pVSync,
    S_AXIS_0_tdata,
    S_AXIS_0_tready,
    S_AXIS_0_tvalid,
    i_reg,
    o_reg,
    r_reg,
    regclk,
    s_axis_aclk,
    s_axis_aresetn,
    transmit_active,
    w_reg);
  input RGB_PixClk;
  input RGB_aresetn;
  output [23:0]RGB_vid_pData;
  output RGB_vid_pHSync;
  output RGB_vid_pVDE;
  output RGB_vid_pVSync;
  input [31:0]S_AXIS_0_tdata;
  output S_AXIS_0_tready;
  input S_AXIS_0_tvalid;
  output [7:0]i_reg;
  input [7:0]o_reg;
  input r_reg;
  input regclk;
  input s_axis_aclk;
  input s_axis_aresetn;
  output transmit_active;
  input w_reg;

  wire [31:0]Conn2_TDATA;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire aresetn_1;
  wire aresetn_2;
  wire [23:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [23:0]axis_subset_converter_0_M_AXIS_TDATA;
  wire axis_subset_converter_0_M_AXIS_TLAST;
  wire axis_subset_converter_0_M_AXIS_TREADY;
  wire axis_subset_converter_0_M_AXIS_TVALID;
  wire fifovidmix_0_transmit_active;
  wire [23:0]fifovidmix_0_vid_pData;
  wire fifovidmix_0_vid_pHSync;
  wire fifovidmix_0_vid_pVDE;
  wire fifovidmix_0_vid_pVSync;
  wire m_axis_aclk_0_1;
  wire [7:0]o_reg_1;
  wire r_reg_1;
  wire regclk_1;
  wire [7:0]regcont_0_i_reg;
  wire regcont_0_ow_00;
  wire selectio_wiz_0_clk_div_out;
  wire w_reg_1;
  wire [0:0]xlconstant_1_0_dout;

  assign Conn2_TDATA = S_AXIS_0_tdata[31:0];
  assign Conn2_TVALID = S_AXIS_0_tvalid;
  assign RGB_vid_pData[23:0] = fifovidmix_0_vid_pData;
  assign RGB_vid_pHSync = fifovidmix_0_vid_pHSync;
  assign RGB_vid_pVDE = fifovidmix_0_vid_pVDE;
  assign RGB_vid_pVSync = fifovidmix_0_vid_pVSync;
  assign S_AXIS_0_tready = Conn2_TREADY;
  assign aresetn_1 = s_axis_aresetn;
  assign aresetn_2 = RGB_aresetn;
  assign i_reg[7:0] = regcont_0_i_reg;
  assign m_axis_aclk_0_1 = RGB_PixClk;
  assign o_reg_1 = o_reg[7:0];
  assign r_reg_1 = r_reg;
  assign regclk_1 = regclk;
  assign selectio_wiz_0_clk_div_out = s_axis_aclk;
  assign transmit_active = fifovidmix_0_transmit_active;
  assign w_reg_1 = w_reg;
  design_1_axis_data_fifo_0_3 axis_data_fifo_0
       (.m_axis_aclk(m_axis_aclk_0_1),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(selectio_wiz_0_clk_div_out),
        .s_axis_aresetn(aresetn_1),
        .s_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .s_axis_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .s_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID));
  design_1_axis_subset_converter_0_3 axis_subset_converter_0
       (.aclk(selectio_wiz_0_clk_div_out),
        .aresetn(aresetn_1),
        .m_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(Conn2_TDATA),
        .s_axis_tready(Conn2_TREADY),
        .s_axis_tvalid(Conn2_TVALID));
  design_1_fifovidmix_0_0 fifovidmix_0
       (.aresetn(aresetn_2),
        .clk(m_axis_aclk_0_1),
        .s_axis_0_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_0_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_0_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_0_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .transmit_active(fifovidmix_0_transmit_active),
        .transmit_begin(regcont_0_ow_00),
        .vid_pData(fifovidmix_0_vid_pData),
        .vid_pHSync(fifovidmix_0_vid_pHSync),
        .vid_pVDE(fifovidmix_0_vid_pVDE),
        .vid_pVSync(fifovidmix_0_vid_pVSync));
  design_1_regcont_0_1 regcont_0
       (.aresetn(aresetn_2),
        .clk(m_axis_aclk_0_1),
        .i_00(fifovidmix_0_transmit_active),
        .i_01(xlconstant_1_0_dout),
        .i_02(xlconstant_1_0_dout),
        .i_03(xlconstant_1_0_dout),
        .i_04(xlconstant_1_0_dout),
        .i_05(xlconstant_1_0_dout),
        .i_06(xlconstant_1_0_dout),
        .i_07(xlconstant_1_0_dout),
        .i_reg(regcont_0_i_reg),
        .o_reg(o_reg_1),
        .ow_00(regcont_0_ow_00),
        .r_reg(r_reg_1),
        .regclk(regclk_1),
        .w_reg(w_reg_1));
  design_1_xlconstant_1_0_0 xlconstant_1_0
       (.dout(xlconstant_1_0_dout));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=36,numReposBlks=31,numNonXlnxBlks=2,numHierBlks=5,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=3,da_clkrst_cnt=11,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ADC_DCLK_clk_n,
    ADC_DCLK_clk_p,
    ADC_D_n,
    ADC_D_p,
    ADC_FCLK_clk_n,
    ADC_FCLK_clk_p,
    ADC_RESET,
    CLK_48M_clk_n,
    CLK_48M_clk_p,
    HDMI_CEC,
    HDMI_HPD,
    HDMI_IIC_scl,
    HDMI_IIC_sda_tri_i,
    HDMI_IIC_sda_tri_o,
    HDMI_IIC_sda_tri_t,
    HDMI_LSOE,
    HDMI_TX_clk_n,
    HDMI_TX_clk_p,
    HDMI_TX_data_n,
    HDMI_TX_data_p,
    HyperBus_0_hb_ck_n,
    HyperBus_0_hb_ck_p,
    HyperBus_0_hb_cs_n,
    HyperBus_0_hb_dq,
    HyperBus_0_hb_reset_n,
    HyperBus_0_hb_rwds,
    LNA_P,
    PA_EN,
    PLL_CE,
    PLL_MUXIN,
    PLL_RAMPCLK,
    PLL_RAMPDIR,
    SPI_MISO_MASTER,
    SPI_MOSI_MASTER,
    SPI_SCLK_MASTER,
    SPI_SS_N_MASTER,
    XS_LED1,
    XS_SW2,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_DCLK, CAN_DEBUG false, FREQ_HZ 240000000" *) input [0:0]ADC_DCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_P" *) input [0:0]ADC_DCLK_clk_p;
  input [3:0]ADC_D_n;
  input [3:0]ADC_D_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_FCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]ADC_FCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_FCLK CLK_P" *) input [0:0]ADC_FCLK_clk_p;
  output [0:0]ADC_RESET;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_48M CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_48M, CAN_DEBUG false, FREQ_HZ 48000000" *) input CLK_48M_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_48M CLK_P" *) input CLK_48M_clk_p;
  output [0:0]HDMI_CEC;
  output [0:0]HDMI_HPD;
  input HDMI_IIC_scl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 HDMI_IIC_sda TRI_I" *) input HDMI_IIC_sda_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 HDMI_IIC_sda TRI_O" *) input HDMI_IIC_sda_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 HDMI_IIC_sda TRI_T" *) input HDMI_IIC_sda_tri_t;
  output [0:0]HDMI_LSOE;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 HDMI_TX CLK_N" *) output HDMI_TX_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 HDMI_TX CLK_P" *) output HDMI_TX_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 HDMI_TX DATA_N" *) output [2:0]HDMI_TX_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 HDMI_TX DATA_P" *) output [2:0]HDMI_TX_data_p;
  (* X_INTERFACE_INFO = "Cypress:user:HyperBus:1.0 HyperBus_0 hb_ck_n" *) output HyperBus_0_hb_ck_n;
  (* X_INTERFACE_INFO = "Cypress:user:HyperBus:1.0 HyperBus_0 hb_ck_p" *) output HyperBus_0_hb_ck_p;
  (* X_INTERFACE_INFO = "Cypress:user:HyperBus:1.0 HyperBus_0 hb_cs_n" *) output HyperBus_0_hb_cs_n;
  (* X_INTERFACE_INFO = "Cypress:user:HyperBus:1.0 HyperBus_0 hb_dq" *) inout [7:0]HyperBus_0_hb_dq;
  (* X_INTERFACE_INFO = "Cypress:user:HyperBus:1.0 HyperBus_0 hb_reset_n" *) output HyperBus_0_hb_reset_n;
  (* X_INTERFACE_INFO = "Cypress:user:HyperBus:1.0 HyperBus_0 hb_rwds" *) inout HyperBus_0_hb_rwds;
  output [3:0]LNA_P;
  output [0:0]PA_EN;
  output [0:0]PLL_CE;
  input PLL_MUXIN;
  output [0:0]PLL_RAMPCLK;
  output [0:0]PLL_RAMPDIR;
  input SPI_MISO_MASTER;
  output SPI_MOSI_MASTER;
  output SPI_SCLK_MASTER;
  output [4:0]SPI_SS_N_MASTER;
  output [0:0]XS_LED1;
  input XS_SW2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire [0:0]ADC_DCLK_1_CLK_N;
  wire [0:0]ADC_DCLK_1_CLK_P;
  wire CLK_IN1_D_0_1_CLK_N;
  wire CLK_IN1_D_0_1_CLK_P;
  wire [0:0]CLK_IN1_D_FCLK_1_CLK_N;
  wire [0:0]CLK_IN1_D_FCLK_1_CLK_P;
  wire MISO_MASTER_0_1;
  wire OpenHBMC_0_HyperBus_hb_ck_n;
  wire OpenHBMC_0_HyperBus_hb_ck_p;
  wire OpenHBMC_0_HyperBus_hb_cs_n;
  wire [7:0]OpenHBMC_0_HyperBus_hb_dq;
  wire OpenHBMC_0_HyperBus_hb_reset_n;
  wire OpenHBMC_0_HyperBus_hb_rwds;
  wire RGB_PixClk_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [0:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [0:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S_AXIS_0_1_TDATA;
  wire S_AXIS_0_1_TREADY;
  wire S_AXIS_0_1_TVALID;
  wire [31:0]adcsample_divd_0_M_AXIS_0_TDATA;
  wire adcsample_divd_0_M_AXIS_0_TREADY;
  wire adcsample_divd_0_M_AXIS_0_TVALID;
  wire [7:0]adcsample_divd_0_i_reg;
  wire [23:0]adcsample_mix_0_RGB_vid_pData;
  wire adcsample_mix_0_RGB_vid_pHSync;
  wire adcsample_mix_0_RGB_vid_pVDE;
  wire adcsample_mix_0_RGB_vid_pVSync;
  wire [7:0]adcsample_mix_0_i_reg;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RID;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire clk_wiz_0_clk_out_192M_q;
  wire clk_wiz_0_clk_out_576M;
  wire clk_wiz_0_locked;
  wire clk_wiz_clk_out_76M8_spi;
  wire [3:0]data_in_from_pins_n_0_1;
  wire [3:0]data_in_from_pins_p_0_1;
  wire i2c_to_spi_MOSI_MASTER_0;
  wire i2c_to_spi_SCLK_MASTER_0;
  wire [4:0]i2c_to_spi_SS_N_MASTER_0;
  wire i2c_to_spi_sda_oL;
  wire i2ccont_0_GPIO_TRI_I;
  wire i2ccont_0_GPIO_TRI_O;
  wire i2ccont_0_GPIO_TRI_T;
  wire i2ccont_0_clkout;
  wire [7:0]i2ccont_0_o_reg_00;
  wire [7:0]i2ccont_0_o_reg_01;
  wire [7:0]i2ccont_0_o_reg_02;
  wire [7:0]i2ccont_0_o_reg_03;
  wire i2ccont_0_r_reg_00;
  wire i2ccont_0_r_reg_03;
  wire i2ccont_0_sdachain_i;
  wire i2ccont_0_w_reg_00;
  wire i2ccont_0_w_reg_03;
  wire microblaze_0_Clk;
  wire reset_1;
  wire rgb2dvi_0_TMDS_CLK_N;
  wire rgb2dvi_0_TMDS_CLK_P;
  wire [2:0]rgb2dvi_0_TMDS_DATA_N;
  wire [2:0]rgb2dvi_0_TMDS_DATA_P;
  wire [0:0]rst_clk_wiz_0_120M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_0_120M_peripheral_reset;
  wire [0:0]rst_clk_wiz_hdmi_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_hdmi_peripheral_reset;
  wire [0:0]rst_clk_wiz_spi_peripheral_reset;
  wire [0:0]s_axis_aresetn_1;
  wire scl_0_1;
  wire [23:0]selectio_wiz_0_data_in_to_device;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]util_ds_buf_1_IBUF_OUT;
  wire [0:0]util_ds_buf_adc_fclk_ibuf_IBUF_OUT;
  wire [19:0]xlconstant_0_dout;
  wire [3:0]xlconstant_0_dout1;
  wire [0:0]xlconstant_1_0_dout;
  wire [0:0]xlconstant_1_1_dout;
  wire [3:0]xlconstant_1_dout;
  wire [0:0]xlconstant_1_dout1;

  assign ADC_DCLK_1_CLK_N = ADC_DCLK_clk_n[0];
  assign ADC_DCLK_1_CLK_P = ADC_DCLK_clk_p[0];
  assign ADC_RESET[0] = rst_clk_wiz_0_120M_peripheral_reset;
  assign CLK_IN1_D_0_1_CLK_N = CLK_48M_clk_n;
  assign CLK_IN1_D_0_1_CLK_P = CLK_48M_clk_p;
  assign CLK_IN1_D_FCLK_1_CLK_N = ADC_FCLK_clk_n[0];
  assign CLK_IN1_D_FCLK_1_CLK_P = ADC_FCLK_clk_p[0];
  assign HDMI_CEC[0] = xlconstant_1_0_dout;
  assign HDMI_HPD[0] = xlconstant_1_0_dout;
  assign HDMI_LSOE[0] = xlconstant_1_0_dout;
  assign HDMI_TX_clk_n = rgb2dvi_0_TMDS_CLK_N;
  assign HDMI_TX_clk_p = rgb2dvi_0_TMDS_CLK_P;
  assign HDMI_TX_data_n[2:0] = rgb2dvi_0_TMDS_DATA_N;
  assign HDMI_TX_data_p[2:0] = rgb2dvi_0_TMDS_DATA_P;
  assign HyperBus_0_hb_ck_n = OpenHBMC_0_HyperBus_hb_ck_n;
  assign HyperBus_0_hb_ck_p = OpenHBMC_0_HyperBus_hb_ck_p;
  assign HyperBus_0_hb_cs_n = OpenHBMC_0_HyperBus_hb_cs_n;
  assign HyperBus_0_hb_reset_n = OpenHBMC_0_HyperBus_hb_reset_n;
  assign LNA_P[3:0] = xlconstant_0_dout1;
  assign MISO_MASTER_0_1 = SPI_MISO_MASTER;
  assign PA_EN[0] = xlconstant_1_1_dout;
  assign PLL_CE[0] = xlconstant_1_1_dout;
  assign PLL_RAMPCLK[0] = xlconstant_1_0_dout;
  assign PLL_RAMPDIR[0] = xlconstant_1_0_dout;
  assign SPI_MOSI_MASTER = i2c_to_spi_MOSI_MASTER_0;
  assign SPI_SCLK_MASTER = i2c_to_spi_SCLK_MASTER_0;
  assign SPI_SS_N_MASTER[4:0] = i2c_to_spi_SS_N_MASTER_0;
  assign XS_LED1[0] = xlconstant_1_dout1;
  assign data_in_from_pins_n_0_1 = ADC_D_n[3:0];
  assign data_in_from_pins_p_0_1 = ADC_D_p[3:0];
  assign i2ccont_0_GPIO_TRI_I = HDMI_IIC_sda_tri_i;
  assign i2ccont_0_GPIO_TRI_O = HDMI_IIC_sda_tri_o;
  assign i2ccont_0_GPIO_TRI_T = HDMI_IIC_sda_tri_t;
  assign reset_1 = reset;
  assign scl_0_1 = HDMI_IIC_scl;
  design_1_OpenHBMC_0_1 OpenHBMC_0
       (.clk_hbmc_0(microblaze_0_Clk),
        .clk_hbmc_90(clk_wiz_0_clk_out_192M_q),
        .clk_idelay_ref(microblaze_0_Clk),
        .clk_iserdes(clk_wiz_0_clk_out_576M),
        .hb_ck_n(OpenHBMC_0_HyperBus_hb_ck_n),
        .hb_ck_p(OpenHBMC_0_HyperBus_hb_ck_p),
        .hb_cs_n(OpenHBMC_0_HyperBus_hb_cs_n),
        .hb_dq(HyperBus_0_hb_dq[7:0]),
        .hb_reset_n(OpenHBMC_0_HyperBus_hb_reset_n),
        .hb_rwds(HyperBus_0_hb_rwds),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[22:0]),
        .s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_clk_wiz_0_120M_peripheral_aresetn),
        .s_axi_arid(axi_interconnect_0_M00_AXI_ARID),
        .s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[22:0]),
        .s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .s_axi_awid(axi_interconnect_0_M00_AXI_AWID),
        .s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bid(axi_interconnect_0_M00_AXI_BID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rid(axi_interconnect_0_M00_AXI_RID),
        .s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  adcsample_divd_0_imp_90E11S adcsample_divd_0
       (.M_AXIS_0_tdata(adcsample_divd_0_M_AXIS_0_TDATA),
        .M_AXIS_0_tready(adcsample_divd_0_M_AXIS_0_TREADY),
        .M_AXIS_0_tvalid(adcsample_divd_0_M_AXIS_0_TVALID),
        .N_0(xlconstant_0_dout),
        .i_reg(adcsample_divd_0_i_reg),
        .m_axis_aclk(microblaze_0_Clk),
        .m_axis_aresetn(rst_clk_wiz_0_120M_peripheral_aresetn),
        .o_reg(i2ccont_0_o_reg_00),
        .r_reg(i2ccont_0_r_reg_00),
        .regclk(i2ccont_0_clkout),
        .s_axis_aclk(util_ds_buf_0_IBUF_OUT),
        .s_axis_aresetn(s_axis_aresetn_1),
        .s_axis_tdata(selectio_wiz_0_data_in_to_device),
        .s_axis_tvalid(clk_wiz_0_locked),
        .w_reg(i2ccont_0_w_reg_00));
  adcsample_mix_0_imp_1MZK9XM adcsample_mix_0
       (.RGB_PixClk(RGB_PixClk_1),
        .RGB_aresetn(rst_clk_wiz_hdmi_peripheral_aresetn),
        .RGB_vid_pData(adcsample_mix_0_RGB_vid_pData),
        .RGB_vid_pHSync(adcsample_mix_0_RGB_vid_pHSync),
        .RGB_vid_pVDE(adcsample_mix_0_RGB_vid_pVDE),
        .RGB_vid_pVSync(adcsample_mix_0_RGB_vid_pVSync),
        .S_AXIS_0_tdata(S_AXIS_0_1_TDATA),
        .S_AXIS_0_tready(S_AXIS_0_1_TREADY),
        .S_AXIS_0_tvalid(S_AXIS_0_1_TVALID),
        .i_reg(adcsample_mix_0_i_reg),
        .o_reg(i2ccont_0_o_reg_03),
        .r_reg(i2ccont_0_r_reg_03),
        .regclk(i2ccont_0_clkout),
        .s_axis_aclk(microblaze_0_Clk),
        .s_axis_aresetn(rst_clk_wiz_0_120M_peripheral_aresetn),
        .w_reg(i2ccont_0_w_reg_03));
  design_1_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(microblaze_0_Clk),
        .ARESETN(rst_clk_wiz_0_120M_peripheral_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(rst_clk_wiz_0_120M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(rst_clk_wiz_0_120M_peripheral_aresetn),
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
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  design_1_axivfifo_0_0 axivfifo_0
       (.M_AXIS_ACLK(microblaze_0_Clk),
        .M_AXIS_ARESETN(rst_clk_wiz_0_120M_peripheral_aresetn),
        .M_AXIS_TDATA(S_AXIS_0_1_TDATA),
        .M_AXIS_TREADY(S_AXIS_0_1_TREADY),
        .M_AXIS_TVALID(S_AXIS_0_1_TVALID),
        .M_AXI_ACLK(microblaze_0_Clk),
        .M_AXI_ARADDR(S00_AXI_1_ARADDR),
        .M_AXI_ARBURST(S00_AXI_1_ARBURST),
        .M_AXI_ARCACHE(S00_AXI_1_ARCACHE),
        .M_AXI_ARESETN(rst_clk_wiz_0_120M_peripheral_aresetn),
        .M_AXI_ARID(S00_AXI_1_ARID),
        .M_AXI_ARLEN(S00_AXI_1_ARLEN),
        .M_AXI_ARLOCK(S00_AXI_1_ARLOCK),
        .M_AXI_ARPROT(S00_AXI_1_ARPROT),
        .M_AXI_ARQOS(S00_AXI_1_ARQOS),
        .M_AXI_ARREADY(S00_AXI_1_ARREADY),
        .M_AXI_ARSIZE(S00_AXI_1_ARSIZE),
        .M_AXI_ARVALID(S00_AXI_1_ARVALID),
        .M_AXI_AWADDR(S00_AXI_1_AWADDR),
        .M_AXI_AWBURST(S00_AXI_1_AWBURST),
        .M_AXI_AWCACHE(S00_AXI_1_AWCACHE),
        .M_AXI_AWID(S00_AXI_1_AWID),
        .M_AXI_AWLEN(S00_AXI_1_AWLEN),
        .M_AXI_AWLOCK(S00_AXI_1_AWLOCK),
        .M_AXI_AWPROT(S00_AXI_1_AWPROT),
        .M_AXI_AWQOS(S00_AXI_1_AWQOS),
        .M_AXI_AWREADY(S00_AXI_1_AWREADY),
        .M_AXI_AWSIZE(S00_AXI_1_AWSIZE),
        .M_AXI_AWVALID(S00_AXI_1_AWVALID),
        .M_AXI_BID(S00_AXI_1_BID),
        .M_AXI_BREADY(S00_AXI_1_BREADY),
        .M_AXI_BRESP(S00_AXI_1_BRESP),
        .M_AXI_BVALID(S00_AXI_1_BVALID),
        .M_AXI_RDATA(S00_AXI_1_RDATA),
        .M_AXI_RID(S00_AXI_1_RID),
        .M_AXI_RLAST(S00_AXI_1_RLAST),
        .M_AXI_RREADY(S00_AXI_1_RREADY),
        .M_AXI_RRESP(S00_AXI_1_RRESP),
        .M_AXI_RVALID(S00_AXI_1_RVALID),
        .M_AXI_WDATA(S00_AXI_1_WDATA),
        .M_AXI_WLAST(S00_AXI_1_WLAST),
        .M_AXI_WREADY(S00_AXI_1_WREADY),
        .M_AXI_WSTRB(S00_AXI_1_WSTRB),
        .M_AXI_WVALID(S00_AXI_1_WVALID),
        .S_AXIS_ACLK(microblaze_0_Clk),
        .S_AXIS_ARESETN(rst_clk_wiz_0_120M_peripheral_aresetn),
        .S_AXIS_TDATA(adcsample_divd_0_M_AXIS_0_TDATA),
        .S_AXIS_TREADY(adcsample_divd_0_M_AXIS_0_TREADY),
        .S_AXIS_TVALID(adcsample_divd_0_M_AXIS_0_TVALID),
        .i_reset(rst_clk_wiz_0_120M_peripheral_aresetn));
  design_1_clk_wiz_0_0 clk_wiz
       (.clk_in1_n(CLK_IN1_D_0_1_CLK_N),
        .clk_in1_p(CLK_IN1_D_0_1_CLK_P),
        .clk_out_192M_i(microblaze_0_Clk),
        .clk_out_192M_q(clk_wiz_0_clk_out_192M_q),
        .clk_out_576M(clk_wiz_0_clk_out_576M),
        .clk_out_76M8_spi(clk_wiz_clk_out_76M8_spi),
        .clk_out_hdmi(RGB_PixClk_1),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
  i2c_to_spi_imp_UOL6B2 i2c_to_spi
       (.HDMI_IIC_scl(scl_0_1),
        .MISO_MASTER_0(MISO_MASTER_0_1),
        .MOSI_MASTER_0(i2c_to_spi_MOSI_MASTER_0),
        .SCLK_MASTER_0(i2c_to_spi_SCLK_MASTER_0),
        .SS_N_MASTER_0(i2c_to_spi_SS_N_MASTER_0),
        .areset(rst_clk_wiz_spi_peripheral_reset),
        .clk(clk_wiz_clk_out_76M8_spi),
        .sda_i(i2ccont_0_sdachain_i),
        .sda_oL(i2c_to_spi_sda_oL));
  design_1_i2ccont_0_0 i2ccont_0
       (.areset(rst_clk_wiz_0_120M_peripheral_reset),
        .clkout(i2ccont_0_clkout),
        .i_reg_00(adcsample_divd_0_i_reg),
        .i_reg_01(i2ccont_0_o_reg_01),
        .i_reg_02(i2ccont_0_o_reg_02),
        .i_reg_03(adcsample_mix_0_i_reg),
        .o_reg_00(i2ccont_0_o_reg_00),
        .o_reg_01(i2ccont_0_o_reg_01),
        .o_reg_02(i2ccont_0_o_reg_02),
        .o_reg_03(i2ccont_0_o_reg_03),
        .r_reg_00(i2ccont_0_r_reg_00),
        .r_reg_03(i2ccont_0_r_reg_03),
        .scl(scl_0_1),
        .sda_io_i(i2ccont_0_GPIO_TRI_I),
        .sda_io_o(i2ccont_0_GPIO_TRI_O),
        .sda_io_t(i2ccont_0_GPIO_TRI_T),
        .sdachain_i(i2ccont_0_sdachain_i),
        .sdachain_oL(i2c_to_spi_sda_oL),
        .w_reg_00(i2ccont_0_w_reg_00),
        .w_reg_03(i2ccont_0_w_reg_03));
  design_1_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(RGB_PixClk_1),
        .TMDS_Clk_n(rgb2dvi_0_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_0_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_0_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_0_TMDS_DATA_P),
        .aRst(rst_clk_wiz_hdmi_peripheral_reset),
        .vid_pData(adcsample_mix_0_RGB_vid_pData),
        .vid_pHSync(adcsample_mix_0_RGB_vid_pHSync),
        .vid_pVDE(adcsample_mix_0_RGB_vid_pVDE),
        .vid_pVSync(adcsample_mix_0_RGB_vid_pVSync));
  design_1_rst_clk_wiz_0_120M_0 rst_clk_wiz_192M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_120M_peripheral_aresetn),
        .peripheral_reset(rst_clk_wiz_0_120M_peripheral_reset),
        .slowest_sync_clk(microblaze_0_Clk));
  design_1_proc_sys_reset_0_0 rst_clk_wiz_adc_fclk
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(rst_clk_wiz_0_120M_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(s_axis_aresetn_1),
        .slowest_sync_clk(util_ds_buf_0_IBUF_OUT));
  design_1_proc_sys_reset_0_1 rst_clk_wiz_hdmi
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(rst_clk_wiz_0_120M_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_hdmi_peripheral_aresetn),
        .peripheral_reset(rst_clk_wiz_hdmi_peripheral_reset),
        .slowest_sync_clk(RGB_PixClk_1));
  design_1_proc_sys_reset_0_2 rst_clk_wiz_spi
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(rst_clk_wiz_0_120M_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_clk_wiz_spi_peripheral_reset),
        .slowest_sync_clk(clk_wiz_clk_out_76M8_spi));
  design_1_selectio_wiz_0_0 selectio_wiz_0
       (.bitslip(xlconstant_1_dout),
        .clk_div_in(util_ds_buf_0_IBUF_OUT),
        .clk_in(util_ds_buf_1_IBUF_OUT),
        .data_in_from_pins_n(data_in_from_pins_n_0_1),
        .data_in_from_pins_p(data_in_from_pins_p_0_1),
        .data_in_to_device(selectio_wiz_0_data_in_to_device),
        .io_reset(rst_clk_wiz_0_120M_peripheral_reset));
  design_1_util_ds_buf_1_0 util_ds_buf_adc_dclk
       (.IBUF_DS_N(ADC_DCLK_1_CLK_N),
        .IBUF_DS_P(ADC_DCLK_1_CLK_P),
        .IBUF_OUT(util_ds_buf_1_IBUF_OUT));
  design_1_util_ds_buf_adc_fclk_0 util_ds_buf_adc_fclk_bufg
       (.BUFG_I(util_ds_buf_adc_fclk_ibuf_IBUF_OUT),
        .BUFG_O(util_ds_buf_0_IBUF_OUT));
  design_1_util_ds_buf_0_1 util_ds_buf_adc_fclk_ibuf
       (.IBUF_DS_N(CLK_IN1_D_FCLK_1_CLK_N),
        .IBUF_DS_P(CLK_IN1_D_FCLK_1_CLK_P),
        .IBUF_OUT(util_ds_buf_adc_fclk_ibuf_IBUF_OUT));
  design_1_xlconstant_0_3 xlconstant_0
       (.dout(xlconstant_0_dout1));
  design_1_xlconstant_1_1 xlconstant_1
       (.dout(xlconstant_1_dout1));
  design_1_xlconstant_0_1 xlconstant_1_0
       (.dout(xlconstant_1_0_dout));
  design_1_xlconstant_0_2 xlconstant_1_1
       (.dout(xlconstant_1_1_dout));
  design_1_xlconstant_0_0 xlconstant_adcsample_divd_n
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_selectio_0_bitslip
       (.dout(xlconstant_1_dout));
endmodule

module design_1_axi_interconnect_0_0
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
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
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
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_0_ARLEN;
  wire s00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARQOS;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARSIZE;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_0_AWLEN;
  wire s00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWQOS;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]s00_couplers_to_axi_interconnect_0_BID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]s00_couplers_to_axi_interconnect_0_RID;
  wire s00_couplers_to_axi_interconnect_0_RLAST;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire s00_couplers_to_axi_interconnect_0_WLAST;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arid[0] = s00_couplers_to_axi_interconnect_0_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_axi_interconnect_0_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BID = M00_AXI_bid[0];
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_0_RID = M00_AXI_rid[0];
  assign s00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_O7FAN0 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module i2c_to_spi_imp_UOL6B2
   (HDMI_IIC_scl,
    MISO_MASTER_0,
    MOSI_MASTER_0,
    SCLK_MASTER_0,
    SS_N_MASTER_0,
    areset,
    clk,
    sda_i,
    sda_oL);
  input HDMI_IIC_scl;
  input MISO_MASTER_0;
  output MOSI_MASTER_0;
  output SCLK_MASTER_0;
  output [4:0]SS_N_MASTER_0;
  input areset;
  input clk;
  input sda_i;
  output sda_oL;

  wire HDMI_IIC_scl_1;
  wire MISO_MASTER_0_1;
  wire areset_1;
  wire [7:0]blk_mem_gen_0_douta;
  wire [7:0]blk_mem_gen_0_doutb;
  wire clk_1;
  wire i2c_to_spi_0_MOSI_MASTER;
  wire i2c_to_spi_0_SCLK_MASTER;
  wire [4:0]i2c_to_spi_0_SS_N_MASTER;
  wire [6:0]i2c_to_spi_0_buf_aa;
  wire [6:0]i2c_to_spi_0_buf_ab;
  wire i2c_to_spi_0_buf_cea;
  wire i2c_to_spi_0_buf_ceb;
  wire [7:0]i2c_to_spi_0_buf_dai;
  wire [7:0]i2c_to_spi_0_buf_dbi;
  wire i2c_to_spi_0_buf_wea;
  wire i2c_to_spi_0_buf_web;
  wire i2c_to_spi_0_sda_oL;
  wire sda_i_1;

  assign HDMI_IIC_scl_1 = HDMI_IIC_scl;
  assign MISO_MASTER_0_1 = MISO_MASTER_0;
  assign MOSI_MASTER_0 = i2c_to_spi_0_MOSI_MASTER;
  assign SCLK_MASTER_0 = i2c_to_spi_0_SCLK_MASTER;
  assign SS_N_MASTER_0[4:0] = i2c_to_spi_0_SS_N_MASTER;
  assign areset_1 = areset;
  assign clk_1 = clk;
  assign sda_i_1 = sda_i;
  assign sda_oL = i2c_to_spi_0_sda_oL;
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(i2c_to_spi_0_buf_aa),
        .addrb(i2c_to_spi_0_buf_ab),
        .clka(1'b0),
        .clkb(1'b0),
        .dina(i2c_to_spi_0_buf_dai),
        .dinb(i2c_to_spi_0_buf_dbi),
        .douta(blk_mem_gen_0_douta),
        .doutb(blk_mem_gen_0_doutb),
        .ena(i2c_to_spi_0_buf_cea),
        .enb(i2c_to_spi_0_buf_ceb),
        .wea(i2c_to_spi_0_buf_wea),
        .web(i2c_to_spi_0_buf_web));
  design_1_i2c_to_spi_0_0 i2c_to_spi_0
       (.MISO_MASTER(MISO_MASTER_0_1),
        .MOSI_MASTER(i2c_to_spi_0_MOSI_MASTER),
        .SCLK_MASTER(i2c_to_spi_0_SCLK_MASTER),
        .SS_N_MASTER(i2c_to_spi_0_SS_N_MASTER),
        .areset(areset_1),
        .buf_aa(i2c_to_spi_0_buf_aa),
        .buf_ab(i2c_to_spi_0_buf_ab),
        .buf_cea(i2c_to_spi_0_buf_cea),
        .buf_ceb(i2c_to_spi_0_buf_ceb),
        .buf_dai(i2c_to_spi_0_buf_dai),
        .buf_dao(blk_mem_gen_0_douta),
        .buf_dbi(i2c_to_spi_0_buf_dbi),
        .buf_dbo(blk_mem_gen_0_doutb),
        .buf_wea(i2c_to_spi_0_buf_wea),
        .buf_web(i2c_to_spi_0_buf_web),
        .clk(clk_1),
        .scl(HDMI_IIC_scl_1),
        .sda_i(sda_i_1),
        .sda_oL(i2c_to_spi_0_sda_oL));
endmodule

module s00_couplers_imp_O7FAN0
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
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [0:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [0:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
