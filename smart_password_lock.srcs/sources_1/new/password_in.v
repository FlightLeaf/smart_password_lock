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
    clk,reset,col,row,keyvalue//,password
    );
    input clk;                  //扫描时钟
    input reset;                //矩阵键盘复位信号,所有密码清除按键
    input [3:0] col;            //列扫描信号
    output [3:0] row;           //行扫描信号
    output [3:0] keyvalue;      //输出键值
    //output reg [23:0] password;     //完整密码输出

    wire [3:0] col_eli;
    wire [3:0] keyvalue_reg = 0;
    reg [2:0] count = 0;
    reg [23:0] new_password;
    wire clk1k;
    wire clk2k;
    wire clk3k;
    wire clk4k;
    wire value_en;

    frequency_division frequency_division(clk,reset,clk1k,clk2k,clk3k,clk4k);

    eliminate_dithering eliminate_dithering0(clk2k,reset,col[0],col_eli[0]);
    eliminate_dithering eliminate_dithering1(clk2k,reset,col[1],col_eli[1]);
    eliminate_dithering eliminate_dithering2(clk2k,reset,col[2],col_eli[2]);
    eliminate_dithering eliminate_dithering3(clk2k,reset,col[3],col_eli[3]);

    keyboard_scan_decoder keyboard_scan_decoder(clk4k,reset,col_eli,row,keyvalue,value_en);


    /*
    always @(posedge clk4k or posedge reset) begin
        if(reset) begin
            count <= 0;
            password <= 24'bz;
        end else begin
            password <= new_password;
        end
    end

    always @(new_password) begin
        if(count < 3'd6) begin
            case (keyvalue_reg)
                4'h0:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end 
                4'h1:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h2:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h3:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h4:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h5:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h6:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h7:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h8:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                    count <= count + 1;
                end
                4'h9:begin
                    new_password <= {new_password[19:0], keyvalue_reg};
                end
                4'ha:begin
                    
                end
                4'hb:begin
                    
                end
                4'hc:begin
                    
                end
                4'hd:begin
                    
                end
                4'he:begin
                    
                end
                4'hf:begin
                    new_password <= {4'bz,new_password[23:4]};
                    count <= count - 1;
                end
                default: begin
                    
                end
            endcase
        end
    end*/
endmodule
