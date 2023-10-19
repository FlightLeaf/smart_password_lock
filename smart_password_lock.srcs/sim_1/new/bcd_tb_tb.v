`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/15 00:19:22
// Design Name: 
// Module Name: bcd_tb_tb
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


module bcd_tb_tb(

    );
    reg clk;
    wire [7:0] sel;
    wire [6:0] dout;
    bcd bcd(clk,sel,dout);
    initial begin
        clk = 0;
    end
    always begin
        #1;clk = ~clk;
    end
endmodule
