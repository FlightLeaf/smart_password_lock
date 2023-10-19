`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/15 17:31:01
// Design Name: 
// Module Name: keyboard_scan_decoder
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


module keyboard_scan_decoder(
    clk4k,reset,col,row,keyvalue,value_en
    );
    
    input clk4k;                //矩阵键盘扫描时钟
    input reset;                //矩阵键盘复位信号
    input [3:0] col;            //列扫描信号
    output reg [3:0] row;       //行扫描信号
    output reg [3:0] keyvalue = 4'b0;  //输出键值
    output reg value_en;
    reg [1:0] count = 0;        //行列扫描计数器
   
    always @(posedge clk4k or posedge reset) begin
        if(reset)
            row <= 4'b1111;
        else begin
            count <= count+1;       //循环扫描按键
            case(count)
                0:row <= 4'b1110;
                1:row <= 4'b1101;
                2:row <= 4'b1011;
                3:row <= 4'b0111;
                default: row <= 4'b1111;
            endcase  

            case({row,col})         //行列扫描信号拼接
                8'b1110_0111:begin
                    keyvalue <= 4'h0;
                    value_en <= 1;
                end
                8'b1110_1011:begin
                    keyvalue <= 4'h1;
                    value_en <= 1;
                end 
                8'b1110_1101:begin
                    keyvalue <= 4'h2;
                    value_en <= 1;
                end 
                8'b1110_1110:begin
                    keyvalue <= 4'h3;
                    value_en <= 1;
                end 

                8'b1101_0111:begin
                    keyvalue <= 4'h4;
                    value_en <= 1;
                end 
                8'b1101_1011:begin
                    keyvalue <= 4'h5;
                    value_en <= 1;
                end 
                8'b1101_1101:begin
                    keyvalue <= 4'h6;
                    value_en <= 1;
                end 
                8'b1101_1110:begin
                    keyvalue <= 4'h7;
                    value_en <= 1;
                end 

                8'b1011_0111:begin
                    keyvalue <= 4'h8;
                    value_en <= 1;
                end 
                8'b1011_1011:begin
                    keyvalue <= 4'h9;
                    value_en <= 1;
                end 
                8'b1011_1101:begin
                    keyvalue <= 4'ha;
                    value_en <= 1;
                end 
                8'b1011_1110:begin
                    keyvalue <= 4'hb;
                end 

                8'b0111_0111:begin
                    keyvalue <= 4'hc;
                end 
                8'b0111_1011:begin
                    keyvalue <= 4'hd;
                end 
                8'b0111_1101:begin
                    keyvalue <= 4'he;
                end 
                8'b0111_1110:begin
                    keyvalue <= 4'hf;
                end 

                default:begin
                    
                end
            endcase
        end
    end
endmodule
