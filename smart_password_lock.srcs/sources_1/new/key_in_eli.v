`timescale 1ns / 1ps
//矩阵键盘消抖
module key_in_eli(
    input clk,
    input reset,
    input [3:0] col,
    output [3:0] row,
    output [3:0] keyvalue
    );

    wire clk1k;
    wire clk2k;
    wire clk3k;
    wire clk4k;

    wire [3:0] col_eli;

    frequency_division frequency_division(clk,reset,clk1k,clk2k,clk3k,clk4k);

    eliminate_dithering eliminate_dithering0(clk4k,reset,col[0],col_eli[0]);
    eliminate_dithering eliminate_dithering1(clk4k,reset,col[1],col_eli[1]);
    eliminate_dithering eliminate_dithering2(clk4k,reset,col[2],col_eli[2]);
    eliminate_dithering eliminate_dithering3(clk4k,reset,col[3],col_eli[3]);
    
    key_in_44 key_in_44(clk,reset,col_eli,row,keyvalue);
endmodule
