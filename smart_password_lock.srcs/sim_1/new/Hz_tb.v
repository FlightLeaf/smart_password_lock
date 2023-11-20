`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/14 08:16:28
// Design Name: 
// Module Name: Hz_tb
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


module Hz_tb();

    reg clk;
    reg reset;

    wire clk1k;
    wire clk2k;
    wire clk3k;
    wire clk4k;

    frequency_division frequency_division(clk,reset,clk1k,clk2k,clk3k,clk4k);
    initial begin
        clk = 1;
        reset = 0;
    end 
    always begin
        #1; clk = ~clk;
    end
endmodule
