`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2023 08:14:26 PM
// Design Name: 
// Module Name: smplctlr
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


module smplctlr #(
  parameter pWIDTH = 20
) (
  input wire clk,
  input wire activate,
  input wire aresetn,
  input wire valid,
  input wire [pWIDTH-1:0] N,
  output reg pulse,
  output reg last,
  output reg fin,
  output wire [pWIDTH-1:0] cn
);
 
  reg [pWIDTH-1:0] count;
  
  assign cn = count;
 
  always @ (posedge clk, negedge aresetn) begin : PULSE_GENERATOR
    if ( ~aresetn ) begin
      count <= 0;
      pulse <= 0;
      fin <= 0;
      last <= 0;
    end else if ( ~valid ) begin
      pulse <= 0;
      fin <= 0;
      last <= 0;
    end else if ( count == 0 ) begin
        if ( activate ) begin
          count <= 1;
          pulse <= 1;
        end
        fin <= 0;
    end else if ( count == N ) begin 
        count <= 0;
        fin <= 1;
        last <= 0;
        pulse <= 0;
    end else begin
        count <= count + 1;
        pulse <= 1;
        if ( count == N ) last <= 1;
    end
  end
 
endmodule