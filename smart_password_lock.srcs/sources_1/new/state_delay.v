`timescale 1ns / 1ps
/*
    该模块包含多个状态常数，通过时钟信号和延时计数器控制状态转移，
    并根据不同状态输出控制信号，控制门锁状态、LED灯状态和蜂鸣器状态等。
    其中还包括复位控制信号，用于在输入密码错误或者警报状态下的延时操作。
*/
//延时状态机
module state_delay(
    clk1k,state_now,rst,reset,led_switch,led_change,led_ok,led_no,beep
    );
    input clk1k;                //时钟
    input [7:0] state_now;      //当前状态
    input rst;                  //复位键

    output reg reset;           //状态机复位控制信号，输出控制状态的转换
    
    output reg led_switch;      //门开关状态
    output reg led_change;      //是否处于修改密码状态
    output reg led_ok;          //成功
    output reg led_no;          //失败
    output reg beep;            //蜂鸣器

    //状态常数
    parameter in_password_state = 8'b00000001;          //状态S0：等待密码状态
    parameter change_password_state_one = 8'b00000010;  //状态S1：修改密码状态1
    parameter change_password_state_two = 8'b00000100;  //状态S2：修改密码状态2
    parameter warning_state = 8'b00001000;              //状态S3：警报状态
    parameter switch_state = 8'b00010000;               //状态S4：开门状态
    parameter password_mistake_state = 8'b00100000;     //状态S5：输入密码开门错误状态
    parameter change_mistake_state = 8'b01000000;       //状态S6：修改密码错误状态
    parameter change_success_state = 8'b10000000;       //状态S7：修改密码成功状态

    reg [29:0] state_count = 0;                     //延时计数器
    parameter state_count_parameter = 30'd25000000; //25000000，延时常数

    always @(posedge clk1k or posedge rst) begin
        if(rst) begin
            if(state_now == warning_state) begin
                reset <= 0;
            end else begin
                reset <= 1;
            end
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
                warning_state: begin                //警报状态下的延时控制
                    if(state_count >= state_count_parameter*5) begin
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
                beep = 1;
            end 
            change_password_state_one: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 0;
                led_no = 0;
                beep = 1;
            end 
            change_password_state_two: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 0;
                led_no = 0;
                beep = 1;
            end
            warning_state: begin
                led_switch = 1;
                led_change = 0;
                led_ok = 0;
                led_no = 1;
                beep = 0;
            end
            switch_state: begin
                led_switch = 0;
                led_change = 0;
                led_ok = 0;
                led_no = 0;
                beep = 1;
            end
            password_mistake_state: begin
                led_switch = 1;
                led_change = 0;
                led_ok = 0;
                led_no = 1;
                beep = 1;
            end
            change_mistake_state: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 0;
                led_no = 1;
                beep = 1;
            end
            change_success_state: begin
                led_switch = 1;
                led_change = 1;
                led_ok = 1;
                led_no = 0;
                beep = 1;
            end
            default: begin
                led_switch = 1;
                led_change = 0;
                led_ok = 0;
                led_no = 0; 
                beep = 1;
            end
        endcase
    end
endmodule
