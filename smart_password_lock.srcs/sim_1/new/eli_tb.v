`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/14 08:26:34
// Design Name: 
// Module Name: eli_tb
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


module eli_tb();
    reg clk2k;
    reg reset;
    reg din;
    wire dout;

    eliminate_dithering eliminate_dithering(
        clk2k,reset,din,dout
    );

    initial begin
        clk2k = 1;
        reset = 0;
        din = 0;
    end

    always begin
        #10; clk2k = ~clk2k;
    end

    initial begin
        #20;
        din = 1;
        #5;
        din = 0;
        #10;
        din = 1;
        #10;
        din = 0;
        #10;
        din = 1;
        #100;
        din = 0;
        #10;
        din = 1;
        #5;
        din = 0;
        #10;
        din = 1;
        #10;
        $finish;
    end
endmodule
