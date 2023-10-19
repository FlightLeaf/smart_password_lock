`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/14 20:11:49
// Design Name: 
// Module Name: bcd_tb
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


module bcd_tb();
    reg clk3k;
    reg [23:0] data_bcd;
    wire [2:0] sel;
    wire [3:0] dout;

    bcd_view_out bcd_view_out(clk3k,data_bcd,sel,dout);

    initial begin
        clk3k = 0;
    end
    always begin
        #1;
        clk3k = ~clk3k;
    end
    initial begin
        data_bcd = 24'd592464;
    end
endmodule
