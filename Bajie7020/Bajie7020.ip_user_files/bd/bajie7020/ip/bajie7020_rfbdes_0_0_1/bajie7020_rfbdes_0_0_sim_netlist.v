// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Jul 16 23:01:59 2023
// Host        : Penta0308-15U560-U running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_rfbdes_0_0_1/bajie7020_rfbdes_0_0_sim_netlist.v
// Design      : bajie7020_rfbdes_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bajie7020_rfbdes_0_0,rfbdes,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rfbdes,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module bajie7020_rfbdes_0_0
   (RFB_IN_p,
    RFB_IN_n,
    RFB_IN_dv,
    RFB_AXIS_DATA,
    RFB_AXIS_VALID,
    RFB_DCLK_clk_n,
    RFB_DCLK_clk_p,
    RFB_FCLK_clk_n,
    RFB_FCLK_clk_p,
    RFB_AXIS_CLK,
    RFB_AXIS_USER,
    idelay_refclk,
    reset,
    isd_q0,
    isd_q1,
    isd_q2,
    isd_q3,
    isd_q4,
    isd_q5,
    isd_bitslip,
    bitslipcount);
  input [3:0]RFB_IN_p;
  input [3:0]RFB_IN_n;
  input RFB_IN_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [23:0]RFB_AXIS_DATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output RFB_AXIS_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *) input [0:0]RFB_DCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *) input [0:0]RFB_DCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]RFB_FCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]RFB_FCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 RFB_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, INSERT_VIP 0" *) output RFB_AXIS_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 48000000, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]RFB_AXIS_USER;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_refclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME idelay_refclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input idelay_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  output [5:0]isd_q0;
  output [5:0]isd_q1;
  output [5:0]isd_q2;
  output [5:0]isd_q3;
  output [5:0]isd_q4;
  output [5:0]isd_q5;
  output isd_bitslip;
  output [1:0]bitslipcount;

  wire RFB_AXIS_CLK;
  wire [22:12]\^RFB_AXIS_DATA ;
  wire [0:0]RFB_AXIS_USER;
  wire RFB_AXIS_VALID;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_DCLK_clk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_DCLK_clk_p;
  wire RFB_DCLK_i;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_FCLK_clk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_FCLK_clk_p;
  (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVCMOS25" *) wire RFB_IN_dv;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [3:0]RFB_IN_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [3:0]RFB_IN_p;
  wire [1:0]bitslipcount;
  wire idelay_refclk;
  wire isd_bitslip;
  wire [5:0]isd_q0;
  wire [5:0]isd_q1;
  wire [5:0]isd_q2;
  wire [5:0]isd_q3;
  wire [5:0]isd_q4;
  wire [5:0]isd_q5;
  wire reset;

  assign RFB_AXIS_DATA[23] = isd_q1[0];
  assign RFB_AXIS_DATA[22] = \^RFB_AXIS_DATA [22];
  assign RFB_AXIS_DATA[21] = isd_q1[1];
  assign RFB_AXIS_DATA[20] = \^RFB_AXIS_DATA [20];
  assign RFB_AXIS_DATA[19] = isd_q1[2];
  assign RFB_AXIS_DATA[18] = \^RFB_AXIS_DATA [18];
  assign RFB_AXIS_DATA[17] = isd_q1[3];
  assign RFB_AXIS_DATA[16] = \^RFB_AXIS_DATA [16];
  assign RFB_AXIS_DATA[15] = isd_q1[4];
  assign RFB_AXIS_DATA[14] = \^RFB_AXIS_DATA [14];
  assign RFB_AXIS_DATA[13] = isd_q1[5];
  assign RFB_AXIS_DATA[12] = \^RFB_AXIS_DATA [12];
  assign RFB_AXIS_DATA[11] = isd_q3[0];
  assign RFB_AXIS_DATA[10] = isd_q2[0];
  assign RFB_AXIS_DATA[9] = isd_q3[1];
  assign RFB_AXIS_DATA[8] = isd_q2[1];
  assign RFB_AXIS_DATA[7] = isd_q3[2];
  assign RFB_AXIS_DATA[6] = isd_q2[2];
  assign RFB_AXIS_DATA[5] = isd_q3[3];
  assign RFB_AXIS_DATA[4] = isd_q2[3];
  assign RFB_AXIS_DATA[3] = isd_q3[4];
  assign RFB_AXIS_DATA[2] = isd_q2[4];
  assign RFB_AXIS_DATA[1] = isd_q3[5];
  assign RFB_AXIS_DATA[0] = isd_q2[5];
  bajie7020_rfbdes_0_0_rfbdes inst
       (.RFB_AXIS_CLK(RFB_AXIS_CLK),
        .RFB_AXIS_DATA({isd_q1[0],\^RFB_AXIS_DATA [22],isd_q1[1],\^RFB_AXIS_DATA [20],isd_q1[2],\^RFB_AXIS_DATA [18],isd_q1[3],\^RFB_AXIS_DATA [16],isd_q1[4],\^RFB_AXIS_DATA [14],isd_q1[5],\^RFB_AXIS_DATA [12],isd_q3[0],isd_q2[0],isd_q3[1],isd_q2[1],isd_q3[2],isd_q2[2],isd_q3[3],isd_q2[3],isd_q3[4],isd_q2[4],isd_q3[5],isd_q2[5]}),
        .RFB_AXIS_USER(RFB_AXIS_USER),
        .RFB_AXIS_VALID(RFB_AXIS_VALID),
        .RFB_DCLK_clk_n(RFB_DCLK_clk_n),
        .RFB_DCLK_clk_p(RFB_DCLK_clk_p),
        .RFB_DCLK_i(RFB_DCLK_i),
        .RFB_DCLK_q(RFB_DCLK_i),
        .RFB_FCLK_clk_n(RFB_FCLK_clk_n),
        .RFB_FCLK_clk_p(RFB_FCLK_clk_p),
        .RFB_IN_dv(RFB_IN_dv),
        .RFB_IN_n(RFB_IN_n),
        .RFB_IN_p(RFB_IN_p),
        .\bitslipcount_reg[0]_0 (bitslipcount[0]),
        .\bitslipcount_reg[1]_0 (bitslipcount[1]),
        .idelay_refclk(idelay_refclk),
        .isd_bitslip(isd_bitslip),
        .isd_q0(isd_q0),
        .isd_q4(isd_q4),
        .isd_q5(isd_q5),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "rfbdes" *) 
module bajie7020_rfbdes_0_0_rfbdes
   (isd_q0,
    isd_bitslip,
    RFB_DCLK_i,
    RFB_AXIS_CLK,
    RFB_AXIS_DATA,
    isd_q4,
    isd_q5,
    RFB_AXIS_VALID,
    RFB_AXIS_USER,
    \bitslipcount_reg[0]_0 ,
    \bitslipcount_reg[1]_0 ,
    idelay_refclk,
    RFB_DCLK_q,
    reset,
    RFB_DCLK_clk_p,
    RFB_DCLK_clk_n,
    RFB_FCLK_clk_p,
    RFB_FCLK_clk_n,
    RFB_IN_p,
    RFB_IN_n,
    RFB_IN_dv);
  output [5:0]isd_q0;
  output isd_bitslip;
  output RFB_DCLK_i;
  output RFB_AXIS_CLK;
  output [23:0]RFB_AXIS_DATA;
  output [5:0]isd_q4;
  output [5:0]isd_q5;
  output RFB_AXIS_VALID;
  output [0:0]RFB_AXIS_USER;
  output \bitslipcount_reg[0]_0 ;
  output \bitslipcount_reg[1]_0 ;
  input idelay_refclk;
  input RFB_DCLK_q;
  input reset;
  input [0:0]RFB_DCLK_clk_p;
  input [0:0]RFB_DCLK_clk_n;
  input [0:0]RFB_FCLK_clk_p;
  input [0:0]RFB_FCLK_clk_n;
  input [3:0]RFB_IN_p;
  input [3:0]RFB_IN_n;
  input RFB_IN_dv;

  wire RFB_AXIS_CLK;
  wire [23:0]RFB_AXIS_DATA;
  wire [0:0]RFB_AXIS_USER;
  wire \RFB_AXIS_USER[0]_i_1_n_0 ;
  wire RFB_AXIS_VALID;
  wire RFB_AXIS_VALID_i_1_n_0;
  wire RFB_AXIS_VALID_i_2_n_0;
  wire [0:0]RFB_DCLK_clk_n;
  wire [0:0]RFB_DCLK_clk_p;
  wire RFB_DCLK_i;
  wire RFB_DCLK_q;
  wire [0:0]RFB_FCLK_clk_n;
  wire [0:0]RFB_FCLK_clk_p;
  wire RFB_IN_dv;
  wire [3:0]RFB_IN_n;
  wire [3:0]RFB_IN_p;
  wire \bitslipcount[0]_i_1_n_0 ;
  wire \bitslipcount[1]_i_1_n_0 ;
  wire \bitslipcount_reg[0]_0 ;
  wire \bitslipcount_reg[1]_0 ;
  wire din_d_0;
  wire din_d_1;
  wire din_d_2;
  wire din_d_3;
  wire din_d_4;
  wire din_d_5;
  wire din_i_0;
  wire din_i_1;
  wire din_i_2;
  wire din_i_3;
  wire din_i_4;
  wire din_i_5;
  wire dv_p;
  wire idelay_refclk;
  wire idelayctrl_ready;
  wire isd_bitslip;
  wire isd_bitslip_i_1_n_0;
  wire isd_bitslip_i_2_n_0;
  wire [5:0]isd_q0;
  wire [5:0]isd_q4;
  wire [5:0]isd_q5;
  wire reset;
  wire [4:0]\NLW_isds[0].idelaye2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_isds[0].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_isds[0].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_isds[0].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_isds[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_isds[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_isds[1].idelaye2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_isds[1].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_isds[1].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_isds[1].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_isds[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_isds[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_isds[2].idelaye2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_isds[2].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_isds[2].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_isds[2].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_isds[2].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_isds[2].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_isds[3].idelaye2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_isds[3].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_isds[3].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_isds[3].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_isds[3].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_isds[3].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_isds[4].idelaye2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_isds[4].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_isds[4].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_isds[4].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_isds[4].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_isds[4].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_isds[5].idelaye2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_isds[5].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_isds[5].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_isds[5].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_isds[5].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_isds[5].iserdese2_master_SHIFTOUT2_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(idelayctrl_ready),
        .REFCLK(idelay_refclk),
        .RST(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \RFB_AXIS_DATA[12]_INST_0 
       (.I0(isd_q0[5]),
        .O(RFB_AXIS_DATA[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \RFB_AXIS_DATA[14]_INST_0 
       (.I0(isd_q0[4]),
        .O(RFB_AXIS_DATA[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \RFB_AXIS_DATA[16]_INST_0 
       (.I0(isd_q0[3]),
        .O(RFB_AXIS_DATA[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \RFB_AXIS_DATA[18]_INST_0 
       (.I0(isd_q0[2]),
        .O(RFB_AXIS_DATA[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \RFB_AXIS_DATA[20]_INST_0 
       (.I0(isd_q0[1]),
        .O(RFB_AXIS_DATA[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \RFB_AXIS_DATA[22]_INST_0 
       (.I0(isd_q0[0]),
        .O(RFB_AXIS_DATA[22]));
  LUT4 #(
    .INIT(16'h0060)) 
    \RFB_AXIS_USER[0]_i_1 
       (.I0(isd_q5[3]),
        .I1(dv_p),
        .I2(idelayctrl_ready),
        .I3(reset),
        .O(\RFB_AXIS_USER[0]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \RFB_AXIS_USER_reg[0] 
       (.C(RFB_AXIS_CLK),
        .CE(1'b1),
        .D(\RFB_AXIS_USER[0]_i_1_n_0 ),
        .Q(RFB_AXIS_USER),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000ABA80000)) 
    RFB_AXIS_VALID_i_1
       (.I0(RFB_AXIS_VALID),
        .I1(\bitslipcount_reg[0]_0 ),
        .I2(\bitslipcount_reg[1]_0 ),
        .I3(RFB_AXIS_VALID_i_2_n_0),
        .I4(idelayctrl_ready),
        .I5(reset),
        .O(RFB_AXIS_VALID_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    RFB_AXIS_VALID_i_2
       (.I0(isd_q4[5]),
        .I1(isd_q4[1]),
        .I2(isd_q4[2]),
        .I3(isd_q4[0]),
        .I4(isd_q4[4]),
        .I5(isd_q4[3]),
        .O(RFB_AXIS_VALID_i_2_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) 
  FDRE RFB_AXIS_VALID_reg
       (.C(RFB_AXIS_CLK),
        .CE(1'b1),
        .D(RFB_AXIS_VALID_i_1_n_0),
        .Q(RFB_AXIS_VALID),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005400)) 
    \bitslipcount[0]_i_1 
       (.I0(\bitslipcount_reg[0]_0 ),
        .I1(isd_bitslip_i_2_n_0),
        .I2(\bitslipcount_reg[1]_0 ),
        .I3(idelayctrl_ready),
        .I4(reset),
        .O(\bitslipcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \bitslipcount[1]_i_1 
       (.I0(\bitslipcount_reg[0]_0 ),
        .I1(\bitslipcount_reg[1]_0 ),
        .I2(idelayctrl_ready),
        .I3(reset),
        .O(\bitslipcount[1]_i_1_n_0 ));
  FDRE \bitslipcount_reg[0] 
       (.C(RFB_AXIS_CLK),
        .CE(1'b1),
        .D(\bitslipcount[0]_i_1_n_0 ),
        .Q(\bitslipcount_reg[0]_0 ),
        .R(1'b0));
  FDRE \bitslipcount_reg[1] 
       (.C(RFB_AXIS_CLK),
        .CE(1'b1),
        .D(\bitslipcount[1]_i_1_n_0 ),
        .Q(\bitslipcount_reg[1]_0 ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("3"),
    .SIM_DEVICE("7SERIES")) 
    bufr_inst_clkdiv
       (.CE(1'b1),
        .CLR(1'b0),
        .I(RFB_DCLK_i),
        .O(RFB_AXIS_CLK));
  FDRE dv_p_reg
       (.C(RFB_AXIS_CLK),
        .CE(1'b1),
        .D(isd_q5[3]),
        .Q(dv_p),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF ibuf_inst_dv
       (.I(RFB_IN_dv),
        .O(din_i_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_inst_d0
       (.I(RFB_IN_p[0]),
        .IB(RFB_IN_n[0]),
        .O(din_i_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_inst_d1
       (.I(RFB_IN_p[1]),
        .IB(RFB_IN_n[1]),
        .O(din_i_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_inst_d2
       (.I(RFB_IN_p[2]),
        .IB(RFB_IN_n[2]),
        .O(din_i_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_inst_d3
       (.I(RFB_IN_p[3]),
        .IB(RFB_IN_n[3]),
        .O(din_i_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_inst_dclk
       (.I(RFB_DCLK_clk_p),
        .IB(RFB_DCLK_clk_n),
        .O(RFB_DCLK_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_inst_fclk
       (.I(RFB_FCLK_clk_p),
        .IB(RFB_FCLK_clk_n),
        .O(din_i_4));
  LUT6 #(
    .INIT(64'h00008B8800000000)) 
    isd_bitslip_i_1
       (.I0(isd_bitslip),
        .I1(\bitslipcount_reg[1]_0 ),
        .I2(\bitslipcount_reg[0]_0 ),
        .I3(isd_bitslip_i_2_n_0),
        .I4(reset),
        .I5(idelayctrl_ready),
        .O(isd_bitslip_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    isd_bitslip_i_2
       (.I0(isd_q4[5]),
        .I1(isd_q4[1]),
        .I2(isd_q4[0]),
        .I3(isd_q4[2]),
        .I4(isd_q4[4]),
        .I5(isd_q4[3]),
        .O(isd_bitslip_i_2_n_0));
  FDRE isd_bitslip_reg
       (.C(RFB_AXIS_CLK),
        .CE(1'b1),
        .D(isd_bitslip_i_1_n_0),
        .Q(isd_bitslip),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \isds[0].idelaye2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_isds[0].idelaye2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(din_d_0),
        .IDATAIN(din_i_0),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("BOTH"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \isds[0].iserdese2_master 
       (.BITSLIP(isd_bitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(RFB_DCLK_q),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(din_i_0),
        .DDLY(din_d_0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_isds[0].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(isd_q0[0]),
        .Q2(isd_q0[1]),
        .Q3(isd_q0[2]),
        .Q4(isd_q0[3]),
        .Q5(isd_q0[4]),
        .Q6(isd_q0[5]),
        .Q7(\NLW_isds[0].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_isds[0].iserdese2_master_Q8_UNCONNECTED ),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_isds[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_isds[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \isds[1].idelaye2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_isds[1].idelaye2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(din_d_1),
        .IDATAIN(din_i_1),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("BOTH"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \isds[1].iserdese2_master 
       (.BITSLIP(isd_bitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(RFB_DCLK_q),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(din_i_1),
        .DDLY(din_d_1),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_isds[1].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(RFB_AXIS_DATA[23]),
        .Q2(RFB_AXIS_DATA[21]),
        .Q3(RFB_AXIS_DATA[19]),
        .Q4(RFB_AXIS_DATA[17]),
        .Q5(RFB_AXIS_DATA[15]),
        .Q6(RFB_AXIS_DATA[13]),
        .Q7(\NLW_isds[1].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_isds[1].iserdese2_master_Q8_UNCONNECTED ),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_isds[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_isds[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \isds[2].idelaye2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_isds[2].idelaye2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(din_d_2),
        .IDATAIN(din_i_2),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("BOTH"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \isds[2].iserdese2_master 
       (.BITSLIP(isd_bitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(RFB_DCLK_q),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(din_i_2),
        .DDLY(din_d_2),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_isds[2].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(RFB_AXIS_DATA[10]),
        .Q2(RFB_AXIS_DATA[8]),
        .Q3(RFB_AXIS_DATA[6]),
        .Q4(RFB_AXIS_DATA[4]),
        .Q5(RFB_AXIS_DATA[2]),
        .Q6(RFB_AXIS_DATA[0]),
        .Q7(\NLW_isds[2].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_isds[2].iserdese2_master_Q8_UNCONNECTED ),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_isds[2].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_isds[2].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \isds[3].idelaye2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_isds[3].idelaye2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(din_d_3),
        .IDATAIN(din_i_3),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("BOTH"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \isds[3].iserdese2_master 
       (.BITSLIP(isd_bitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(RFB_DCLK_q),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(din_i_3),
        .DDLY(din_d_3),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_isds[3].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(RFB_AXIS_DATA[11]),
        .Q2(RFB_AXIS_DATA[9]),
        .Q3(RFB_AXIS_DATA[7]),
        .Q4(RFB_AXIS_DATA[5]),
        .Q5(RFB_AXIS_DATA[3]),
        .Q6(RFB_AXIS_DATA[1]),
        .Q7(\NLW_isds[3].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_isds[3].iserdese2_master_Q8_UNCONNECTED ),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_isds[3].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_isds[3].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \isds[4].idelaye2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_isds[4].idelaye2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(din_d_4),
        .IDATAIN(din_i_4),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("BOTH"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \isds[4].iserdese2_master 
       (.BITSLIP(isd_bitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(RFB_DCLK_q),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(din_i_4),
        .DDLY(din_d_4),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_isds[4].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(isd_q4[0]),
        .Q2(isd_q4[1]),
        .Q3(isd_q4[2]),
        .Q4(isd_q4[3]),
        .Q5(isd_q4[4]),
        .Q6(isd_q4[5]),
        .Q7(\NLW_isds[4].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_isds[4].iserdese2_master_Q8_UNCONNECTED ),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_isds[4].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_isds[4].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \isds[5].idelaye2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_isds[5].idelaye2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(din_d_5),
        .IDATAIN(din_i_5),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("BOTH"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \isds[5].iserdese2_master 
       (.BITSLIP(isd_bitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(RFB_DCLK_q),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(din_i_5),
        .DDLY(din_d_5),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_isds[5].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(isd_q5[0]),
        .Q2(isd_q5[1]),
        .Q3(isd_q5[2]),
        .Q4(isd_q5[3]),
        .Q5(isd_q5[4]),
        .Q6(isd_q5[5]),
        .Q7(\NLW_isds[5].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_isds[5].iserdese2_master_Q8_UNCONNECTED ),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_isds[5].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_isds[5].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
endmodule
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
