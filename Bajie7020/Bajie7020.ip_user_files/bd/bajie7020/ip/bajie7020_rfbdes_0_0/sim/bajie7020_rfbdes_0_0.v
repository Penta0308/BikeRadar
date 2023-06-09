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


// IP VLNV: xilinx.com:module_ref:rfbdes:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bajie7020_rfbdes_0_0 (
  RFB_DATA_P,
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
  iod_reset
);

(* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 RFB DATA_P" *)
input wire [3 : 0] RFB_DATA_P;
(* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 RFB DATA_N" *)
input wire [3 : 0] RFB_DATA_N;
input wire RFB_DATAVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [23 : 0] RFB_AXIS_DATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire RFB_AXIS_VALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N" *)
input wire [0 : 0] RFB_DCLK_clk_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P" *)
input wire [0 : 0] RFB_DCLK_clk_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N" *)
input wire [0 : 0] RFB_FCLK_clk_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P" *)
input wire [0 : 0] RFB_FCLK_clk_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET des_reset, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 RFB_AXIS_CLK CLK" *)
output wire RFB_AXIS_CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 48000000, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
output wire [0 : 0] RFB_AXIS_USER;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME idelay_refclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_refclk CLK" *)
input wire idelay_refclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME des_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 des_reset RST" *)
input wire des_reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 io_reset RST" *)
input wire iod_reset;

  rfbdes #(
    .SYS_W(4),
    .DEV_W(24)
  ) inst (
    .RFB_DATA_P(RFB_DATA_P),
    .RFB_DATA_N(RFB_DATA_N),
    .RFB_DATAVALID(RFB_DATAVALID),
    .RFB_AXIS_DATA(RFB_AXIS_DATA),
    .RFB_AXIS_VALID(RFB_AXIS_VALID),
    .RFB_DCLK_clk_n(RFB_DCLK_clk_n),
    .RFB_DCLK_clk_p(RFB_DCLK_clk_p),
    .RFB_FCLK_clk_n(RFB_FCLK_clk_n),
    .RFB_FCLK_clk_p(RFB_FCLK_clk_p),
    .RFB_AXIS_CLK(RFB_AXIS_CLK),
    .RFB_AXIS_USER(RFB_AXIS_USER),
    .idelay_refclk(idelay_refclk),
    .des_reset(des_reset),
    .iod_reset(iod_reset)
  );
endmodule
