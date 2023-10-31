`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 17:29:30
// Design Name: 
// Module Name: password_in_delay
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


module password_in_delay(
    ok,change_password,reset,clk1k,clear
    );
    input ok;
    input change_password;
    input reset;
    input clk1k;
    output reg clear = 0;

    reg [15:0] count = 0;

    always @(posedge clk1k or posedge reset) begin
        if(reset) begin
            count <= 0;
            clear <= 1;
        end else begin
            if(ok | change_password) begin
                if(count >= 16'd200) begin
                    count <= 0;
                    clear <= 1;
                end else begin
                    count <= count + 1;
                end
            end else begin
                if(count >= 16'd20) begin
                    count <= 0;
                    clear <= 0;
                end else begin
                    count <= count + 1;
                end
            end      
        end
    end
endmodule
