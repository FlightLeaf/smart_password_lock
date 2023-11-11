`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/11 21:16:44
// Design Name: 
// Module Name: display_output
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


module display_output(
    clk1k,reset,led_switch,led_change,led_ok,led_no,beep,RGB1,RGB2,state
    );

    input clk1k;
    input reset;
    input led_switch;
    input led_change;
    input led_ok;
    input led_no;
    input beep;

    output reg [2:0] RGB1;
    output reg [2:0] RGB2;
    output reg [3:0] state;

    always @(posedge clk1k or posedge reset) begin
        if(reset) begin
           state <= 4'b1000; 
        end else begin
            case ({led_switch,led_change,led_ok,led_no,beep})
                5'b11001:begin//修改密码
                    state <= 4'b0001;
                end 
                5'b10001:begin//等待密码
                    state <= 4'b0010;
                end
                5'b10010:begin//警报状态
                    state <= 4'b0100;
                end
                default: begin
                    state <= 4'b1000;
                end
            endcase
        end
    end
    always @(posedge clk1k or posedge reset) begin
        if(reset) begin
           RGB1 <= 3'b000;
           RGB2 <= 3'b000;
        end else begin
            case ({led_switch,led_change,led_ok,led_no,beep})
                //等待密码状态
                5'b10001:begin
                    RGB1 <= 3'b100;
                    RGB2 <= 3'b000;
                end
                //修改密码状态
                5'b11001:begin
                    RGB1 <= 3'b100;
                    RGB2 <= 3'b001;
                end
                //警报状态
                5'b10010:begin
                    RGB1 <= 3'b100;
                    RGB2 <= 3'b100;
                end
                //开锁状态
                5'b00001:begin
                    RGB1 <= 3'b010;
                    RGB2 <= 3'b010;
                end
                //密码错误
                5'b10011:begin
                    RGB1 <= 3'b100;
                    RGB2 <= 3'b100;
                end
                //修改密码失败
                5'b11011:begin
                    RGB1 <= 3'b100;
                    RGB2 <= 3'b100;
                end
                //修改成功
                5'b11101:begin
                    RGB1 <= 3'b001;
                    RGB2 <= 3'b001;
                end
                default: begin
                    RGB1 <= 3'b000;
                    RGB2 <= 3'b000;
                end
            endcase
        end
    end
endmodule
