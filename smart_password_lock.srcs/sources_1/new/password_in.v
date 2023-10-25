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


/*module password_in(
    clk,reset,key_lie,key_hang,key_value//clk,reset,key_in,key_out,led_out,value_en//,password
    );
    input clk;                      //扫描时钟
    input reset;                    //矩阵键盘复位信号,所有密码清除按键
    input [3:0] key_lie;            //接收的列扫描信号
    output [3:0] key_hang;          //行扫描信号
    output [3:0] key_value;         //输出键值
    //output key_value;

    wire clk1k;
    wire clk2k;
    wire clk3k;
    wire clk4k;
    wire [3:0] key_lie_eli;

    frequency_division frequency_division(clk,reset,clk1k,clk2k,clk3k,clk4k);

    //key_4_0 key_4_0(clk4k,reset,key_in,key_out,led_out,value_en);

    key_scan key_scan(clk4k,reset,key_hang);

    eliminate_dithering eliminate_dithering0(clk2k,reset,key_lie[0],key_lie_eli[0]);
    eliminate_dithering eliminate_dithering1(clk2k,reset,key_lie[1],key_lie_eli[1]);
    eliminate_dithering eliminate_dithering2(clk2k,reset,key_lie[2],key_lie_eli[2]);
    eliminate_dithering eliminate_dithering3(clk2k,reset,key_lie[3],key_lie_eli[3]);

    keyboard_decoder keyboard_decoder(clk4k,key_hang,key_lie_eli,key_value);

endmodule*/

module password_in(
    clk,clk3k,reset,clear,rx,display,tx,sel,dout,password_bcd
    );
    input clk;
    input clk3k;
    input reset;
    input clear;
    input rx;
    input display;
    
    output tx;
    output reg [7:0] sel;
    output [6:0] dout;
    output reg [23:0] password_bcd = 24'h0;

    wire [7:0] message;
    reg [23:0] data_bcd = 24'hEEEEEE;
    

    wire [2:0] sel_temp;
    wire [3:0] din;
    reg [2:0] count = 0;

    bluetooth bluetooth(clk,rx,tx,message);

    reg [3:0] message_reg = 4'h0;
    always @(posedge message[7]) begin
        message_reg[3:0] = message[3:0];
    end
    always @(negedge message[7] or negedge clear) begin
        if(!clear) begin
            password_bcd <= 24'h000000;
        end else begin
            case (message_reg)
                4'hA: begin
                    
                end
                //全部清空
                4'hB: begin
                    password_bcd <= 24'h000000;
                    count <= 0;
                end
                //倒退一位
                4'hC: begin
                    if(count > 3'b000) begin
                        count <= count - 1;
                        password_bcd <= {4'h0,password_bcd[23:4]};
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
                        count <= count + 1;
                        password_bcd <= {password_bcd,message_reg};
                    end
                end
            endcase
        end
        
    end
    
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

    always @(display) begin
        if(display) begin
            data_bcd <= password_bcd;
        end else begin
            data_bcd <= 24'hEEEEEE;
        end
    end

    bcd_view_out bcd_view_out(clk3k,data_bcd,sel_temp,din);
    display_decode display_decode(din,dout);

endmodule