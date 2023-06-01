`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 18:43:17
// Design Name: 
// Module Name: GPIOPeek
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


module GPIOPeek(
    output tri [63:0] M_I,
    input [63:0] M_T,
    input [63:0] M_O,
    input tri [63:0] S_I,
    output [63:0] S_T,
    output [63:0] S_O,
    input tri I,
    output T,
    output O,
    output PU,
    output PD
    );
    
    pulldown(S_I);
    
    parameter [5:0] bit = 6'd0;
    
    tri [63:0] m;
    
    assign m = S_I;
    assign m[bit] = I;
    
    assign M_I = m;
    assign S_T = M_T;
    assign S_O = M_O;
    assign T = M_T[bit];
    assign O = M_O[bit];
    assign PU = T ? 1'b1 : O;
    assign PD = T ? 1'b0 : O;
endmodule
