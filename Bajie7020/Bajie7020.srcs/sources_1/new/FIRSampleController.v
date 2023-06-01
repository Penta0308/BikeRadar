`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SKM
// Engineer: Penta0308
// 
// Create Date: 2021/11/25 10:48:34
// Design Name: 
// Module Name: FIRSampleController
// Project Name: 
// Target Devices: 7Z020
// Tool Versions: Vivado ML 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module FIRSampleController(
    input aresetn,
    input aclk,
    input [31:0] s_axis_data_tdata,
    input s_axis_data_tvalid,
    output [31:0] m_axis_data_tdata,
    output reg m_axis_data_tvalid,
    output reg m_axis_data_tlast,
    input start_counter,
    output reg work_counter,
    output reg [15:0] c,
    input [11:0] fifocount,
    output pll_txdata,
    input pll_refclk
    );
    
    //reg [15:0] c;
    parameter blanks = 16'd2154;
    parameter samples = 16'd4096;
    
    initial begin
        c <= samples + blanks;
        m_axis_data_tlast <= 1'b0;
        m_axis_data_tvalid <= 1'b0;
        work_counter <= 1'b0;
    end
    
    always @(negedge aresetn or posedge aclk) begin
        if(!aresetn) begin
            c <= samples + blanks;
            m_axis_data_tlast <= 1'b0;
            m_axis_data_tvalid <= 1'b0;
            work_counter <= 1'b0;
        end else begin
            if(c == samples + blanks) begin
                if(start_counter && fifocount == 0) begin
                    c <= 0;
                    work_counter <= 1'b1;
                end else begin
                    work_counter <= 1'b0;
                end
            end else if(c == samples + blanks - 1) begin
                if(s_axis_data_tvalid) begin
                    m_axis_data_tlast <= 1'b1;
                    m_axis_data_tvalid <= 1'b1;
                    c <= c + 1;
                end else begin
                    m_axis_data_tlast <= 1'b0;
                    m_axis_data_tvalid <= 1'b0;
                end
            end else if(c > blanks) begin
                if(s_axis_data_tvalid) begin
                    m_axis_data_tvalid <= 1'b1;
                    c <= c + 1;
                end else begin
                    m_axis_data_tvalid <= 1'b0;
                end
            end else begin
                if(s_axis_data_tvalid) begin
                    c <= c + 1;
                end
            end
        end
    end
    
    assign m_axis_data_tdata = s_axis_data_tdata;
    assign pll_txdata = pll_refclk && work_counter;
    
endmodule
