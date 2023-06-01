`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:00:23 PM
// Design Name: 
// Module Name: pllsynth
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


module pllsynth #(
  parameter pWIDTH = 20
) (
  input wire clk,
  input wire aresetn,
  input wire [pWIDTH-1:0] N,
  input wire [pWIDTH-1:0] cn,
  output reg u,
  input shortreal under, upper,
  output reg [7:0] bram_addr,
  input wire [31:0] bram_dout,
  output wire bram_we,
  output reg bram_en
);
  
  shortreal nf;
  
  shortreal ppx, ppy, npx, npy, apx, apy;
  
  reg req_a [2:0];
  
  reg [7:0] c;
  
  shortreal q;
  
  assign bram_we = 1'b0;
  
  always @ (posedge clk, negedge aresetn) begin
    if(~aresetn) begin
        c <= 0;
    end else begin
        req_a[2] <= req_a[1]; req_a[1] <= req_a[0]; req_a[0] <= 0;
        
        if ( req_a[2] ) begin
            apx <= bram_dout[15:0];
            apy <= bram_dout[31:16];
            req_a[2] <= 0;
        end
        
        nf <= ( upper - under ) * cn / N + under;
        
        if ( nf >= npx & ~req_a[1] & ~req_a[0]) begin
            ppx <= npx; ppy <= npy;
            npx <= apx; npy <= apy;
            req_a[0] <= 1;
        end
        
        if ( req_a[0] ) begin
            bram_en <= 1;
            bram_addr <= c;
            c <= c + 1;
        end else bram_en <= 0;
        
        q <= ( ( ppy * ( npx - nf ) ) + ( npy * ( nf - ppx ) ) ) / ( npx - ppx );
        
        u <= q;
    end
  end
endmodule