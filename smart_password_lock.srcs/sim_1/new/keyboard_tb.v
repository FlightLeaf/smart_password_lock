`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 19:04:05
// Design Name: 
// Module Name: keyboard_tb
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


module keyboard_tb();
    reg clk4k;
    reg reset;
    reg [3:0] col;
    wire [3:0] row;
    wire [3:0] keyvalue;

    keyboard_scan_decoder keyboard_scan_decoder(clk4k,reset,col,row,keyvalue);

    initial begin
        clk4k = 0;
        reset = 0;
    end
    always begin
        #1; clk4k = ~clk4k;
    end
    initial begin
        col = 4'b1110;
        #500;
        col = 4'b1111;
        #500;
    end
endmodule
