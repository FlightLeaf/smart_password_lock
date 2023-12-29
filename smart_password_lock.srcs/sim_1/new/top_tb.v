`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/13 08:29:49
// Design Name: 
// Module Name: top_tb
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

`timescale 1ns / 1ps

module top_test;

  // 输入信号
  reg clk;
  reg rst;
  reg rx;
  reg display;
  reg ok;
  reg change_password;
  
  // 输出信号
  wire tx;
  wire [7:0] sel;
  wire [6:0] dout;
  wire [2:0] RGB1;
  wire [2:0] RGB2;
  wire [15:0] led;
  wire beep;
  
  // OV7670输入信号
  reg resetc;
  reg pclk;
  reg vsync;
  reg href;
  reg [7:0] D_data;
  reg testmode;
  
  // VGA输出信号
  wire [3:0] vga_red;
  wire [3:0] vga_green;
  wire [3:0] vga_blue;
  wire vga_hsync;
  wire vga_vsync;
  
  // OV7670输出信号
  wire sioc_to_ov7670;
  wire siod_to_ov7670;
  wire ov7670_xclk;
  wire ov7670_pwdn;
  wire ov7670_reset;

  reg reset;

  // 实例化待测试的模块
  top dut (
    .clk(clk),
    .rst(rst),
    .rx(rx),
    .display(display),
    .ok(ok),
    .change_password(change_password),
    .tx(tx),
    .sel(sel),
    .dout(dout),
    .RGB1(RGB1),
    .RGB2(RGB2),
    .led(led),
    .beep(beep),
    .resetc(resetc),
    .pclk(pclk),
    .vsync(vsync),
    .href(href),
    .D_data(D_data),
    .testmode(testmode),
    .vga_red(vga_red),
    .vga_green(vga_green),
    .vga_blue(vga_blue),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync),
    .sioc_to_ov7670(sioc_to_ov7670),
    .siod_to_ov7670(siod_to_ov7670),
    .ov7670_xclk(ov7670_xclk),
    .ov7670_pwdn(ov7670_pwdn),
    .ov7670_reset(ov7670_reset)
  );

    localparam clk_period = 10;

    always 
    begin
        #(1) clk = ~clk;
    end
    always 
    begin
        #(20) pclk = ~pclk;
    end

    initial begin    
        testmode = 0;
        clk = 1;
        pclk = 1;
        resetc = 1;
        D_data = {8{1'b0}};
        ok = 0;
        change_password = 0;
    end

    initial begin
        #120
        resetc = 0;
        #120
        resetc = 1;
        #500;
        vsync = 1;
        #80;
        vsync <= 0;
        #120;
        href = 1;
        D_data = 8'b1100_1010;
    end

    initial begin
        clk = 1;
        rx = 0;
        display = 0;
    end
    initial begin
        #3;
        display = 1;
        #10;
        rx = 1;
        #20832;
        rx = 0;
        #20832;
        
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;

        rx = 1;
        #20832;
        rx = 1;
        #20832;
        rx = 1;
        #20832;
        rx = 1;
        #20832;

        rx = 0;
        #20832;
        rx = 1;
        #20832;
        
        rx = 1;
        #20832;
        rx = 0;
        #20832;
        
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;

        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;
        rx = 0;
        #20832;

        rx = 0;
        #20832;
        rx = 1;
        #20832;
        ok = 1;
        #20;
        ok = 1;
    end
  

endmodule

