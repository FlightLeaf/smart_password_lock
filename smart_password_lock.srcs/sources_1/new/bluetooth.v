`timescale 1ns / 1ps

//蓝牙顶层模块
module bluetooth(
    clk,rx,tx,message
);
    input clk;  //（50MHz）
    input rx;   //rx对应蓝牙模块的tx
    output tx;  //tx对应蓝牙模块的rx
    output [7:0] message;    //message为读入的数据

    wire sig;  //sig是读入的完成信号，下降沿表示读入完成，同时作为输出的开始信号
    wire sys_clk;
    frequency_1_2 frequency_1_2(clk, sys_clk);
    uart_r uart_r_1(.clk(sys_clk),.rx(rx),.message(message),.over(sig));        //读入
    uart_t uart_t_1(.clk(sys_clk),.tx(tx),.message(message),.run(sig));         //输出

endmodule
