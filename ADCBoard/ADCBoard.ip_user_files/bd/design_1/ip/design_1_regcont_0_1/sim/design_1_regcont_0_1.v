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


// IP VLNV: xilinx.com:module_ref:regcont:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_regcont_0_1 (
  regclk,
  i_reg,
  o_reg,
  r_reg,
  w_reg,
  clk,
  aresetn,
  o_00,
  o_01,
  o_02,
  o_03,
  o_04,
  o_05,
  o_06,
  o_07,
  ow_00,
  ow_01,
  ow_02,
  ow_03,
  ow_04,
  ow_05,
  ow_06,
  ow_07,
  i_00,
  i_01,
  i_02,
  i_03,
  i_04,
  i_05,
  i_06,
  i_07,
  r,
  w
);

input wire regclk;
output wire [7 : 0] i_reg;
input wire [7 : 0] o_reg;
input wire r_reg;
input wire w_reg;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET aresetn, FREQ_HZ 72000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out_192M_i, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
output wire o_00;
output wire o_01;
output wire o_02;
output wire o_03;
output wire o_04;
output wire o_05;
output wire o_06;
output wire o_07;
output wire ow_00;
output wire ow_01;
output wire ow_02;
output wire ow_03;
output wire ow_04;
output wire ow_05;
output wire ow_06;
output wire ow_07;
input wire i_00;
input wire i_01;
input wire i_02;
input wire i_03;
input wire i_04;
input wire i_05;
input wire i_06;
input wire i_07;
output wire r;
output wire w;

  regcont inst (
    .regclk(regclk),
    .i_reg(i_reg),
    .o_reg(o_reg),
    .r_reg(r_reg),
    .w_reg(w_reg),
    .clk(clk),
    .aresetn(aresetn),
    .o_00(o_00),
    .o_01(o_01),
    .o_02(o_02),
    .o_03(o_03),
    .o_04(o_04),
    .o_05(o_05),
    .o_06(o_06),
    .o_07(o_07),
    .ow_00(ow_00),
    .ow_01(ow_01),
    .ow_02(ow_02),
    .ow_03(ow_03),
    .ow_04(ow_04),
    .ow_05(ow_05),
    .ow_06(ow_06),
    .ow_07(ow_07),
    .i_00(i_00),
    .i_01(i_01),
    .i_02(i_02),
    .i_03(i_03),
    .i_04(i_04),
    .i_05(i_05),
    .i_06(i_06),
    .i_07(i_07),
    .r(r),
    .w(w)
  );
endmodule
