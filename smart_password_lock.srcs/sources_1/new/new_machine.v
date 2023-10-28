`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 21:45:49
// Design Name: 
// Module Name: new_machine
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


module new_machine(
    clk,reset,password,ok,change_password,state
    );
    input clk;
    input reset;                                    //复位键
    input [23:0] password;                           //密码或者是修改密码中的输入
    input ok;                                       //确认按钮
    input change_password;                          //修改密码按钮
    
    //输出变量
    output reg [3:0] state = 4'b0000;               //密码锁当前状态

    
    ///状态常数
    parameter in_password_state = 4'b0000;          //状态S0：等待密码状态
    parameter change_password_state_one = 4'b0001;  //状态S1：修改密码状态1
    parameter change_password_state_two = 4'b0010;  //状态S2：修改密码状态2
    parameter warning_state = 4'b0011;              //状态S3：警报状态
    parameter switch_state = 4'b0100;               //状态S4：开门状态
    parameter password_mistake_state = 4'b0101;     //状态S5：输入密码开门错误状态
    parameter change_mistake_state = 4'b0110;       //状态S6：修改密码错误状态
    parameter change_success_state = 4'b1000;       //状态S8：修改密码成功状态

    reg [23:0] passowrd_reg_one;
    reg [23:0] passowrd_reg_two;
    
    reg renew = 0;
    wire result_password_manage;

    reg [2:0] warning_num = 3'b000;                 //密码输入错误次数记录
    password_management password_management(
        clk,renew,password,result_password_manage);

    always @(posedge ok or posedge change_password or posedge reset) begin
        
    end
endmodule
