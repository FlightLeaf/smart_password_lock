`timescale 1ns / 1ps
//流水输出
module flowing_water_lamp(
    clk2k,reset,state,led
    );
    input clk2k;
    input reset;
    input [3:0] state;
    output reg [15:0] led;

    reg set = 0;
    reg count = 0;

    always @(posedge clk2k or posedge reset) begin
        if(reset) begin
            led <= 16'h0000;
        end else begin
            case (state)
                4'b0001:begin
                    if(led != 16'hAAAA) begin
                        led <= 16'hAAAA;
                    end else begin
                        led <= 16'h5555;
                    end 
                end
                4'b0010:begin
                    if(led == 16'hFFFF) begin
                        led <= 16'h0000;
                    end else begin
                        led <= {led,1'b1};
                    end 
                end
                4'b0100:begin
                    if(led != 16'hFFFF)begin
                        led <= 16'hFFFF;
                    end else begin
                        led <= 16'h0000;
                    end
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
