`timescale 1ns / 1ps
//消抖
module eliminate_dithering(
    clk4k,reset,din,dout
    );
    //输入变量
    input clk4k;            //消抖时钟
    input reset;            //重置
    input din;              //按键输入
    //输出变量
    output reg dout = 0;    //按键稳定输出
    //状态常数 格雷码
    parameter s0 = 2'b00; 
    parameter s1 = 2'b01;
    parameter s2 = 2'b11;
    parameter s3 = 2'b10;   //状态s3：稳定输出态
    //状态寄存器
    reg [1:0] state;        //当前状态
    reg [1:0] next_state;   //下一状态
    /*状态机的初始化控制，以及状态的转换*/
    always @(posedge clk4k or posedge reset) begin
        if(reset) begin
            state <= s0;
        end else begin
            state <= next_state;
        end
    end
    always @(din or state) begin
        case (state)
            s0: begin
                dout <= 0;
                if(din) begin
                    next_state <= s1;
                end else begin
                    next_state <= s0;
                end
            end 
            s1: begin
                dout <= 0;
                if(din) begin
                    next_state <= s2;
                end else begin
                    next_state <= s0;
                end
            end
            s2: begin
                dout <= 0;
                if(din) begin
                    next_state <= s3;
                end else begin
                    next_state <= s0;
                end
            end
            s3: begin
                dout <= 1;
                if(din) begin
                    next_state <= s3;
                end else begin
                    next_state <= s0;
                end
            end
            default: begin
                next_state <= s0;
            end
        endcase
    end
endmodule
