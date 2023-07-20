`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 10:38:09 PM
// Design Name: 
// Module Name: firoutmixer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module firoutmixer(

  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
  input [63:0] s_axis_data,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
  input s_axis_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *)
  input [0:0] s_axis_user,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
  output [63:0] m_axis_data,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
  output m_axis_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
  output m_axis_last,
  
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
  (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET reset" *)
  input clk,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
  (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
  input reset,
  
  output reg [15:0] sample_n,
  output reg [3:0] sample_ln,
  output reg sample_active,
  output sample_valid,
  output sample_begin,
  output sample_last
    );
  
  wire [15:0] sample_r;
  assign sample_r = 16'd4095;
  
  assign m_axis_data = s_axis_data;
  assign m_axis_valid = sample_valid;
  assign m_axis_last = sample_last;
  
  assign sample_valid = sample_active && sample_ln == 0;
  assign sample_begin = sample_valid && sample_n == 0;
  assign sample_last  = sample_valid && sample_n == sample_r;
  
  always @(posedge clk) begin
    if (reset) begin
        sample_active <= 0;
        sample_ln <= 0;
        sample_n <= 0;
    end else begin
        if (sample_active) begin
            if (sample_ln == 0) begin
                if (sample_n == sample_r) begin
                    sample_n <= 0;
                    sample_active <= 0;
                end else sample_n <= sample_n + 1;
            end else sample_ln <= sample_ln + 1;
        end else sample_active <= s_axis_valid && s_axis_user[0];
    end
  end
endmodule
