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


module bcd_tb_tb();
    reg [3:0] din;
    wire [6:0] dout;

    display_decode display_decode(
        din,dout
    );
    
    initial begin
        din = 4'b0011;
    end
endmodule
