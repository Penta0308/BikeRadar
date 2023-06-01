`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 04:35:17 PM
// Design Name: 
// Module Name: pllctlr
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


module pllctlr #(
  parameter pWIDTH = 20
) (
  input wire clk,
  input wire [pWIDTH-1:0] N,
  input wire [pWIDTH-1:0] cn,
  output wire u
);
  
  reg [0:11] v;
  assign u = v;
  
  always @ (posedge clk) begin
    
  end
endmodule
