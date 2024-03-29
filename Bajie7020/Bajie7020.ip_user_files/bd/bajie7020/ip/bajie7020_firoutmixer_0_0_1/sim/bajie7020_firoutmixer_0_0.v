// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:firoutmixer:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bajie7020_firoutmixer_0_0 (
  s_axis_data,
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
  sample_last
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
input wire [63 : 0] s_axis_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
input wire s_axis_valid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bito\
ffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string min\
imum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value path} size {attribs {resolve_type generated dependency path_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type generated dependency p\
ath_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency out_width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency out_fractwidth format long minimum {} maximum {}} value 19\
} signed {attribs {resolve_type generated dependency out_signed format bool minimum {} maximum {}} value true}}}}}}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_data_valid {name {attribs {resolve_\
type immediate dependency {} format string minimum {} maximum {}} value data_valid} enabled {attribs {resolve_type generated dependency data_valid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_valid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long mi\
nimum {} maximum {}} value 0}}} field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {att\
ribs {resolve_type generated dependency chanid_bitoffset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {\
} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_bitwidth format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type generated dependency user_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 3}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *)
input wire [0 : 0] s_axis_user;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [63 : 0] m_axis_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire m_axis_valid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
output wire m_axis_last;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
output wire [15 : 0] sample_n;
output wire [3 : 0] sample_ln;
output wire sample_active;
output wire sample_valid;
output wire sample_begin;
output wire sample_last;

  firoutmixer inst (
    .s_axis_data(s_axis_data),
    .s_axis_valid(s_axis_valid),
    .s_axis_user(s_axis_user),
    .m_axis_data(m_axis_data),
    .m_axis_valid(m_axis_valid),
    .m_axis_last(m_axis_last),
    .clk(clk),
    .reset(reset),
    .sample_n(sample_n),
    .sample_ln(sample_ln),
    .sample_active(sample_active),
    .sample_valid(sample_valid),
    .sample_begin(sample_begin),
    .sample_last(sample_last)
  );
endmodule
