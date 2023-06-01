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


// IP VLNV: xilinx.com:module_ref:i2ccont:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_i2ccont_0_0 (
  areset,
  scl,
  sda_io_i,
  sda_io_o,
  sda_io_t,
  sdachain_i,
  sdachain_oL,
  clkout,
  s_start_detect,
  s_stop_detect,
  s_master_ack,
  s_state,
  s_bit_counter,
  i_reg_00,
  o_reg_00,
  r_reg_00,
  w_reg_00,
  i_reg_01,
  o_reg_01,
  r_reg_01,
  w_reg_01,
  i_reg_02,
  o_reg_02,
  r_reg_02,
  w_reg_02,
  i_reg_03,
  o_reg_03,
  r_reg_03,
  w_reg_03
);

input wire areset;
input wire scl;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *)
input wire sda_io_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *)
input wire sda_io_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_T" *)
input wire sda_io_t;
output wire sdachain_i;
input wire sdachain_oL;
output wire clkout;
output wire s_start_detect;
output wire s_stop_detect;
output wire s_master_ack;
output wire [2 : 0] s_state;
output wire [3 : 0] s_bit_counter;
input wire [7 : 0] i_reg_00;
output wire [7 : 0] o_reg_00;
output wire r_reg_00;
output wire w_reg_00;
input wire [7 : 0] i_reg_01;
output wire [7 : 0] o_reg_01;
output wire r_reg_01;
output wire w_reg_01;
input wire [7 : 0] i_reg_02;
output wire [7 : 0] o_reg_02;
output wire r_reg_02;
output wire w_reg_02;
input wire [7 : 0] i_reg_03;
output wire [7 : 0] o_reg_03;
output wire r_reg_03;
output wire w_reg_03;

  i2ccont #(
    .device_address(7'H55)
  ) inst (
    .areset(areset),
    .scl(scl),
    .sda_io_i(sda_io_i),
    .sda_io_o(sda_io_o),
    .sda_io_t(sda_io_t),
    .sdachain_i(sdachain_i),
    .sdachain_oL(sdachain_oL),
    .clkout(clkout),
    .s_start_detect(s_start_detect),
    .s_stop_detect(s_stop_detect),
    .s_master_ack(s_master_ack),
    .s_state(s_state),
    .s_bit_counter(s_bit_counter),
    .i_reg_00(i_reg_00),
    .o_reg_00(o_reg_00),
    .r_reg_00(r_reg_00),
    .w_reg_00(w_reg_00),
    .i_reg_01(i_reg_01),
    .o_reg_01(o_reg_01),
    .r_reg_01(r_reg_01),
    .w_reg_01(w_reg_01),
    .i_reg_02(i_reg_02),
    .o_reg_02(o_reg_02),
    .r_reg_02(r_reg_02),
    .w_reg_02(w_reg_02),
    .i_reg_03(i_reg_03),
    .o_reg_03(o_reg_03),
    .r_reg_03(r_reg_03),
    .w_reg_03(w_reg_03)
  );
endmodule
