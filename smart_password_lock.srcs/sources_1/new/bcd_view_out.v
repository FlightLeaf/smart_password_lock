`timescale 1ns / 1ps

//产生位选信号和24位BCD码分割模块
module bcd_view_out(
    clk3k,data_bcd,sel_temp,dout
    );
    input clk3k;                //数码管扫描时钟
    input [23:0] data_bcd;      //BCD待显示数据输入
    output [2:0] sel_temp;      //位选信号
    output reg [3:0] dout;      //输出信号

    reg [2:0] sel = 0;          //当前位寄存器
    ///当前位快速切换实现动态显示
    always @(posedge clk3k) begin
        if(sel < 5) begin
            sel <= sel + 1;
        end else begin
            sel <= 0;
        end
    end
    
    ///位选控制
    always @(sel) begin
        //对应不同的位赋不同的值
        case (sel)
            0:begin
                dout <= data_bcd[23:20];
            end
            1:begin
                dout <= data_bcd[19:16];
            end
            2:begin
                dout <= data_bcd[15:12];
            end
            3:begin
                dout <= data_bcd[11:8];
            end
            4:begin
                dout <= data_bcd[7:4];
            end
            5:begin
                dout <= data_bcd[3:0];
            end
            default:begin
                dout <= 4'bx;
            end
        endcase
    end
    assign sel_temp = sel;
endmodule
