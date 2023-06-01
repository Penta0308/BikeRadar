`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/29 10:23:44
// Design Name: 
// Module Name: ADCValidTrigger
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


module ADCValidTrigger(
    input aclk,
    input adc_fclk,
    input aresetn,
    output reg valid
    );
    
    reg t;
    
    initial begin
        t <= 1'b0;
        valid <= 1'b0;
    end
    
    always @(posedge aclk or negedge aresetn) begin
        if(!aresetn) begin
            t <= 1'b0;
            valid <= 1'b0;
        end else begin
            if(adc_fclk) begin
                if(t == 1'b0) begin
                    t <= 1'b1;
                    valid <= 1'b1;
                end else begin
                    valid <= 1'b0;
                end
            end else begin
                t <= 1'b0;
                valid <= 1'b0;
            end
        end
    end 
    
endmodule
