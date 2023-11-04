`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/12 21:57:23
// Design Name: 
// Module Name: state_machine
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


module state_machine(
    clk,reset,password,ok,change_password,state,display_max
    );
    //输入变量
    input clk;                                      //时钟
    input reset;                                    //复位键
    input [23:0] password;                          //密码或者是修改密码中的输入
    input ok;                                       //确认按钮
    input change_password;                          //修改密码按钮
    
    //输出变量
    output reg [7:0] state = 8'b00000001;               //密码锁当前状态 
    output reg display_max = 0;

    
    //状态常数
    parameter in_password_state = 8'b00000001;          //状态S0：等待密码状态
    parameter change_password_state_one = 8'b00000010;  //状态S1：修改密码状态1
    parameter change_password_state_two = 8'b00000100;  //状态S2：修改密码状态2
    parameter warning_state = 8'b00001000;              //状态S3：警报状态
    parameter switch_state = 8'b00010000;               //状态S4：开门状态
    parameter password_mistake_state = 8'b00100000;     //状态S5：输入密码开门错误状态
    parameter change_mistake_state = 8'b01000000;       //状态S6：修改密码错误状态
    parameter change_success_state = 8'b10000000;       //状态S7：修改密码成功状态

    reg [23:0] passowrd_reg_one;
    reg [23:0] passowrd_reg_two;
    reg [23:0] password_main = 24'b000000;
    
    reg renew = 0;
    reg result;

    reg [7:0] next_state = in_password_state;       //密码锁下一状态
    reg [2:0] warning_num = 3'b000;                 //密码输入错误次数记录

    always @(posedge clk or posedge renew) begin
        if (renew) begin
            password_main <= password;
            result <= 1;
        end else begin
            if(password == password_main) begin
                result <= 1;
            end else begin
                result <= 0;
            end
        end
    end

    /*状态机的初始化控制，以及状态的转换*/
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= in_password_state;
        end else begin
            state <= next_state;
        end
    end

    always @(reset or ok or change_password) begin
        if(reset) begin
            next_state = in_password_state;
            display_max = 0;
        end else begin
            case (state)
                in_password_state: begin
                    if(password_main == password) begin
                        if(ok) begin
                            next_state = switch_state;
                        end else begin
                            if(change_password) begin
                                display_max = 1;
                                next_state = change_password_state_one;
                            end else begin
                                renew = 0;
                            end
                        end

                    end else begin
                        if(ok | change_password) begin
                            if(warning_num >= 3'b100) begin 
                                warning_num = 0; 
                                next_state = warning_state;                   
                            end else begin
                                warning_num = warning_num + 1;
                                next_state = password_mistake_state; 
                            end
                        end else begin
                            renew = 0;
                        end
                    end
                end 
                change_password_state_one: begin
                    if(ok) begin
                        passowrd_reg_one = password;    //密码存入寄存器
                        next_state = change_password_state_two;    //进入二次输入状态
                    end else begin
                        renew = 0;
                    end
                end 
                change_password_state_two: begin
                    if(ok) begin
                        if(passowrd_reg_one == password)begin
                            renew = 1;
                            display_max = 0;
                            next_state = change_success_state;
                        end else begin
                            display_max = 0;
                            next_state = change_mistake_state; 
                        end
                    end else begin
                        renew = 0;
                    end
                end 
                default: begin
                    renew = 0;
                end
            endcase
        end
        
    end
endmodule
