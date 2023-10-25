`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/12 21:58:27
// Design Name: 
// Module Name: password_management
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


module password_management(
    clk,renew,password,result
    );
    input clk;
    input renew;
    input [23:0] password;
    output reg result;

    reg [23:0] password_main = 24'h000000;

    always @(posedge clk or posedge renew) begin
        if (renew) begin
            password_main <= password;
            result <= 1;
        end else begin
            if(password == password_main) begin
                result <= 1;
            end else begin
                result <= 0;
            end
        end
    end
endmodule
