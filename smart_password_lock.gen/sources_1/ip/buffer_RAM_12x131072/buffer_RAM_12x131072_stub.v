// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Nov 20 20:29:24 2023
// Host        : xiaoxin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Desktop/smart_password_lock/smart_password_lock.gen/sources_1/ip/buffer_RAM_12x131072/buffer_RAM_12x131072_stub.v
// Design      : buffer_RAM_12x131072
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module buffer_RAM_12x131072(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[16:0],dina[11:0],clkb,addrb[16:0],doutb[11:0]" */;
  input clka;
  input [0:0]wea;
  input [16:0]addra;
  input [11:0]dina;
  input clkb;
  input [16:0]addrb;
  output [11:0]doutb;
endmodule
