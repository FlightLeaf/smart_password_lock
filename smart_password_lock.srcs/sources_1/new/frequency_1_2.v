`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/24 18:26:40
// Design Name: 
// Module Name: frequency_1_2
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


module frequency_1_2(
    clk,clk50m
    );
    input clk;
    output reg clk50m = 0;
    always @(posedge clk) begin
        clk50m = ~clk50m;
    end
endmodule
