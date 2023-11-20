`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/12 22:30:54
// Design Name: 
// Module Name: state_mac_tb
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


module state_mac_tb();
    reg clk;                                      //时钟
    reg reset;                                    //复位键
    reg [23:0] password;                          //密码或者是修改密码中的输入
    reg ok;                                       //确认按钮
    reg change_password;                          //修改密码按钮
    
    //输出变量
    wire [7:0] state; 
    wire display_max;
    wire clear;

    state_machine state_machine(
        clk,reset,password,ok,change_password,state,display_max,clear
    );

    initial begin
        clk = 0;
        reset = 0;
        ok = 0;
        change_password = 0;
        password = 0;
    end

    always begin
        #1; clk = ~clk;
    end

    initial begin
        reset = 1;
        #10;
        reset = 0;
        #10;
        password = 24'h000000;
        #10;
        ok = 1;
        #40;
        ok = 0;
        #40;
        reset = 1;
        #10;
        reset = 0;
        #10;
        password = 24'hffffff;
        #10;
        password = 24'h000000;
        #10;
        change_password = 1;
        #40;
        change_password = 0;
        #40;
        password = 24'h123456;
        #10;
        ok = 1;
        #40;
        ok = 0;
        #40;
        password = 24'hffffff;
        #10;
        ok = 1;
        #40;
        ok = 0;
        #40;
        $finish;
    end
endmodule
