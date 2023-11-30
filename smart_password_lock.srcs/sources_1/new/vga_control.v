`timescale 1ns/1ns
//目的：
//控制VGA读取RAM地址
//如果没有输入图像，RAM为空，因此VGA始终打开
module vga_control(
    input wire sys_clk,     // 100MHz 系统时钟
    input wire clk25,       // 25 MHz 用于 VGA 640x480 的时钟
    input wire reset,
    input wire [11:0] ram_output_data,    // 来自缓冲 RAM 的 RRRR_GGGG_BBBB 数据
    input wire ready_display,             // 准备显示信号
    output wire [16:0] read_RAM_address,   // 缓冲 RAM 的读地址
    output wire [3:0] vga_red,             // R G B 数据，4 位
    output wire [3:0] vga_green,
    output wire [3:0] vga_blue,
    output wire vga_hsync,                  // 水平同步信号
    output wire vga_vsync,                  // 垂直同步信号
    input wire testmode
);

reg [3:0] vga_red_reg;
reg [3:0] vga_green_reg;
reg [3:0] vga_blue_reg;
reg hsync_reg = 0;
reg vsync_reg = 0;
reg [9:0] hcount = 0;
reg [9:0] vcount = 0;
reg [16:0] read_RAM_address_reg;

assign read_RAM_address = read_RAM_address_reg;
assign vga_red = vga_red_reg;
assign vga_green = vga_green_reg;
assign vga_blue = vga_blue_reg;
assign vga_hsync = hsync_reg;
assign vga_vsync = vsync_reg;

always @(posedge clk25 or negedge reset) begin
    if (!reset) begin
        read_RAM_address_reg <= #1 {17{1'b0}};    
        hcount <= #1 1'b0;
        vcount <= #1 1'b0;
        vga_red_reg <= #1 4'b0000;
        vga_green_reg <= #1 4'b0000;
        vga_blue_reg <= #1 4'b0000;
    end
    else begin
        hcount <= #1 (hcount == 799)? 0: hcount + 1;    
        hsync_reg <= #1 (hcount >= 659 && hcount <=755)? 0 : 1;  // 水平同步信号区域

        if (hcount == 699)
            vcount <= #1 (vcount == 524) ? 0 : vcount + 1;

        vsync_reg <= #1 (vcount == 494) ? 0 : 1;

        // 定义视频显示区域 320x240
        if (hcount < 320 && vcount < 240) begin
            if (testmode) begin
                vga_red_reg <= #1 4'b0111;
                vga_green_reg <= #1 4'b0111;
                vga_blue_reg <= #1 4'b0111; 
            end
            else begin                
                vga_red_reg[3:0] <= #1 ram_output_data[11:8];
                vga_green_reg[3:0] <= #1 ram_output_data[7:4];
                vga_blue_reg[3:0] <= #1 ram_output_data[3:0];
                read_RAM_address_reg <= #1 hcount + 320*vcount + 1;
            end
        end
        else begin
            // 超出视频区域 320x240 或未准备好显示
            // 显示灰色屏幕
            vga_red_reg <= #1 4'b0000;
            vga_green_reg <= #1 4'b0000;
            vga_blue_reg <= #1 4'b0000; 
         
        end
        
        if (vcount >= 240) 
            read_RAM_address_reg <= #1 0;
    end    
end
endmodule
