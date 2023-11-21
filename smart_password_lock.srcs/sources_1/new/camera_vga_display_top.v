`timescale 1ns/1ns

/*
OV7670摄像头模块的引脚定义：
1. VDD：供电正极
2. GND：接地
3. SIOC：I2C时钟线
4. SIOD：I2C数据线
5. VSYNC：场同步信号
6. HREF：行同步/数据使能信号
7. PCLK：像素时钟信号
8. XCLK：像素时钟输入
9. D7-D0：8位像素数据输出
10. RESET：复位信号
11. PWDN：掉电模式控制（低电平有效）
12. 可选的SCCBO输出：当不使用FIFO时，可配置为Y9输出/Master时钟
13. 可选的FIFO使能引脚
14. DOUT：像素数据输出使能
15. SCCB接口的SDA数据线
16. SCCB接口的SCL时钟线
*/
// 
module camera_vga_display_top(
  clk,resetc,pclk,vsync,href,D_data,testmode,
  vga_red,vga_green,vga_blue,vga_hsync,vga_vsync,
  sioc_to_ov7670,siod_to_ov7670,ov7670_xclk,ov7670_pwdn,ov7670_reset
);

  input wire clk;  // 板载时钟 100MHz
  input wire resetc; // System Reset 

  // OV7670 输入变量
  input wire pclk;              // 照相机像素时钟
  input wire vsync;               // 摄像机帧信号 帧同步信号
  input wire href;               // 相机像素有效 行同步信号
  input wire [7:0] D_data;        // 相机获取的数据输入D.0~D.7 8位像素
  input wire testmode;            // 测试开关 

  // VGA 输出变量
  output wire [3:0] vga_red;
  output wire [3:0] vga_green;
  output wire [3:0] vga_blue;
  output wire vga_hsync;
  output wire vga_vsync;

  //OV7670 输出变量
  output wire sioc_to_ov7670;       // I2C时钟线
  output wire siod_to_ov7670;       // I2C数据线
  output wire ov7670_xclk;          // 像素时钟输入
  output wire ov7670_pwdn;          // 掉电模式控制（低电平有效）
  output wire ov7670_reset;          // 复位信号

  wire locked;
  wire ov7670_setup_done;
  wire start_ov7670_hw_setup;

  //精准时钟调用IP核
  wire clk_100mhz;
  wire clk_50mhz;
  wire clk_25mhz;

  wire wea;  
  wire [11:0] RGB_444_data; // din
  wire [11:0] doutb;   // dout
  wire [16:0] read_address;
  wire [16:0] save_address;

  wire ready_display;

  wire [5:0] control_state;

  assign ov7670_xclk = clk_25mhz;

  // 集成控制状态机模块
  system_control_fsm system_control_fsm(
      .clk(clk_25mhz),
      .reset(resetc),
      .locked(locked), 
      .ov7670_setup_done(ov7670_setup_done),
      .start_capture(start_capture),
      .start_ov7670_hw_setup(start_ov7670_hw_setup),
      .control_state(control_state), // to control LED light to show control state
      .ready_display(ready_display),
      .testmode(testmode)
  );

  // VGA 控制
  vga_control vga_control(
    .sys_clk(clk),
    .clk25(clk_25mhz),
    .reset(resetc),
    .ram_output_data(doutb),
    .ready_display(ready_display),
    // to buffer RAM
    .read_RAM_address(read_address),
    // to VGA port
    .vga_red(vga_red),  
    .vga_green(vga_green),
    .vga_blue(vga_blue),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync),
    .testmode(testmode)
  );

  // OV7670 数据获取
  ov7670_read ov7670_read(
    // input for camera
    .pclk(pclk), // OV7670 operation pixel clock
    .reset(resetc),
    .vsync(vsync),// start transfer signal, camera pixel vsync
    .href(href),// pixel data vaild signal
    .D_data(D_data), // from camera D - out data  
    // output to RAM save
    .save_data(RGB_444_data),// RRRRGGG_GGGBBBB, 16 bit RGB 565 data
    .save_address(save_address),// pixel data in valid time
    .write_enable(wea)
  );

  // OV7670硬件设置控制
  ov7670_setup_module_top #(
      .INPUT_CLK_FREQ(25000000) 
  ) ov7670_setup_module_top (
  .clk(clk_25mhz), 
  .reset(resetc),
  .start(start_ov7670_hw_setup), 
  .sioc_to_ov7670(sioc_to_ov7670),
  .siod_to_ov7670(siod_to_ov7670),
  .done(ov7670_setup_done), 
  .ov7670_pwdn(ov7670_pwdn),
  .ov7670_reset(ov7670_reset)
  );

  //时钟ip
  clock_PLL_100_50_25MHz clock_PLL_100_50_25MHz(
    .clk_out1(clk_100mhz),
    .clk_out2(clk_50mhz),
    .clk_out3(clk_25mhz),  
    .resetn(resetc),          
    .locked(locked), 
    .clk_in1(clk) //板载时钟 100MHz
    );

  // RAM IP调用
  buffer_RAM_12x131072 buffer_RAM_12x131072 (
    //OV7670写入
    .clka(clk_50mhz), 
    .wea(wea), 
    .addra(save_address), 
    .dina(RGB_444_data),
    // VGA输出获取
    .clkb(clk_50mhz),
    .addrb(read_address),
    .doutb(doutb) 
  );

endmodule