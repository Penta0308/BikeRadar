`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 11:25:15 AM
// Design Name: 
// Module Name: TMDSSample2Des
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


module TMDSSample2Des(
    input [23:0] vid_pData,
    input vid_pHSync,
    input vid_pVSync,
    input vid_pVDE,
    input PixelClk,
    output PacketClk,
    output [63:0] S_AXIS_tdata,
    output S_AXIS_tvalid
    );
    
    reg [23:0] chh;
    reg [23:0] chl;
    
    reg [0:0] t;
    reg [0:0] v;
    
    assign PacketClk = t;
    assign S_AXIS_tdata = chh[23:12]|'h0000|chh[11:0]|'h0000|chl[23:12]|'h0000|chl[11:0]|'h0000;
    assign S_AXIS_tvalid = v;
    
    always @(posedge PixelClk)
        if(t == 'h0)
            chh <= vid_pData;
        else begin
            chl <= vid_pData;
            v <= 'h1;
            t <= ~t;
        end
    
    always @(negedge PacketClk)
        v <= 'h0;
    
endmodule
