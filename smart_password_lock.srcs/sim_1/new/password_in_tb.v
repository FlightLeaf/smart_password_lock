`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 22:37:07
// Design Name: 
// Module Name: password_in_tb
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


module password_in_tb(

    );
    reg clk;
    reg clk3k;
    reg reset;
    reg clear;
    reg rx;
    reg display;
    reg display_max;
    
    wire tx;
    wire [7:0] sel;
    wire [6:0] dout;
    wire [23:0] password_bcd;

    password_in password_in(clk,clk3k,reset,clear,rx,display,display_max,tx,sel,dout,password_bcd);
    initial begin
        clk = 1;
        clk3k = 1;
        reset = 0;
        clear = 0;
        rx = 0;
        display = 0;
        display_max = 0;
    end
    always begin
        #1;clk = ~clk;
    end
    always begin
        #5;clk3k = ~clk3k;
    end
    initial begin
        #3;
        display = 1;
        clear = 0;
        #10;
        clear = 1;
        #10;
        clear = 0;
        #10;
        rx = 1;
        #20832;
        rx = 0;
        #20832;
        
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;

        rx = 1;
        #20832;
        rx = 1;
        #20832;
        rx = 1;
        #20832;
        rx = 1;
        #20832;

        rx = 0;
        #20832;
        rx = 1;
        #20832;
        
        rx = 1;
        #20832;
        rx = 0;
        #20832;
        
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;

        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;

        rx = 0;
        #20832;
        rx = 1;
        #20832;
        
    end
endmodule
