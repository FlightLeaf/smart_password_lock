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
    reset,password,ok,change_password,state
    );
    input reset;                                    //复位键
    input [23:0] password;                           //密码或者是修改密码中的输入
    input ok;                                       //确认按钮
    input change_password;                          //修改密码按钮
    
    //输出变量
    output reg [3:0] state = 4'b0000;               //密码锁当前状态

    
    //状态常数
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

    reg [2:0] warning_num = 3'b000;                 //密码输入错误次数记录

    reg [23:0] passowrd_main = 24'h0000000;

    always @(reset or ok or change_password ) begin
        if(reset) begin
            state <= in_password_state;
        end else begin
            case (state)
                in_password_state: begin
                    if(ok) begin
                        if(password == passowrd_main) begin
                            state <= switch_state;
                        end else begin
                            if(warning_num >= 3'b011) begin                            
                                state <= warning_state;
                                warning_num <= 0;                            
                            end else begin
                                state <= password_mistake_state; 
                                warning_num <= warning_num + 1;
                            end
                        end
                    end else if(change_password) begin
                        if(password == passowrd_main) begin
                            state <= change_password_state_one;
                        end else begin
                            if(warning_num >= 3'b011) begin                            
                                state <= warning_state;
                                warning_num <= 0;                            
                            end else begin
                                state <= password_mistake_state; 
                                warning_num <= warning_num + 1;
                            end
                        end
                    end else begin
                        state <= in_password_state;
                    end
                end 
                change_password_state_one: begin
                    if(ok) begin
                        passowrd_reg_one <= password;    //密码存入寄存器
                        state <= change_password_state_two;    //进入二次输入状态
                    end else begin
                        state <= change_password_state_one;    //状态不变
                    end
                end 
                change_password_state_two: begin
                    if(ok) begin
                        if(passowrd_reg_one == password)begin
                            passowrd_main <= password;
                            state <= change_success_state;
                        end else begin
                            state <= change_mistake_state; 
                        end
                    end else begin
                        state <= change_password_state_two;  //状态不变
                    end
                end 
                default: begin
                    
                end
            endcase
        end
        
    end
endmodule
