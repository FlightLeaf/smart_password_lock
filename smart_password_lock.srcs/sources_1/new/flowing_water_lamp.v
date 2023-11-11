`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/11 21:25:07
// Design Name: 
// Module Name: flowing_water_lamp
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


module flowing_water_lamp(
    clk2k,reset,state,led
    );
    input clk2k;
    input reset;
    input [3:0] state;
    output reg [15:0] led;

    always @(posedge clk2k or posedge reset) begin
        if(reset) begin
            led <= 16'h0000;
        end else begin
            case (state)
                4'b0001:begin
                    led <= {led,4'b010};
                end
                4'b0010:begin
                    led <= {led,4'b101};
                end
                4'b0100:begin
                    led <= {led,16'h0000};
                end
                4'b1000:begin
                    led <= 16'hFFFF;
                end
                default: begin
                    led <= 16'h0000;
                end
            endcase
        end
        
    end
endmodule
