`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/13 08:20:26
// Design Name: 
// Module Name: top
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


module top(
    clk,rst,password,ok,change_password,led_switch,led_change,led_ok,led_no
    );

    //输入变量
    input clk;                  //时钟
    input rst;                  //复位键
    input [5:0] password;       //密码或者是修改密码中的输入
    input ok;                   //确认按钮
    input change_password;      //修改密码按钮

    //输出变量
    output led_switch;          //门开关状态
    output led_change;          //是否处于修改密码状态
    output led_ok;              //成功
    output led_no;              //失败

    wire clk1k;                 //状态机时钟
    wire clk2k;                 //消抖时钟
    wire clk3k;                 //数码管扫描时钟
    wire clk4k;                 //矩阵键盘扫描时钟
    wire [3:0] state_now;       //当前状态
    wire reset;                 //状态机复位信号

    wire [5:0] password_eli;        //密码或者是修改密码中的输入
    wire ok_eli;                    //确认按钮
    wire change_password_eli;       //修改密码按钮

    reg [5:0] password_reg;         //密码寄存器

    always @(password) begin
        password_reg <= password;
    end

    //分频模块
    frequency_division frequency_division(clk,rst,clk1k,clk2k,clk3k,clk4k);
    //确认键消抖
    eliminate_dithering eliminate_dithering1(clk2k,rst,ok,ok_eli);
    //修改密码键消抖
    eliminate_dithering eliminate_dithering2(clk2k,rst,change_password,change_password_eli);
    //状态机模块
    state_machine state_machine(clk1k,reset,password_reg,ok_eli,change_password_eli,state_now);
    //特殊状态延时模块
    state_delay state_delay(clk1k,state_now,rst,reset,led_switch,led_change,led_ok,led_no);
    
    //数码管显示模块
    
    //按键模块

endmodule