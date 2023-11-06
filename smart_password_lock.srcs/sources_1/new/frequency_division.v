`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/13 10:07:22
// Design Name: 
// Module Name: frequency_division
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


module frequency_division(
    clk,reset,clk1k,clk2k,clk3k,clk4k
    );
    input clk;                  //开发板主频100MHz
    input reset;                //复位信号
    output reg clk1k = 0;       //状态转换时钟 10MHz 4
    output reg clk2k = 0;       //消抖时钟 1Mhz 49
    output reg clk3k = 0;       //数码扫描时钟 1khz 49999
    output reg clk4k = 0;       //


    reg [15:0] count1 = 0;
    parameter COUNT1 = 16'd4;     //4
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            count1 <= 0;
            clk1k <= 0;
        end else if(count1 >= COUNT1) begin
            count1 <= 0;
            clk1k <= ~clk1k;
        end else begin
            count1 <= count1 + 1;
        end
    end

    reg [15:0] count2 = 0;
    parameter COUNT2 = 16'd49;     //49
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            count2 <= 0;
            clk2k <= 0;
        end else if(count2 >= COUNT2) begin
            count2 <= 0;
            clk2k <= ~clk2k;
        end else begin
            count2 <= count2 + 1;
        end
    end

    reg [15:0] count3 = 0;
    parameter COUNT3 = 16'd49999;   //49999
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            count3 <= 0;
            clk3k <= 0;
        end else if(count3 >= COUNT3) begin
            count3 <= 0;
            clk3k <= ~clk3k;
        end else begin
            count3 <= count3 + 1;
        end
    end

    reg [31:0] count4 = 0;
    parameter COUNT4 = 32'd499999;     //499999
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            count4 <= 0;
            clk4k <= 0;
        end else if(count4 >= COUNT4) begin
            count4 <= 0;
            clk4k <= ~clk4k;
        end else begin
            count4 <= count4 + 1;
        end
    end

endmodule
