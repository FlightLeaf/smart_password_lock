`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/17 09:02:05
// Design Name: 
// Module Name: password_in
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

module password_in(
    clk,clk3k,reset,clear,rx,display,display_max,tx,sel,dout,password_bcd
    );
    input clk;                      //时钟信号输入密码时钟（100MHz）
    input clk3k;                    //时钟信号BCD数码管显示时钟
    input reset;                    //复位信号
    input clear;                    //清除密码信号
    input rx;                       //对应蓝牙模块的TX
    input display;                  //显示按钮 按下显示 松开关闭
    input display_max;              //长期显示由状态机控制 修改密码时显示密码
    
    output tx;                      //返回蓝牙模块 确认无误
    output reg [7:0] sel;           //位选信号输出
    output [6:0] dout;              //数码管译码输出
    output reg [23:0] password_bcd = 24'hffffff;    //默认密码（显示为000000）

    wire [7:0] message;             //接收到的信息
    reg [23:0] data_bcd = 24'hEEEEEE;   //默认不显示
    reg [23:0] bcd_sel_temp = 24'hEEEEEE; //未输入不显示
    

    wire [2:0] sel_temp;            //储存当前显示的位数的寄存器，产生位选信号
    wire [3:0] din;                 //BCD码
    reg [2:0] count = 0;            //计数器 确保六位密码

    bluetooth bluetooth(clk,rx,tx,message); //蓝牙模块

    reg [3:0] message_reg = 4'h0;//蓝牙模块收到的信息八位，前四位标志位，后四位信息位，储存寄存器
    always @(posedge message[7] or posedge clear) begin
        if(clear) begin
            message_reg[3:0] = 4'hA;
        end else begin
            message_reg[3:0] = message[3:0];
        end
    end
    //检测并移位进入密码寄存器
    always @(negedge message[7] or posedge clear) begin
        if(clear) begin
            password_bcd <= 24'hffffff;
            bcd_sel_temp <= 24'heeeeee;
            count <= 0;
        end else begin
            case (message_reg)
                4'hA: begin
                    
                end
                4'hB: begin
                    
                end
                //倒退一位
                4'hC: begin
                    if(count > 3'b000) begin
                        count <= count - 1;//倒退一位
                        password_bcd <= {4'hf,password_bcd[23:4]};
                        bcd_sel_temp <= {4'he,bcd_sel_temp[23:4]};
                    end
                end
                4'hD: begin

                end
                4'hE: begin
                    
                end
                4'hF: begin

                end 
                default: begin
                    if(count < 6) begin
                        count <= count + 1;//添加一位
                        password_bcd <= {password_bcd,message_reg};
                        bcd_sel_temp <= {bcd_sel_temp,4'hf};
                    end
                end
            endcase
        end
        
    end
    //产生位选信号
    always @(sel_temp) begin
        case (sel_temp)
            0:begin
                sel <= 8'b11011111;
            end 
            1:begin
                sel <= 8'b11101111;
            end 
            2:begin
                sel <= 8'b11110111;
            end 
            3:begin
                sel <= 8'b11111011;
            end 
            4:begin
                sel <= 8'b11111101;
            end 
            5:begin
                sel <= 8'b11111110;
            end 
            default: begin
                sel <= 8'b11111111;
            end
        endcase
    end

    //显示使能控制
    always @(posedge clk or posedge display or posedge display_max) begin
        if(display|display_max) begin//display_max 长期显示
            data_bcd <= password_bcd;
        end else begin
            data_bcd <= bcd_sel_temp;
        end
    end

    bcd_view_out bcd_view_out(clk3k,data_bcd,sel_temp,din);
    //显示译码模块
    display_decode display_decode(din,dout);

endmodule