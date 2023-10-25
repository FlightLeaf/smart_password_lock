`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/24 18:30:42
// Design Name: 
// Module Name: fre_tb
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


module fre_tb();
    reg clk;
    wire clk50m;
    frequency_1_2 frequency_1_2(clk,clk50m);
    initial begin
        clk = 1;
    end
    always begin
        #1;clk = ~clk;
    end
endmodule
