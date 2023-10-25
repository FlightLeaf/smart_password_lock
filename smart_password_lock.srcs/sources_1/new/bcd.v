`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/14 23:41:02
// Design Name: 
// Module Name: bcd
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


module bcd(
    clk3k,data_bcd,sel,dout
    );
    input clk3k;            //数码管扫描时钟
    input [23:0] data_bcd;
    output [7:0] sel;   //位选数据输出
    output [6:0] dout;      //七段管数据输出

    reg rst = 0;
    reg [7:0] sel_reg;
    wire [2:0] sel_temp;
    wire [3:0] din;
    bcd_view_out bcd_view_out(clk3k,data_bcd,sel_temp,din);
    always @(sel_temp) begin
        case (sel_temp)
            0:begin
                sel_reg <= 8'b11011111;
            end 
            1:begin
                sel_reg <= 8'b11101111;
            end 
            2:begin
                sel_reg <= 8'b11110111;
            end 
            3:begin
                sel_reg <= 8'b11111011;
            end 
            4:begin
                sel_reg <= 8'b11111101;
            end 
            5:begin
                sel_reg <= 8'b11111110;
            end 
            default: begin
                sel_reg <= 8'b11111111;
            end
        endcase
    end
    assign sel = sel_reg;
    
    display_decode display_decode(din,dout);
endmodule
