`timescale 1ns / 1ps
//2分频
module frequency_1_2(
    clk,clk50m
    );
    input clk;
    output reg clk50m = 0;//提供蓝牙模块的特殊频率 50MHz
    always @(posedge clk) begin
        clk50m = ~clk50m;
    end
endmodule
