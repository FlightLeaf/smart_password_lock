`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/20 18:42:09
// Design Name: 
// Module Name: key_scan
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


module key_scan(
    clk4k,reset,key_hang
    );
    input clk4k;
    input reset;
    output reg [3:0] key_hang;
    parameter s0 = 4'b1110,
        s1 = 4'b1101,
        s2 = 4'b1011,
        s3 = 4'b0111;
    always @(posedge clk4k or posedge reset) begin
        if(reset) begin
            key_hang <= 4'b1111;
        end else begin
            case (key_hang)
                s0:begin
                    key_hang <= s1;
                end
                s1:begin
                    key_hang <= s2;
                end
                s2:begin
                    key_hang <= s3;
                end
                s3:begin
                    key_hang <= s0;
                end 
                default: begin
                    key_hang <= s0;
                end
            endcase
        end
    end
endmodule
