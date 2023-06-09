
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
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
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "bajie7020_fir_compiler_0_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -0.000023612137922631,0.000000000000000000,0.000076215904209052,0.000223722369816371,0.000450121926970896,0.000743528677435444,0.001065526189666028,0.001347750816183087,0.001494240557219061,0.001391051965632366,0.000923514336431612,-0.000000000000000001,-0.001420524241597354,-0.003301326839279770,-0.005506203863525262,-0.007788451891881811,-0.009794929930350209,-0.011087860568391977,-0.011184491723792347,-0.009611788991989240,-0.005970425583214199,0.000000000000000003,0.008363886213072795,0.018949981316929394,0.031336880617046453,0.044868430824516803,0.058699851724740820,0.071871001565380843,0.083399076885212697,0.092379825361321694,0.098084615828245819,0.100040785383826852,0.098084615828245819,0.092379825361321694,0.083399076885212697,0.071871001565380774,0.058699851724740820,0.044868430824516803,0.031336880617046453,0.018949981316929394,0.008363886213072795,0.000000000000000003,-0.005970425583214199,-0.009611788991989230,-0.011184491723792336,-0.011087860568391977,-0.009794929930350209,-0.007788451891881811,-0.005506203863525262,-0.003301326839279770,-0.001420524241597354,-0.000000000000000001,0.000923514336431612,0.001391051965632366,0.001494240557219061,0.001347750816183087,0.001065526189666028,0.000743528677435445,0.000450121926970896,0.000223722369816371,0.000076215904209052,0.000000000000000000,-0.000023612137922631
// chanpats: 173
// name: bajie7020_fir_compiler_0_0
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 63
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 2
// coeff_width: 18
// coeff_fract_width: 20
// chan_seq: 0
// num_channels: 1
// num_paths: 2
// data_width: 12
// data_fract_width: 0
// output_rounding_mode: 1
// output_width: 32
// output_fract_width: 19
// config_method: 0

const double bajie7020_fir_compiler_0_0_coefficients[63] = {-0.000023612137922631,0.000000000000000000,0.000076215904209052,0.000223722369816371,0.000450121926970896,0.000743528677435444,0.001065526189666028,0.001347750816183087,0.001494240557219061,0.001391051965632366,0.000923514336431612,-0.000000000000000001,-0.001420524241597354,-0.003301326839279770,-0.005506203863525262,-0.007788451891881811,-0.009794929930350209,-0.011087860568391977,-0.011184491723792347,-0.009611788991989240,-0.005970425583214199,0.000000000000000003,0.008363886213072795,0.018949981316929394,0.031336880617046453,0.044868430824516803,0.058699851724740820,0.071871001565380843,0.083399076885212697,0.092379825361321694,0.098084615828245819,0.100040785383826852,0.098084615828245819,0.092379825361321694,0.083399076885212697,0.071871001565380774,0.058699851724740820,0.044868430824516803,0.031336880617046453,0.018949981316929394,0.008363886213072795,0.000000000000000003,-0.005970425583214199,-0.009611788991989230,-0.011184491723792336,-0.011087860568391977,-0.009794929930350209,-0.007788451891881811,-0.005506203863525262,-0.003301326839279770,-0.001420524241597354,-0.000000000000000001,0.000923514336431612,0.001391051965632366,0.001494240557219061,0.001347750816183087,0.001065526189666028,0.000743528677435445,0.000450121926970896,0.000223722369816371,0.000076215904209052,0.000000000000000000,-0.000023612137922631};

const xip_fir_v7_2_pattern bajie7020_fir_compiler_0_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_bajie7020_fir_compiler_0_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "bajie7020_fir_compiler_0_0";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &bajie7020_fir_compiler_0_0_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 63;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_MAXIMIZE_DYNAMIC_RANGE;
  config.coeff_width         = 18;
  config.coeff_fract_width   = 20;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = bajie7020_fir_compiler_0_0_chanpats[0];
  config.num_paths           = 2;
  config.data_width          = 12;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_TRUNCATE_LSBS;
  config.output_width        = 32;
  config.output_fract_width  = 19,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config bajie7020_fir_compiler_0_0_config = gen_bajie7020_fir_compiler_0_0_config();

