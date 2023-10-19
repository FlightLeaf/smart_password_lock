`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/14 20:00:33
// Design Name: 
// Module Name: bcd_view_out
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


module bcd_view_out(
    clk3k,data_bcd,sel,dout
    );
    input clk3k;                //数码管扫描时钟
    input [23:0] data_bcd;      //BCD待显示数据输入
    output reg [2:0] sel = 0;   //位选信号
    output reg [3:0] dout;      //输出信号

    always @(posedge clk3k) begin
        if(sel<5) begin
            sel <= sel + 1;
        end else begin
            sel <= 0;
        end
    end
    /*位选控制*/
    always @(sel) begin
        case (sel)
            0:begin
                dout <= data_bcd[23:20];
            end
            1:begin
                dout <= data_bcd[19:16];
            end
            2:begin
                dout <= data_bcd[15:12];
            end
            3:begin
                dout <= data_bcd[11:8];
            end
            4:begin
                dout <= data_bcd[7:4];
            end
            5:begin
                dout <= data_bcd[3:0];
            end
            default:begin
                dout <= 4'bx;
            end
        endcase
    end
endmodule
