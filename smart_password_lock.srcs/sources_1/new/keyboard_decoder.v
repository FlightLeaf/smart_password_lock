`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/20 18:52:42
// Design Name: 
// Module Name: keyboard_decoder
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


module keyboard_decoder(
    clk4k,key_hang,key_lie,key_value
    );
    input clk4k;
    input [3:0] key_hang;
    input [3:0] key_lie;
    output reg [3:0] key_value;
    reg value_en;
    always @(posedge clk4k) begin
        case({key_hang,key_lie})         //行列扫描信号拼接
                8'b1110_0xxx:begin
                    key_value <= 4'h0;
                    value_en <= 1;
                end
                8'b1110_x0xx:begin
                    key_value <= 4'h1;
                    value_en <= 1;
                end 
                8'b1110_xx0x:begin
                    key_value <= 4'h2;
                    value_en <= 1;
                end 
                8'b1110_xxx0:begin
                    key_value <= 4'h3;
                    value_en <= 1;
                end 
////////////////////////////////////////////////////////////////
                8'b1101_0xxx:begin
                    key_value <= 4'h4;
                    value_en <= 1;
                end 
                8'b1101_x0xx:begin
                    key_value <= 4'h5;
                    value_en <= 1;
                end 
                8'b1101_xx0x:begin
                    key_value <= 4'h6;
                    value_en <= 1;
                end 
                8'b1101_xxx0:begin
                    key_value <= 4'h7;
                    value_en <= 1;
                end 
////////////////////////////////////////////////////////////////
                8'b1011_0xxx:begin
                    key_value <= 4'h8;
                    value_en <= 1;
                end 
                8'b1011_x0xx:begin
                    key_value <= 4'h9;
                    value_en <= 1;
                end 
                8'b1011_xx0x:begin
                    key_value <= 4'ha;
                    value_en <= 1;
                end 
                8'b1011_xxx0:begin
                    key_value <= 4'hb;
                end 
///////////////////////////////////////////////////////////////
                8'b0111_0xxx:begin
                    key_value <= 4'hc;
                end 
                8'b0111_x0xx:begin
                    key_value <= 4'hd;
                end 
                8'b0111_xx0x:begin
                    key_value <= 4'he;
                end 
                8'b0111_xxx0:begin
                    key_value <= 4'hf;
                end 
                default:begin
                    
                end
            endcase
    end
endmodule
