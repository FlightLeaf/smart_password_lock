`timescale 1ns / 1ps
//顶层
module top(
    clk,rst,ok,change_password,rx,display,
    tx,sel,dout,RGB1,RGB2,led,beep,

    resetc,pclk,vsync,href,D_data,testmode,vga_red,
    vga_green,vga_blue,vga_hsync,vga_vsync,sioc_to_ov7670,
    siod_to_ov7670,ov7670_xclk,ov7670_pwdn,ov7670_reset
    );

    //输入变量
    input clk;                  //时钟
    input rst;                  //复位键
    input rx;                   //蓝牙输入
    input display;              //是否显示密码
    input ok;
    input change_password;

    //输出变量
    
    output tx;                  //蓝牙输出
    output [7:0] sel;           //数码管位选
    output [6:0] dout;          //数据输出
    output [2:0] RGB1;
    output [2:0] RGB2;
    output [15:0] led;
    output beep;

    input wire resetc; // System Reset 
    // input from OV7670
    input wire pclk;  // camera pixel clock
    input wire vsync;  // camera frame signal
    input wire href; // camera pixel valid 
    input wire [7:0] D_data; // camera D data input
    input wire testmode; // skip ov7670 setup
    // output to VGA
    output wire [3:0] vga_red;
    output wire [3:0] vga_green;
    output wire [3:0] vga_blue;
    output wire vga_hsync;
    output wire vga_vsync;
    // output to OV7670 camera
    output wire sioc_to_ov7670; // SCL
    output wire siod_to_ov7670; // SDA
    output wire ov7670_xclk; // to ov7670 input clk
    output wire ov7670_pwdn; // To ov7670 power down
    output wire ov7670_reset;  // to ov7670 reset signal

    wire clk1k;                 //状态机时钟 10MHz 4
    wire clk2k;                 //消抖时钟 1Mhz 49
    wire clk3k;                 //数码管扫描时钟 1khz 49999
    wire clk4k;                 //矩阵键盘扫描时钟 50kHz 999
    
    wire led_switch;          //门开关状态
    wire led_change;          //是否处于修改密码状态
    wire led_ok;              //成功
    wire led_no;              //失败

    wire [3:0] state_led;

    wire [7:0] state;           //当前状态
    wire reset;                 //状态机复位信号
    wire [23:0] password_reg ;  //密码寄存器
    wire clear;                 //清除密码信号
    wire ok;                    //确认键信号
    wire change_password;       //修改密码信号
    wire display_max;           //修改密码长期显示

    wire ok_eli;                //消抖后的确认信号
    wire change_password_eli;   //消抖后的修改密码信号

    //分频模块
    frequency_division frequency_division(clk,rst,clk1k,clk2k,clk3k,clk4k);

    //确认键消抖
    eliminate_dithering eliminate_dithering1(clk4k,rst,ok,ok_eli);

    //修改密码键消抖
    eliminate_dithering eliminate_dithering2(clk4k,rst,change_password,change_password_eli);

    //密码输入
    password_in password_in(clk,clk3k,rst,clear,rx,display,display_max,tx,sel,dout,password_reg);

    //状态机模块
    state_machine state_machine(clk1k,reset,password_reg,ok_eli,change_password_eli,state,display_max,clear);

    //特殊状态延时模块
    state_delay state_delay(clk1k,state,rst,reset,led_switch,led_change,led_ok,led_no,beep);

    //RGB显示
    display_output display_output(clk1k,reset,led_switch,led_change,led_ok,led_no,beep,RGB1,RGB2,state_led);

    //流水显示
    flowing_water_lamp flowing_water_lamp(clk2k,reset,state_led,led);

    //视频接入模块
    camera_vga_display_top camera_vga_display_top(clk,resetc,pclk,vsync,href,D_data,testmode,vga_red,vga_green,vga_blue,vga_hsync,vga_vsync,sioc_to_ov7670,siod_to_ov7670,ov7670_xclk,ov7670_pwdn,ov7670_reset);

    
endmodule
