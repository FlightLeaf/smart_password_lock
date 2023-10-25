`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/15 17:04:35
// Design Name: 
// Module Name: state_delay
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


module state_delay(
    clk1k,state_now,rst,reset,led_switch,led_change,led_ok,led_no
    );
    input clk1k;                //时钟
    input [3:0] state_now;      //当前状态
    input rst;                  //复位键

    output reg reset;           //状态机复位控制信号，输出控制状态的转换
    output reg led_switch;      //门开关状态
    output reg led_change;      //是否处于修改密码状态
    output reg led_ok;          //成功
    output reg led_no;          //失败

    //状态常数
    parameter in_password_state = 4'b0000;          //状态S0：等待密码状态
    parameter change_password_state_one = 4'b0001;  //状态S1：修改密码状态1
    parameter change_password_state_two = 4'b0010;  //状态S2：修改密码状态2
    parameter warning_state = 4'b0011;              //状态S3：警报状态
    parameter switch_state = 4'b0100;               //状态S4：开门状态
    parameter password_mistake_state = 4'b0101;     //状态S5：输入密码开门错误状态
    parameter change_mistake_state = 4'b0110;       //状态S6：修改密码错误状态
    parameter change_success_state = 4'b1000;       //状态S8：修改密码成功状态

    reg [29:0] state_count = 0;                     //延时计数器
    parameter state_count_parameter = 30'd25000000; //25000000，延时常数

    always @(posedge clk1k or posedge rst) begin
        if(rst) begin
            reset <= 1;
        end else begin
            case (state_now)
                in_password_state: begin
                    reset <= 0;
                end 
                change_password_state_one: begin
                    reset <= 0;
                end 
                change_password_state_two: begin
                    reset <= 0;
                end
                warning_state: begin                //警报状态
                    if(state_count >= state_count_parameter) begin
                        reset <= 1;                 //延时结束输出状态机复位信号
                        state_count <= 0;
                    end else begin
                        reset <= 0;
                        state_count <= state_count + 1;
                    end
                end
                default: begin                      //其他状态
                    if(state_count >= state_count_parameter) begin
                        reset <= 1;                 //延时结束输出状态机复位信号
                        state_count <= 0;
                    end else begin
                        reset <= 0;
                        state_count <= state_count + 1;
                    end
                end 
            endcase
        end
    end

    always @(state_now) begin                       //各个状态的输出逻辑
        case (state_now)
            in_password_state: begin
                led_switch = 1;
                led_change = 0;
                led_ok = 0;
                led_no = 0;
            end 
            change_password_state_one: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 0;
                led_no = 0;
            end 
            change_password_state_two: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 0;
                led_no = 0;
            end
            warning_state: begin
                led_switch = 1;
                led_change = 0;
                led_ok = 0;
                led_no = 1;
            end
            switch_state: begin
                led_switch = 0;
                led_change = 0;
                led_ok = 0;
                led_no = 0;
            end
            password_mistake_state: begin
                led_switch = 1;
                led_change = 0;
                led_ok = 0;
                led_no = 1;
            end
            change_mistake_state: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 0;
                led_no = 1;
            end
            change_success_state: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 1;
                led_no = 0;
            end
            default: begin
                led_switch = 1;
                led_change = 0;
                led_ok = 0;
                led_no = 0; 
            end
        endcase
    end
endmodule
