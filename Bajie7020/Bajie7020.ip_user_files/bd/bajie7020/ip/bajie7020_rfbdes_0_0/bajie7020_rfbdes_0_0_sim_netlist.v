// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jun  7 09:15:31 2023
// Host        : Penta0308-E402N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_rfbdes_0_0/bajie7020_rfbdes_0_0_sim_netlist.v
// Design      : bajie7020_rfbdes_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bajie7020_rfbdes_0_0,rfbdes,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rfbdes,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module bajie7020_rfbdes_0_0
   (RFB_DATA_P,
    RFB_DATA_N,
    RFB_DATAVALID,
    RFB_AXIS_DATA,
    RFB_AXIS_VALID,
    RFB_DCLK_clk_n,
    RFB_DCLK_clk_p,
    RFB_FCLK_clk_n,
    RFB_FCLK_clk_p,
    RFB_AXIS_CLK,
    RFB_AXIS_USER,
    idelay_refclk,
    des_reset,
    iod_reset);
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 RFB DATA_P" *) input [3:0]RFB_DATA_P;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 RFB DATA_N" *) input [3:0]RFB_DATA_N;
  input RFB_DATAVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [23:0]RFB_AXIS_DATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output RFB_AXIS_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *) input [0:0]RFB_DCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *) input [0:0]RFB_DCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]RFB_FCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]RFB_FCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 RFB_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET des_reset, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, INSERT_VIP 0" *) output RFB_AXIS_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 48000000, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]RFB_AXIS_USER;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_refclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME idelay_refclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input idelay_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 des_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME des_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input des_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 io_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input iod_reset;

  wire RFB_AXIS_CLK;
  wire [23:0]RFB_AXIS_DATA;
  wire [0:0]RFB_AXIS_USER;
  wire RFB_AXIS_VALID;
  wire RFB_DATAVALID;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [3:0]RFB_DATA_N;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [3:0]RFB_DATA_P;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_DCLK_clk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_DCLK_clk_p;
  wire RFB_DCLK_i;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_FCLK_clk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]RFB_FCLK_clk_p;
  wire des_reset;
  wire idelay_refclk;
  wire iod_reset;

  bajie7020_rfbdes_0_0_rfbdes inst
       (.RFB_AXIS_CLK(RFB_AXIS_CLK),
        .RFB_AXIS_DATA(RFB_AXIS_DATA),
        .RFB_AXIS_USER(RFB_AXIS_USER),
        .RFB_AXIS_VALID(RFB_AXIS_VALID),
        .RFB_DATAVALID(RFB_DATAVALID),
        .RFB_DATA_N(RFB_DATA_N),
        .RFB_DATA_P(RFB_DATA_P),
        .RFB_DCLK_clk_n(RFB_DCLK_clk_n),
        .RFB_DCLK_clk_p(RFB_DCLK_clk_p),
        .RFB_DCLK_i(RFB_DCLK_i),
        .RFB_FCLK_clk_n(RFB_FCLK_clk_n),
        .RFB_FCLK_clk_p(RFB_FCLK_clk_p),
        .des_reset(des_reset),
        .idelay_refclk(idelay_refclk),
        .iod_reset(iod_reset),
        .\pins[0].RFB_DCLK_inv (RFB_DCLK_i));
endmodule

