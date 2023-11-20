`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/14 20:05:04
// Design Name: 
// Module Name: key_in_44
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


module key_in_44(
    input clk,
    input reset,
    input [3:0] col,
    output reg [3:0] row,
    output reg [3:0] keyvalue
    );

    reg [31:0] count_clk = 0;
    reg clk_key = 0;
    parameter COUNT1 = 32'd9999_999;
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            count_clk <= 0;
            clk_key <= 0;
        end else if(count_clk >= COUNT1) begin
            count_clk <= 0;
            clk_key <= ~clk_key;
        end else begin
            count_clk <= count_clk + 1;
        end
    end

    reg [1:0] count = 2'b0; 
    always @ (posedge clk_key or posedge reset) begin
        if(reset)
            keyvalue <= 4'hf;
        else begin
            count <= count+1;       //循环扫描按键
            case(count)
                0:row <= 4'b1110;
                1:row <= 4'b1101;
                2:row <= 4'b1011;
                3:row <= 4'b0111;
                default: row <= 4'b1111;
            endcase  
            case({row,col})
                8'b1110_0111:keyvalue <=4'h0;
                8'b1110_1011:keyvalue <=4'h1;
                8'b1110_1101:keyvalue <=4'h2;
                8'b1110_1110:keyvalue <=4'h3;
                8'b1101_0111:keyvalue <=4'h4;
                8'b1101_1011:keyvalue <=4'h5;
                8'b1101_1101:keyvalue <=4'h6;
                8'b1101_1110:keyvalue <=4'h7;
                8'b1011_0111:keyvalue <=4'h8;
                8'b1011_1011:keyvalue <=4'h9;
                8'b1011_1101:keyvalue <=4'ha;
                8'b1011_1110:keyvalue <=4'hb;
                8'b0111_0111:keyvalue <=4'hc;
                8'b0111_1011:keyvalue <=4'hd;
                8'b0111_1101:keyvalue <=4'he;
                8'b0111_1110:keyvalue <=4'hf;
                default: ;
            endcase
        end
    end
endmodule

