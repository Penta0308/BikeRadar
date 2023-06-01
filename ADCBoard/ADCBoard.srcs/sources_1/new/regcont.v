`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2023 12:36:45 PM
// Design Name: 
// Module Name: regcont
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


module regcont(
    input wire regclk,
    output wire [7:0] i_reg, input wire [7:0] o_reg, input wire r_reg, input wire w_reg,
    
    input wire clk,
    input wire aresetn,
    
    output wire  o_00, output wire  o_01, output wire  o_02, output wire  o_03, output wire  o_04, output wire  o_05, output wire  o_06, output wire  o_07,
    output wire ow_00, output wire ow_01, output wire ow_02, output wire ow_03, output wire ow_04, output wire ow_05, output wire ow_06, output wire ow_07,
    input  wire  i_00, input  wire  i_01, input  wire  i_02, input  wire  i_03, input  wire  i_04, input  wire  i_05, input  wire  i_06, input  wire  i_07,
    output reg r, output reg w
);

wire ra, wa;
reg rb, wb;

assign i_reg = {i_00, i_01, i_02, i_03, i_04, i_05, i_06, i_07};

assign {o_00, o_01, o_02, o_03, o_04, o_05, o_06, o_07} = o_reg;

assign ow_00 = o_00 && w;
assign ow_01 = o_01 && w;
assign ow_02 = o_02 && w;
assign ow_03 = o_03 && w;
assign ow_04 = o_04 && w;
assign ow_05 = o_05 && w;
assign ow_06 = o_06 && w;
assign ow_07 = o_07 && w;

assign ra = r_reg && regclk;
assign wa = w_reg && regclk;

always @ (posedge clk or negedge aresetn) begin
    if(~aresetn) begin
        r <= 1'b0;
        w <= 1'b0;
    end else begin
        r <= ra && !rb;
        rb <= ra;
        w <= wa && !wb;
        wb <= wa;
    end
end

endmodule
