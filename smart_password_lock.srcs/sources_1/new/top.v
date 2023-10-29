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

//clk,clk3k,reset,clear,rx,display,tx,sel,dout,password_bcd

module top(
    clk,rst,rx,display,
    led_switch,led_change,led_ok,led_no,tx,sel,dout
    );

    //输入变量
    input clk;                  //时钟
    input rst;                  //复位键
    input rx;                   //蓝牙输入
    input display;              //是否显示密码

    //输出变量
    output led_switch;          //门开关状态
    output led_change;          //是否处于修改密码状态
    output led_ok;              //成功
    output led_no;              //失败
    output tx;                  //蓝牙输出
    output [7:0] sel;       //数码管位选
    output [6:0] dout;          //数据输出

    wire clk1k;                 //状态机时钟 10MHz 4
    wire clk2k;                 //消抖时钟 1Mhz 49
    wire clk3k;                 //数码管扫描时钟 1khz 49999
    wire clk4k;                 //矩阵键盘扫描时钟 50kHz 999

    wire [3:0] state_now;       //当前状态
    wire reset;                 //状态机复位信号

    //wire ok_eli;                    //确认按钮
    //wire change_password_eli;       //修改密码按钮

    wire [23:0] password_reg = 24'h000000;         //密码寄存器
    wire clear = 1;
    wire ok;
    wire change_password; 

    //分频模块
    frequency_division frequency_division(clk,rst,clk1k,clk2k,clk3k,clk4k);


    //确认键消抖
    //eliminate_dithering eliminate_dithering1(clk2k,rst,ok,ok_eli);


    //修改密码键消抖
    //eliminate_dithering eliminate_dithering2(clk2k,rst,change_password,change_password_eli);


    //密码输入
    password_in password_in(clk,clk3k,rst,clear,rx,display,tx,sel,dout,password_reg,ok,change_password);

    //密码输入延迟关闭
    password_in_delay password_in_delay(ok,change_password,rst,clk2k,clear);

    //状态机模块
    state_machine state_machine(clk1k,reset,password_reg,ok,change_password,state_now);


    //特殊状态延时模块
    state_delay state_delay(clk1k,state_now,rst,reset,led_switch,led_change,led_ok,led_no);

    
endmodule
