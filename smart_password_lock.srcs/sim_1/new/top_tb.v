`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/13 08:29:49
// Design Name: 
// Module Name: top_tb
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


module top_tb();
    reg clk;
    reg rst;
    reg [5:0] password;
    reg ok;
    reg change_password;
    wire led_switch;
    wire led_change;
    wire led_ok;
    wire led_no;
    top top(
    clk,rst,password,ok,change_password,led_switch,led_change,led_ok,led_no
    );
    initial begin
        clk = 0;
        rst = 0;
        ok = 0;
        change_password = 0;
    end
    always begin
        #0.1; clk = ~clk;
    end
    initial begin
        password = 6'b010101;
        #200;
        ok = 1;
        #50;
        ok = 0;
    end
endmodule
