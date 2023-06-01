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


// IP VLNV: xilinx.com:module_ref:i2c_to_spi:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_i2c_to_spi_0_0 (
  clk,
  areset,
  scl,
  sda_i,
  sda_oL,
  MISO_MASTER,
  MOSI_MASTER,
  SS_N_MASTER,
  SCLK_MASTER,
  intn,
  buf_dai,
  buf_dbi,
  buf_aa,
  buf_ab,
  buf_cea,
  buf_ceb,
  buf_wea,
  buf_web,
  buf_dao,
  buf_dbo
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 76800000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out_192M_i, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire areset;
input wire scl;
input wire sda_i;
output wire sda_oL;
input wire MISO_MASTER;
output wire MOSI_MASTER;
output wire [4 : 0] SS_N_MASTER;
output wire SCLK_MASTER;
output wire intn;
output wire [7 : 0] buf_dai;
output wire [7 : 0] buf_dbi;
output wire [6 : 0] buf_aa;
output wire [6 : 0] buf_ab;
output wire buf_cea;
output wire buf_ceb;
output wire buf_wea;
output wire buf_web;
input wire [7 : 0] buf_dao;
input wire [7 : 0] buf_dbo;

  i2c_to_spi #(
    .CLOCK_SEL(1),
    .I2C_SLAVE_ADDR(7'H54),
    .INTERVAL_LENGTH(2),
    .DELAY_TIME(2),
    .ACTUAL_MAX(7)
  ) inst (
    .clk(clk),
    .areset(areset),
    .scl(scl),
    .sda_i(sda_i),
    .sda_oL(sda_oL),
    .MISO_MASTER(MISO_MASTER),
    .MOSI_MASTER(MOSI_MASTER),
    .SS_N_MASTER(SS_N_MASTER),
    .SCLK_MASTER(SCLK_MASTER),
    .intn(intn),
    .buf_dai(buf_dai),
    .buf_dbi(buf_dbi),
    .buf_aa(buf_aa),
    .buf_ab(buf_ab),
    .buf_cea(buf_cea),
    .buf_ceb(buf_ceb),
    .buf_wea(buf_wea),
    .buf_web(buf_web),
    .buf_dao(buf_dao),
    .buf_dbo(buf_dbo)
  );
endmodule
