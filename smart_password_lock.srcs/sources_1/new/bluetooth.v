`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/24 18:00:46
// Design Name: 
// Module Name: bluetooth
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


module bluetooth(
    input clk,
    input rx,
    output tx,
    output [7:0] message
);                                                                              //sys_clk为系统板载时钟（50MHz），rx对应蓝牙模块的tx，tx对应蓝牙模块的rx；led是我设置来判断读入数据错没错的
                                                                              //message为读入的数据
    wire sig;                                                                   //sig是读入的完成信号，下降沿表示读入完成，同时作为输出的开始信号
    wire sys_clk;
    frequency_1_2 frequency_1_2(clk, sys_clk);
    uart_r uart_r_1(.clk(sys_clk),.rx(rx),.message(message),.over(sig));        //读入
    uart_t uart_t_1(.clk(sys_clk),.tx(tx),.message(message),.run(sig));         //输出

endmodule