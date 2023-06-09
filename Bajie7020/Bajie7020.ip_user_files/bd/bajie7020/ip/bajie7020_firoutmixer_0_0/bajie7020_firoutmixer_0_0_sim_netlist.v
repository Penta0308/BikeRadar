// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jun  7 09:17:36 2023
// Host        : Penta0308-E402N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_firoutmixer_0_0/bajie7020_firoutmixer_0_0_sim_netlist.v
// Design      : bajie7020_firoutmixer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bajie7020_firoutmixer_0_0,firoutmixer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "firoutmixer,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module bajie7020_firoutmixer_0_0
   (s_axis_data,
    s_axis_valid,
    s_axis_user,
    m_axis_data,
    m_axis_valid,
    m_axis_last,
    clk,
    reset,
    sample_n,
    sample_ln,
    sample_active,
    sample_valid,
    sample_begin,
    sample_last);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [63:0]s_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value path} size {attribs {resolve_type generated dependency path_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type generated dependency path_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency out_width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency out_fractwidth format long minimum {} maximum {}} value 19} signed {attribs {resolve_type generated dependency out_signed format bool minimum {} maximum {}} value true}}}}}}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_data_valid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_valid} enabled {attribs {resolve_type generated dependency data_valid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_valid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chanid_bitoffset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_bitwidth format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type generated dependency user_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 3}, INSERT_VIP 0" *) input [0:0]s_axis_user;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [63:0]m_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_last;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  output [15:0]sample_n;
  output [3:0]sample_ln;
  output sample_active;
  output sample_valid;
  output sample_begin;
  output sample_last;

  wire clk;
  wire m_axis_valid;
  wire reset;
  wire [63:0]s_axis_data;
  wire [0:0]s_axis_user;
  wire s_axis_valid;
  wire sample_active;
  wire sample_begin;
  wire sample_last;
  wire [3:0]sample_ln;
  wire [15:0]sample_n;

  assign m_axis_data[63:0] = s_axis_data;
  assign m_axis_last = sample_last;
  assign sample_valid = m_axis_valid;
  bajie7020_firoutmixer_0_0_firoutmixer inst
       (.clk(clk),
        .reset(reset),
        .s_axis_user(s_axis_user),
        .s_axis_valid(s_axis_valid),
        .sample_active_reg_0(sample_active),
        .sample_begin(sample_begin),
        .sample_last(sample_last),
        .\sample_ln_reg[0]_0 (sample_ln[0]),
        .\sample_ln_reg[1]_0 (sample_ln[1]),
        .\sample_ln_reg[2]_0 (sample_ln[2]),
        .\sample_ln_reg[3]_0 (sample_ln[3]),
        .\sample_n_reg[0]_0 (sample_n[0]),
        .\sample_n_reg[10]_0 (sample_n[10]),
        .\sample_n_reg[11]_0 (sample_n[11]),
        .\sample_n_reg[12]_0 (sample_n[12]),
        .\sample_n_reg[13]_0 (sample_n[13]),
        .\sample_n_reg[14]_0 (sample_n[14]),
        .\sample_n_reg[15]_0 (sample_n[15]),
        .\sample_n_reg[1]_0 (sample_n[1]),
        .\sample_n_reg[2]_0 (sample_n[2]),
        .\sample_n_reg[3]_0 (sample_n[3]),
        .\sample_n_reg[4]_0 (sample_n[4]),
        .\sample_n_reg[5]_0 (sample_n[5]),
        .\sample_n_reg[6]_0 (sample_n[6]),
        .\sample_n_reg[7]_0 (sample_n[7]),
        .\sample_n_reg[8]_0 (sample_n[8]),
        .\sample_n_reg[9]_0 (sample_n[9]),
        .sample_valid_reg_0(m_axis_valid));
endmodule

(* ORIG_REF_NAME = "firoutmixer" *) 
module bajie7020_firoutmixer_0_0_firoutmixer
   (\sample_n_reg[15]_0 ,
    \sample_n_reg[14]_0 ,
    \sample_n_reg[13]_0 ,
    \sample_n_reg[12]_0 ,
    \sample_n_reg[11]_0 ,
    \sample_n_reg[10]_0 ,
    \sample_n_reg[9]_0 ,
    \sample_n_reg[8]_0 ,
    \sample_n_reg[7]_0 ,
    \sample_n_reg[6]_0 ,
    \sample_n_reg[5]_0 ,
    \sample_n_reg[4]_0 ,
    \sample_n_reg[3]_0 ,
    \sample_n_reg[2]_0 ,
    \sample_n_reg[1]_0 ,
    \sample_n_reg[0]_0 ,
    \sample_ln_reg[3]_0 ,
    \sample_ln_reg[2]_0 ,
    \sample_ln_reg[1]_0 ,
    \sample_ln_reg[0]_0 ,
    sample_active_reg_0,
    sample_valid_reg_0,
    sample_last,
    sample_begin,
    reset,
    clk,
    s_axis_valid,
    s_axis_user);
  output \sample_n_reg[15]_0 ;
  output \sample_n_reg[14]_0 ;
  output \sample_n_reg[13]_0 ;
  output \sample_n_reg[12]_0 ;
  output \sample_n_reg[11]_0 ;
  output \sample_n_reg[10]_0 ;
  output \sample_n_reg[9]_0 ;
  output \sample_n_reg[8]_0 ;
  output \sample_n_reg[7]_0 ;
  output \sample_n_reg[6]_0 ;
  output \sample_n_reg[5]_0 ;
  output \sample_n_reg[4]_0 ;
  output \sample_n_reg[3]_0 ;
  output \sample_n_reg[2]_0 ;
  output \sample_n_reg[1]_0 ;
  output \sample_n_reg[0]_0 ;
  output \sample_ln_reg[3]_0 ;
  output \sample_ln_reg[2]_0 ;
  output \sample_ln_reg[1]_0 ;
  output \sample_ln_reg[0]_0 ;
  output sample_active_reg_0;
  output sample_valid_reg_0;
  output sample_last;
  output sample_begin;
  input reset;
  input clk;
  input s_axis_valid;
  input [0:0]s_axis_user;

  wire clk;
  wire [15:1]data0;
  wire [3:0]p_0_in;
  wire reset;
  wire [0:0]s_axis_user;
  wire s_axis_valid;
  wire sample_active_i_1_n_0;
  wire sample_active_reg_0;
  wire sample_begin;
  wire sample_begin_i_1_n_0;
  wire sample_begin_i_2_n_0;
  wire sample_begin_i_3_n_0;
  wire sample_begin_i_4_n_0;
  wire sample_begin_i_5_n_0;
  wire sample_begin_i_6_n_0;
  wire sample_begin_i_7_n_0;
  wire sample_last;
  wire sample_last_i_1_n_0;
  wire sample_last_i_2_n_0;
  wire sample_last_i_3_n_0;
  wire sample_last_i_4_n_0;
  wire sample_last_i_5_n_0;
  wire \sample_ln[3]_i_2_n_0 ;
  wire \sample_ln_reg[0]_0 ;
  wire \sample_ln_reg[1]_0 ;
  wire \sample_ln_reg[2]_0 ;
  wire \sample_ln_reg[3]_0 ;
  wire \sample_n[0]_i_1_n_0 ;
  wire \sample_n[10]_i_1_n_0 ;
  wire \sample_n[11]_i_1_n_0 ;
  wire \sample_n[11]_i_2_n_0 ;
  wire \sample_n[11]_i_3_n_0 ;
  wire \sample_n[12]_i_1_n_0 ;
  wire \sample_n[13]_i_1_n_0 ;
  wire \sample_n[13]_i_2_n_0 ;
  wire \sample_n[13]_i_3_n_0 ;
  wire \sample_n[14]_i_1_n_0 ;
  wire \sample_n[14]_i_2_n_0 ;
  wire \sample_n[15]_i_1_n_0 ;
  wire \sample_n[15]_i_2_n_0 ;
  wire \sample_n[15]_i_3_n_0 ;
  wire \sample_n[15]_i_4_n_0 ;
  wire \sample_n[15]_i_6_n_0 ;
  wire \sample_n[15]_i_7_n_0 ;
  wire \sample_n[1]_i_1_n_0 ;
  wire \sample_n[2]_i_1_n_0 ;
  wire \sample_n[2]_i_2_n_0 ;
  wire \sample_n[3]_i_1_n_0 ;
  wire \sample_n[4]_i_1_n_0 ;
  wire \sample_n[4]_i_2_n_0 ;
  wire \sample_n[5]_i_1_n_0 ;
  wire \sample_n[6]_i_1_n_0 ;
  wire \sample_n[7]_i_1_n_0 ;
  wire \sample_n[7]_i_2_n_0 ;
  wire \sample_n[8]_i_1_n_0 ;
  wire \sample_n[8]_i_2_n_0 ;
  wire \sample_n[9]_i_1_n_0 ;
  wire \sample_n_reg[0]_0 ;
  wire \sample_n_reg[10]_0 ;
  wire \sample_n_reg[11]_0 ;
  wire \sample_n_reg[12]_0 ;
  wire \sample_n_reg[12]_i_2_n_0 ;
  wire \sample_n_reg[12]_i_2_n_1 ;
  wire \sample_n_reg[12]_i_2_n_2 ;
  wire \sample_n_reg[12]_i_2_n_3 ;
  wire \sample_n_reg[13]_0 ;
  wire \sample_n_reg[14]_0 ;
  wire \sample_n_reg[15]_0 ;
  wire \sample_n_reg[15]_i_5_n_2 ;
  wire \sample_n_reg[15]_i_5_n_3 ;
  wire \sample_n_reg[1]_0 ;
  wire \sample_n_reg[2]_0 ;
  wire \sample_n_reg[3]_0 ;
  wire \sample_n_reg[4]_0 ;
  wire \sample_n_reg[4]_i_3_n_0 ;
  wire \sample_n_reg[4]_i_3_n_1 ;
  wire \sample_n_reg[4]_i_3_n_2 ;
  wire \sample_n_reg[4]_i_3_n_3 ;
  wire \sample_n_reg[5]_0 ;
  wire \sample_n_reg[6]_0 ;
  wire \sample_n_reg[7]_0 ;
  wire \sample_n_reg[8]_0 ;
  wire \sample_n_reg[8]_i_3_n_0 ;
  wire \sample_n_reg[8]_i_3_n_1 ;
  wire \sample_n_reg[8]_i_3_n_2 ;
  wire \sample_n_reg[8]_i_3_n_3 ;
  wire \sample_n_reg[9]_0 ;
  wire sample_valid_i_1_n_0;
  wire sample_valid_i_2_n_0;
  wire sample_valid_i_3_n_0;
  wire sample_valid_i_4_n_0;
  wire sample_valid_i_5_n_0;
  wire sample_valid_i_6_n_0;
  wire sample_valid_i_7_n_0;
  wire sample_valid_reg_0;
  wire [3:2]\NLW_sample_n_reg[15]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_sample_n_reg[15]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8CCCCCCCCCCCCCCC)) 
    sample_active_i_1
       (.I0(sample_valid_i_3_n_0),
        .I1(\sample_ln[3]_i_2_n_0 ),
        .I2(\sample_ln_reg[2]_0 ),
        .I3(\sample_ln_reg[0]_0 ),
        .I4(\sample_ln_reg[1]_0 ),
        .I5(\sample_ln_reg[3]_0 ),
        .O(sample_active_i_1_n_0));
  FDRE sample_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(sample_active_i_1_n_0),
        .Q(sample_active_reg_0),
        .R(reset));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    sample_begin_i_1
       (.I0(sample_begin_i_2_n_0),
        .I1(sample_begin_i_3_n_0),
        .I2(sample_begin_i_4_n_0),
        .I3(sample_begin_i_5_n_0),
        .I4(reset),
        .O(sample_begin_i_1_n_0));
  LUT6 #(
    .INIT(64'hF444444400000000)) 
    sample_begin_i_2
       (.I0(sample_valid_i_3_n_0),
        .I1(sample_valid_i_2_n_0),
        .I2(sample_begin_i_6_n_0),
        .I3(\sample_n[15]_i_2_n_0 ),
        .I4(sample_begin_i_7_n_0),
        .I5(sample_valid_reg_0),
        .O(sample_begin_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sample_begin_i_3
       (.I0(data0[6]),
        .I1(data0[7]),
        .I2(data0[4]),
        .I3(data0[5]),
        .I4(data0[9]),
        .I5(data0[8]),
        .O(sample_begin_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sample_begin_i_4
       (.I0(data0[12]),
        .I1(data0[13]),
        .I2(data0[10]),
        .I3(data0[11]),
        .I4(data0[15]),
        .I5(data0[14]),
        .O(sample_begin_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    sample_begin_i_5
       (.I0(sample_valid_reg_0),
        .I1(\sample_n_reg[0]_0 ),
        .I2(data0[3]),
        .I3(data0[2]),
        .I4(data0[1]),
        .I5(sample_valid_i_2_n_0),
        .O(sample_begin_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sample_begin_i_6
       (.I0(\sample_n[11]_i_3_n_0 ),
        .I1(\sample_n_reg[1]_0 ),
        .I2(\sample_n_reg[0]_0 ),
        .I3(\sample_n_reg[4]_0 ),
        .I4(\sample_n_reg[3]_0 ),
        .I5(sample_valid_i_7_n_0),
        .O(sample_begin_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sample_begin_i_7
       (.I0(\sample_n_reg[8]_0 ),
        .I1(\sample_n_reg[9]_0 ),
        .I2(\sample_n_reg[2]_0 ),
        .I3(\sample_n_reg[5]_0 ),
        .I4(\sample_n_reg[15]_0 ),
        .I5(\sample_n_reg[13]_0 ),
        .O(sample_begin_i_7_n_0));
  FDRE sample_begin_reg
       (.C(clk),
        .CE(1'b1),
        .D(sample_begin_i_1_n_0),
        .Q(sample_begin),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    sample_last_i_1
       (.I0(sample_last_i_2_n_0),
        .I1(sample_last_i_3_n_0),
        .I2(sample_last_i_4_n_0),
        .I3(sample_last_i_5_n_0),
        .I4(reset),
        .O(sample_last_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sample_last_i_2
       (.I0(sample_valid_reg_0),
        .I1(\sample_n[15]_i_2_n_0 ),
        .I2(sample_valid_i_3_n_0),
        .O(sample_last_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    sample_last_i_3
       (.I0(data0[8]),
        .I1(data0[7]),
        .I2(data0[5]),
        .I3(data0[6]),
        .I4(data0[10]),
        .I5(data0[9]),
        .O(sample_last_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    sample_last_i_4
       (.I0(data0[13]),
        .I1(data0[14]),
        .I2(data0[11]),
        .I3(data0[12]),
        .I4(\sample_n_reg[0]_0 ),
        .I5(data0[15]),
        .O(sample_last_i_4_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    sample_last_i_5
       (.I0(sample_valid_reg_0),
        .I1(data0[4]),
        .I2(data0[3]),
        .I3(data0[2]),
        .I4(data0[1]),
        .I5(sample_valid_i_2_n_0),
        .O(sample_last_i_5_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE sample_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(sample_last_i_1_n_0),
        .Q(sample_last),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5666)) 
    \sample_ln[0]_i_1 
       (.I0(\sample_ln_reg[0]_0 ),
        .I1(sample_active_reg_0),
        .I2(s_axis_valid),
        .I3(s_axis_user),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h666C6C6C)) 
    \sample_ln[1]_i_1 
       (.I0(\sample_ln_reg[0]_0 ),
        .I1(\sample_ln_reg[1]_0 ),
        .I2(sample_active_reg_0),
        .I3(s_axis_valid),
        .I4(s_axis_user),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h787878F078F078F0)) 
    \sample_ln[2]_i_1 
       (.I0(\sample_ln_reg[0]_0 ),
        .I1(\sample_ln_reg[1]_0 ),
        .I2(\sample_ln_reg[2]_0 ),
        .I3(sample_active_reg_0),
        .I4(s_axis_valid),
        .I5(s_axis_user),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \sample_ln[3]_i_1 
       (.I0(\sample_ln_reg[2]_0 ),
        .I1(\sample_ln_reg[0]_0 ),
        .I2(\sample_ln_reg[1]_0 ),
        .I3(\sample_ln_reg[3]_0 ),
        .I4(\sample_ln[3]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_ln[3]_i_2 
       (.I0(s_axis_user),
        .I1(s_axis_valid),
        .I2(sample_active_reg_0),
        .O(\sample_ln[3]_i_2_n_0 ));
  FDRE \sample_ln_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\sample_ln_reg[0]_0 ),
        .R(reset));
  FDRE \sample_ln_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\sample_ln_reg[1]_0 ),
        .R(reset));
  FDRE \sample_ln_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\sample_ln_reg[2]_0 ),
        .R(reset));
  FDRE \sample_ln_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\sample_ln_reg[3]_0 ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sample_n[0]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[0]_0 ),
        .I2(sample_valid_i_2_n_0),
        .O(\sample_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[10]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[10]_0 ),
        .I2(\sample_n[11]_i_2_n_0 ),
        .I3(\sample_n_reg[11]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[10]),
        .O(\sample_n[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[11]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[11]_0 ),
        .I2(\sample_n[11]_i_2_n_0 ),
        .I3(\sample_n_reg[10]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[11]),
        .O(\sample_n[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \sample_n[11]_i_2 
       (.I0(\sample_n[11]_i_3_n_0 ),
        .I1(\sample_n_reg[0]_0 ),
        .I2(\sample_n_reg[15]_0 ),
        .I3(\sample_n[15]_i_6_n_0 ),
        .I4(\sample_n_reg[7]_0 ),
        .I5(\sample_n_reg[6]_0 ),
        .O(\sample_n[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sample_n[11]_i_3 
       (.I0(\sample_n_reg[12]_0 ),
        .I1(\sample_n_reg[14]_0 ),
        .O(\sample_n[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[12]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[12]_0 ),
        .I2(\sample_n[14]_i_2_n_0 ),
        .I3(\sample_n_reg[14]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[12]),
        .O(\sample_n[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCCCCAAAA0000)) 
    \sample_n[13]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(sample_valid_i_2_n_0),
        .I2(\sample_n[13]_i_2_n_0 ),
        .I3(\sample_n_reg[9]_0 ),
        .I4(\sample_n_reg[13]_0 ),
        .I5(data0[13]),
        .O(\sample_n[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \sample_n[13]_i_2 
       (.I0(\sample_n_reg[2]_0 ),
        .I1(\sample_n_reg[1]_0 ),
        .I2(\sample_n_reg[8]_0 ),
        .I3(\sample_n_reg[5]_0 ),
        .I4(\sample_n[13]_i_3_n_0 ),
        .I5(sample_valid_i_4_n_0),
        .O(\sample_n[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \sample_n[13]_i_3 
       (.I0(sample_valid_i_7_n_0),
        .I1(\sample_n_reg[15]_0 ),
        .I2(\sample_n_reg[0]_0 ),
        .I3(\sample_n_reg[12]_0 ),
        .I4(\sample_n_reg[14]_0 ),
        .O(\sample_n[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[14]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[14]_0 ),
        .I2(\sample_n[14]_i_2_n_0 ),
        .I3(\sample_n_reg[12]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[14]),
        .O(\sample_n[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sample_n[14]_i_2 
       (.I0(sample_valid_i_7_n_0),
        .I1(\sample_n[15]_i_6_n_0 ),
        .I2(\sample_n_reg[0]_0 ),
        .I3(\sample_n_reg[15]_0 ),
        .O(\sample_n[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[15]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[15]_0 ),
        .I2(\sample_n[15]_i_3_n_0 ),
        .I3(\sample_n[15]_i_4_n_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[15]),
        .O(\sample_n[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sample_n[15]_i_2 
       (.I0(\sample_ln[3]_i_2_n_0 ),
        .I1(\sample_ln_reg[3]_0 ),
        .I2(\sample_ln_reg[1]_0 ),
        .I3(\sample_ln_reg[0]_0 ),
        .I4(\sample_ln_reg[2]_0 ),
        .O(\sample_n[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \sample_n[15]_i_3 
       (.I0(\sample_n_reg[14]_0 ),
        .I1(\sample_n_reg[12]_0 ),
        .I2(\sample_n_reg[0]_0 ),
        .O(\sample_n[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample_n[15]_i_4 
       (.I0(\sample_n[15]_i_6_n_0 ),
        .I1(\sample_n_reg[10]_0 ),
        .I2(\sample_n_reg[11]_0 ),
        .I3(\sample_n_reg[6]_0 ),
        .I4(\sample_n_reg[7]_0 ),
        .O(\sample_n[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \sample_n[15]_i_6 
       (.I0(\sample_n_reg[5]_0 ),
        .I1(\sample_n_reg[8]_0 ),
        .I2(\sample_n_reg[1]_0 ),
        .I3(\sample_n_reg[2]_0 ),
        .I4(\sample_n[15]_i_7_n_0 ),
        .O(\sample_n[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \sample_n[15]_i_7 
       (.I0(\sample_n_reg[13]_0 ),
        .I1(\sample_n_reg[9]_0 ),
        .I2(\sample_n_reg[4]_0 ),
        .I3(\sample_n_reg[3]_0 ),
        .O(\sample_n[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCCCCAAAA0000)) 
    \sample_n[1]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(sample_valid_i_2_n_0),
        .I2(\sample_n[2]_i_2_n_0 ),
        .I3(\sample_n_reg[2]_0 ),
        .I4(\sample_n_reg[1]_0 ),
        .I5(data0[1]),
        .O(\sample_n[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCCCCAAAA0000)) 
    \sample_n[2]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(sample_valid_i_2_n_0),
        .I2(\sample_n[2]_i_2_n_0 ),
        .I3(\sample_n_reg[1]_0 ),
        .I4(\sample_n_reg[2]_0 ),
        .I5(data0[2]),
        .O(\sample_n[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \sample_n[2]_i_2 
       (.I0(\sample_n_reg[13]_0 ),
        .I1(\sample_n_reg[9]_0 ),
        .I2(sample_valid_i_4_n_0),
        .I3(\sample_n[13]_i_3_n_0 ),
        .I4(\sample_n_reg[8]_0 ),
        .I5(\sample_n_reg[5]_0 ),
        .O(\sample_n[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[3]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[3]_0 ),
        .I2(\sample_n[4]_i_2_n_0 ),
        .I3(\sample_n_reg[4]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[3]),
        .O(\sample_n[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[4]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[4]_0 ),
        .I2(\sample_n[4]_i_2_n_0 ),
        .I3(\sample_n_reg[3]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[4]),
        .O(\sample_n[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \sample_n[4]_i_2 
       (.I0(sample_valid_i_5_n_0),
        .I1(\sample_n[13]_i_3_n_0 ),
        .I2(\sample_n_reg[13]_0 ),
        .I3(\sample_n_reg[9]_0 ),
        .O(\sample_n[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCCCCAAAA0000)) 
    \sample_n[5]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(sample_valid_i_2_n_0),
        .I2(\sample_n[8]_i_2_n_0 ),
        .I3(\sample_n_reg[8]_0 ),
        .I4(\sample_n_reg[5]_0 ),
        .I5(data0[5]),
        .O(\sample_n[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[6]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[6]_0 ),
        .I2(\sample_n[7]_i_2_n_0 ),
        .I3(\sample_n_reg[7]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[6]),
        .O(\sample_n[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCCCCC88888888)) 
    \sample_n[7]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(\sample_n_reg[7]_0 ),
        .I2(\sample_n[7]_i_2_n_0 ),
        .I3(\sample_n_reg[6]_0 ),
        .I4(sample_valid_i_2_n_0),
        .I5(data0[7]),
        .O(\sample_n[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \sample_n[7]_i_2 
       (.I0(\sample_n[11]_i_3_n_0 ),
        .I1(\sample_n_reg[0]_0 ),
        .I2(\sample_n_reg[15]_0 ),
        .I3(\sample_n[15]_i_6_n_0 ),
        .I4(\sample_n_reg[11]_0 ),
        .I5(\sample_n_reg[10]_0 ),
        .O(\sample_n[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCCCCAAAA0000)) 
    \sample_n[8]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(sample_valid_i_2_n_0),
        .I2(\sample_n[8]_i_2_n_0 ),
        .I3(\sample_n_reg[5]_0 ),
        .I4(\sample_n_reg[8]_0 ),
        .I5(data0[8]),
        .O(\sample_n[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \sample_n[8]_i_2 
       (.I0(\sample_n_reg[13]_0 ),
        .I1(\sample_n_reg[9]_0 ),
        .I2(sample_valid_i_4_n_0),
        .I3(\sample_n[13]_i_3_n_0 ),
        .I4(\sample_n_reg[2]_0 ),
        .I5(\sample_n_reg[1]_0 ),
        .O(\sample_n[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCCCCAAAA0000)) 
    \sample_n[9]_i_1 
       (.I0(\sample_n[15]_i_2_n_0 ),
        .I1(sample_valid_i_2_n_0),
        .I2(\sample_n[13]_i_2_n_0 ),
        .I3(\sample_n_reg[13]_0 ),
        .I4(\sample_n_reg[9]_0 ),
        .I5(data0[9]),
        .O(\sample_n[9]_i_1_n_0 ));
  FDRE \sample_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[0]_i_1_n_0 ),
        .Q(\sample_n_reg[0]_0 ),
        .R(reset));
  FDRE \sample_n_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[10]_i_1_n_0 ),
        .Q(\sample_n_reg[10]_0 ),
        .R(reset));
  FDRE \sample_n_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[11]_i_1_n_0 ),
        .Q(\sample_n_reg[11]_0 ),
        .R(reset));
  FDRE \sample_n_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[12]_i_1_n_0 ),
        .Q(\sample_n_reg[12]_0 ),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_n_reg[12]_i_2 
       (.CI(\sample_n_reg[8]_i_3_n_0 ),
        .CO({\sample_n_reg[12]_i_2_n_0 ,\sample_n_reg[12]_i_2_n_1 ,\sample_n_reg[12]_i_2_n_2 ,\sample_n_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\sample_n_reg[12]_0 ,\sample_n_reg[11]_0 ,\sample_n_reg[10]_0 ,\sample_n_reg[9]_0 }));
  FDRE \sample_n_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[13]_i_1_n_0 ),
        .Q(\sample_n_reg[13]_0 ),
        .R(reset));
  FDRE \sample_n_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[14]_i_1_n_0 ),
        .Q(\sample_n_reg[14]_0 ),
        .R(reset));
  FDRE \sample_n_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[15]_i_1_n_0 ),
        .Q(\sample_n_reg[15]_0 ),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_n_reg[15]_i_5 
       (.CI(\sample_n_reg[12]_i_2_n_0 ),
        .CO({\NLW_sample_n_reg[15]_i_5_CO_UNCONNECTED [3:2],\sample_n_reg[15]_i_5_n_2 ,\sample_n_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_n_reg[15]_i_5_O_UNCONNECTED [3],data0[15:13]}),
        .S({1'b0,\sample_n_reg[15]_0 ,\sample_n_reg[14]_0 ,\sample_n_reg[13]_0 }));
  FDRE \sample_n_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[1]_i_1_n_0 ),
        .Q(\sample_n_reg[1]_0 ),
        .R(reset));
  FDRE \sample_n_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[2]_i_1_n_0 ),
        .Q(\sample_n_reg[2]_0 ),
        .R(reset));
  FDRE \sample_n_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[3]_i_1_n_0 ),
        .Q(\sample_n_reg[3]_0 ),
        .R(reset));
  FDRE \sample_n_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[4]_i_1_n_0 ),
        .Q(\sample_n_reg[4]_0 ),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_n_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\sample_n_reg[4]_i_3_n_0 ,\sample_n_reg[4]_i_3_n_1 ,\sample_n_reg[4]_i_3_n_2 ,\sample_n_reg[4]_i_3_n_3 }),
        .CYINIT(\sample_n_reg[0]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\sample_n_reg[4]_0 ,\sample_n_reg[3]_0 ,\sample_n_reg[2]_0 ,\sample_n_reg[1]_0 }));
  FDRE \sample_n_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[5]_i_1_n_0 ),
        .Q(\sample_n_reg[5]_0 ),
        .R(reset));
  FDRE \sample_n_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[6]_i_1_n_0 ),
        .Q(\sample_n_reg[6]_0 ),
        .R(reset));
  FDRE \sample_n_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[7]_i_1_n_0 ),
        .Q(\sample_n_reg[7]_0 ),
        .R(reset));
  FDRE \sample_n_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[8]_i_1_n_0 ),
        .Q(\sample_n_reg[8]_0 ),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_n_reg[8]_i_3 
       (.CI(\sample_n_reg[4]_i_3_n_0 ),
        .CO({\sample_n_reg[8]_i_3_n_0 ,\sample_n_reg[8]_i_3_n_1 ,\sample_n_reg[8]_i_3_n_2 ,\sample_n_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\sample_n_reg[8]_0 ,\sample_n_reg[7]_0 ,\sample_n_reg[6]_0 ,\sample_n_reg[5]_0 }));
  FDRE \sample_n_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_n[9]_i_1_n_0 ),
        .Q(\sample_n_reg[9]_0 ),
        .R(reset));
  LUT3 #(
    .INIT(8'h08)) 
    sample_valid_i_1
       (.I0(sample_valid_i_2_n_0),
        .I1(sample_valid_i_3_n_0),
        .I2(reset),
        .O(sample_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    sample_valid_i_2
       (.I0(\sample_ln[3]_i_2_n_0 ),
        .I1(\sample_ln_reg[3]_0 ),
        .I2(\sample_ln_reg[1]_0 ),
        .I3(\sample_ln_reg[0]_0 ),
        .I4(\sample_ln_reg[2]_0 ),
        .O(sample_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    sample_valid_i_3
       (.I0(\sample_n_reg[13]_0 ),
        .I1(\sample_n_reg[9]_0 ),
        .I2(sample_valid_i_4_n_0),
        .I3(sample_valid_i_5_n_0),
        .I4(sample_valid_i_6_n_0),
        .I5(sample_valid_i_7_n_0),
        .O(sample_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sample_valid_i_4
       (.I0(\sample_n_reg[3]_0 ),
        .I1(\sample_n_reg[4]_0 ),
        .O(sample_valid_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    sample_valid_i_5
       (.I0(\sample_n_reg[2]_0 ),
        .I1(\sample_n_reg[1]_0 ),
        .I2(\sample_n_reg[8]_0 ),
        .I3(\sample_n_reg[5]_0 ),
        .O(sample_valid_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    sample_valid_i_6
       (.I0(\sample_n_reg[14]_0 ),
        .I1(\sample_n_reg[12]_0 ),
        .I2(\sample_n_reg[0]_0 ),
        .I3(\sample_n_reg[15]_0 ),
        .O(sample_valid_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sample_valid_i_7
       (.I0(\sample_n_reg[7]_0 ),
        .I1(\sample_n_reg[6]_0 ),
        .I2(\sample_n_reg[11]_0 ),
        .I3(\sample_n_reg[10]_0 ),
        .O(sample_valid_i_7_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) 
  FDRE sample_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(sample_valid_i_1_n_0),
        .Q(sample_valid_reg_0),
        .R(1'b0));
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