(* ORIG_REF_NAME = "rfbdes" *) 
module bajie7020_rfbdes_0_0_rfbdes
   (RFB_AXIS_DATA,
    RFB_DCLK_i,
    RFB_AXIS_CLK,
    RFB_AXIS_VALID,
    RFB_AXIS_USER,
    RFB_DATA_P,
    RFB_DATA_N,
    idelay_refclk,
    \pins[0].RFB_DCLK_inv ,
    des_reset,
    iod_reset,
    RFB_DCLK_clk_p,
    RFB_DCLK_clk_n,
    RFB_FCLK_clk_p,
    RFB_FCLK_clk_n,
    RFB_DATAVALID);
  output [23:0]RFB_AXIS_DATA;
  output RFB_DCLK_i;
  output RFB_AXIS_CLK;
  output RFB_AXIS_VALID;
  output [0:0]RFB_AXIS_USER;
  input [3:0]RFB_DATA_P;
  input [3:0]RFB_DATA_N;
  input idelay_refclk;
  input \pins[0].RFB_DCLK_inv ;
  input des_reset;
  input iod_reset;
  input [0:0]RFB_DCLK_clk_p;
  input [0:0]RFB_DCLK_clk_n;
  input [0:0]RFB_FCLK_clk_p;
  input [0:0]RFB_FCLK_clk_n;
  input RFB_DATAVALID;

  wire RFB_AXIS_CLK;
  wire [23:0]RFB_AXIS_DATA;
  wire [0:0]RFB_AXIS_USER;
  wire RFB_AXIS_VALID;
  wire RFB_DATAVALID;
  wire [3:0]RFB_DATA_N;
  wire [3:0]RFB_DATA_P;
  wire [0:0]RFB_DCLK_clk_n;
  wire [0:0]RFB_DCLK_clk_p;
  wire RFB_DCLK_i;
  wire [0:0]RFB_FCLK_clk_n;
  wire [0:0]RFB_FCLK_clk_p;
  wire RFB_FCLK_d;
  wire RFB_FCLK_i;
  wire data_in_from_pins_delay_0;
  wire data_in_from_pins_delay_1;
  wire data_in_from_pins_delay_2;
  wire data_in_from_pins_delay_3;
  wire data_in_from_pins_int_0;
  wire data_in_from_pins_int_1;
  wire data_in_from_pins_int_2;
  wire data_in_from_pins_int_3;
  wire des_reset;
  wire idelay_refclk;
  wire iod_reset;
  wire \pins[0].RFB_DCLK_inv ;
  wire [4:0]NLW_idelaye2_inst_dv_CNTVALUEOUT_UNCONNECTED;
  wire [4:0]NLW_idelaye2_inst_fclk_CNTVALUEOUT_UNCONNECTED;
  wire [4:0]\NLW_pins[0].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_pins[1].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_pins[2].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire [4:0]\NLW_pins[3].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(RFB_AXIS_VALID),
        .REFCLK(idelay_refclk),
        .RST(iod_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("BYPASS"),
    .SIM_DEVICE("7SERIES")) 
    bufr_inst_clkdiv
       (.CE(1'b0),
        .CLR(1'b1),
        .I(RFB_FCLK_d),
        .O(RFB_AXIS_CLK));
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
        .O(RFB_FCLK_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(28),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    idelaye2_inst_dv
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_idelaye2_inst_dv_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(RFB_AXIS_USER),
        .IDATAIN(RFB_DATAVALID),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(22),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("CLOCK")) 
    idelaye2_inst_fclk
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_idelaye2_inst_fclk_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(RFB_FCLK_d),
        .IDATAIN(RFB_FCLK_i),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(8),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \pins[0].IDELAYE2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_pins[0].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_0),
        .IDATAIN(data_in_from_pins_int_0),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[0].ibufds_inst 
       (.I(RFB_DATA_P[0]),
        .IB(RFB_DATA_N[0]),
        .O(data_in_from_pins_int_0));
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
    \pins[0].iserdese2_master 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(\pins[0].RFB_DCLK_inv ),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(data_in_from_pins_int_0),
        .DDLY(data_in_from_pins_delay_0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[0].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(RFB_AXIS_DATA[20]),
        .Q2(RFB_AXIS_DATA[16]),
        .Q3(RFB_AXIS_DATA[12]),
        .Q4(RFB_AXIS_DATA[8]),
        .Q5(RFB_AXIS_DATA[4]),
        .Q6(RFB_AXIS_DATA[0]),
        .Q7(\NLW_pins[0].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[0].iserdese2_master_Q8_UNCONNECTED ),
        .RST(des_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(8),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \pins[1].IDELAYE2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_pins[1].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_1),
        .IDATAIN(data_in_from_pins_int_1),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[1].ibufds_inst 
       (.I(RFB_DATA_P[1]),
        .IB(RFB_DATA_N[1]),
        .O(data_in_from_pins_int_1));
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
    \pins[1].iserdese2_master 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(\pins[0].RFB_DCLK_inv ),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(data_in_from_pins_int_1),
        .DDLY(data_in_from_pins_delay_1),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[1].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(RFB_AXIS_DATA[21]),
        .Q2(RFB_AXIS_DATA[17]),
        .Q3(RFB_AXIS_DATA[13]),
        .Q4(RFB_AXIS_DATA[9]),
        .Q5(RFB_AXIS_DATA[5]),
        .Q6(RFB_AXIS_DATA[1]),
        .Q7(\NLW_pins[1].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[1].iserdese2_master_Q8_UNCONNECTED ),
        .RST(des_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(8),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \pins[2].IDELAYE2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_pins[2].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_2),
        .IDATAIN(data_in_from_pins_int_2),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[2].ibufds_inst 
       (.I(RFB_DATA_P[2]),
        .IB(RFB_DATA_N[2]),
        .O(data_in_from_pins_int_2));
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
    \pins[2].iserdese2_master 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(\pins[0].RFB_DCLK_inv ),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(data_in_from_pins_int_2),
        .DDLY(data_in_from_pins_delay_2),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[2].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(RFB_AXIS_DATA[22]),
        .Q2(RFB_AXIS_DATA[18]),
        .Q3(RFB_AXIS_DATA[14]),
        .Q4(RFB_AXIS_DATA[10]),
        .Q5(RFB_AXIS_DATA[6]),
        .Q6(RFB_AXIS_DATA[2]),
        .Q7(\NLW_pins[2].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[2].iserdese2_master_Q8_UNCONNECTED ),
        .RST(des_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "RFB_idelay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(8),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \pins[3].IDELAYE2_inst 
       (.C(idelay_refclk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_pins[3].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_3),
        .IDATAIN(data_in_from_pins_int_3),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[3].ibufds_inst 
       (.I(RFB_DATA_P[3]),
        .IB(RFB_DATA_N[3]),
        .O(data_in_from_pins_int_3));
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
    \pins[3].iserdese2_master 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(RFB_DCLK_i),
        .CLKB(\pins[0].RFB_DCLK_inv ),
        .CLKDIV(RFB_AXIS_CLK),
        .CLKDIVP(1'b0),
        .D(data_in_from_pins_int_3),
        .DDLY(data_in_from_pins_delay_3),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[3].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(RFB_AXIS_DATA[23]),
        .Q2(RFB_AXIS_DATA[19]),
        .Q3(RFB_AXIS_DATA[15]),
        .Q4(RFB_AXIS_DATA[11]),
        .Q5(RFB_AXIS_DATA[7]),
        .Q6(RFB_AXIS_DATA[3]),
        .Q7(\NLW_pins[3].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[3].iserdese2_master_Q8_UNCONNECTED ),
        .RST(des_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
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
