`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/14 23:37:45
// Design Name: 
// Module Name: display_decode
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

//译码器
module display_decode (
    din,dout
    );

    input [3:0] din;        //BCD待显示数据输入
    output reg [6:0] dout;  //输出

    always @(din)begin
        //译码过程
        case (din)
            0: dout=7'b0000001;
            1: dout=7'b1001111;
            2: dout=7'b0010010;
            3: dout=7'b0000110;
            4: dout=7'b1001100;
            5: dout=7'b0100100;
            6: dout=7'b0100000;
            7: dout=7'b0001111;
            8: dout=7'b0000000;
            9: dout=7'b0000100;
            4'hd: dout=7'b1110110;
            4'he: dout=7'b1111110;
            default: dout=7'b0000000;
        endcase
    end
endmodule