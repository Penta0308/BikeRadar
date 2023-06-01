`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2023 11:37:56 PM
// Design Name: 
// Module Name: fifovidmix
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


module fifovidmix(
    input wire [23:0] s_axis_0_tdata,
    //input wire [23:0] s_axis_1_tdata,
    input wire s_axis_0_tlast,
    //input wire s_axis_1_tlast,
    output reg s_axis_0_tready,
    //output reg s_axis_1_tready,
    input wire s_axis_0_tvalid,
    //input wire s_axis_1_tvalid,
    input wire clk,
    input wire aresetn,
    input wire transmit_begin,
    output reg [23:0] vid_pData,
    output reg vid_pVDE,
    output reg vid_pHSync,
    output reg vid_pVSync,
    output wire transmit_active
    );
    
    //reg [0:0] usingbus;
    reg [0:0] genhsync;
    reg [0:0] genvsync;
    
    reg [0:0] active;
    
    assign transmit_active = active;
    
    always @ (posedge clk, negedge aresetn) begin : PULSE_GENERATOR
        if ( ~aresetn ) begin
            //usingbus <= 0;
            vid_pVDE <= 0;
            vid_pHSync <= 0;
            vid_pVSync <= 0;
            vid_pData <= 0;
            genhsync <= 0;
            s_axis_0_tready <= 0;
            //s_axis_1_tready <= 0;
            active <= 0;
        end else if ( genhsync ) begin
            vid_pVDE <= 0;
            vid_pHSync <= 1;
            genhsync <= 0;
            //if ( usingbus == 1 ) begin
            //    s_axis_1_tready <= 1;
            //end
        end else if ( genvsync ) begin
            vid_pHSync <= 0;
            vid_pVSync <= 1;
            genvsync <= 0;
            active <= 0;
        end else begin
            vid_pHSync <= 0;
            vid_pVSync <= 0;
            if ( active &
             //(usingbus == 0) &
              s_axis_0_tvalid ) begin
                if ( s_axis_0_tlast ) begin
                    //usingbus <= 1;
                    s_axis_0_tready <= 0;
                    vid_pVDE <= 1;
                    vid_pData <= s_axis_0_tdata;
                    genhsync <= 1;
                    genvsync <= 1;
                end else begin
                    vid_pVDE <= 1;
                    vid_pData <= s_axis_0_tdata;
                end
            end /*else if ( active & (usingbus == 1) & s_axis_1_tvalid ) begin
                if ( s_axis_1_tlast ) begin
                    usingbus <= 0;
                    s_axis_1_tready <= 0;
                    vid_pVDE <= 1;
                    vid_pData <= s_axis_1_tdata;
                    genhsync <= 1;
                    genvsync <= 1;
                end else begin
                    vid_pVDE <= 1;
                    vid_pData <= s_axis_1_tdata;
                end
            end*/ else if ( transmit_begin ) begin
                active <= 1;
            end
            
            if ( active ) begin
                //if ( usingbus == 0 ) begin
                    s_axis_0_tready <= 1;
                //end else if ( usingbus == 1 ) begin
                //    s_axis_1_tready <= 1;
                //end
            end
            
        end
    end
endmodule
