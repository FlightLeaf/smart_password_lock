`timescale 1ns / 1ps
//蓝牙接收
module uart_r(
    input clk,
    input wire rx,
    output reg [7:0]message,
    output reg over=0
);                                                      
    //clk为50MHz，rx为读入的串行信号，
    //message为对应的并行信号，over的下降沿将表示读入转换完成                        
    reg [12:0] cnt_clk=0; 
    //需要一个量来数clk的个数，每5208个clk，
    //对应0.104us，即波特率9600对应的1bit占用的时常
    reg [4:0] cnt_message=0; 
    //计数message的位数，表征传递进行到了第几位
    reg [7:0] message_mid=0; 
    //message的前体，在over的下降沿传递给message，
    //避免传递没结束，message就有输出值了
    reg r_start=1;
    //判断第一个0位，表示传递开始
   
    always @(posedge clk)begin
        if (rx == 0 && r_start == 1) begin
            cnt_clk <= cnt_clk+1;
            if (cnt_clk == 2604 && rx == 0) begin
                r_start <= 0;
                cnt_clk <= 0;
                cnt_message <= 0;
                message_mid <= 0;
            end
        end   
        //判断是否为开始位，是时开始计算clk，
        //数2604下（0.5bit）即在开始位中间，开始读数
        else if (r_start == 0) begin
            cnt_clk <= cnt_clk+1;
            if (cnt_clk == 5208) begin   //每5208个clk读一次
                message_mid[cnt_message] <= rx;
                cnt_message <= cnt_message+1;
                cnt_clk <= 0;
            end                                            
            else if (cnt_message == 8) begin //读完第8位不读了
                if (cnt_clk == 3000) begin 
                    //在数据位第8位的中间往右走2604个
                    //clk进入终止位（默认无奇偶校验位），
                    //在终止位中（往右走3000个clk和
                    //5000个clk之间）输出一个over信号
                    over <= 1;
                end
                if (cnt_clk == 5000) begin                
                    //over下降沿，传递完成，
                    //message_mid赋值给message，所有信号还原
                    over <= 0;
                    cnt_clk <= 0;
                    cnt_message <= 0;
                    r_start <= 1;
                    message <= message_mid;
                    message_mid <= 0;
                end
            end
        end     
         //开始读数，每5208个clk读一次
        else begin
            r_start <= 1;
            over <= 0;
        end
    end

endmodule
