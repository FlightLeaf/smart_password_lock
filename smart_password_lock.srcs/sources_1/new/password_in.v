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
    clk,clk3k,reset,clear,rx,display,tx,sel,dout,password_bcd,ok,change_password
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
    output reg ok = 0;
    output reg change_password = 0;

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
            ok <= 0;
            change_password <= 0;
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
                    ok <= 1;
                end
                4'hF: begin
                    change_password <= 1;
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