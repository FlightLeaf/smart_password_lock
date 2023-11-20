// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 16 00:14:04 2023
// Host        : xiaoxin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Desktop/smart_password_lock/smart_password_lock.gen/sources_1/ip/async_fifo/async_fifo_sim_netlist.v
// Design      : async_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_async_fifo" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module async_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "505" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "504" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "100" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "25" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  async_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qsH+0xVeIy6Vv34SDZ9xCV3CDYw7f9WBctc/PzukbtVJ7nBFwS4nDrTimVYr75P82Ott++fhdYED
fiPmEFqDaO8Tznx/cWmCJ4ZP05v5Nj5W0U1qbHMG2yoFI9+F69cU0GpYqgA2+Y5Ti9b4hGQsWvcM
yhhfCa1edN3SBWRnFRs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0AA96L6mkfzFLHzENNUCWacibTZcR2GBTVeQ7nHqU0RuzjZ/ng1W7eKq+ZSRYUwvLBeooaP2bho0
NxvQ9fH6tLhvfxxixoFJAHQUJ5OaTp58EDbkbps4xeWeUIC4tRYbtMOftt6/ipETmIqpW5AEVAVu
Pzh+URS6hYqT+sTXy3NyftONmOfBwjSiBGXIrAQykvXzGznLomop8nG5Rk6KEp7QKBb1QBKuo5ac
WUlrcQeazYGT9e+IxkEj663HXlwpHt57hGMFvG5c/m/TUNM7U3+QkUGnraHB3eK8ef+BPQwB+UxT
tbqybLiI15Ji917Zu300vD0PyUgUO70Pz4T2Ag==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AWC9efBEWc3npQy1sZO1mYozfHm7h0KkPmaqKLNMAT36grvYnSzknIaLx4K4PBujZpKAdpQtZCYB
dTLm1wLEUKzvkOmJvpvSO/uR3NgWcAq5irDiRtidu7wq62gmpi9GbXKlyUT9beGHMnziPxH7rSvf
DsP6DYpKjM7TW5JEHG8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xj/SRfNq7Y7WSKYhPYCR5X6TJyjjaAPRuL1Yj6HNY4MmXTrIMcZbvkC+xyUPfokbjwn5OivIXe35
iOTM+yfNznh10Mt3q3kvKMxpLFu5ajHxa+e7j7b2eMUllJnfkhY2bLRa28zEzkOEJpEcoq02s/gJ
LnQmArXs08Hp5vdCc48JR3MJv6k5lnmYCDe1uEFjk+XndNi6bsXOozI9UHqF6gJjxODBiHBnKYFF
G1x1um/giZLrVF30Aeosdaz7n8moxcneVeuCpdcIgpssOvD/MkxVFlIE12ho6Bwv07eAmaPHQCbM
xgEFDdBQ/vgQSn1a2MXp9XxZGWnD7Nlxa4gXRA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GJ7pQGVdwW35U4S1lEMXX63eg7rNbwCnU2jJSI6OReBcl7zsX9GbcmETg7x3c3jm6X8b6hjaEJp7
F1E4gb2f4q1dYBabm93wpGLk0IUZORcrndHagTupA0pWFUpCFQy8QbJEV/4s6RohK12m9hpmfLTW
qpsTByO9Ur+loN0x2Mz1nC9omizaaLcKNd67Ly7OVzCaWRu3pReKvC2C7BxItx5uJBLixpS85+9i
jVv3lg+fFSbGIXLzum8fbnF8li+UeIe1QFLuVGeRbptfEV93evj9SGczbbvWR+cgvMphX6jJRGP8
w4pxM671JEBBuWHdMwmQ7JbHdYEH2vVJWRlxuw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
O26ycpEDdE5uO4UM6C9j0VMvr7AUcEJkRnunnb7zYX+R2nq1myxxCCQd0noQHCLHgGHMf/1JHdKr
H4E0HKilo78fKRK3mmUSQGkahzuaM7eMqtIigzdN0vUylH29MMjcGfpY76S95Epmi/xHFmLhnEIQ
wZ+flyDZPb/KuyYisKxqiHTgfwLIER4r0h2VINcuNXDyXAyRPpebJjLIIzziHqJV0bVPTa3NNqmC
db33qaZmv2eNmHk5kBTaIUu4Nz/jnjJiDSPkQ7Jq8stRCwBJUu2tf8ht1XRx40Yp0fMB5QhlGtfc
LFIajKgDBa5TnZnCts5V7c3LfARnv3Du8jvRaA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MGoFTkgKNm+rPfjz/31xF84Dii2IDyHbzedd6JdhNZvPcYY0tSo/nWkpHrcKTCxxgGuK4FG1m93o
xZrxPhJF0mduRf5HstV1aYNozBP9m98oT57a9j/evly3pFehQF51IyxHpPOvge/lGhNJAf7p+d9e
DivxEF2uxaoya/4yh5GLdbgaeA75sJpoRU+YyOBuCIXBFMr1yLmZQmgEwlsj10tfV4Qb5utf7dNL
aMMJ9+/F219AARxNPIxYgnWNX9PTqS7IDDDWndxCHpPRuCFSGch/Ka/ajezkevYLndwrY/+tSerg
quCEXGpTnwO2dIbTn/RVOFc0x9BSNEYIh4H42g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
aGAamGAsbCwS+Wkn8lIrdk4LHEqpaIdgKgYHoGKoL1cr6PyDA3oM+dk0chkNHz6QZeq1TC5Rm3Pt
85kufNeAkVWIRzG7TaRzEYjCT+dZhlyrQpPPZH5gJTkfGdgrnBU299dFjdgbugNFPsyWrCwRxxZt
qQb2zXcM0wE4Hsn1Uz8dLvnzoQ3AhXpdVEJnKLA/KaLML7LtxWE3a/VgmZ/a5qHpCCBHFockUlXw
eEXX+YwSH4Ek5WoyJ1m/lFbadJGmrukVGPZ17aALmkKru3KHulooQ5arzADKj6RzmnPQJC/cPfBk
omsg5FPh0/rpdiJqdwPGqHns9XqUlhul6ZybeNMuxrk8PQXhGLTbvOU/00ahh6AANbP4T9jh7Di7
OED5NGAk8blFgieTMFLd+YiSedcMgvU8vcHZ+PW+dulX2fFdMXtsCjY5YyjygP9Z1eaAmkuJUkG3
Wgnq3+5iQ/F1vRZwOt6UvqhWRMjs1rwPnXmFFcTba3424BUgBmWyHHXT

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZpNMrZYqJeLHXjZeb0d6EBaAKf8FC5LgIj0jJqt7SEzPKFECnsL19o47OBvYgLrxcLeAxdRb3fUK
ILYZbvBD7IQiG8UuHpkvnyEc3IpVIGh/Cdm14jHhu0XLkKU9T24y1ImHEat1IVVkMjWiCD+yF96Q
h+uGSLZNoYT3N9Sp5Pctg1ngeJ8imoiJlHV7bRr2ZQySZiqBAhjTj5t9SIAJ9Ou7Ea0GrqOAJ7Tu
zFcuj8hzoJZv50SaI8VW52N9lCo1utDigtsl95KaLf1Bb5Oh0zbrsVttGwDtACmQbxfvTQtrz2Yb
YXDEpn9milXQJBYP40DtVNVA+BonajGITKWyVg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53776)
`pragma protect data_block
WbzSxUHSttaalUezVo4v9KxelJz5KoVQh/hoBH4YAYuNzP6CrfNHV8lk5US8tl4nIhMRjFUjBJqB
hkNGolcsoXanKWbTV1sPVmhxTHPZCY5rqLg4OZUTfLIddvQ8kGHXgEHBkhKG8H2z6LbfSDMRy85b
WDIkaReL1vbvxagfHIBbxUfiYJNi7+BSTtHwden+J5hiq8NcVZYIDmkPz8HvrtpMYebLt9CRl820
nG06bhjFM3SemH0YCJ68vHpz5ClC3XskJaY9XfGk4Tg2cTCB265bK2qdGM8W8Z2PEmB4AcmCSQOf
+rZXPYoSPW10XL1YQUt9NrSQYecImXsnyPkwZ/aJiSlopRVZ/nA2SvrtKRSqO+dDksdgJ3WiccDa
lW7lSW8y5o5WQ7qPUjTsp2QSLzoNwFjrVYEdQ+bYvTgFcR9iQg1n/R1sM+53+skXOyGTgtCVS+XL
6My+OOueCPfMvOMgWnN+BP57k5q9ArdHqesIF5jzd+X3nMg6e1wSko0wdFwHsDKhN4Lsg8WnIXVS
5mYl/PgChLDO/22f87nCk1qRDNz2apSy4GXFIhAIHO6LKdoepG+2lRnNwj4Af3qv7zEv6kS6vpOQ
kAA7Vr+/pW+WvEhIyumHfhHAgT4kor/zcQ7H54hlTbGXQdoiEXZJhKXnZkyg3Utfem033qxvsaap
cfux+siOw62nmYpmULP640OmcYr6YT8m1JbJkw3g8ifZhMQkZCyIq8Jmm4NyVIuWVEOFc9zrdQuH
3ZSnDaME/7Qypak06kyaRdvgmxnWPjNfB9S1S4gC/jhoFKjeBJXCyMNmiUZzxYG04UUVrUSO4eWG
/Kp3coY39boSZqqpzkOcCO1bplkIfoty8B/Q/CijVuzbWh/Bq9NAFCG5LZDRlipoYi3ToRAgtsKR
ICfYN9GKqEluGxlM3riGASQdGeGwVmIrzQn3YxT4pFMnIORoYn6tdhlanfrpFxhBgBq5QDbxAMIu
8X3vEyc2Zp+vqUs5nQCX9q66NRXRXvHznMKZUqGVdVkYbLOW9fux9ineunOoITkT2iSBdEzTJo0g
BerM6x318CIYAuIWCBKAPaESkT/428V39TnTznbyw+k/JqsRaAT5dkmHEy8Bmjl+NC9k+0NBDngC
wiF1ySbNa9kNT5BH/aA5aIIZDf3SU4PIBiUOM0iY3QhNK5+TUfFvPTFiWdviL7QVpcW0AryXkUf4
tzxVuM8LN2xhj0ArG3Leh4eGjIO/+pvALr5zSBv+8uZlXS8ONsKKe2CPyhEFQwtMcJe78+6LIDKV
GeUsoQC4Z+jywym8HokbsTL1iy6cTXCrLqDh8vz143bmv+hFimxDcpP5E8Q6GPnCEyL7tToWadkU
vPHiT5iQXkYS/7LVTo50uk7LhvL36dYeDoY3c6qePqM/0ES++18W/OLc3FiDcFVjMd8XVoaUJJgu
Q1vjTnz5JY0Xf+Kaypqelbl7nrzkOZQ0RkFE+7lo9eAmL3Tz5qdjVF/4qy+8lx9N5mSeptwTdk7P
KRgu+XVxqdaGhCb/1bbO+SIoMXPa0XyY1QQU35yYUdOj1qugvs3NrEZ6+DfDy62eu+XAqiJSIF52
qt2k/PmnrDcJK/hwHLmj8O0g0Re+UAR9aBOm16vLbMTCapqza52lzazamTgH0MyEWtsQxlvaQI36
DdJhpMHzaObe2VOd85LiKDXeZ9WL93/IGaubp/0eky62gacfo9f1UvmG2JCrm13iLSplOLcOWR88
GNviDO8PZEv5RfFHHeocl3XbUa6CgSisAKYttwjrGxT4jrzdYSsDj1/Dn3NMoITuOWndlHqaaAdm
UTMr1S/pO/UXfPccIRVcm3W7UZjgpJXznQsEHkJPxTMd7kzja4xnqx4wmELSmZrLv7jsnW7T2+hp
zmZrhcAb1CvYfYTfmaDBfPrwLuncPFKUyWdBiWgPJZsSxuN/pgzhaswNt0dVejAwkW8Dlt4UXXD/
y3upDIuEC2pIREd5rxI2Iu+kIW0o0wJ5hh9RRmUlrG3IixbDgkfvNjEDDY4oV0wpqnMvXRUlTvqw
CG5bgX29qIOJld/WQjtxEgWDpLFbAjMocmlro16HLbvGo1kZc09PruEh/14WiJsLkEC7T+q9dswL
g/18L5T9/XAlqCDajmtjEN7y/8IjizUQUB0glBO/ol4OwRWKg86Y2EK4UyIuMS90KAKlokgjNWCC
K+9MEkw8neDEKDcOgje5aXm5IadiLWTP+xTc9sPA7ZrgxbnhrQ3+oZQHM6UkLncR7Z1ae0le61cR
pMrnm3FxvG4kt8Fh06Q9aVzVK0GaSgPK4oBNjaTRn1MXMmSU4ITdN1z96eUqCZvEeaadAQks6k1g
J9V8Lp+aMVN8OX9SbV9e5jmPc09ps3esZwZASgvcFHnTvA92jP+W2lGad7pX/s4AaIBnMazL08By
K93Y6PMEq2sRJCU1CrNjFhVtn8TiaULmfp4wLabIJo9Zjt0XUf0Y84/9BRxW+WCZAQw3X2W3j3UO
ypo9nqHJjufthH+YYusWIio7CND6khhi8WCiEFvG8tswPMIDcRjUGtD/t7++QrVYmwF3F2Q4kvUr
H7ma1K1Xys/J9VSCARch8BDCDRjXBLQBr+87xLEOOs3UZK9kHpcmKMaC2F4d23f5fO5SBiqxzX03
eau8jinEr3PeW6W0PpekEWgHEZgLL+/tWp4jdH0tt7s3P+JHgbh/iOAZPUcx+HZaZ/uMGpwTMiNm
1knGYqxT34Z+zuD/CPxr9Q8uHm3eJPJV4rCSM+QRh6XKmLL0WM/vgM7xPMQzyTWTu/nVBaWts4Wd
HQo9PibdHFLolt17m+AKksyjtb2SdzlQJxwuXZotqV52jy+Lu3NQKYR4e2zN1mS7a/oVEYV8rA86
L3U7Qxxfny/J2rG3dFDXPwiGPgj2iMUL1pysqEBpCjKHDbPmc48oTM7yT0vz5uU1z0KROdpD4Nnx
06oDAD3yyizA5d1cbvmUxueCV95IFy13WcYoxUiw3PjiOCVYJ1WNW+vXVALuqWSynfqUwQsTX63T
ahtxVCi9BuAuQLlq7E1gLjBnO8KEYTuIyJtbylJa9aKNXB51VSwDytAJ+FKGgNg3+JRs09bb5X9t
0zpzndECYXqaPBtulIJMyo1xDQHRLqq2ZVgOjIiwJ1fujMjOjvDtL2ZiFv8enWa7ik83dLh/zv/V
kyOo8INHGwcX6E3yWzmFvaBu3xHXLWVmB5u+WULxN2xF3bO768bG8HWud44EHjd7EJMNLnFbVOza
ydFqpgRyrzXCMyLjrDdTR+6Gr3VPhsnlObznVKk5bdg6RZEB7IKV146kwtjZtSlkALjyloPN+Uod
HB/IB3HEjMOXFOwgHuG9l1AhFut166ayGBNe0DGJq75CGo2oU7QvMtQdtbSe/g68fam877dB//9h
kZPCJl9ftWPP56ucfmBhLncCXtti3bOT7gxDxOT8ZBH48KRJQ5k69dG8O2Mip+9QmxdPQRtNRpy2
0mecJYGUoXpo+S7y2puRr+0+Z4FM+GJgtL5Kdnkmu/F/gUHFE+ix/MkT6UgqJD3tDPcGTnu8xpYO
fM7yEKwxLzwD1v7Kh3vlCfc2a2JfMjvPHmmcdi5EdcUoMBYCLIZzMByDWV9YhzVCzVJkgV/Lwmxx
IinxWdKT9xmycOuWL+h4lm4+kztQMcsk3Q6Vr2aDr3uloSveQ6CdeXkVEHy1x/TEZNS/MrZLrbgB
YnakT6tryGqaWYWctskBb5wf6EmsDIuZXmm1kXtRn97Sisjvt08yTs3nCTG5vLHTMqbAoiiNqpB0
oQlZWO6ji5whfZlWYE22FtNkQ+m1rlfmVQ84tsy9NGWccDwI+xn7Pudy7U8eenmr/QsoTzVd5mVv
BQ4+RY/A/mnkILGNlh+MEylVOALxwbwkdVFgPegk1CS1357A1QxKpjzrKp70g5+RRKjJk9Vxaf/R
RjXXBXGDUInJC6gQyS6sQjRfIscDi2kppd3kdke+jaTkbYR/m+TpXX7XD3+3cHlV+3uzPL8vPis4
1Aj2qfvyVtQTz7GZwKZmghDDDcc4COJz+G8eTbUBIxr6PzJfCfE3pqVCBu9saVEJ5bQyXgFD4rgE
1huUq79w2pM1Id/8FzuCkHA8Q+qkDvKR83ei69aIsxtLK4LDru0Wd7LnleX2gLo2E17S0THBuWuk
AOv+kb4hpcUvcH24MEorDdz2/lnN8tccGr2P3wEPXpHKxXbj2NP9XVwJcSSijowsqYQfbBWuTkPM
XeIGPN8dQHAXv0A0NIPbZaWdEQglS4n7AaYls8PDICGuyUmr1c4aU2R5G9foNfB7Lo6W25qyj60N
zSAnmMB1KoeaTb6WWg6jq9b7/cIHsvTMvzNdKHA6Upx8GDq0PIiDT0R0Til1eKxiLP8ZP4ZTgTcx
S0xrmAc3lH6TgyqLnUGkfTMTdLkyWg456gYwIiQgAQKVxOqSpvjidfqJvxhdH80BtptwXMIDSyCH
s2Exso804hFhP1n7+lunvFPrugOMb4pCoF82UiIS6qX8CDcVL0kcTk3g1tRPvS/VWfBFn3Es4B5+
iXFK6Xx4WnWWrD4u9Chp31Vu7RZUKX+O47zSRIrW4UQnK6eFgO3+QZC1mc7Qi+8HSeWtYZj5lUbo
9rCouy+0uqrT4Kcc61C2OcwJUK2H5XGoIQOrijbSv82LH18PNzAs0aSGuwzxdhXng6ZEQm2+H8e3
MCzIFOKd4fp2GtJi+1Hfzu8jXTRumO9noDfLe1O4Bi6FtZivn6WtFKFqdsqn/l0HbOIiibVIg03m
1y5EbUqFgrquVm8SOu5LPV+GgwyDkBmK8kD+OZrekmkt5TclXCXm1XWG7qRXzgwSrXACMiksj/uK
gehTA8zqrVs0iG/VnytKxMJglGNwrCmUohIWi/s8DQ7JY2trpDQNF+ImdQ4zb6TEJHaAzpY62ped
hcSeI+wYyJSJhr2RXv4fEC1VzKaO6VLRydfWsEOtk+xtZfGYs+gshAYJXrJFa+JOH+7vD+y/+sfJ
D0uCAiV8ZpC9vja1R84nUUY8SccpqwW/e2Sx9T066UGTYkv/fEgY3FjZQCKmjg4JstnQ5ABSJs45
CHhcyLknnK6QA+HxexgWHdZRBTFio7uF0PFdkfGO5dnFBtzkDDTd7jz4Dj8SmY4XoH/kqdrTzB0W
cK5F7FRHNj7Na2jwHtz+68ZIciOAo8B3h1zEgQmSdpfkVXQW++wQx9nPCODlCUw1jMPoesPp/2iB
EiwmpMr1j8YKa5c9SIuPY5QsiJcPNwm9NXLD2oQyxFHz/FYvybXQLXMW7aEUXVVumrFzefHwdWkV
+Bc8EOPwe53l+4vKiPYeK4NKKapidBrBkN3SSIvPhav/h6Jpk2sYGYnp6D7fRft546psSXkw0diU
lKnf1mPuy+Rnp+LgWQIr6tth6leqScFx677X5UPoSFvhSVfkhBuzLjlDxmZ2R6ATbeqjqByEAARk
X9bIzhwnVBA2ud2+znFoYIdo2swl+qF87GlJFqONk9xPgt+g/u0bAbpcgBYWLQk3vceoz88pU+HC
YWP4q0oYSz0p/Ywod3kUnA0LDRA/FGPh2pWEBEc+HdktjLlzIqDIgL4dphM5g+6v0t7+0YI6dBHQ
99avq3v4tHSYPpMaYSaIGJmj+HF+ULggzVQrZwhj6jF0TQ/WT2jvqgrgURihFMGnvE1mcy2V4u8O
9DLmQlfo1cmmUJxMXMlofx7LYUc57PtkPhiqqEIR95XCmN4xdZRqwON1vmHHaCkQam6tie3zi7li
ROla2rJMudflgHNvLbxnDpmK1yC1UlKqL+5BA8njC5RcPQtA+l9AtSvNQx634H6il92clbvrhz4c
LOcz7OOqRqdrjsFsgkJ1nPz135mtfpuTvjouB2wA9Z7diE7We4Kb7Ad2VQ+txCvlKxGHWyRC7dXV
pfWT3ssMTom13x/lat8ljHXy6t2ZO9F6gkpEfz5HiG93uO18PAuqw8wTJz+9jPvGE9vlyW46UED1
MGNXB7pAzbcfXA2MsJ5jeJsPncDjy4EUb9fpNMZIRgddD8wsMqXx10v7D+2fWx8SvK1m6Qx2czKA
e6wyxCWa7H+nZ3dFEclvd2SBoDncNyTXOHJx/pxWhNT16F+FBZmFgTIWR9WeYTg3A0fZz8ox8qfs
F9N2e2jBb3Gy4pDhm/DrS/TpkRM5gDJn1sVQMem1Xhrr1JJB7fUCRMAYTa3ACFbWWX6tiivwWixz
1ID8Xxp3tsGcpfigM5BWAcSFTVi6UmwqIEwrxy4vEVZEt03EgM3WCtERX2mhjAWToJ5BPaqMGrYa
avHN8n3Ja26Rf7dcg7JxHcr4EVoAx0qU7GmlGekiVr7LRhOq8n6kwZgVFBbRNK183a5ZzmhEM832
jAMgjBEwH3neiXWvWkEPXTAQggnCiTxdKLBZdq7UOme4TtTUp6cTwVWfycIUZU1Pt+mjQfwv/avm
Pk1jJcK3ZWHtySTjLA8PKSfA4ahFy3v1ZOSpdORW6o/IKxRwBAE3/nJRj7vAQ1BOmAjnm8cgDd/9
mseafy6riL1rkLBGK96y2mGen/Xk74X2vic9X2FyGEA9Yp0pCTWFf0fSFAIkiLONVV7+7ySnAKNg
gu1zv7FoFJwxbaFhAqf3Yeo9409a6hkTOIbBLkoXBHQN8U6+AK0SkjL5JLgKiriKPBxfCaUkwUfz
sILdfFfKn28Zdj9w3MTWJoUe664BvXdLHi9PnwyHCNwxcQcdjypVqcmboAwdKUMu7t2p+LCG34en
lInx1KjxiiqHrgXjwBbWzoarFOJAQherLY00Aeho1uyTBi7w9d2FN3BwUEhBqI6cu/P8ot5ZJXhm
HId4ssAiLsoH+5hT6xHvl2PPncQVrFFD4QNAGsFywjQdgsKPgwYdf+jNDZORVhLATWtC7Io7Nbfc
vFX1a2uX0aUFWDMF1WkjkvRiaCI21Czse+w5TOLs4w+v1hx7LI3xuwETLL18CR0kXaL9EA3OqvuG
pigNXDwxvpCWd/ALJ9zSF0rTdrZLoDbOEkPVreubqMLQJnZPW7usgTrSx7ciUJv/nNjSgXyYhTyz
k0VEBif5uz4ol/+7hZnWCUtPlTHB+hM0/zfk36Io1QSiFYnwZGf8t2GKIhHTOW4pEZZMTuzAP+9t
0xA2DvY2GNH9lLQ6kpNeDBJFdXHAwaU1LiFyJQW+z1rnAxMvgAKW/8ooWsIbkJUjOvilXiWb76mP
iuUmKzyszOYrqFAW0Kge1CbX+w8aNUL9exwC0LR33FBS4Ri0igjLtPv2uk6jpOE9UMz+QLvnS5rV
2gMufT1qeziPx1zy4ViKl8NuJ6W/n8PJ0E91U1Ni141yo5+tT9jTPruVwbcvDjEqii8vJ9leA2vI
PGsJ+yt15yXDJWH3DuYSH1lXvAi5yF1Kp/bpMADbV3PCQ7PfJ4ZLG9vBQiqRO/h6SrqprDzkL1PY
PFkI+MMx4N3MdQK3tyStk6T0epcPzWDiufgfn1TIFvWNbNe/AUSsQJ4IKXW31HCSDKK3dcW7D6bO
YDS1t90jUIOy3UGsLkqjUqTCxi2+vOrbzAHJD3/l3xBYqwaungIzGbmrAhqxm0yX5IkpmNB6c/9v
HwR6IqkyEN37BdPTc4ulyvomkiUsKabdVyiyMX0rRt4LMwnPv3w9RKCiLyBFEkWj06jviQPh7rxq
HykXAXRghjrepn1pMu/iOTYCA8RaS6fqJqh3qJSsVFwaGayv+KYcZ8xrtU0PBVZjtpTp5g4BJKU7
9ekRwGNyuV7JO8Tx+PlCMMvhC2s4jOuwK0FEcwil9/IxlkWR5dFlOCLljd88qoAhWAHF2V4TFGp+
eSianzBGol2c+dTsJLGAh5Hr5ny2oES7Z4asWWYfYo888OUfZvG866tk5J2DCNwNqoGe3NHpZii+
F7ESi+zMI/e2VOxSwLS0S36c9QvkZTJaGgyeayqCeRBc3LpEVj8+23JZBqY2QLBtiO7w3vHhXvwI
KvqFl5UqPS6InWFsFBeS8xNOwOpQvRTH8WJTHfzMlpwzvIF77aXR5XPwzprTXzDl/Mz38a8Gxu5x
fDwKHVcyCd+UG/+ouU3YRFkxH/7QebxV2Z4wTCsXVTw/qLB9jcqtquPVc3H2K/ssLIQjZTz0SiBP
CkMA6/0KJ/L6IArxmvyyVNbRKAb+MzXUUjcYGdiwRNBzG3nveLcd39C9JOOIRONibVXW6sUCPsk2
bcHDV71bacVGGT5gvy18vE8jtxfQnKM7GKUyHMI1BBq/zllZ0MviaexJui1E9ZfY12eQSDocs/dy
qhezpIsV0dvEBUkpVRgHGNrvJBTjjKz9hfQXrM+jK5uvmYGYPQp8YR8sUyUD2ela7+iZz3GiykVu
4iWMkLJtUtV3hr+SH4/3MzeolNdoBJBJLRqhmoyYVRx+Qli1vYZDuuq6lSvU0qA2zkK7CUJ0Grt9
YcnXw+h6+6lbiV2tj8qDl1uscAibNmAcYeAe8Nq0Z0i9dJk02wcibjVr6VY9YY/9ks2GyxwrQ6ye
pVQ1dkB+XdIoM5b2Nv7hQVAnTbJHvXwk6fQ3curAbB3peIKRm9/kVmJi5wIOJ7GC/L97iUmK+L1A
dN8R2IvIAXM6M7vIM4KMGF0+ikXXf5RgVdDHySwi9+pnfuzFPGQXDJ3RraOfwmyZ6ERVuzdVSdci
YDI9HNwCEqHwF8fQ4J3TTqJrYrteZypJbXsF14b+1Z9RtQwG8H1CYbE8Cpc7UAxy/7rZG21lhlgs
8t1zBxjFzslclKWEmJe+OYx4CPMnq2eEWN4Vs90rktm01eni7mcOfwUSUQ8EHUo1aHf+8FVzbsFv
rmL0+gNOVpvbUGI+kZR+ok+6U2Qt0p/Z1crigHYauaOWmW1e9lflMON77xpH9Ha3u1QTTB7TQJtS
4BYRYGnpgtHr0bfsiCIXtX142RAkazQjOEy7qhZrhbYvSbeHOZv1dL3iHS6SvPXcDSl9+joPJ+55
z9eZKYNWRvruh/9j7Qs1aPX+5howyKQYKjrc8OphbIi8pgINxgdelhjf73rPGZF94aWIx/QPQBrw
AZxCWH1soEXEFF56Mv9kyc/0TVU+eKyxS9z5WT3zHIhYv7NynJ/0oIE0vFssYU643xw3t/VR4f+D
1b6qJvKOyJxb2iigo2J//w//XyTfUW2mTGMSoSOp4NaeP5DorzaEExgrEW84aRT885l7kOCkrWx4
uPm0eV4IZczOMdm53RiWDA6+94NC+dMZPnlIXU7UEdhewQCo7BiQVrHXHLW3zrqS3NoK+386gkkP
zkRG8aOTZ5CVe0w2fzyreFxKkx3LbPMn2cC1ASUDNVBNk7v6kqBljn7lxNhEbXgqUckFGEv5imWO
egCzLTrMnmNPIv8QKHAZM5aDQoaiLCS9hBAN7hEENJ9hMPJKt17OoH41T0t33SY0z0YhBLqVSB7I
i3VF1nf4hdlLwAzelmx8fh9g0kT8cZ+RnGH+9kLBW1YdN0+wvyeYtx1oOuYyJ2UQTyuwDRCUuqU7
IYnP24SmrHDyGkIvW0NCEQDXtVOXPxJwbLMIPwGHIaDyTD6rdV+DfKWJ7DPzd59RJyKTxlMqgiLI
5qbr3/5lOySu6o6pcacNjD8PiCD5TfMT+gvstYklUERBZb4w4D5NhG5koQMEa/GM+hWUemvlxiyo
+H7GXo7ZRc2CVeWZoBvvfQkaqXNWYEsNWobca1OlnLy/bTV01+sd/mpIj5nO0YEdZXMoSanZquef
PEi8r1n/Jg/OZk6tfIDt9UJ2oxR6Z+57J9qIF5K92lmPlv2vdaPJSL4q0FPwqxkbsM23e15+zJ+P
JEkdsSr2zNh4LJp1hNRROXAVokl1MDYzJfqgEW9h00kN/ot60JDeexURAce0w2vLNk9dNlDboRqW
RzpTFStgl2gCS+IA6TieW96ggWmbE0pKjNuIqCFeQYWq+P/NcXfMicYvmZRYDiCANtVyapQFGVb5
ml2CDETN5anHA709vooegwJ8s45dBDN2y6PtXO1PUxjj+t8aHSHqR//0SBqWAEOYnLUbvj+1pnjR
Dd/7nQP9wzK4jEueh4UWJYsGOD2Ri2C0daDPERFULxJjpQTMCwd/a/eX/XTAzOXQaYNEAKdFQWZU
Hh9S5k8nxyFHzLc12JkoYQf/kuf9lgd2ZnLp4BZiBSe+iQlMLZSwSUMNY1DHFAOQbprtQ7Mz29Fx
/qS+Ngq5i1WyViz4ps9K5CP2EK9/eFXRSTZhyo8V/zQWJpgOQSMW9ptC2WDxmcwJnJ13sYoMK0fh
oy+6DaioSRVGKoFvhu8+auoh4I9wzqvOlkRwZmgLVT+/N8w33Hjy14KJhs12ln0NoATTyzx9qiVD
2B1wXdRLTdMrtxuYna7WL/UIrt2TccburEySc6nqj8Pia4QqrKVtaWhcQQ9tijHXtXztuH8T5u3J
o96AwZhcdaSbfW3OEutGGU7dFY+vaQS6hpCtXDeOeqIPO/P6T1Q8eF/FXjZwkZtYq/zx5QrSOwEU
lMh4iuoYbRUY5DlBKqhhXSq8xuh7FMSR5kbrlxtBA2vRgPwqJzHXVDefhI7DelH+qcBPyDSI3rBA
95EZDZr3RgnRir2vzxpsA0M/QNDfrBWsyi3Y7Clso61+QabwvJDRcz5cNlS9t9ybO+McrQKol39W
XTFF13wkfgi/L6tQznoba4kVYiz1IIKbkdshJh5yK5MZGyxGRb8XIYXQD5XOffBjXYwcTvhY7TE+
v5140VAVe4wkBrltu9V3ekyv9Vu+c2r0VvqvrOHuCvQTM6sLk+RZKw6S3mvBQtvSsX8YqgeHgTZy
cHJcZvZWET+r64sEXYAOLFTK21kNLSF6BGdwC5tPKl/jICkon3VBsarW9ESmYPofuOrr3YsfQemb
+gOB63NR352BxkbhkNvfz4oQ5hKf3woI6ose+j1ha/pZU9bHMkFg0FvYQN85Gz2xelbft0c6VXv2
jWtHw1q9uNUHbTN/SFeIMAVIfAL9R9Pudax0YyjKJCsG9S2sKmH7oBO6SXiaopbaXGW4nSsRfjwq
4unR0/zzA8YbQFXv1a6LtSfUXF5vu2zrOrh0J5YOsOXJlazAFYn5XrbynGDoB1ngMkDx+CAPj2yg
mKNxaWymKnLEqsogJwpkWQnMrCR76MhNn9nTMjaUdnHx3H5iDQykIah5BZ1w15e1S3Vw/F/98V0i
0mdVBzVXFOPQihs92sRXXvGMeMpZF+n/NpNqirO/alggyF4CcGKhcpGZ+HDLe12LxBLmQCDTZeie
9SnqKS5yQXEluKl5etw/NLU2TL/VDnjpaDpSx2TWokXqmBwYaQH0Y+GmpnokyDYncGmen1f58odv
FyMsKIWq4SkKWz8MCtZoRZYH1DHUvZAgF5gq4QhMANr0CIgwYKwm6zHDKEWe6D/wA6YNex/xOZvU
qi9K0wX/Z6UJvSIqYSJSUx1XvaU9tOJz7EkLRNefAnEtQ62bI48qnXzQQH3WE501nhkDuUjIOD9Y
h9dQZzIC4QGzkOrfoPdQyC2HjOyeNftbp3GmazT69SP07S+B7rVWjujONpIogpV+qT22RwWQAiq+
d/Mu2+uP4KLpwc+xAWAzPJ3jsYLcDPBq45Vf6msq3ZbSpqiCRr1av35XG4DFVBMWuy+lPQKv/AWd
qMx766QWEW+8+aVNQHmkXrBKXF8UCaodL51iurRQgQZS6qO3pHIj9OepZbuxBERXajlmi5tbHtfE
swU6c5u7O4buFYoEfl7kl6bfhoiTk5sujmS0NlFQjUCmP5UTeLg7M+1SmaeYO5x9lpIuNxcf+61s
8bAzeIqFabJ5Ohifg4yCiqpM0xiXcCVaRHk4Ias4Tvh8POel97u6g7PLjJK9wajLvDeMsckiMfVX
RWX+pBJ9+fI8OEyiIJzmIsSE71TJ9n7VLbSmKQPgsG1VFfoWRv0MkrOdLOKy0LvN87PahMe2y75Q
PLg6JwhDHJkR7DEpxqDw04lZGeluYALQJzr/mdgCqUY4pG3M32vAc1n1Mry7CqylsObHosffFOnB
tG5n07IZIavff1bB1AZRfwpUN7CAMWgKJTJHAVTmHavmQhkPvV4YIBUyJ3GLXoLRVvnky8FanhjE
6B8V1xTEn7BHx/d2dygl2DLoeorkIYUo8595V1WHr+ra1e8illk3mVSgq68G+/uCpoXhzIw49hkR
wH9/HZBeMLwIdB5KxAHINUj2RehAr2AKWJAbYEjuOCp0wU9ogFrrhjtLrfsGiE+/dDu9JpPHNONO
OGGizke4tEQ0ZShqS/+1c0SABzqz5TbLfZbluJX8ts7FrH1qE1g3hjCWXM80p6RsBYV4Fh2ViPrH
ptMS8ZsQ8b8ChqZYGIDoFrq0CWTYu79+bquUQBsy3CwnawsTirtwpdK4Dx981it+u++ClDJ8Lc3s
AIeWqhceJwxLnmyQp1zhSqeLJH4qX1H0qxN7H+Haq2EFgr1M+HjYa+aM5KPAZwXyyweKm9oplMOd
igLIYUOeXlI3bSTYXHUkHBr7ouZ5PWk5/meIAnIJ3hYJdq35uQbXiXWqNTnxlb0+EphYZVlrNvCp
h50PSrnxKiAWf9aYTQlcswtDQICXZh+r2vLlmMAN3W703twRNYYdLaLXMkj5+6rOi+JLIn0Tiohy
T4OjtMaPaZm9iJsAgxaB0o1jIl5HPud67V37br8HMDc1yWshaV4xIqtdSzdYuZrNiEPxji6tRb+l
91IaH1JBJwksK/s9JbvaJ/p0qQBSlbAaxsrvtBOARMTnh3ZeqwK0axA4Wse+Gr7PUPMWFnmGvMfz
1rlUeH+UlJ1KqesHG+qd8xPtNk6zELGmR6wcOuls2fzfhDOHVGVvChQ353VM3HHyywc02xsptDDL
nAJVSgGPDwqonSRr5I1/8wC97RgkWREEh7SKw3GVKmVKOM2sWxwagSJnkmPab+6zg/n4m5jsjRAi
2cxdfTIICqd2r1886UE/AWfuA4shXLbBM+1R8tV5FCwQVU39tSTpDMmtcqgoWt6f9xnBL7iTt2EX
L+dYtuyVFk5cxkQWLzB6xGztmwV2KdgR8yWOgbAotExSUczYD9eN5btzBtbku/mIphLeymLvb3qd
li+dN/nxEu3pDlFYaRofPcL+tb9JjQXkWVrzMmUhgQFddMA7XbKgVFOh8NVhrUIOQhNhK3NzVlwD
OD9x9KRAgd0STVoxo8y8hA4FqmDF06Q9YLY7p6yeJ13hjCMw/r3tMIZ0TRokkCJQ5CbYNlmNBp9v
LlZwbBZ+VZkuM5tCtgj8QfzENMH35zG/h9xzkDR4ZtRrEMaGxXpr+0aIJfKPaWIkE/G8e4nWcahp
GYgnCQV5qXFbg/81XjYcpktnflrdziATRgyaGLrjMWRxzsSDO5lZfMp1qvimGzhyy47r62oJ+f+m
h9btiwBnGLHVgYc5+MN1LbE95SZM+Z7/ZvsqCOlkumyw+cMKowpUZadQuFlfgP8cFgYPLUH9i5bf
BS2l8my48OR8/QaU8BuU3I3T0M+S348hDC4rghBx1GjfehZxnocDOTUB477Hyp4emhzyH6AVnk5L
kx3UlxHhWOj1xOoU/B7kmi8bzXBwEpy1oTcV3DH0UyekzBqevxK3i+ALX4x48VZnX07Ueb5FSN6j
F1yvRMbzwfxKJ/FkUMBQY+EebPIMFP/E1bC/zHoHzL+Yq0l9Zcgtz4X27ITLkkmCLdZ4ee84bATV
unXBrl9LLBZxi/WxqJtjI2RdSPa0HY+MW73FM4llS6OiM6U0dp97dN3gMRdv+MXcQGuyAyKZ7UKy
pY3DdsXqicDCBh15Vzp4d4kr4luiKbtmEIWYDK+rhyH5nQyD8TyANej/jva22yRAVxOoF/scRl4E
CvAx/ebOeKMfs5i2eY2y9zlsm73KpOUncik6wdesI/RZKl2E3L0GLzBE/J5eEFwtB28JOLA2aucX
aDMcXOg0K8s+c6AFCbIOrbBj5N5YGVcItfXpup8TN3YKZx8VybzQGpTZra3pE+Hu2+GZx1ggKKLi
IKYh26GHj1CsE3zwSIdvFa7VU6y+dKiMJ1vqwC6h7/eZFo2njPAZ4oH49vNF6X1L9H7xNe1DAwqc
RsyERlmJSnJSxJHwSqxt0CG7d0XB+vm5UKLEuU6KGJjw1jZJoJyHnDw2Qs2N3pVZuUGU9qRS398u
iPp1u1Mz86Ba835I+2CVSYMaX3DZDYmxOHzQpy3arJDomMAZnmczP/E1oNwHV7LC26H1WyI8tiZn
24GFt9WRf0KkBMEChbEtDbxyvfVOOOAvnVP/Hc10zS5bh6Vm+UXCGlo9dzf+thpYnGpQtPAhMPXC
IkkpNO8Kd4ABeqYe7Y6ts1xiB5Ws1ZYTslNL+rM6FThdflegWx+uIT7CkKzk27/+8+pdTN+uOFy4
cvMN8jilC4e/E9C2j+1RDDlM/G8JunTbO+McJNpzugw0hOY/jqVe+TT+wcy57jo+jsWxIgyEOxOz
yD6UkEBrHojDzHaBxGn4fl+MlRKVH2iuULHSjlgIzvDcw8wVPH1nJ4ZRaX6iGdKB1WOPz1nnj1Gl
G/fPS3TxVvLnwAAogJV6wi6SGcdoWw4n7NuKFxMNSOKXPpd+sQJ5M7M75IYxMcYaOIYOB3WzzXfG
FOD6kcyHQ10bex7KUeA0ZhZKoX2PEZL606IqcJ3/asOaxrmXjMmqD5HRHLtSATOQkxqOOF4uXOW9
CDZqXF192dTgeWA0QV9olYvXdhBibKqVZUDAvCCv1NDAhIpi3gOZ9eTKy6SAGT8mrL6JPv2GGtkL
VzLOkMAc37okAjWVeP7iLSSqaYIuG2ZdjIfBsleEIM+m3E8sS9T2caf9CtgODRth8xVb2NQPojFu
gu7W6mV0g/2gEZo4FjgIjMsBjObKacO8tAA7FFxTyyAYbUn8RyllaMIgbBxlyz9f/r+i9YAlqOU4
VfL8zISTYwCmYkm7y/iEWNAQ825/ypLz/DaR0pJOlfBIqCqmqvrZU5VYKCgw/1BPhIv3pjwjrw11
M4gN737kRSiFCuefK/oKN9JoJEVTLgxU2sqp+9O1sbL/hH9eqsDUCDHnbrQajhgzmOF3hs0o9rcM
kjJlhQGkguAey/+m6OAc+dEsXtHuqnUtxKo1o/WV8zavU+MGEKLakRLD3teyKE8Bnu64qE/yfDZD
yyAa0jueZuez3tLfUGWo5LmNfb46Uix4HNhhtzdp8zD2864AAhGfy/FgVwHLvj8pHODsTR/Y17rO
AJnb0XO4rOoWYBqaKwXNjPfBNwXWxBwFkGxfOnhEbtpHJsR/WP2UKL487qL7LfjpEdy3XZJO07ou
ABGv6yOHt4CVIvVbVNa+Vsfe0gzJpnA4JNVthQDx2kQIcnvon2BxgmC6L1phkexG9Z6IZqq0/yyi
gTzw3DM1aQCvE1JzFUQGec8ItLaGHcYEbdD3GuAfGXLqM+T3Q1zYtfychkn/qmr0dg6N2qD4KggP
L3hRMEJFs3x8o9c4nty89xDQotG9BOi5mbW+uKP3Xosla/KXlWTdi49Ho9qGVYJJ80auPrsb/Tpd
nhG1E4kf68CNQr8RIZBfJHOHdDpI2/qphrfwUQoOivXCRJWaDnp21A5w2CougbOCCOw37dyJHxPD
K41iC+E/2oWfADWxZeoMV3khHpzJwFpYSKDU+Z+vBuksMZLCOE5Jsqvvwf/5IdH3j7WdlEIVY2O1
BCJROW0co5mXzd9JDaSYUqhDJx0cIkuOrYpi+i4JonRg9jRYDYASssI979oqRUF0HKIztFccq3Ov
W3ZBIlNcmVWRT/UutyYmOmWZVdeyYMD+3KgkKUItqpn1tmxIrihdIU4fKLDlkVybWJVB2m0IAgF8
rU1AoP/7Rp7xiX6u/zvKskpi4DKgDKbM4S+bMfzngsEh29TC4gkEkXBTxUb/QuN8is50C1uSKjDd
02jgkGv5b5ut5Z4e//pflLTGSYjvyR+dL1iUBCz6lUhvNBYBGUDhJpbjeq1eYKOO0Hj531XXdWp8
qcArEsYTgFSdWN1W5gfvFPxQ46ut+hkY7lAsEZLorYvW6Z2+9C622cPstblSqaW2GJVHz+RFVrNv
tZzRqGvFi9FKzZcvIFkVH0l/U8hmbvvmvCfNj7nJdlhcne89tw5MnJXtDvasrkj4tmgrrgSkj3SA
SjDApdJC71gTP/Sgmu71oIZi6j7R71Oy2ovjAnpQ8XJ4PkyrTtrNgG6CgwIneTifrWK9jbSQ3Aib
Ou2QkShFjSHpA2Mc8McEfgJvJdi31HFCBu9ctwj8HF+Bl6mcm12tuCzKZ3MKvh3DyrsfXvE/4vLr
+eQ7UMUTC5uUs83CrM5Jh1vnNv/u2HxhDs54sImHWGLCRWp/KKpqBG2gjmbt/AMSnMAhGW/cb3Ij
HiS0v4tEN09XvIiJ6HPbkUZzFEdpBFNA1VZ/Wh2R/orROVi6f/fAQP/t2Xcs98+JBUL5TBUuxGSv
9oUU+M3hd1gHi7pZW8eKT0rDNxX2z+viUMrkcnGfFzOZ8s3hGLGmDjgXdrFpoglTni9DG+FXWJwD
ilppeU/A961vVNRRarozkf4UnmY5BK8BghyFJQxJ3MrDANKBFbDGq6WcQzLAZ5wn4pxqjUD6os/1
HqZbu5pMmZ95i9vqJKo4rN10ExGKKPUc/+1Emiqrm+86yjtGQEEsrtpuo2RCQ2giaEMkb+NhW8er
bOgwmWhRPzEE3FU7QeXqpEI+cqvFBbSH4n0S+9K6aswM1lajvBrcJ3JlfdYIVm7+e+PrP8dSnen2
Wyip0SL0odPkPiK8EVV3U2N59REVKrv/uT14+ogJWPeJH9hmf7YeazKBpxJ4WdxQuiRz4a2QLT+Z
yIkxNmczCixtsZP6cRPMZ+jjE1h9xHNw6m/fN6C6/+E83zQJc8K1hlKcFUB7pamzmAXYjFHSthm8
Wb0sC5IY4HUnJHNSZWEGUurHcQNciDLEbxfioESEVZPecDET7ePbW/cV5FLvAwycK2utQo7zMigl
g+yM1UbyJOAyUgR+Ep77p4eKve9oJXqt6BGrviXef/IyActWh8kHjoWy0289eP/tVTHfNXkZLs8T
6sqD/Ori49S/pxL2iw4+i0OkivZ9Wfk446eTucxtkS0zPlz3+ch8eh8ZceuyhLVxOWVK80y3LGN8
QdwysRApx2w5z57wkgVy5TjQuYtqSBmAhxj32Q0E9GuQNAWWaZmYtkjDb/o4Q/ZtX6QwdM1JLPRf
637soF5jfM37yhKRKqs5bLKxNavrwUOK8x2P2RYvUbNSnp13e/redA7yPpYiuODi1R4scsYyBkbR
vMKy/c9fRBYGM7cFKlWBYb/0GmxinJLaJHq28wsRl9KiL7+y5IxEzyIJV4UmI0TGmwUP3LXGwTmr
2qXLQSyVAFu4dWUson3qpO2J1N7QOdoQ8P6hYmsqDySijzKno7tUh1R153wFPQ9hFLBXEgIqZ+TH
7/VTlLdl6i9vrOgkUcC3cUjaYOoXXCTyMy/UqVnY+KdVIwHrTC22LRGfFOwJUOb58iZGa2PuydbP
GjheE1QYQQqqkfmADac9e9d2+SLKhs/EoSRw3Loi4OJjomZ+LSNL++eIXwcpBy3ixZL34hjehIbi
MUBJGl89lynpzJm5GNDXnNTVbTdl0elJp0lqu3fHlxV8pqpFBwTUC4/nmj5ymATd7XG4SgRW+yQG
jxddmZMvTmiMJ7+6jdYG/FNRiOrrNdAUAkkefQjvBVK6og78vaERqUiDGDm300aceTHaxZNUmVm0
9z64ZsV5w7X7/3nvGimBuSZjEzXaI1dP5CO/0uMovtQi7w6iCAlPMBoTSWsZbNK4RH7a5cGir6YU
97hEAc2VvpDmOcWnnk/TE+huAa+/TMUFdKeSBApPGHfcNP1DQgA0UsojJQvAY9kNc6TqsMI35bxJ
kz0xT0UollSGxPdI8JO9nLJWWyHWdlbWszmW9B8sY+N6pbFd2AhGHzXy/UfT8rDxxpUkP5Flhziv
j+/xM+i41TaXDbHQQt59qzozcAOnT/oKk6TOF0B0Vl3EJ8NHfXfmRRvzR6l3GyjqgHz1CtS1+6TV
s3WlE4eeVWL5ZYcc77KKOFCjDTQXtOxEwPtlfc7UM0nn8WKvI8icm96bu1P8x8GdOJlI2JypKjuK
F8OMn5rQoZuHQ2/AVU0OEn8kRRQjNnaJpN64qhpMvCKUU+UPwIn8QgovgDTaITTI9ANiwUQ8yxqL
4MSP01ZwJM7ISjtA2stfxzmJkqyJA05pDbFD0DCKPTT2PmCs2i7on79D14qL3mvacNcMczUrUx4f
issyoQfTj38ckU1AUFnZE7ABcSpsM5VrocWI/d/qEpKgY1c24+djSxQzpknZw0bvNLl2/wVk1N8V
omM/WevFOC7o6VdOiTDWVb5trgpektAvIP+SJIMfDXFtwWsodgYzBLP0yQLqF+m8pWcFg5+GhrXw
gGcTqnwTvo5ySZPEG4kPX4or5zIyjdh6UdnV4W4ywkoFKzczYjq6RAaQoLj5qSjSpSJu6ox6VNjq
YI9pAgvwYfMylbWwC1D6CK59l4N6iunuAcLprd4+vN4vnWIieaqtz4AzXTLsxgHnTnE4rT2n7NOD
k9L0NJvjgKuFL7cpJtU5QkG7In/EZ2/Vxf2z77xvQUcFPyQsewEw24dSoB0TXJmVupn0mCrl3Wpo
aHj9yK9LJlxNSVPj+cM4mLeJxYAz0yJ6+nnF2K3cB5PcD9xdLgNdWB3ZZq6+ZMuHKQ7hkygriqJW
IeCedRy0qO2YUmhnGxUATS3+sdh/9aMBHMt30pxaZdccJYjsHoXBCcxkE3kJkHTo2htf+DxIm0cR
t3VvbRS9vbNgX31+I0/XKfCXvtH5D1lh3QNP+8Ibt+RpU4LSO9dTB+rVN5UQWTZJUlrSL7jMLTkT
RFOZjzfkzjGe3dlEWpFFzHUBQU0LGHr0DghcqvaR4Vw8m825RBPrj7HccYrBFURTQK67PWcexq7Y
YkKz1ETI1Tm5ftO1O8RmuXJIYb/DmMBQQSfrDEju/EoyU0hqK6R3J1SMXikA/J2ZkBE3+WmeVpLO
5dpTYmkF1mzM+A6J6BU3bVlkVfQQ7Ezbt4eloHC5ffss1chcQrkga43MxoMY+cGnqMT6a14EcS4d
Md5gnr+Bj46vIIfbciSCYXaBDVBlfzgo8KKXYpSS68SSaFXj4Jv3bjpby4Uu+hbrtVTL8T+SPfON
NEJSrdu49PN4I8QNc26ESxThfotT2vkwR/aDT4Rnr4kkWZAmdMiCBM1cufowjVCHhdhTMig79Iv2
Afqn+7NY97aPUFjXXtuI/2FiC1OBzCbFeKpbppDIOFYlQTGHR1ZVPNsbFwHxD8WUAAj92hLe0qlL
jSdpI3vYL6lMu/F/gdkPX7PQUa8aF/SgXFBrfNazWIig5yUn2nh9doU/dEX7DxUgE/OckPp2pLZh
ErvXeBqwGSuVFZrrbp/QA9POtRFTAlWi4S0OLYTzoAsi6an+kfUykMYKVseu4S7I9DQ6Lbb2kSZs
mXmXeEvC6MfAiIv7Cb9paBf8qMjBMOF90aMviQkfNSWaKiIAXzLOahf7msXRvF+x5xq1wnu3mzXd
6wJ8VoDThy0h1CKgTF3QeExrPRNDH+goXBGFuomYC9n2IQfjEP7MANm8i3RDKcEv2PFEHDi6mEL4
CwCHHJ44aXhb2R1SFItTKoOZJoIIoeegx7BKeljrPl1Fl8GBwWuiQdPuiFG/24u9DSnKhSDQXQq0
foVseWd4Yrxp90CgLE2eQiyx+mTBMx/yfckLWLNt65sfXx1P4SVMJX6Amezkw9iTBOCo1AkL2D7P
hdu9KiYhwsVxo///Sy1ry5CQ+KuaOb4C1cZNhBLWAgVnSapAXnABGrL3rnXkioQ6B/hgs3mJsuL3
zhJhcDnBxMqCfeIoh3O5dUO9MiJGJCppuC6J/yxPr5B/Q4/J/1Zinx06ZvwJ8owePNTYvhS0WWg9
rlRBPYO0pk+dJJb1dxJtHY0OguBG05ehyVFBFy9WZEyatZtwDs+JoJSMZZ7Oo9Jl7ar1q3QnEdEP
mXs7jfPN5Zb9x23ZdduUSa3iGXytA+R0i3QZLbWlcIkndYxe0SDqwvKgBFwANhF/lTs1Pr44cc6+
PeYn9B08W53UGGPNEltAjbf98k0ign09IKD7pQBiWH5l6j/te0NsoiZQyAf8BT2IGcB/G1JdJqba
U69ITOH9Q4a7k+C1VrHocQCAGILR3rFswAEfsefmLW45aMRq1Runy023vHkG0eKOvZI8wEj3IsH7
6hoCyihapuVh8FHQgg1hTQ08nepSAMSCWIGWevmhAV1e7e4nhXp6aoBP5NDMXziiJkjH7ZQfxiee
b+0DapyWf5hNfKUsBK7DkUez1mCve5AVowtDsf4ElQiNz+Re9tKqxyj1d40NjxvLo2GXeO8gXui5
20EAo+owOsYb5hE9y8kT7W/EvjkQbzOU/Xy6xYKfQfFsKlVGK5BSEuMpdLaHZAIFzmzlWgm3tGzF
fTg5sX/aNSkkDcivaiMnLxsgYlwcHPzgqqgHrPDmlJ2YKeVQGReckkuHxprKJEO79OP6La/Dr4LU
dV13Ti2UqIGzgcTZND0doBWgwZFwdEVclzNZqSdzcVNg17lT6jvvxCWwu1ZC6sdB2kvrLeVDKFUA
S2bgQhbZyMY+4fhV3/EwJfGywdAnZ9ddNHU7/ra2EIFk618LQ63Z6URXLbDgoXop0brJw0EkCkmT
r+IXRH+M3gqDXK8kp641/U4rAjXKpXEp/Yg46zMWALA0XMnuEQkoqHE6MVritQXjag5bjjkEFLwp
fbBAxV04AibxK7Wy6KL+szJKHhPz7Db/HmljtvugyE4HegSysPe+q9+XMWN/fM0O/7ob6JHvQIfw
7l3Bttigb9lD7ciZl0f3cfQiKSIDnrxPBEybMVLoPTFptcNBTB1CcqtviHPHgTtrHEuCXia9NHR8
xEdgaYzxSIgwTg0gYwS7eSNwRcxDlfM9UDL8rM+vjL7R1bZ84Epiw6uXhCqlav1cc+UijIatWd3D
zwAlkNfXZPCeipD4Xl7jfqoh/hYvSgpDuuynrFTafP40dv6RSJ2y6YhLbNCevTZ81oFx69q+h6KP
0fhW3R3AKhEVHdJjnkCo2xHOcTCZhiz4c/vKtNQE82fGU++RarwwVyM4wuFh3Ul34YmbHLro3jsA
RzYUC3Z5+/+ENjNVc4p2efldSicLmP3/KnUFssAFLQzcCxn+OOJT/930M4n1Ao/ppS52P7oy4glk
DB/hFzIFFjQ2fkiQLSdwqIX3OxXS+ow1HP1cUgTsYjr9vBsdHMrX2ng17fsA91BbjfSb0NOghIiU
CyqVkyDxfl0Ois3Fka3+xcGhppfX91sATISIDpw1oZABtoKgExaIIJWVSFJdOONA93OZp2M8iev1
SOacDIgYOTt5kP8ZrQokf6DYHGZCaSTwr1eMX4V8zC+UGMTRGrTfrogIhUAV0d/xQs3J0+fTKbRV
IdV+tHcF1cuLNyNfa5pif80o8EUgqaA4Yw34Jsnhk9uccFnkLGbVBIz3MvrXyJJqx3AvJB3/MCwA
Qi4yBRtUoJ1H/HLiKRjolgmQ9S6YgVyt0Kbxrlv36sD/gWZFsDSuGsY0vgIWhsbM5zdkSRpFhEU7
DwLp2kO0PkmJpqdru+J/D53erSZX8/k+3CiSvm0n2ykAu4a7/HJSNKZ6BYaFADVtoBkoPOJ2Hslf
RFW/0YSFPJCHNF4BDhVo0gpDTXiKhy5DwlYZDqkjioxJGfuFcelUNs0q+51nK1zo+ddEGIlQMR7P
PRtpoNcAVaY4S4hshDOcN+5614fDKve6086+rm4WyORKqHPrbdwaZjDQ5rqzT1ewBmKobNlO8acR
H99Yb15bULsB/mzpblK2pXyOAaBfUK1RZ5GuVFU4L1T/PQngPS3L/7cj1hITYGcfPkEJbowiGxv3
+NQ2htHnR5NvV/GmPH2v4GOMiilhKgY0v3Cz260pwoWHpJ7BrvOw9cbhUR+0I0p38Zb/YSO8WXge
8l9Nuq7aaUyt7Ui+lTmWlK4PDc/McIC9qx5cd1yZ3sYe/Q14Uc59LP2mSWKlbXAbMqFrPhEqEn0n
IiQsIbjyXfT7aqCCx04JvwmAgtQ2rhay1vkZhVKaGIpSS2NT01mzjnyVcXuBnOTUi37jGM5j2XP5
98+jB8C++CWdyYvnbn6/jKENuQpvbZkrYhEq9x2PQThQZNBkeI8r1Oi6DBF02ct7wz179l9mQ3K7
uJC/sEuQDQzSO4G3FIRHhm0Zu1uJ28y1i9YXyUUJKTeBoSIC9Hcu9tJS5/OmPv23Zr65M82R8nbf
H1QMnpj7dvdFyWZANLMJcip/zC2ocmogKGKBgN8K0BaRZXNh5Mh399PxeYLJz5xbl/gN98SjCIzT
aZFJfptgi5Of8Bkso4sp12f0FqhkOpMLEpAiudXNHmxMBvNei3CYRIHw/9NdRKe1EDIariiprMIZ
bSDGG5s/aucHvZdfiV9VCR9D873ztlu4TD4ZYIOpeyKg1fdwUut4wJJnaybRClO/OgXl+Cr0itFq
uAHoooUwGqzztx4eeNahqd428okSQzVKZUMSNFdHf+wvrEcI5DVY7icQBuQXhTT7s30p0hp7o8Mg
xDIvFQASHwkh0qE3NmfEixIpmtdqmylWruX9xmv1Db1ROK6VnbhsTLJ+qi2/o+L13TtwKTjjY/qQ
+1ghqE6ThgklB5igP6mmxGCgzhizazwH+aIyj8AgENWBHYuOOr+xzok5cQameCTeN9M0fJ5xjR7i
znb5us4iKfk04T90EiGgPJx65giwFDd9zKkh+F4Ibkau82RDzE8McGxKyYHFyl9K7lXZp9IBIe5N
XMxtZCurpHep/rgoJXXUtpwPBBTd4OVstT48Vnz2sxG9Gd7PuTazXgJ1zkyGo/saX9YPnWYC1arM
+4rPhzZQ1UOy1005IaGCMKOUk/eWCLcTU/lPwXeo/yxLkfNzn9x2Ro/e65VHHau97TlAW8NdgDK8
kGVk/behvmsbhL9KAnIaxMkzh5xNHsUWAaKr7XVIxht6vjp3McnkIij5EN/2yTKzAuIxXaKKBC/b
AmQeKOHMzHKx5IO/Aph+bM6d9VjVLUiWUAE6HU0a4gUGTtYFiDGZH+hyvXLeosrtAwY2sdzxyqb3
vb2p4xvV5vKxXlK2yVPM/NER53EjMZNYmf6VGQhVuq/FV/xvyZNuWE7wxVboPQApIkTqVjMhuyMB
3z9sVePpDZu5Q+XhTfp8uE1nizQryijq8VA7bVXqwCMb79FPIl7MgVsWoLSE8C56tctyGEzCed0v
/vw6fnRjjNB4Xs7V6f8vuiIDs6A+FggdUv7+X9OJ6ozezuNbsDvi9hWidIGehOmb7GQgQBdCRkqL
EyHDiG7n+VJoMNJNIMNKO//uQehf6QOQ9VYxxjKEP12kV8GTE9On7STJDmTdL+Monr5GqOLBMkVG
9v34myPZQBsfKYI0Z9SVyNOtXTvrxdPVtA4NIbIm2tpCFNn6O/H1GHDecvz1KyX1XL5kXa9QgsFO
b+jL9dVANZTBaLVRnrtIWTOOBMGiwwcxRI6Zh8o4pCOhf2O5iJ+NlreWy0rNnuYpcIkdWgsnZQeN
LiVCYgqBTfdC4sXPXCaRoa8FD8GoLUn4AllnHzsLtRyqqdEZwmK2+qPX6thHALQy8nf75Cmrsikd
nHYwXrlclt5LbDkF0nOb3qXVi6WdSO7Mca7/aEGTXCWsxqGZzjz35HsCNieUbfZxysS+dIP98cUt
FlSkpBLbjsi2mYqygzvtncS6p7IjtBPmAoDPrEPgLvtcPJlXCpvBl1fCOFIgurU1rXtBaRuKrxlc
wjxwx56d9IHVBH1V6ApUHylNhioG1+eupDIbwNN1DAQoILuqtrJwqZNXDkjzpHc6Bsz+Am1/DThN
PsivZYxPZx0OON7LSV1MBeOQpeMT4EHV99xvZrQ4XK8IM7Uia+NeGr16QSeU6KOElLtQdNCEdn1q
AlgKIzp+BsSiqiiCmzUAZcG817FSObF+aA7UXRwPWezfcmiJqTCuKpZ/FYduCZy7krz6LgBO9mjk
hVgbSY8amDLAkMcHqO7SuLYj0N/QHMVJkFDsk1CLnk75MMHwCUymI9xYbkrgcymgvAD1Ty7RLVG6
7qOEePoDGcW+bunEikXcvCZ7jERjFpZUmbzwxXAK1WNRSH6BQFnoBLVCStC1RLf/BKNC8jvnBA43
Q3xyR+/QtM2i7igLoqrhkaUayRJy8j3qiJAJNJX1V9FNV5fDqkK27o5YYMO5v0ax4Y2Dkzco2g1f
XXPRiiJRZgR54m7F6HbN/W4Zaj+SGCYy17fWGbbAQoNUvuaezBCkujgPJC8zLHJm1IfRtHK4djyh
nCS9ru9uaJTAp3dFhueRtIyDB2TJnKMfkA4YcgP8CCl8RgQ8I6jAO+9CVbZKednYBfAgDydBht6l
+2a+yrgtUM5BQOVODDZYJvjELb4rqqREZKfPXXxIZA0TvBL8kjlEJvl876Zn+eZfmrhQ2hEQIuLb
GJWZTnzIcsiz6tZnJAEs8RButD8mUWLRL6PtkBuAAmLsbWwfR+eYYQEqJVnbrA0me0bH3l4BuBvW
+Y7PAVBhosqX3BRqsTgAOxNDB80l+CKYCy/DTmrQyMTaa3iG2M7s1xsr0V9CFbuYjs5i85BaqVDK
yQsN+HdD+paIHTxe7CIvKvlJuu5I7Jo3RyH7O1MeG0MBRm8+5uAuGoxMb5niTzcJye3qVd/dvJ34
Wq5L6yofmSqs/GhskjaWSjgGkkuekMwIQo7bWozq9zrpOpDKoMhRMXt+LJCVz8uh/nVpwZh+ygJA
Ccpdxg8LGq/ompYIZwreCbDboXQEPmZZWgz/ue6C/dNhipH2lUk1lYvwGcUKNz8hZmuXf6YfreyP
MhNMfvT3vjogXBYEnr1R1JX3koi36vXC+dtamf6AHgGOzXyuk1zHE6/FIdaeyjY7sTC2p2KyXTva
AuFppJGcvfgs+C7kXtI5fNfFFB6WhLNZF4w2g9mKA4HQOpNVu0JFwxOmtOK4OqfyegiUBPKVImum
e+miSxCEb+56KFQxYAlLQXmBYEs84nTPMkxNK+2ocXpvXJ76pCAVO4TejE67Ob9igNWUvBgvNxfw
JabPDT/zxtB4ZOl0K3UCf2wbIa4rfHahIPZE96gqOyaCCHefudR0XTjWgU0Tm7e9VyS8ii5T/THq
VH9OdxokHI9QDqhvUL8B6ag76PpAnzi+OyBtaKXuEyU3UzdEFmhjISqUtH1eg3UBiW2GHGDOu1zK
g0ZnRxOLz3nWJrPQLbAZ+E3uTsa93YChe6+fe/cwUr47UHhxQc/fOhMryggovx8oiik2pPaINAja
PxE7Ck1Hs8Wvq7sK0Fxhl7fKa3l/nXgs+3LlzSdnQ9LJn09scHvzF70otP3I4EI/46clwRg9e3qh
kjxGf8YbHKZVuT8QVF3UPjmp09VGC/uJ7UGbjtPW/dYh3TRo8mqkxXz+2ujqlNU3eK9G1GLQS2vU
B5NbrX6DYZZgDIDPzPEZ95+qWdU40EYjRA24WpduKevMWw2r1gwWsAI/gA+ZtO9n0bltFEagwGgP
6iKkToDnand3MUx/aQ57k6dXR9xwiXu6K6tqIzl/WWVCmwY8Rw/gxF4JJDbFTCS8Kmuuh2eHT1Y5
5mHOAvcsMypL3XOBUJaXz31gkRiw0P5kxk4x9CS9IAZ5S5MG53aVm6rSwM8tTNRugr7kXHz01sAQ
tuxfFym/sLIdszaONVkYmombMDlg+CNbCUIbWRgIouszjrclyPLrvtyDx8ta2c9OVnXiQuPO86nG
E4bH3NI4aqo21Wx7d8TxM1bSk/3j+J6wiNZQEhRUmvZHv2syxBP5Mpoh8B1khntMfHeBbcTB/m4j
S6WxuWWh0cVHImMmnh/CyUNzRdSMhkzEhV31De+SRyhEMtHB4Rulfmkzn/N2zMabRB9EB1rFg2ZV
Ru864Tinub4vf0hYXgqDJ6K3bQFDiH8+1RvRPDB3wq76QCZ3O2TNlFiAiBP+J1MvlOxSaxrJ9Fot
3RyAjN1xGZDcUtJrBf7sgFRzdjm3cq6L3cRBpAhPiZUoLpMiwabLlF6OVaugToic6Vx5Y7W4stzl
XEUVepD13J7wPVcU5D/yfGF/PpEXCn7J1ijm8sfPULzIGrHmgPxb0P27ciPnT89nQ52w6sDFQO4G
48/219qltF+0EfkWX3P75VmPRF8zsvNbrSdmkuWcQd7QS2nw9HS3Z81GDG6pxLuJ0YzhangSCInY
vHQlgeOqmd/J8jUn7S302pkihGRhvxce2aKcQ1tq5F1w6E5P4XX/QZtElTIqacYylv2xdJwBGgTW
FjFyx7z67jX3qjIxWwEclHqgeR/c2r6KeI/KA652tzHZ4tcMckz63eVnFnLkZjqeTAoFDrZGwN7U
BjB8cyj8GhwKfeY+IzywConVUqU1K1TStwNkom9agKKQtaYkbRg+gFTvLVisYQUZP5hiiiKpfS7e
HOej/umk7Aq7cs+tW3KRXRGNcdGkEdb2OMopB+t55HH73ESgATjEEdULUQDWSMMRFSPdz2zMhRTF
7KYTzYrxPzRVWix7bE9Fo5fnIVJk8PTlrIgSKbsyt7Pr9qyFsir/IvHpIK1VLc0A2w92EFkY2oVl
muzo98UI8HorkpUl0+fkcXQflKg4HVSTQLLQvbPWnmJzHF9/UqlRH2pJ7eYvA6IR04lqazs2z32q
Y229BrN27uDtgpsAvcisqrGOYgSDtq9VdlZK0bqwDbJDHf8E0ThVAYvD4YcXgopQCn9vJ1MRd/9V
iUyEhek6tWxcpAffFJXplDlGcV8iJqavolMqn0h+dS0+KS4Wm5X2cZmXd+/JYQrfMcQf9nsAgBxy
NuTQOpx/I5dz1xaGjE0f5yY5Gv2j7kJ/QE67JLnQHDGzhYAz+tYwVVbKNgD7cYtgvV/0m3JL82Qh
v3LakFS077sp0kxi/AwL6NLUlQyuLhW5+SVXpu3P+uzzZvfsaeWtaNnaMKlZ4/EiFbrtZ0faSF1M
eVZwVTqmSyjKqerEiOYAxAKV7v0Txbq+DfdMPiHzp8j69WsPBOZjkTlKDpMueA6Gw5HNU+kGlyQf
on33JMkrmMLGgBtzMoNQXD+f2aQwRTZ4x5KI83EdqHjXOyqiOv+7xnnzF3k3AvBNkAfg1h3Wu5/9
xmhyw56Sp7Qk4AeEsDx+rmch7PpmxoClKKq4yEZzJQ1cDdzHUbB9Y3OlmH/k2k625uhRgwcrMeIl
skmI8Bs6YYmj4UB47rPd6HP5nXELHL3ayA1apFOZsN1wth8N15+0zlrDSDjzs/WhpigJa6EQSL0Q
4YuRdfqK4Vk4yMkKVhAwz5I7iTFXoqyTY8shdzAqvReil3yAEJ++YVm2nGouofyo/LNl4R1ppY+H
Ok/Hmkpvb1leijndq5sGG31OcajvOASWmNe0O+27P+DLfUk+fjhmNN0bBz9kiLi1pvRaO/ZYbmzL
gcFYzSl8yTozjlrvEw7xYosh8glu7yFIZe2UC93J7XeXwXlcEgkpcTXDi/cGeEoGbfI6uEpyGJV7
wVmVnUDCUQ6vFnarl3j52UG/cq2S9mFyC31fCvR23IdrPZIjpiKP5ZpViOgCNeEQ9FTZT4acJ+rj
VtCyP6nwjA34wVOKTV8R3NsoXnoGz0Ge2s9eG2fA1fBpP9pETCm9OFdeCLEcTBODmk4gycamRb78
lm8mInfi5Blb4HJiZx7Th/iWHYV9x2zjUm4GmvHwc5JX70jpkdMiJrzDH6br0vHvdGDCdF/Od/z6
/PpSXE71fQIN6F6EPyk2oPT1bcVYlbAyCPTzyscB4L5bVNwiA3YBQ+xZg8Cq4krT3n2M+s+RR5fx
G0/f5Tp7TMue7WaTIORSZ9kDQ9h3JEUwPhIt7yXHzap0b3z0mpy6KIZwoBaNQatPxl0NjjinBRg+
Faw2q2POH5Do2V2XwVv8OiJ2eca+IJ0je4nxJTgjeQW7xCrvDMsafDzY1NLaUBcH2sr1PBRF9uMc
iHsnpuEqNE5pd7U7sSg6ca+CqlBJjk9qVoF7WMu9oReZ0hdOaCk5IVhL+1Xm29wmS3hRLF1S1l6+
BwfUFz3lknk7HLpnnVd+PURmIN9xrbaAmq8X2u3GgtU+UJPwRElnzrOTU1pfTywN4jq4k4Oihp/E
y3yxNJ7Ggg42tSsJEKluEGC4ZlupGE3vGGOo+I8Pr4yN5so6L2PZpLh7z8+3hNVfgSDll47+cnde
5b6PYDiF7QIYkSNa1WWbuipUwSlcwes7kN2iIfAzF8FI9dS52on6sPFJYjEMHGQFkGACI5diHmjp
P6NH6dXM+WZwdL9M319kI0Hz/jG+KnJ5CGpprQY3gZE6PfhEFWVJ0K/ouwS0UdRwcmXKU2Jbp5Ig
39MjMHRwJ4MYo6+vZMI8sDTvHoaPJ6eBrK/7dxNKxW4BoMiGMRniCPYydmoXs6E+9dWdujZCi9Jr
gNVTcU/MwCJbRi0/OjkIM2ywOTegcFqNPxZojRZ5Lx4TjZcnCnjPETGdyxWJ5VNtOXEErPbSjCeD
9MGeSaZMNSwmHABLMW86A2eWmNuTt3jIMWPsh9yDMZhGtZ6jN/kiTJOsDQzMQcj+kaBwniy+EOFP
6DPqb2Ep6V4THT7vwBPlM5AKpspINf4bNV9YvzQuAm0BzWYTYETOaoQMzUjUdui1kunu2ql2IklT
8orYL7GG3bTVcsMx5+XNd6UY2uF1cXLgyOs+AXKL6L7B2VBMnhKR1W2RXNWcS8SD55djNXyvrEJ4
9ebAwMTMIGErIJ/AyfZP5KQfHO3oFoGjuwZRaapKsv4Kl60m8/XxAY1n960HOTVwIGaDhjjO+o33
oKmylZa3/8cz3Kz3ityMTASrpJXUcNKOHLcfg2vbZRIaAnzXJeEiaTWMrFe6Mteaom8b+VkG/sMZ
A2gTXaqtvyriMZ/imkNu0rA1V6l4CM8tnw0perAvKH8jZE8IwwhDQP3EDpWSvXweTmCYrckfSB16
av8IVjygp49rNIfZZBM2lkOc1CW3EsrVkmRKrgmR/2df8OaF2He4HYwUb6q/jBy5OW8IQs3FHk4g
/sjCIuXYqWVt7FOy2z85oIa0GDzHTPpyx2Tqbzk+/r9B0X66bmRh09ws+dOxwZVwK1VsqrIKliGt
A7M5G7sWAJ8GIbr07uaJp8lI9bqznzDfZMxzpIgIOsXi9OvOKB+lKV+bBjjfGxID3h7wJdeLqXhP
ahVvvmTXWeGlhX4iJOeXefUV1cO9LyMbAkxiTMd4d4wPaIYpxUmRvJAu3Aiahp/qrhMjcpSqNLMH
+WdQNibKgQLPtYkKc9Cm6o9nGWyXCGb8dC+nq94AVgYYlcY19ubHFBtqWMXWPHLw1NuxXR+CVDCr
T0pB8qpvVsehvHs8MCA8ilBrMGfpMw5BCMaiUKk8kJHQrtN5Sn2Y7jaAMxrz3xDfaBiP41Bn7jBx
35Dk1ZBxgZf6PIgb9+L8pBSeY8t5VyxpF97DoIvTdXoDdqePxnzDKGkwv6s5O+gZ0bA6w3UPRKwd
D2Aql1tz0Hi9xga3ww6qR4nCK1bISse2OGojfnvNR9jIyh/GOrYLzJ1WGMvM9/SpdxMq8vZUtq8o
ajFRX/PHDLmDpCdraQwfN0TTFtEElaYETEZK7ni9kBT96jY6r01fKINAeYgScD2jmQOdfi8D+/Vy
cd+LSLI6tfGEeo6YKBS20yE1Xy5rARtm+51nmJgCLRn0N6fhKcy9K+vg1x7hbRjpN56xaX3sEsCC
x+OkUIw14ZbY+qDyuv7TvHfL/LDGKkQdKMsIYmUh75SxgW208iTFwoXOrCQGCn1q1f2rmvL5ub8r
o9obIBTH5h0W+iof1/D2FdhEr6jHxK5uy4Cy2O0custYoDJBIpYL8slL5+4OS1w+owZvhrgNwUgD
4HBNWskw3yHUuJRaSZoYu/kuKvhx7advsXIEosHLb5QTtB0q2KNgUfT0E0fNeKGPMrZUrKvp0wCL
RL+CFbjp5SNcpniBr6znXGzeyiypDW9THEDw1CQP/28o7Ra0bbpoe7jUckntTrrBgGwTuif9UIiT
KRkIjEONt/2CuTfYU+uTzdt0Gqz8LZQVU23yvfAWSg4Tac1qqqO/v199OGw/d03ZAvqn0DyERJPH
vdC53hCw/eLlvolxgunPQwGfWkCWDXf+2Cm2qKQvpDuFaDx9sTXywuvFg4RNVRSLstASeO3V/wlN
bP+0hTAmiBcEI647jSpdLQowRUwsejmm9ujGgoHfSVMHZW6frLvZF5DRk+0MyNpFS6dYRAXJjfYS
f5tLyJHrSO+zO0capE/4qhZH8DQ9BdEOyxwf4nYbrULxgENQv16xVaySAdRIVBnHHUdzdfgD2rvC
wblDBXGfCUwEYTCsQlt33IK+VzVj4Ss+bgWRODZqCBihMA7wCUc9XBGct8ZZTiuZ7b9EXYypnsU3
cZfUGFbGTkGpvz+MBA7iPRaItJkMqd4z6pe/ELDCthXE2Xjp9PZ9g+7cgcJ9OoS+xRdr04vqbAVk
2uZ6wm0U6Kt6CDu+iwT4kmzazMp9g9W2eeunXlpDx8NMQ1Bj8YpbIcx/9fuJdC5qJdA1AXvaT9qz
dqPjhhV/HWO21QRhDbqQZuKQ7nPkfkC45PsxmrfZsRhZK3emZj+9fVfGv0tbg57SykRflk0bt+qi
jybRH9X/sZmM1O837Zd/mB2L6aj7nyf4p/Yq/2K99kTEgxQt6TLf+LXjdx5yYc6ybPxJ+zDSTewm
EjHfnzStRlQ4DOnlqZH7ro9sFn3grc9ObSavPVEkAhQ6HXuM1UwBmVuC/6HfqOC4VB9QLXmU3erf
MpijTUwBpvzCR9evRqHnZlhuEcuOi7S0e2EpHMuCETeCN/d5dWEy9uggUZg6/SAGuaZvf+m5sOqD
K6J7Q8QEDm2oigKc6uKc4CXd7TAcXDuYnNfvB/RiM2yia4KlrAyZVuAakb3zh+E8QaZ69Z4jgZcq
xkX6041Yxo69k0bY/VMi2JG5qcAdaLc4Imh2Ork4jgcBQC/CuqRkcCx8qwAkfPAMHxXuvR4iu/AH
Vvj9b3Vfouz94/ZexKsqEB/Gyho3BgPqjKB+LHz87muQg+Obb+8dDB1t/TP5ikeRnHz0gUme9rCs
14+KtLVBd4HynwcBfAafQjhWtzpABOBcER/Gvy7d1O0vhxz/KrMXLfzTGkLcE3dghXc+BeWsxnUB
CNn6FEbh5+HUhuzfzwzqXuCVxQybF83XMxaqskFtyFmeX8eARSatVu0T5DVggh9n/OqNho559UFK
u3R9S3tLAYLvEB9AV9Aaa7nUjLl9HQkQ1bdp98KrtkkzeCU/3KRAYjDsyEgu9Ttn3nMqwv7Zzozo
RkhkwxY5uUMd8siabIKd0kbT0V+9xIKosag4rGsGgiVBylmzRlXJpSnBIQzC/JxmSKKQIEdEdyaH
LBzvxlnkAXuaeC4Nm4cRKg6fQ6rYptmv2ncwJOLvSnk+N6EZkQ0m0XfYp+8LeUVXdEK7q0ikdhdc
YJlemyPqfgsYGJ91dTeCVPM042aBL6aEDX0wgzO9sF+4k0ijPr2QDmHs5WJKfS6xo387wS2oTmMj
OVB+zJK+cNnt+DZYFLOuyuccWsxr1R9vXiVX0DrljRs4qXSs0i65z7/de8/M7Qiwsu0ySEBboaAo
zhr3IctNbnCE7WFVpnffSwT6nH/dLlh6j7S7AyyPymyFJbTq/DJWD642ulfAJSVk7gPJLaHsfFyA
k0E2OjSsixE5fED0U60Tj3TtpPrdxJ42ZGb6EOoaA6jexYoXVsHU1KrH2uH9rs8FiDdjUpjqh5/h
Mg0fXOXtvhcEZ9dl0Lwp6UFpTFoicm6KfQq8P8zQSVxIl1sM+dDlZeurgWS0NAnrAuYhizSFe2lY
kpFP74oKg/NYIsfwNaf3qAuyWK7xi5UNQKL1OiVcl14Dtj7Rgclokgjm3Bqq282P32VA8V8Qc8pL
62hlEDFjlxWQkLtdOva6rS/c04N/SVMXEHP2HuiCUrJJVc4HrsD669qfVBJcG+3xDmLoDU3xEbEa
aEeTksBAOzsz3aeW0Xj9oZwAoaGQUEyErYn/2GVId6gxf6SnlnUgAmUC0T/jjwGvHtODasldF6sK
tr5SwQfASpBmWK2Ri4vwxZApMY8MUQj1tRMwx+ksAU5cN1auGQW9MyfPb3PUYl0bo+ntw3xHtwrH
Pn91MyXpL7C+utJopAv98JH/c1sJyTZxiMTK4ww4NzkvMUv3q8O6QGwdGsn82jqg2Z1bYZN46uBb
LX7l/QlzzybJUtgNs4cY6Pdfq/bnSF7XtDntxXKNNvjdrfjYAl5y5Id/Kp4ZVkVgOWrc8ZV2QLD4
/cXaMIWfO6OMTKVRFU5ZHvwMHNuUgpRY2XdpNwDdb00fI10Re8YDkKDvaLELLubiWG1/JTd4tHF+
WpreHBi5d12NfdYLHEXL+ttwTArh4/dr1w10uj7C0sPwdCudWmG7Fml4iE9A2rmWTvWE4Joz6KsI
6BPIwV3lZL1VtEAJA7jdT+DgWFnAvEMiB0DBDm6QTvVGLQ5xPsLGg3OVX3cFrB8cquEp9Ljbvgwn
R2HUOLNbJCnUkY7LOF78l660cM9VXTFM7hsTc95mDOER4rtDI/irKdqFpQ/ZCXdQHf7yIoXNDZbL
ECo7ibmCTmYjCFVSG+P+L+zp3D64E2ay4XMjd9R6IaKjliwu7E8LQs2/sSmXfE0H3g24FGcGmeuS
DAQzhlEIyeya0/WnsARhMbb40eyGPv2+/O5YE9Y2NFd0YJYBSh4w+3KwvzKCtlgpSYn5R4kdoQBA
u6p+NlHL4tL2st44eaOipRaVXfP6E9tEvpRi6RFvEZoMiiCDQ37LRAUOZmhnU4f2iBW+EO74AIOq
LIvqgM3UQ3s5JifdHO7MYyN2soLJZ+JEg85UaYHBE52/4wNKzEMDGNN4PSuhROtolMgwTYzqgyc9
jfQHzto6DbbUMHNh9x21t/DOxXteBkFF5q/VtzDVRzNneAiMU2RCXf2eHEi+M+ivueMV+DgSrAjL
rUivoOYKWVXiYsnqJzxlQpxRQVWRem7SdhwDv1CNbRAv+h8Yy4+972cwJsnFKCFRLp1N7CSHUcFi
8QgRcsOvN+2C3Bmegw4wuTq4ZGFTcWaeflPEvtp/HWQRtSKviHiywhSwzrkNDsaLxSZjNUrFMvwW
AVZWZtY3+l4S0yLIaZBChFXFJPr9uyJJWWnD3qq0XuHOHzlclpl893Q9Xsduw7tltgN1F4Ft4nR0
hDcY1CKuxCAIbnXYEehUcwizBKPL0/aGt5z2NHJXe49Wq5/hg9AI8oMZk8WAXSJU8fv82MzvUIpi
OOpxk/PrFT+RNXrguXR+D8VJG9qeU2vWX+agTn8oOUORSkN5lanBTYVJYwwSuCZobG8ZyzP3fPhz
yVahiqXgeDyFYNn84VFGxlnqJ30Y1tmaHXzLRIFjzMRIB7oAC177n/2VTf//CaKADKOcYHzTzcpI
qblaUq3noX4BNqp0k12A1C/g4IqvZ4+v39Y1EXK/aeg/HmKrJICDCBILxLDjPu29wRBPxNVSQXpq
sKH92dAJepUWoALzdezgQFcfvdV7pXopzFAeKlhtoVe9Y/i4D0lwQUp4mzDd/QsAOdblOgTA2GaV
NYsoVrGge1/fSX1Lvi7e5HF7PTS/p5CvXryH/jc4+2MUz+DHpXX1J5ZgDk8cs1tG+74CckZKHiFB
THgoJ5NGWMfkmf9P+L0TWSiKlvs3seJi7FqAVd04rZ6tkJUhGU7NLOvI+0t+zNfsWzj2P9q3A7qA
b0SXctLIed/iyRSSFUxrPC9H1kJLWbeHmKX8foLZ1mfk/Wdt2vxfAmfP7yBPjQ6FEGH1snL1jUb6
/c0hfMWuF6ihWm2sgK9nMsBnOPANkA6GBdTv1cS3k26qGxZUj5ZV6P9a5T3/ee8kvSitVXYmBE7H
j3n+TSdAYU3zJZ6IUY2JEJPF+Ean68G99sIAQaOMI0PCkyzrLjKyW5+IE1JnERiwZOYWESKvPy83
632+N/Ly3TYxW4prlcBs3tiF1xSCWiAtI4PFutuyoGst+GJlclpnM84m/i48DFRF0gnAb/venQuX
ucyW+CIFVpMlizdXJgb0l686by6Xd5XGiQXs2VKc2gtRt8/Ja313RP9mDwG1ZEBsI7tGl65ZOKQ1
ohJ65mXxtm8teA5IxL/I/aqOH7+zz57NtPX1IKxzp1hQ8oQreE0QVhaDpX5FICw+SnZVO02kxzr1
2XeeLTfcmvU1FwvgRYqtkOnQCDFn6S1YHtpJ49sVLFOcZ7zFmkHrWU7DrQV02HsEk4HvKDs4eNj6
JR+xW2UsIkfO+Cs7FEluTvJhJgtneFYjVQsxWEE2dbiSitPkWb1MMIUP7dUyERKQ0aG/dKBkRzaP
5Edpr9LUmyFCdv+yMSrdIlIjX51NT9hyu/Sitnj4juDeHvTiVjAef/rnj/McdwXcxROYUmfxRRMg
7oTpSc6Vq+M+FhTMiNGXBcvU+RhkKF1LXeX8CxMWRaQNlMvKk2XFAwwO+0NA2bcPdC49KPrlqOcH
EqL4DfvJFd4tWdSwnqm8Lr6NNb3uFBwnH33jaW4IPZPubY38WIx5co5sqV63hCSIQZlPGP9CDvon
+ntE81E0EXRWFnsiFCo1xzowYpFL3Od/pi6mKI/hTdYvQWBvJEWfSgN0GUmAZpdeN2WckTajM8sk
ImXQx59iEwmp13r6AO6Uth86zPxkhB4eNG52IaZAXUpqyfvyGQ37xuvGxchQJ1s3EO3faLugLOLU
JcmSC2zW7lRObpp6s3hV6LfhlKQNhL2A31Z2bEn81pVHYpjsGlWTaerKk8CivPgvQfye2PI6hMqK
6GyDVt1l6ZiaBZkIh5vBs5HanlxylGonfS+smuSeVTmsMSiQipOFdlc1rwW968gHoe6rit7MGp8s
aBCMqzdZER6+4lgrZlz6B5V80hMY+ARDgnXNhTtEIzoP01fc04oZffcJ1XzRi/SyD+ePE2zbOOrE
Czj8269+JR/uOKi+3f4B1RDQV429GB1DK+O3VtU1dmRt4Fj8ys48JsHrDdk/bDCaVUChWv35fFuv
rpBIBrliObm/hSCdwcFATZRWzNMcHggdxwI99ox/1n9jcZ9jiv6R86Q2r6EdaXTHGjszqglt7dqR
uBqZa8kjkAGUL0+/pUzqNyRUfVSyTHx9FW+uSWHfrHmPpJSKtlz0+u8A+Jp3nmu2ffU+u/KHKuTe
R4BHzIZveLF8eU0My4MW3ZG0kWcWs6+0b5s1m5X3oz+L6P3osdkdqTXNGenlAwkmnPRLMr5O6a0J
59Ixy9w6bMqRw77KVMOMny03Bc2+SSMaLJbqS1tt6RW1zOmaoB1tn0tfpLZ1KRfDBBrigtps+tWL
w1uGTE2VTq3PnIKUc7UJBQikF5pntyNb0enczfXYX0Nauy02AUWBPA3CShaEgSxc4Y/z4pgNNyqG
018pwSNiblaq16b/YZSCIeiohkH8S5pTMnvueJKs4TtihOlJHuZPCwh2aZ6qdqXsHEbGIvO7HhZH
+iNS/V+N7lMsDtCuD0nx9rcQL+qmAzJqFft3VnhDUsdKmA6MwGeLMeRruCy8P/iS4GF+kuBC9XG9
ZM3QHKl1ad1K94S++GcHrpwDDUKmaGFdDSN/XjoyMYJisIYQ8f4w58Ad8WqE9ntkrXDTiAHsC2iT
1ZRXJ3lHFb7vdbIiTrYnpYZ7Q1sSnfo13Rs4eC8u8HoT5V91pTt7wfjjxqfNmojB2gmJ0S0n853I
tedZDoB9YweeYY+m+oLVTLsYwEGJr7it4hZzMA2oMww9pvkxpjzHi9sXMTJaLEP/hru51x9W5jLJ
4ZAQRfoz1P0PPQZUqHvrcfcXd42355tk/lOf7vSvbmSQ9FAkxQaG7wtWTC8xrC68Ds/egBhE4m36
L4hZv9f0f46Hxn2B0ryrdajiWpCoWwyGmuiyw/VHpAJdvr8Lc45xBXIvka3D7OseqYxCLE5IjC77
8QTZjCRMHnYfX28G1iWKpHuOPwgXHbhatfzz1uf8/Ijepc6MTpcOurgCqE3pPMtGIRHNbxntDHvo
5XuhhW2ZUmF977rpvdoeqB9HTqclej9vhmHYEqAOM1C10VZHmwnvPekotGoMgdnUh0wnsV8fQkjf
zaQVl9gk1/Yw+hmv7dShDUkGDXDvsd4SsPprz2159xkRpRuzkkgul6xIR9u2rVj27atg4r97OHDo
2OFdPkI8cjpeK607VgzKjlsKyHWyuAuGodip7CwGScCGq7zGmNc4zMddcpcvYjD0ZHSmxD77GeXv
yK1WIDeXaGC/tQ6C6ITPJ1uLxT+cKlnZiAHT+96k/t1dA8nkNj7jLHwQkmvmqQM1vMg9CYw7jNU1
SxECRI/YXN5iw+29vlQzW6w4BpQDTwQxUYiCI99aU0wMEoq9E6rkC3g9I9F5GZ5Ucp3dgynme4F0
7bSYTA38/fK88bAGbyI8ET0B0etEx5fb0db9csngcol8pPf4JUZTKGDJQLuLSeJbUdRN/3WDA84j
qpV0hyrdAvHHh09r7zNfxOZE3/8lkCVis3DDnPY+29ZE+qnFVfVoWL8tVPLhGk7vTD0l0rAUdhPm
jP2cQTKBl5zgYoWkxvP1brplZ+RnTkYZLrhm2tX4w6QIS1Tng6DdnOj2NGH1PpPTbro9a0CK28AC
wKqjNSegyfNAcrjdOjjeuDWq1kW2kbyIudPOcQNEjh1bGZTxApGfLUixtssMwNosasJk4q4xQquE
VSDunxaDz7gVNVNYn7wmuN5azbDi5ZeNsgNqNIWwkVXErLRACSxygOUYakLZiQBohir1/o+djppt
rEGlCF0Cj8XUrHP9yY1CDBhVxQpV07kUhuxfo5XzMyM6P8Zb6qCxl3AhLxXb5wEnvXGFGKvUhp3C
yASoWLGTtkPSkK9uC6QmWalRc268UU+Xox6TDYADK5xWkLjWEbz4XBf+FI8z5GCz+WBX+HLd26Vn
oex9c+Hhq7BUzmES2/RFh7GBfFureNK5LbEhtuhs//LPf7p6RrNobZ+PT281ZrkDuwkUsyn6MZf0
lwVlMDr4fI64caNqt9YCw4k90jlxw1pGdj03G/Ko5Fa7ice3i7YeL5IcCxWyXBlcMv7hFKxI6NwI
ZAaLR3yOG5J81RuuPf2o/iVSqEUtOUM3TrJ6cgSC8NzObMMtK9lSKlkITbmwW7zYzqOAdDiUIX9A
eEJ8X42bOZwUPRQ8VnMH4BmHfJrJJlPGIDViUYsJme2xIoWU8h6qEXsjYcAWNAfrfV2SKXThKOEH
6EzPEXkmiWZ+4FFLjvSy7siM2cWGLdqMmO52HfhX3KZYcIZ1TE330dmoye2bWmpHCdaPuJL40NTO
dOAGCg2wy7aaxQ5Ix5dNXUR4KkSYf80oZvunAfE+bu13Gs1B+3dP0Mxb/z8kaHDS/rwYO0oCPBI0
WNka50CF+pNfHKG/3XnaLARsuiJj7EvmAdXNKPbSYYYFED6tHYjfvl/VmTFih+2mesUcbUG1MH+B
iF03ZuIS/+qA4nH8vqoc0cVzCBxPaJSmfZGP0POIOQcDwqwGReD56W8aeJtftQO5MfaFt/O6otT4
U0Hmk1D5LPcm7yLpRo9cA1nnKMtJVdz2bUH9qvjhViQ48rgorwp0Fqd/Yry/4jVkPvBYngnlGtYB
dM9ypTbwf2ROuvdIDn8TpBLLWSu9RzIQNK4nkjic8x84a3JPC2nW7XGWizLOfmHKdqOMcl1fzAtY
pbp1MNWQgSfBREjEvQ3P/h31iDryypyJBEo10o96JMmrp1geIcNYwAMxlfIyXeeDL+C3uP2A5jmD
6eMWzXmnnlTTvSxUj6kkpt4ORozkMkNqaPMbcLvO62NpW1IWYC/5SMxqYXu2DuPA2gDCT5xrrd76
dmqlbqnpe5HbqfgLa5MbrQEA3jAFQUEpik60Q2heXXBYE1w8EVfmTlSOATaPvwhY/hrtvCy3UC8B
XRuTJLADAfgHHY1ZsXHTjk5xQHBLPFuB7xdCSsJQzKCLuw57m3EmiFNnr7vndqIhaKjZabh25O1/
UHymJCNIZl742E4kb3RoW43gjwl34Tsg+1HXinNZ2LBbqANlL7VQXrIR+OXeKnI2ZIUQLQ/Vwgic
yOxhwN4oaOj0A1ae1Wo7Q7xTWoK3aMJKkSI0N5IY6POAqNuVPtAqk+a6fE4ueiveUnSrFUz+eHrU
mkuYttrE7ogRJxMG3A1CY/wFcKcgN3mulebJQ33FOSuZLBoNyzyl1jyMGnSqfkQVwnP39pI+K9is
KM+be9VlxgpqYpKBP0mHshVLMbjGyfIP+a0A9h4/GdRDeXeYjXTirxTOqOlAJfjDSFyJgxIpNhOW
PLMilfPLWrJaxEofdidD1MSVRg0UDuhuwxc1S6rJvkOghLmPoEQ9F5WFLRnMARESCEpvWZent0fw
wjE5t9DI1rinuAkT+EcePjim/3tb7zCHnGmY5MawcheoIFYvkk5vOerYts0Ba+N8FQTLiyz+h6RD
2jaSlJTeF1Wu1jOa0B1leGEkt2sXkJYbzKODCe7IBpBCoZ2vqnDXV9t2f5RCaQ8eHktVWGn9zjae
LlyXHENqPYt2yTTwX1bbwuyxwdtMC6tvTESrgd+M8LMKL5Y/0HSWn0Mlxr8v1scnyvv2Y9VPvenr
gONrsONFr4m3LSgnp+BBxpmJnuC1C8ktu9D2O/1MhBeTxRQrmm66bUuLIFNjDEpNHC6uxp6VrhT9
lJ50LkwMfBBlRDYdGWQhDLex9rJnHwWPqc6XpoPH/czUbF/2lLyOYWoRbvQB2ArJighdMJiLETsC
wyTESgNtMnh6GZ51l4cJPBb69hDsL/zsK8wJcmSFI55yLG9S1iG9ujNldCMhITXAcLuAcA2WDEQ6
lYwXCn3zfI7ZF3s9LgQt06ff5bK3pS03sWItgZZErG/+SaTTpeper2Zr/2xb58swDA5u1TTOfkW9
lNp7JNs5xy0IGGsDg4xm0Jk+TnbbOA56GJMtrKGWhTnUHuOmGZCd0D6XI6Z8bvl/ag/rZoCsHhS1
nym2LZTyUwNrGHp6egKnYC5Wxv3jfD8NZMUzrH2A7Y5dgTeLmfWvnKexY2kkQCDwHmXp0838oXPw
99WgC9Polb8CrANPWMqJusyyhMdEk2i6bCo+BvidYTY09/3aswwahx/t17pfh/dDbUB3/cfGXNek
faVNnNfX2m/EJbeZCyx3lwd0QIWiJvzIBrlKRoz6tTnRw+macn/QknfUmCHwnq5JoWGnmPHLVZD6
jM90Ieywjc688TJv0XPv8gC4WdnTiYI3kNt1TM8XFohL4EoaL4lQp2tH+VJ/mt4fkzlRchv2Pr0Z
l2nZiGY5HC5h7DUuN44YXdKV6FNbi3FEjiQwOpW/dxcTPe8+GLGeU5GyCzxNh3w3Wg5Z6ItOSCFL
5cGFZ1A5f85JyTA1m+UoctucrZaaWjAtO2M5lAdFnPej0FvM83vR1kHV9jlsBaKOZRt4V67fH9kj
UoJM0r9LxdG7JS4J+NOqbcy2DJWeDHSn8HpabUufcu/8x31VOIt0yCr+/H5ncgK1Q+g/rxzbdV7u
hxzHDO00TFSmCkVO4DEqy7Hz8YdUXDK8tDnOqu5DgILsIMpee0FMT8NdZNI5Uun0TM57+HZBFihj
FHBiMikpfbPFKb9Khq2yX+wnORrcw47ndyR/oUOhSvxlX5UPR+MxhYlEgsKZEMBANzJxWdlKOq0y
vydGeA+K94wLbnHfbf7C3kZP+4wbAn7RdIG2JhcBHZtBp06hJH27jYEByXvbZpkppE/EmjVvnWnU
A3HA9F9vNdZAPfLlLft89cd+3k7m+yLNUlT4RkJFtmyD1Cqqb9AGGK9zWbyPHbiDRS33QZpk9Y9n
X8RGmEA6TRYA6AZORtQ/N5e+9N2tH64InDNjg2yZ5ux7tWG+G8OuzZteCtqQU+NCzN0/tvMgrxik
dgmc11G+39q/RA4O7BPXRt+7VDIRZlsXvG9sLetWcAcklS2k4bUUcsQlgktMx6uu42DovCW38ekL
FNjPhig2uGCfJWgqc15eXNQDQ4pjEGVD8ZyvJ7cMDhpDwuorbUqZEhzVkfIbpXh4DzQlcEcN5x15
hMliipEaESwct5+wfIPjLw0oN+FPYVp0tnk4CSqFKJ7n+/pwRz+GErA5IjmboG4E+sLbmmUPjfZ4
SwmwLlVyHPaYuwkfbKUj+YV1lLXBhVaQx3lu7PBBCQvZL9y1Wt4cdKQSr7EBCN7iLmZXDXmuYplW
es31iRp05+hrwjUFtDxptjwX15deqpgH/cuaVOy2UyvnsGVxrt4WBe1WANJRM8kLMT+iXJDp4Kxu
3V0ey2u78AelewXT48Y9SHPTas7OI4BQzw/GCnzzYy08SvMR8Ltgn3YmrOZ5vLbVRH9K7Oy2yIRe
R+JWu893LOTa72uMFL3DhluA0XUrWZHOm11+6ynK6jal3yCZVMAIFOKZnlIcvX+6IaHrZUJ827XI
BgYQVjGNjNK42bgPdPAp4PSLrfq5lHQHNBMuzbuSZA/T4d20DXR5PZ6mwP09PYdHTBjTJn9vDl3s
XC79WHO2p0Ml9WWlDT8aC9zTGov8gaME1LwSfwVlAHLgGCkW+Qe3cPS8o//7xuNa4WXgLlcGM3XU
+mRKtDh6ellKa6LO5Je8wqAunzBf3yFq2OaNo+T4v13CXSn18miOcwwc8UnJHI+KJFsAYG/2AKNV
l05G693ZjLHA6Zrle3/LGauhLGvexco/JZbBugZXAnfk5bEf/LHQVscmeAc5I5uZILc6acgKOE/+
NS6JdQyv27dGXxZAAIq1TTB85hsTgE8o9h7nCyAmaUyk9vHWWULUZtODnzUzf8oost5QVw8wjbsf
8iPipic0j59khwZY5nXsGgVn/B4i6xlwU8BHA9PrhggmFrrFBX2A6zroG2xqKNeNWImHaj68Ycoo
M7J3dDqFZxr8KmQn32xh1/Aop89IaU+10fHPWTQ59yzaNQdodSNKs9SFIYNbaBydQx7KrsRdQnpP
Sf7y55l0eAkPzSX6FizVnGMlNEOitAmB6hEwnTHhsIn9V1e91j7TcqBoHJ/KAv0T+xYvRNgfLb3d
SPFTYY9Vv4W8k94yo7TrTGyIS/Sfmn7qkWpEn+VGa8RTdk5xywRnHKWmBkcGbkG1bGLJsOw2ZkhA
/ErGcOABIMWzg6VzjxYy+5pOy7pbW90gswoSlm2z3Cm6E3giTh3pI2GcskMNI2S8oPkBRmTSxkkb
lDrJ+wD9zuaqS9wgSTNJ20w5MejgI2qaVasFTBJghBgYagNKL3/WrdIWI7nsjVmf7YjgcKyf9T5Z
YsHUfw2R2VieB2K0DsyD8prOCEU1yeR4hUCP0Hf4yzfCxOp162VEYNtyXkVCDLLLHDq9M3wi2Wim
6ZpSHjbfGYFLaAH+dAQjkKurNK86gXqiYLCt62bVrRGJjbivVYQyeL2+6LAhpUIAX8eTTzFlYeFa
2d3WAucEbVm+p56xZVOeXsr/gtidJX3XokTb/XLly1AQPw7yW7dWIJ1LfiGC0HjjsvP57nd1Rqud
zZFxvkkY20NmmK5oDEtDkzxXbHIgB9yhWpLzC1Nfh+LZSAlkphG3Rlovif2JkVluIiuPFt8XtKWG
DMS5DISt2ifHUkbFDnR5jU6GSslYcQbmxyL2ly+4IDLHgnzqVPX6RDxRkJXry0vERfT5C+8JFR4W
4zm4/ivHJ7E75SxJYMa26G/tFvbELsxQ6TNvtJ0ZVh7LgW9tCJqBvgGLLXNqh3EYamPW/8Tka2Va
D2iSXsDGHHzj9RernxwP5BlmvCQFcHsUrhO2cdgTxQS1XVdz+jboAsmIOV262AdfY6QG948Visin
LUoPEphQtv2TyW7oEvCKbZoTc+K8aAiMsGAGdE97OvuWk+r65R3U87OxbCktzbnABGy0lXLwj4ql
ex2VL4I/NSHHPAafQlA9BLw2PGxakoTuO5JG0F5RYb8gT22sroFU4YpzroTbPJw4Gzn9jLNKupa8
KkT5HZa57RNMgP9fGYJSRLSpoP9Ng1MCpBtLfAArm5uAyOto8rJcpTA0NKU/fY003nftKMwZYDlN
r1u+UErOsK7fmux8UXA9RZmBA0raaEzx/MWe0jMzpmvsGV00CewGwdeETCl9nfd10raom6diq4H4
r92GyF4TtxlmZgFbUmuFIjrWnaXL9McG0jaHeoQ1M7yHheha0x7aUyR8fyX2SpduzJQdPLhC7e5T
VF7f7RZ5eu8j06wJi7kH0wkR+n8lBPEMNJLvGqMi7os5aEP2e93Dbdf/xTfi/ddwjdyS568kUnmS
eHXzlez0g2vMHhZ1aUJiCwuWOmDZS9g4PzvVIHpO8Tahf4W4a/+6fgUJxzbaApJ02EI29b1F8eN5
/hOD5ctFKe2tyfKeWqSI/dLzUsKw6BQsCLfzH5ikDMvJw+TybyaTGON35bw3JqDyijN3wiaXqzk6
h3e58sAZLr+YMapeXaNUxg4TymGqD4c4FW6m8KQaEvZ6uIvk+aszRLuo8/dDy5YrRxQos6Zk4mQF
U4tmx4VoInb5jfJa8FSvcO8BtZRFVBsGOjxLtVAcsoBtEuVyWvUkfsATAIZKMiFSZfJVGFbjFCVD
6KAcfgViZ09W053wdCOor9ICIJ6Ub+bxAaNEMVLdModyonSpApmxJQFS/izXZ90wcfIo+FqbKJ52
FAF6bWmPbkXEtviDdV3LduA08/4X09ylyEwOF1rdlUA/L5UvAZdK59rIbgUvj7JC0QNKXuxDy3UH
F9GGmRk+BpufKFQfUxG0VTDRgMLEjwxKdxqeTYsk0NcTD3FZQlzk+IGivC0jbG4E+m9IRzY6phKt
wuSdH3I6c4hzMHTMSR05VKY8vtEELv9vKfA9TcJT8WYeVRoYuHBzmFmIuucCT16Atn4L8cOj6N5A
p1Vlgj3nuLsaWPEROw3VcPvUEll2SEZPGlcst9AwUTlN9T1D9TpQIEKmF0G+v8Rg09rcY5NOUQa+
HcwxK0Nq8LXzJ9aBWue7zWh44tGqwhDBNVD9sllPmw/nPsKDGUNP4MsyY1fleAIue8JX72Zm0/TD
O4AvM8tQxmOLNvWhKr3T7fWWagM6fCU41mLVwvKMYSfhD/WQ3MgPYxWkfeln3ZWHn865pHXe0GUh
SmLZ1mxZiFzgh2+1yYARVWFxobbCuzOaH4vtZtsTKNPxpOYQxC+9ERG5pVxA2LZgY6n8jEc3qdyB
5KXrBJi8Gv4saHHg8GuzABICmLH+rwtnhKhgK8gFmHOk1PcQSsWJoSO5NdZJTn1JmOTjsxMbSYFl
qPPjovwZcJoGp570fkgDiPnw5+CzEPQ+K1ja8aTs8j/DSJSLO1fTsufFAxMVoyvP/7ld2rbipzgD
QnfanfCqfB3A8mzP+QYeT1ZX33j+zb6tgcaQw9lCPM4OLRtpoC1Op1yWl5vQkCmJNUoheUpG2Cy7
rxA6ziG999jkZ105z+DQCw3Y9iJmRDENi9fZs3RFVPibB8UxmJ97OUyB8jA//UqGzEwkq2Sx3LtX
nabFovXOlOyCbvqbvrEPkp/sLQgtIe5Ao1zlolYapiNUoGaGIkCcEFmj3KDL3fF5i4x81aCjM2bn
0BoEvt8tAPehJCajLQQXuxNCp8RmyCFes2f7VQw1lTZb+hzee8ydnST/Y756zbDzYX0YGBnq0igw
7quo8cOc+sYWNZAcs5C7yRnEWNHJ0UycCtZLG+2NJwOW5Hm7UhcofCCfciEjN4jFUaLY4K9+tijS
ry/YxoYQaRc6K0ET3TcJYeUuYCbDC0ASkfB/Y85Fa+5U986G32i16EfFPJXMwloaV2gyUIjuza8l
Ak6plZ4dF48RFLZQKHJMzkb3yIJXTKgEF7mqDtp0uO6aJzXfBEOgc0Y+WpmK8/9RG1BKci6s4FL4
3JYSFMA6DuMwAhtP2CwiRFkYBLwnf7iBYPACFcR6xF+t9EQ2tC00pLyA8cjiDods3bZsN+V/bUAK
7b0WC2H645uuLHBRmgucWujl1EXmcpDTyXQt3SEIZ+NcxEFwr0pSZBPp/lpC1greiIBSlyjQL3uX
HQvLUGjQK3YE/7dcqNR1eCx1uo2PAGyG84YZyokjo3Md8RtJ8VJEbOpN0xipnUy/mFIg1KPHETLo
hBKoe7gCrsyRdh//JumfSXP/wS7nvm1Wlzscq26P1AqBPFei4NfcswrBByCf2TcaM4jGlUmn1oAA
JOAC2fcU8t1vnEV9xSQhQwHLtoeuKjWKwLeM+xsM1uJ1dT8aYqkwDyp0CQ+/h+3xt/gos69wIOFm
HYTrfhFOB2rD4mKqf6OxG9oxa6my6IPYShfP3unjdNjGdjxbnxEX4ZeCpPA5ab2oQGFfe7J0OKVI
sih46TAxaHkCgvBJn4zGcKN9I3LJw2QaOjQsGtehIPAHPwsMYWH81UuqJwFUtP9Dvc8G72jWRFhn
Oumx7BStwGZqj78qC8AsTfHpIl3nQ7hhwnH0cgNJ3xY2v6ooL2QGCr1z5DeS67TABk7dLD62feA0
oOTUm781bxoDWkBTDb+DZaDwGI9GoCsQZ5WMj/Uhsl5fjwPK3DaCqfxbcqpUpZOzrtUgAClZpgTd
vr7QkScAFUSra0NRdV8F0935LHbazbGxZo8WyvN8czCpP9BB2xmeWcx/d2qiQSEofz1zbBj5qau/
iqx8sWBEVtHACpGRdscGAAzGfu2vxNm4h34LuT04nbjKPZ5nFaJ1gHPVZ0egh0SHJsr2I8QAcRZS
3schjoP4GRQzcRPB0oWk0sHmQJtVBX+nWoosm5Muq26y1zn+WXd02bo9ZHgFPQzLaJ0i9O8axqYW
9V8z85cXH1trMmpZKewAm3PFY9pgM1kyruVMUgVXgOwNpY8FtjjGfZax3qbKEpbq4Ldlb8oqkbwc
sZwoxNtqZ769jJ4kCMQhnWxqzb7Znx4wXTrBTunmIUZL0p+F/EsDJFwopN/oIxjcpFj6ptnzSDHi
SgnQNi2wCmy470fMPQ9ValTsDFQlwpFJBb5h+DPPe0zmqDy2zcSrRoDkiwQFgJTH95HOkF/54fwT
pri7bz/zxYM60yUtqM5riaqFG1jC/Y1ahg/7KQNFjhEXPiDfJX/jNcegbHgmvJFWviALc8RxxjNP
QGHL3cNgjuMsGya3/zSyHvHcV2WrXIRsLr7Ye39MuJDJJdGtqSLYebI6tup0b4UL212A2irUk8RS
x/CBe3+7e+9UH7C8m7WGqlnXD2i/bBCWK3tFmmpPvInJql4j0JWFDA+iUXoQhYII5se9CHn4/1JS
CLpj9OBeeuc9SjV6CKy0WeL83Bw0wR3Lg+rok1KzcnjxM/AG37+ouusL4ytm/YWe3QYwfqOqc4lp
X7XoXQant3o8ghkwA2Q8vAzo+kZC7zluOVIU0oc+kwPmsxNMZXqfIbglHpGnPbDoPUEO80WSyDYg
1KhUbE0pQ4AsHLvjD5BePacomhd6qFnAPIu1G4Dh1S6OBr3CIMzelDPp1Ft0FPU8NNbrMNXM/oTV
VUEqUYbb0tFPLBfuDP4pXHbfpWQn6ko6GVqjAXlznpy/eNRRFQ3WEBXDDlDlG1VwQv+McX9FtJWT
AXps/a4PuTVza0Qavpnf/6vMX0AvaieVyeLAuJa6ZVOReNpdVsYfbI07Xmf5hmZbMCzLZHzdEuqy
ltxFWTYSahsqK57j1f0xMizMuaH30knWDNvPx+zTBeZWMDh2DsKDrd18ohmxOPN/zj91nBPif662
AC6UKB2ElkblBH889Aga/qmbGiZinw8bacM9CrqAMmvW6coI+gXrERQV+FqKkCUMHll/uaWXRCzE
4JtSLDoXpqz/8/Kic2007nRbkhXjuiTpuAlrnXqK8enR1HzxsQzgZ2yrQfsUJNt8SLEQo57TM6IN
gs4jXET0OGJ2mBuhtN2MU3rNUdvxXFMyzBtAg059i9kU1E/2svNjNph+5SioLhUeZPPnEfHPPnnR
wUsV27KEersVUa166XALRSKo82fvnx0xtMHXSvR95N0vuhnUHenccdvYMM5PYqPDGG2KOZzhaXG5
pMSrRDIGvi0SFozXCkcpRo6WoWfIscSUmsxEMlparKkECVchYXy2wYPp2HzQ0Td948HmzOdlsd6m
o65FcmBxPA486bIcdnYKwNJN+HFyNuOAlI3U4NpOrbqja3nN6uJwlCJGl42L00CLXh2vskLARnbs
c2f6z/pkZbz7KMBAs/FdNnzZu9qixC+Q6+BVpI1Li5Gh2vD+5uHyzk3/EfuXgpMncShGr+2f4jZd
uX7TNVXybKxzxQZm3Y8JzMLtaaVzsX1FOO453ej3TB6g0zXwirOSTC+mYYL73A2N+39+2xxgJOCj
tvhLSPaLUC86LgTOsIaRuow25veS0Bo+dAt7yhd7oB/Mkfzk7i+7MtK7mq02WMF4xhMQ9H+FsiZp
vQ1IklkBRlUmdKMVUDkFz+UDhO22MXI2yr10RKeawf9NiXBvyfR6UMisPEdLNAyTsRpmFkFzY/Ko
QcEP59YSWobOfnomKrvR+/6j270kTngptKZaJWMBdidMswr0J2z8/qnvYFiZYf0E6M+F4Ao48KcE
WMMitvu+ioFoK9m7Y0k9Wi3UFAz+QrO7wDCMNbjVTa0Pez9uVemQzDwbwRXSUjeZ4VqP3KgYQ104
SuJugsAQNPMgv6teYlFQbpRwuMdaNrZFMMNKjp94mm+3aNQS3pPMH0G5Ojs2gLSmTcq4UQnKNcZC
q07BwNh+DTZ5tU6cfq3nZsx1tsmfxIIDk2R34w1TK5i0q2DIE78WCaAMV4LKqzxaU7BD/Aklyd/6
/XAR9nDx+mKraVorXdBNJ0mNrcRs10dLKns8RWe0qKu0ojVY28LTUdId6lMVGpbYNbqL2wsy3uxn
QRa0KFBDA7SH21O/7SW/8+BJBe2P4T+xrBV55aFikD+Bg+pWP9vwp4L+lMF06OyT+lAHxUO8/N2y
fDENKeeJIQP8BZcBXoWwz7pIFxy2OciQ8To1TM3m/EqoBHfc2mHOnSvowrncndnvqemja3pFXl+9
+vulbmsbH+8qMREAfDR5QvO6KzlvUAsGltMRTejU+inIzQZm8YV3IhcYXaj33EN5G1a54K/4U3gZ
/th9F5Wj319hGK13niOPIt1eZU2sHGfvv+xdVzc5p9YMnE4vOkZtMNZjD1MlNwiB+opos8pv4jJB
+TDbq+gcKVdBpx0n1XuCwspR8nrDIv8toNqaiXkqFXEsIMh9ipbcUtnoh+8xUDftg8VXc63r5bBQ
UB6uMPhVJQksPRiCk1SgsSt//VXsyT1SE+/iUHFJ2/isK6evABsBHugiMCNCRF41l/xWBOTSGrjq
O8TIil5v2EMJ97SLiFBEKj4JLEQUWK89QbQEObMSduiNMrnlB2sztap5cVHJA3ogrua7vTlzUEvV
QJwe+kQb2y/0fSPvIvkq/TWwxqryQE/PKiOyhb5nlqujBYdqjWszmZ4mcPLu0U8ErrFJQJ3jtq7S
RwFCvNjWoiBGRCtEANbpTSl9RqnkfR6h2RgpzP870ot5aNbWUnsn9XiuF5x0mUa03CGlAgH27Hbq
FStv6E/IEn0RdsasFP6BIH1Bhos2PDqBno4dkeyXq+kCoBtNTUU+qZkIe8CgEih9i2FxUJm8FD/1
fkUF28coKI3xnry/FDfqHP5hqtu/FYrQ6Hn4PGXuZB+2gywL3TxDA/hRPkhGQCOXXsD/fYWc8CQW
/u2SnGBgSRr/W644fO9tXpl6JkPeq0rQlOA7SzMEegoXIyQjXcZfOO3Fqw4BTdPgzUSkv+KA5vCP
mtoyqiUf4WohfxsCapvnk/bOTkLP2RMxIwQ1qAboL7WiQF19tgF/5wqxzlgGoffLJe7MCGmbi990
pzi74QCPfdaIbNlHBnPUUqPr8qH6Bc6Nu5V2S1QUZyVjkB+KTPkjwm5Fb3tCz670E5WVsZRAiXkq
WOBfHVe7ltX2wcpBM6aSRc8+KBq+vNa3S94ekYeQX2HKFf+kZ1MeKzMoXExSFbVU6lIhmS5AJol5
DHQSzeUsbMPYaQBQvY6uGnLbWYQwUBUPj3Vys8bCy1VlM8B1A9l6Jn8SwgGdoit1U5gzXVdIk6fg
kSdS11qhG4vdsTrHZZuZVbdpbqs5pCpRnQeS43YyHcSr7rJxzmrImYFkDn83/uhDIeNAS3sEtMZ/
u69TP+CnF5j/xY243Axw6lVMGPXRiFJO1AjA+KZvPI/VgqbymnSNjn1s1tE3cqO15s/hdN7VGzV0
367CIWU8agSoFPC75Jl9JID3SGHs8NkGypArxEuCQpsh7OpaoM9r7eKYEPAWSGDyjDferbKp/44n
xkdxqj2vySxlUi5Rmo2yz1btQ26UtpmcPQ7Ku/vg02ug7z7OrXGkbZwA3btUyLMdP+e3qzm5vBlL
5RB3k4hl4mmcQd9DddZJ9Fukmv6JktAi+1MnZTWAXp991xbHQddXZLRE9BKM8G2RZIX/lwC2pAQp
v2bHcxPN/BcquuYsEDd+0xLoAl0kMbsjYrIlzK+L5qZOrdEeNQxTVG8EMR2wwddZQnbIROzGMYWA
Kd633Lh9/A+8zblLt1h+59jELFzOMrVpH7zmOwYL0Jbq32okDGWgRqMUGyUT98KU/AJ0r1gmecHX
hLS0WMjibd0i7wg1CjtFIAOO4tSmtrhnpyO1RY8RVaX6ShqAiq+NCzLxzyLaH/6rWmKR23TfkFa1
KDflBzsj3aPmtwa/TC+9ajgGBVFzInbvxBY/TP3OdztDKcSK8sP7z6nXrCfRWOAjUlQriuJFN3lu
4SKr3//KbhbbIrqp70WhKEhFJ5w+TixnmqU0fIeYW4LJ+bjvhGJukFeSyCR2WjAIWjne4fNkHtmZ
QA99iZ3NzQR4W0oeA3Mqb6bDYZ8ZYrdEkxSVF/3zC6RSovpFQeZN2iRfdxKSv1TOYVsf9bqiyfsQ
0DyhZwGVUkZDE0VlIDdWCZKZumADps4hAUWbDWllhJ9EgBu8oRj8oPmsXG9zTGNOdjPEBLgIl+F4
Ow7ZhSmO6YkmJuED2RonpYQOi75EhRcfnNoGk8g8O3TuuTXR4KWdb3W0oZsy2s68swEvyldzlDe4
7ecHkzcSgmem+pkmf42d2RqLRVinOvOw9U+yFna4qG8pnhrTW46frlabyYzgB0aHlcvJdEQkjfvO
OJhR8wxJQWO4bOkw+a2Ocht/T5Aeal+WzK3MTfqHHHx9Fp7BXyDGlMsxNDmS1p9ZbWYJ+7QdQD4P
jKlz5Cdo81y8asVJOxdcRgWzG0PIUt/MIgiH/1NZrBpPI+AtTnOObN9MdJi6B00uYUhN5NEO0Lvu
0IbVvUwO8fJfqToXoWn2BlO1eLO6L6v2baD+QCcRaXDhdvuu5LgIA44+8wmQTqZsNBicsKydMZxj
KoTOKJrISCXyT1IfdjKan7bOfQbxfbKf3lXogwhzLrF3aEXRSIx+PCTOn4O+jVG7qYZj+6suog0x
P5kVX9jVVBHBMNP6sp7uSJfQWLps7e6GBQE2NQsiWH1Czyt4apwTLA1ujPgDhX4L2Lt21u8CA8zG
wLB8WcdNcXmu6Tx59hbCnW+81Vtof3xTQZQm+PEAZCf+cDKzR8tWY4+GPSVygxDO6PAcMIy3ztyL
1YPu6sXCdTb7n7YpgrPxqdd+Ouj4n3ntgrOScZq25xzhSzlxKnkdomyC0Hq/PuqmNWvgMttsjy6O
/BtnIFH5HCC+huiWn3oUivrglfZpKUw1Yx7GGuMQ84qj9KN1Hoh0PF1xdgy3RmBL5EUqR5cHbC2V
GZhDWlZLzb8XEzh8rvTDajiTlF1CZyr57xr4I4OVS1E8ULDiOQtjAC/feW563Wm40bAJqmo/V1iB
XmoI25F2HVQBZKEhzWtgaqsADqKTM9mPLodEy/UfJp5CAZf8wRKXQJqWPdOAVpvhZngtUOvBUonn
/3fvsNpABjZBuX670BGvEykPLtfsz4HPyE/rrjjW7IFfdkZ5LfPhWqpLZiZQo7IjZXTojGUzSofb
F/QPu28f9KPNomnBuZHm4kk7DZZ9Q+m19dx7xVRBO8Y+MQRaVkyb1Ny0D72mUSiV/MsffJwmg4PJ
h4QUkhOHochyIH6av8pFLt+bf3T2RrvhctbSRr92ACaRDeV1CHLbsJfFzmkdOfCzM6xGwdIIz8Te
lqJJbv+sYYBO1Bf8H3ODDaWcemPAEmMaOzfsNwYdWgZybPKKT/VDtu/07+ItK1xqrogzp+3eCfCd
W5YX0rK5Ncti0AKIUeSdwy3GRlIPKQ9G9me+qO0Ww0RjuxOfvT/nZ/tjcIQKfF7K4QXBJsPXNpoK
I5XFe3eLHr0Psdhl+86qU/tSSRu00QArYWVeG1MnVGnV1cS5faV2SFQJ0FdNAer62Sqd/8OSW6je
BlSUHdp8EGJHrHfGM1SoYhDWlOn5qIEs0joZ2ZL2BU2/X3y+p13h4JMnH2x6bBWSKknge/mOCsY2
ioFoJywKlK3Rr45cgtmt+5XuZyp5fSNXI5qDKq0t4u/2bU2h+dkqfY02Rrb5sTUcu9TwVclAT73K
69exFAa5Gd8qpyKRMM58R4Qxu0JTgDVuLHkcL6KI9rGAou3a+7Yz/XG5jQXPxSSSqAJY9ouFU/Jm
lec6g+SGrxHTx2DS0oDzzLN0orqQskLgSkSvkm42aVpWWgWuqHXCAUkKCckF9tKQh1LRZ98unXkP
8BDUxzIzTQK4HP3H6m/hpxVdSj2hKNR5GiylFQuN5Rbj83jTA3B4OvMkmDhOHwQOASn+qlSXRNnP
7lw0O8NMi0cIhZ8kg1ByZyiUgBlBnEqyt0lHoaPWVK3kLpSBsAxngZMPhXrUf5Rc/CzZSnr4bAC2
xDdaHoRDX4QlqZjm6eI8Dl3p1c3JBPdvKwSi4wpeEmd7RJZ1eMUK3mwK3ApmpQATwbVOQzmn/lzd
gwDkh00bi8CNsG+1tC8nr8MW2OLFllHioxV2G5VnryG6WH5R2iV09f+5sklxwjo/NAkHfCr3rRX9
G5CQdWMCleyjkf8T4gizfjETb47IZesY0MCpfxz2VJBfOss2QATskKV/+ioo1th7KVmTmcIc6N0f
rSCqqVz7XhFfAdWvptqeOZ9laZKviDZfkTFBWu+BA72jMGS596RG02WAvbxbq0EJlxiBtMYQIm2h
SUzdeFVErHYRsl1N15cl9DRY7ekNrWGGI/ogH91t4FPFo/1Kuk2LJxPpC3mJ/UFT5JBFwkcggq6K
1a1ayvHsyrfcFsS0iq2gOwDPoCv1wlkLiU3LuJ9DQisbQamnaLltJl9301lhhwTewhtEeQTed8Nv
dndhMrNB11Qh6fXG0BaBG+6gV1nAXvuG/EI0037p+tievU8rvfU+D6mFJTUUMTNn+v3qOlwcJSDy
Bp3jDhR5LbyhkZJLN0tLWxXqpsv8RM4ktrht90EksWghO+gYMV0I/S67KQNODY/Z4PWUal6vu6hv
8Coq3cW2ejs8q8shOL/XKVFNagQUwRF+XwdV2/Hok+Dpx51F4yPnpj73F9E2ibzO2i99sFKHLlLS
Hf3HfoWy1Z4Gcg2XHS0VCEdgnokvdq6oV8cQHnU6L4JKz04MyZwnz6N5kIKgRnTiJqzBycEae1v2
MTW/Wl1tqtGPS7egWasYuv+8eD8DsM608z6S1he/X6PhsjwbcNaB50QEH3fsy/W+z8rvTaLf6HRh
rSIotv7ba+Hy7PSR3S1RxpgxZbuv4cvEkWrtb7Jp/SX1fo54PY1veX39ehjtbZiBMO8HLfEyleE+
SFzeHsKnwwrk/zywt4EJVdDcRITI2dDHRQmZniDi2OthIF4RVD4/wHqNjEx8q5Ip4O/OlX+BMvie
pCDrwZuJ43Qj+vZKziRvKJGoyy/oqvOCCtUUgKoakgX37J661Vw1byBLNxdc8hkxeIZrInsDnF12
5xiPyx0jnZHmYNsWGOfFiUCnh0SagZE4PPQlVeO2JQZmaKPnNXxgWzTe7+Sn3UYjgNnO6qOY9K1t
DSPqDeRfx3r6+3t8byLCIpA1o/Ih+3yAsZ/4chrcUDcYIUQxdRU9RJyutMIyelIJMGAvZKg5PU2V
tubzz3LlYLrLCa7wcVKnO5h9sm9O8bXgL1l8GceFKAX51x72X9IEJlX24nyEIijBOMAFHLTJmsPY
tLenWHp6QhK1Fod/BqVKojlFuGP7vxytYrGChCHF6DlO66CBywnkpCIpvbJ3CnwuGPbd8EMiQeU7
tIN89nyFVf94q4bVqp5KgwJVBq7x7xtPgXj1gkS5EFuWQT2GH2z57BtNXcI4VrFa0TtkHVOtgql4
TJulV16trS+wS5uKEkQr2IMbayx8vs5IakfoI/mMwdXq5O4+PeRc6tR85px2yOyiI57697j/iAEd
5QTUoV7gCxgZQIwt9tuVSV0s1T8o3gSVx8JA+AA7N+URLbbKVzFGxAabAFCbCqwoYu0AR81QupGB
o8BrpNhwImFEkuisbMxar0piNYzpb5SF9de/KL8Z0I3RbipN4DFNsRY9zC7wvYqkvuM8bTkD1C1a
UVhmDonQiZDMKmfdal4XLf0tTNxDmvFstiwngeV3NL7uXEPfcLGNBQ4dR6alUxpGiJMnnFFt5dcn
X0s8AW5e/ws0DDTn2Rk7s9yKNhhHg5+rq/ZMhSs48wr7cLrQSNj2kzUgnn+VFkUu7JAobEplBQrR
lwSggfmRLERgRCSG/nIy8l4scDOwC9hn48lYdyZJgxuTtnUKumXWGhHvHPjOsI4gYkaDZ5OlIwdJ
5cLDHUievInrZukbzfHxaF7Au3ttFmtt/DnogA6XWTq1Vaa15hHvaIEYegt6AuQOH+uGhHhEZDt5
9n3Eifd+90yzmjupMA8hfJ2Kn/EiVPL0vyR11qoiB90cq8vUXXBqsopqrnuvbLYyCpgNN4e1pmtB
4qSRkXI3VMSAh0SPJpxE8QkBfKoR13txgdOUKydpbGUYYap5zNSjbH+DFpWnTTzA326zUEL5riCS
rtHELph0gVDO1Ax56kxkHijzYkQarO2G6fuzsuJrFhPWMCI3gkifMCiFY7hFygHG93eERQnxHZlL
kBu3N0yuNpUhNipxea6qDa0PaJg5gvqc4qel+v1GtpVYI66wh2Iicxgl2dfYb/39I/qcFTaQ1YN9
P3M4ldUAlw6gEt6zdoeDk9ldQNNnb4v83xEiFYJec9Jnsxt+qKO/j305CFxZPVghyJ9PrA1K7Xeu
110tM989uhykMQmi1PSBrD9JgthrN/MJNXJCZJ/UmUyOS+i4VHlseaj2texyAGWrKZrQwCsbKFAG
rzMlpCFAFCkrzzOBEldn4Og0sGkRK3U6vBwr8uUr1vbJ6CUmIa4312WmVCPpJ+G4UznpD5RhPf7f
XSOQDZaQFw5tW7puZV77bEITq80DT1nYOesDknmmaIO4Qr0dPOzpo7EzVPGhdhY74vk8RzAPhfbN
v1agstIKbXBXyv/QzAwZSd5KxnxOHsjjSR2leN2lH7e3gG4zFlYCCV9NKQJ66NMqDJgP/vElokaT
fJ0lOw9OzBh1IM2dCZYM51LtD4yDqvh1lvaG8ZCMLGhkib521Bhsj/KqIr8C+ecafCpBEuZLLTue
4qXZLPzUefXpg7GY357hKaCdik1kYhLhSagz/y41EueXgiFSI2HoF1pe6zHFkWZQWnIwk3cX1Njd
4H45Q6BiesY5bYVAhc9xSkuZiWhBNs3MktMTkINPR1VVBPgc8oUiEGul11+LeFswY94+UhBEcDeK
1ljLiZc7kHsCa5uomXYn7kj4xT+sW6OISZcUbjXlWtFgFDOJVOk4kSIm6jAebmCWZswcypw968Ys
QcDs0JX70ur4pNFdi6uhDFJIEe7DlPY4fBArS8t7dIlrFamhGSA8Igd65Gqt1G2bHHiKWyaM9vVJ
mSCTtGhj2TX2JcnvGSMvmVGiJ7DJ6311bvR6JiXgt1nqLhRgwBt/Jkv7RQrh5CMf5bqbFyjIa74/
q4wbDEurF2/YOQ12dX3rN2OQjZKiJXHcSz2+ie09IW6DtZTVj7+7shQHEBPwiI5UFp1ksMkU7yO0
JvD/gYdWXqpJqAv1gqcUBDz+7FF/KrxJjTlGETe4eheV0eWlzmSAY1/KMU2Ev9cVl0xJ7/ncoHCJ
8hlr8STMPyDR6xamcYk1lkAzDjFrjH2nS2aSPCkZ4BLeXWyB5HKmYpS1wfKnn1aTEcjJ4m9ozpI5
f89K/Lql6b9LVMzHITi9bBnPohSuwZz1E2snQDH81/5iy2pHDSzdgiNVcarzgXKxN6arsRijIA09
BFkf3UpEQpooT+INNwMHlR51tcwaMWkL1YFdbnwGvDBBtC4jtPcOBECwrb/Qg4SyTFSQ2lUejpLm
8vMhL2C+z9JGXm7KgWS6zOKRQDDm5h7PGsRLE16NLueN6Cp4DUpaK2Oy4UgIJnbtNyOKi6t2/T5X
N5XlVUxJD0thXPNWwzKilRNd7oFU+EsdvUYyUIXnWlFOZzCoP81n5lx0qiA+iKwhcohfxzAKZm0+
oPIdRXTdm9aLBQc47X40Lf2ho41hXsrzB7IfiHH6KCPqFlYr3bW+idBbNIKrH46PQuZbkM63/fWb
KyGlJ74DHDv0IaP2P7vuoTs26tHbqnFKsH3SzI94rihE7hQaMXvXLLO+iY1BCQcipfl/vYzsdirG
Oicgo/Lp8BbF1ttT8tK2o9X69pAe8aTKP7qvUOpkkxghQH8/HZGmSq0vzI4SgFDu8foP6/rJUohl
ED92B8tiRbryFJpRvdrffeWp9i/ma7YD4gwV39C1BJUlxXJG4JH4R1gmIXCKOAZbQ95YQhc14Jaz
YzIe99xRSwNX5AE9hEqEErjMPhrejLP6Q5lUcdfGzL16tEBGz/PWQQOXqQbMs0+dXYb1wRPmlMFI
sGmYSeXfLpaQ69TCZJjkmPxmOz53U86wB34eVsJGoOZzshsdehjpfOpowUIUe6yCDq5Aj1weDzHk
4lBlPO3vk/gDLolKrB77FdgS10C46lMBxoUs5rkmSgXqq1dtYI524JMYhbtYB9RJRNsqDgc4iW6I
NWH5HZa3nmhk0rJFV81wVzzgJeCqq/0jJIzaRyrX4+19c0ikLr1PLP2sWIIBqQW4WY9jGtoS/L8U
nKhiXH0DDAIx8xiNqb4ZO3te2C1cdA6m26PpZ1cTV8HjEJYIuMFvbQUvQuynsz/2+9a9tfXX9H6Y
criv+roYjQXWPtLRrcjD4NSZBd/kZw1fMLy5/PycG2Xu4omfOpIBD3lNklVpKtBNXLQ+OaMCeK9M
8EI/AIDIzViEHKKCPIECU8UvffZM5OajJL7W6F9WGyBItOZzP1kdnfnrJrhj4Vuab0/6mzO7uAFG
iphaanqG06lAsj8OfjQd+bbTkwhIgwksZgfpH9HiRD0ll+4o3h3LKYqYIq1ByTcrQpULxYfGXQGt
re/pBDjraewz2bJH0XAsMGfUjX8CY1dfMzf3QuMyISY3wBj4T4VIY74+UPYcOFycjnGYnD2Z/HUx
I7gxpnFluqROnGNuME5H1q+3QywP1IoyAQqWjeEKEardb7bqjRDgDHtpXkgZQAqWzyBAOm04lMbz
45mgTUY+dJnZmYLxset7254qY+q+porlKhJ7dvodtcHMVXIxPf9h0IBPWyz0qfDmLp0YVgmnqb5N
R3BU0eDZl3gqw0Abao5zzRPFzj8frfICs7e9BIbaYJ3PBXtCHOFfJfoa+o0vmJmfjHvj71qgyxAf
dCMiOBmqy5I5Mv5PwHPN7B0GJpy9vwMwqTiqhf3fEhobtS2aXpprcUbjGAn1ELvcIZzeOcX0R01r
LTUkOfTqXyaU4ILJDxp8S2d9Uq8FLDYWqsAXrg2r6eti3a0ZTEbdJSUI2Qel3f2khvCYt/EjGz3D
shKyXaPB3+/xc3Yit1ySbj4LlfO3i+VC7hcyANpj1B1Jfl2Zgxy3peuZEd+VHu7jfW7Su1n2CPnY
2Y5aipQDpXD42pHvUMKbx2Rew/TKF2LauvQY+eybaKM3A3Xhq7rXoTIRkGAtgOJblE7IsuhI+Ch8
09ZJSJyzER3gv7Eq2jYNkSR3K3XwddQqqfzZLusSqrERv/f6RyBlxbDGCuKJYM/Gu31gswHSGzXa
3PWQfe6O2waVZcLvq+vfytPxsGQ8vO373BBwewnnuDv3ch6N0MmXDZjtZn3DRdurM/cnmTyC6hbN
o6duoVTjguydy7oS8+4WxnmKewXLx1Trli/c2cnlejVOsAA5LaDs9zc19VMry9cS00wZ9kBFNjUb
WFy2jJpXnOaRR7vVcsA390vZp3KOvCju1OAl78xSAR8AAGv93UD4W00gG7/j5TeHJok0b0JmSqhM
LXDBm16KE6++qRMLCQQHds6jMM6LuFsm6aglGd/nYEhKMyFYcyOs+YQSluJKRTLtC5jkRzWSw4yj
I+cra2IsObhodyzUxOw3PHn8J2GmatLApEPAQXy+bOKAh7uQwrtxYTdkbhBe4IKK5OYFha315WFT
Wra7f1jwxVhn0dqu0FbtJsBfn+EUU5n63m1xl2Kz16gYowKEbGFHxbxlG/dgvCZ0t6gC7tmznHor
I8loiLY5NMMyrN/xD/4RoGsLUSQl94dSfN6s36/3mfnfjXfD9KC53dyb732cWyeK6wX1L8rTi6rl
8T7xn6Bz9rxrM0QpMCOW3DgRk+Xm3Tdf5CulcXV/2ytxnfNBJuMuvhn49eoqxD5+0swPRx1w0YX7
mMLRFo5tg95YMlw2zfG+c0xpH8+zAqFZX4xRz7VU3/Ovb3benDwgRxXEWAHKw+gcQacyjwPL10KK
zmuOVvkvJbYHAqa5Rlk4LixrGNpDvmYDL96HrD4z1UwxP8b6m05p/FMfNQgLDanYa5mMSMg4uX3E
/m6c0nCb7Ix/HcDVhoQckYpE7/XDgDDPU4SBjmjj9XE0I8n/IzgD3m89g57nPv8SC+Yy2McRBapx
ZSfcJdjLO+fDTP2G75WGASnlNHvBABXa5s1O6aqY0p7bk1fnqzmaO+DYqZxyQt22+0RQVLFaLq04
FIAI2G/6YipyVVTr4sSVJI9WQ8c2zSTGSriEqk5UtZPJvu84tQ+yito1BdrnmhBmitz+vYlJsHrt
GhXIzvC0yFw3/qK2NWb5NSmvgComA1bbtxLKv4Ou+XNdz1VuggVWfBvgz0P3X/Ml7weeGbwtr8ro
KFAGzG8FxHoiNKuSdGt1lzGx3YKGnNWSjBOnqcwcI1A3aS483WaRaYkfUjoIf2gmQScU8t8JxYTe
W+wtD3gycuesj0E0u5QZ48xzsHtBI94XsZrdeKrINTHETnMf3nx/DMxFAz187cNsG96zGBQfbcv3
sxCS37x9EyQ/m1Aj9OyTjEu/3p1ovppUlOqvNAVNJZ7KLK2+IkRRCUdx7S15SqoreaKzks1NZYaT
FHOkJ8K+MsqkTgdE9j+Zy8Nq6d9k2sV6RpeQW5EKW3AwysnNf/zi8QURARvKpAG4L31Ax49KFQrt
CWvhUS2sjNhfj9UXI1BtfQYkdHokJktiziZRSPQ/lmvldsOCa9c28DArr8D7RkOKgY8ovFnWpYJb
iOccAG18Kez5K7xssT1hRtOep9J3aC52IFYdWU56JEBLgVPGadgwJ6ht4QXEN2RBjqWFBavE/bQD
L5vx6fhg83BFzzLOALb6Cu6EItrNrMsLoRCFLOW6PGr9/lkzte0Axl5gNkDeiAT6uUrPRDf05p5v
+sAZLFaWxJ2rXEgl4SDGvZcbGjLudT60YOMKWAr64UWcZ/3zjcbIJF+mUmLpc22AB0qjhBQY22EY
NnkIn2UGI56Gr1h4db5cZJvJNQym8CG0UGV51zmbrltBbX6Mvg50HcMzRxKk6TnTm7RGpWjAfe7g
G6nFCKVmXEuTjIh4cMb5VlssHJG6X8rTP0BZWBN5SL0t+nkh6ffJkDmTs/ABEbLgQ35tp3BQFm/7
B33bu02Im6/aO/0CgoDbVgV92L70Azr/bii1V3RvWOZ42msdGgh9ET5rFzb55kpsI7BX07h7CoDL
D88jItk0+y5cEAOZjALoAGDKfohCJEtuwLzaV4MF51yn9oZbHRWrZcPEM8+pEu2sch4XNTL8AQGB
y5ih6rw2P7x3VOvAbXxnmsL3ApvuH9FblyWDgsxyABEV1zcr0pxeQEzKH2+FWHAeeYkYPKUVpjX+
7jf1JAT7lX6wIeY5/Sfl9YqYPMeiVlgKyfoboSzLO9PeQQrKeZ2AB2pcaWkdWoMw7EPbuSrQ++hR
XZ057vbnQG6QPyMZBt2nZNpM4GzNM/c88XTtqvAzITK2CSomsKUeITZQ/eZCyi2Jm3WtlythG+ZQ
Y+AeNuJPcUmDQE934gkXQkULOv7K3A10BqkY+RQkroJrRoVjaiXQaXkplFG6IWMNztiu6ADTtUEA
Y8Bbe4wylDg2py9Xwh29e3x8NKjnUDx4XvbxWTvPHJys6BAGdAO5TsuqnKwuxJiWxjm9nJiByoIE
Ix4iP4+tsH9vl9I2wNEkpWErzGc5TXbcY5XfZ8PoiLskj8BzpwNxOo4UbzKBzwwmAnsSnrJfgaRa
WFAhbkjeXXm4BBUnWyImlu6DJMXJ3rF6UpE5iwsGiA0cL2IrJO1I1yMWwLnOFkeDCQ8YPUtIi/VO
Sj8AQ976yElEeXpRX3axzcLwGEkfbSKX+nDu2EY0JE7cy0rwJJKIv8V0na/J+2AsYkB1CZMPQhNb
7AZO35jJg5HC3am5m26uehUm6b/6hM8qDVclgb8uGBjwezjbXYbUDmz4TOxY2Q6hrl9y0TGqrxj4
6Murf9n9AHJpEfAHTE/pnsnKwPz08MwC8Gdyqif0rQHDamdot+zBtakF+zffkuAKYlUCJlVkOdrr
3Px34C4KE7+OgWovwfaUAlOErFa4Xq69sysxPPCk4nPQQmzczRMayDbx+sj/iE273AU5vhdeA65X
wj97e30W9XlyrtNvsrfZaqY04hXRlBUJIm+bgvGEMfCgt/H5rrdKqiewktYV4/I4XaRie8QqSLKD
AzwyoZw2ITfxmJJXunCXt6IQKwBOFxK5FFoyQZfFuvmTsJl0zMkxP2sr6kO6the11TdMm9FdgCCg
N1Tf3LHiZZjbK/GKBBFFrO84vREodzmxuRjsD2eZHFo8f5N/IBJT9yJJXG7g0lo9UsFqIh++paBM
vZ+ZoQ7yz1pszjeRIHYmC3E1xq+KI5gk8YmjzW9ihnadPU3HMZcA4B8plk+xWzVjkWsR4OtvfhBU
j3hBGDvFIYM2tQfie1Gaz5vmvBRmUGY7R3+gDTL0lPmDOd9/xdLPFUsdoIzc/QEABl3wkX9iJ26V
31ff5WpGYgyYOIb6ninIm6+Y8jeOB8L4xj6bNI/q/8mioNA/8FhDmSl9ONUtXdBCBn5CNR1g/oDG
+na0mV/bFclZM7XIclfQChMdJSD4gGqsTkKDgE2BtUxrq6i2IxcvoZlWwXxt84/Hul2N9GVQZ5Vt
YzTdhxTDYffNbnsaRGTdY9IxL43OaMAR/iqG3MpmVosyK8sI//VUk0OpLkPXl95QDL6OEKA+Fwq8
xDQTSjChjvokuUtUnzVv0yIcNchdcAkrW5wUPAtYcG310kK50E1v64QoUETLqnOC1O2RRDd6ob6t
Itrr+vCUSr+hIlkr+RU2McEeq6lnWy2NRAqQ2Kd9eyJNos6AQwV1fVxpx/1LGA0tq1syC1RMGswA
RBdFy0SQCOTo1erihPAs7bp5G2+CGTuUYWsxQ1XtHLZh9ZUh0C0n1/XR45GMOPkLCCrYLpg0lxWy
6UeqeyLKyO6sW8kbor5pRWAjC/YMev2cVkg09fO3VZ1ih6W3mQBw5m6RQ0vKRM+wzr98NnVPTyuZ
X/RyuiABpdOTWgSbygIwUDPOxTK9iweqdWFOiKbdSKT6/qxV8S5yQG8h1ORfgLihVoZwlenjweNj
lao8n1zYKGCVhTM2+pAwsTlBfZJUcWQkpooles3r8ItecPlLjity39HFxTxUXDkfUyDcqk6bRyYr
zHnYHb6xChA/pbByGkTat6cujSYrhuGCAfNt03a26pLMBKycJCCHQQkt6aFUUVORM+EpQoFfLHOw
w2V7Fgfid2S6TGcecvbsXyr17So4PgT/sLDSHiF/VFVD3WMG4j6JsxUMw+13TkCBm5BSRfRcBTm/
Saek2GtppYAVs6LcaoD8QbVfvrMTtge4azFx9beFDhH5hZ5jXasxE9clp19vi2hpmgyZep9+ScY0
hPVuVVZ4YNlC2ALLIbMF0mV1dn2DPQhE/tHEcL/kgz2asfPOXw/mEcwdQv7/79bI5XUTRiOgt7F3
PKv5ZaMzJlyv8DLZJX8cNnqxjlI/FFiEUE1fXocREg2AK/X7zMUdxhYt574adRJIYEnqESuYFybE
phMHIWOHyJpA5Jsi0jdpGjNMDO7TwfSncB/20D1WzTopyU4kiIEL057XjXB9E6bNfJKrAeMfqTiA
6zaCxN0Ars1i09URWkh4NCicyJnD56VbsKF2uLLufblCQo8Fe+N1mqdmt73/JFzf5o6HY6CsFPPl
dL31Fo6N/2UQcTe5ZqKvWELp3W1ZgTy2M8hVpc4xRhQbXOO4B5kK+4j2xcfk71fksS/F7eYyHNjY
Gng+CDV6dBTMIxVhUkMTCiHkjBH8DVMFwYyb+yTLbENua1VogogToiUzEJhoAI7Tluxda5lFqG8e
70Fz1lhaTk3jW/mUnPIkLh7QneNLWbzX79YtzJtRqfJC2OuIgRMC2GF+MbTTFtkvR7XW37gS0UrB
eumU2ortCKJ0KAM2QTFEslksbKDL5pAMxOzTZ5oZQeuLKqpV7dgwD7rq+hDi2BjGjME6zWAqYsDo
Oeeh+0a21BT0b2d1as7TpmMOfpVooftEL+MQg3WQQr3mEvTnjCMoC4g0GOVkLGILkZ0eyXHWq6uS
Np0rdiqRIlj6D50R5/kgWUwq2tB7qRlimppVy6y2H8InSzalxpfAkNbks3K3AM5KWLzUAiC1kLzX
XXC9AK75zUZTsM4SwSctKCkTjoH+tpyoHBn9HDjCocirhWVEHrEm6EBgSsDby/GMzsWLoWB3xQHC
rIY4rS50HsU1+1HjZ1FDyWlAnJOGtVM7UjhkCOmwYipOaG4OLlEkqBaXsxW6kBjYWu2/CERxYOny
PvvgVVSzBj0N6gPgELO2CSKrNXIRe8434G+gdRd9O5d3PngMi0bi699sUxM74rqFXtzq7BrcQTNK
E1Fu+sxsM1a9nv3EDgZnQZvT3jRKmJNTbIY5c+bi4pe/yEb53PW3QI/+VJ0/3n1V57ChQ/lcOb/V
BaPmMwwmWD/GlZfLxjTdsvcm6tX883AbJisL07uJO9zAXNPFoWQXfEt7Z8zfI1I/eqv24BPteEUz
kUICq5folTnQE20ODr8n7hx6LhSpOv4TdZR7iUYzFl4tNf2WKvwPVxih5Tz1RaQb2JWaX2oS14nT
Qk7guO8UCyZ/pLfR2NjpUVB6P3/091skDWCT2M5ADX4PHYUzyn7D1RPPbMRDfERo23p3wpeIK8nO
NgFYEJ159I2tINys0iNeES+IkOPkIrXulTiWz/frvNg97T4CBSNe2hgBFhOV75jQVLJ8VJKGovf3
dio5lhBOPE92VlpiMzwxVp35HViaT9foUlahVpJaqI8Y6GzeDWbqRahaB16FCo016pWAWbE2FaKj
wKk7tBELOpgtoglAXpOO3cyxnQZ+5D4sIifX6m3figiN+z137NVxZnfchI1Apdk9gJqkZJdP+/fS
JvoBROWSFLBpqI2PV5GIp+cetNArk3bftK8SMgkuzwKjFEi0ODgGabuzMBkM1ZjMRiVYs2/y3Kei
uXrc/+odqgKDv9aPEds+czwe4GUtawRuY05z4Oh8d4Kv9UxG+6TLuQ4LCvLxJmqI/w0Ve8TIZ9NA
xY81Fh21SIMH26LQNLP0HY9NIYYK0Uq8OWN7u9VxCxD1vxdtwtCa/DXeqKFnGBmi6CnS6iS5i8Hq
DG0oJlH8QeShqnTItiQU+LmmOVM6F9dguE7uaQByTIPO1/orlTQGHDlCVtux14HQLKFQU46dWEi0
v7yZmkxtIUjmebBO8y7EUIo3EDaSbHfKKdziDWm85Xt78O35EXBUPcA0ybOrsWo+8CGijWwsZI06
rUxN8mWrZkximSxnoM3+41qmO2Ahn+i5qXA8/x/87nzDeG9DVYjpJ89Exsx57LoEcgyHAsuiOBLe
YV3WiTMeTPZ/CV7m2PZVjQdPiYoSWr+hNum+FwQU5WVswesK9G3K2jUiYVqVzyR043ZvHGG5+uNs
r3HRtjWDngEg5Fk59xLitCxSTYfrLetm6fgCavQCLIft8iNKGzBQ8YraBAQT0GrBOHQVLC5zlqRG
CX0zNEW5HRuSC31n7K7CJJZYjQOjwQ/j5mhNdIc+tilQV8x6WeZgqh3s4J6j1YvrSgjroYHZRlYS
QFAqRcrnOWih3zb2m66SV7E3JCTrtvVBCu7A91dH9zhgbvQgD5tsFVaVQwzA9aeZiAqUC5FUDf/F
WBdYvai7MRbGVO33JbzCfNvWAZ0PXPkPiwvhThUFeV0ZweTChaD6LLuVJE1+MPN4PRP/5vZ89nQJ
higZBJkTqrZUMIH+hDTQigvMRGDbciYUeOaUsmT18kNt4sk57q6uRMj9oGQOHTXWNT6vIz0XsTtd
wLzxWHpLZfVyG+T/T4rvmZ+pNUl+N/a1zTvvW3nB6MxEpv80ZGDgwx0Obg+vYLtgXHnB8HJkGIJf
OhzI0714hBIiYxrd8IJjRN6En7z3oyj32UeXEGZx25BX3DmoSJCRS4ShMbJ/bDjMg3YDBNi+30St
DI3u8WhCS+COmE2h6LLqK0rtnte1bRdFVASphn9UGE+WrSEAqn/2mCCdgKc+DbjNQ/WNaQLgmJHm
PueR8p7JFYDaKm6YahrLD31NWukCGYDq7bu4i6o+ZRyvE5PsEQOeA6IgmHDS0y3dyfqgqBJYU4al
BAhOwo3xXrcnld6lxKzKybfQM1a9c4Tn/7LNVLVVcbk2Op+rfdFVNHg5WgJK4Kxa1hC1JzK7WRFw
FnykLkIz0Kt1g9J6tuoZUKM2g2fbnVZq3YTb4zzSj89ReRAqELQI+4Nf8NbxFvVjzRTFPlGmS5Ar
gLA+Udzt/jwsA1Y2kkRLMsZRmpWgqe2YJ0ta/X/6P7DbGSIXLZMTO5PgJXueBEy0IU9DpogTaT+H
Dm7gr2muyJMD6DmIaC9vgzdTrb7eyH/oa/Lh8zPkhLZnKRfw7cVakXxcOyGCm4d1dKMQbUOXfmq4
96dmc/nY5dijvEH7ELzYpyqZa8Iiu+PNhcMw3YjQ9VKmFR0DLaLHwyyLAERT5fkb2Wk9mcbAVqWS
9JCTmzAbElxF5krwnPHj7B3GESBskBvMxU+ZtVic9g7coKl7hIPPChP+vko7c7XoOW7iYv7/UCHp
mysYktrQBONCBYI9k1vr6bn58ZbxZFNBJoavdM7EKtgqC3Nmi1gvUzZCPY8whoZ/2A4TkG/0EfHg
30SIrYAfUwrCPSHtK/pOauxfzZeFsTaammf3tMFzxdZig8Yy49rcVbMly+uAHVcVhwTOMwddxX34
go6vTJs5pHSxWNw9Vc6tVhddYWvOZP51lXxYhTxJ0Pf7F8B6RS6+zjAvB2JNKEZlrDog95MlazX7
GniKkTTa+1pHTHtZMptSDLs/5AGriiqmAjj6B3QszHW2G008jm1oihVIQdpDMF8sDpwyvkiezY5F
79umDlkfQ+kUmok38OTu8YNYqfUYHNJt/vNBmIUP3oO2XhcEWfZT9lQ01KoxkiRh566vatMprPE1
trwdK9hsCUg1bjBowI34zO8ekrsuNcs8evwZ5FOdP22yvzRNL3R/NGqUB3V3VE/fzJ70OgNoUspO
TA2UuwS6vpmcSpJSNNN5EhFTARyb9ddvq6RZI/d4iWtPxy0nz7wDOGxVIJnZ+Ou/fOlc6eW3g3iz
NFv+fA6EqyJeHZuxKKHbXLSLLF/OCJwy3EhLXuPACJEFA4S0xb68R0ttoTWmI6OZ63PHc2EKq0fV
1+52RvRQwBhYh4JGVg9JSlwSvbCh5PsgR1vRq0L1hX0Jy8TEJJagMyR8VDzZdWkXaXVrSK0ZBFB+
jNflm8hUXXs/Wl0V4OQFtZiVQvd+4yolN6m3DRM7wteXEZ+2NmubwRbjxKSKO9G/c0ZYbZ6d3WX+
kfEJUIu1pb7RBBhOkfBaH8+Jj/LnjxaEQu7Mf5rHvE7kaWQR0dHXae9j9FfVs3EzdtIuuVcRt7xd
RtDg5R2GLlKsiyMQ6Z0Xm+ZsFFHjLmInfik0Lx3yvEIlPtyozxhAegKUSp7VVJKQtKxnEzOsT0JZ
8+83Y2G3j3WnHlVL4dj5fU/Kd1pAudDqojDMqFF5sHYnCLuoAQblJc6OpPYGwUHZUkhQIk7boG0S
fmEMApfgOAboZXp7USnUO7CWmxtEnr5c1BVLeTOnqqM4JNEWI7/sbFHL7crQ7Y1KI0jZI08Uhonu
ty7lxj2r0B0VISE5cAExn5hJrVPmnCzatd0n+6fYKzQPslKiYz5Wv5E4VpdDoVlxqPWVXUpnQbYi
XlJFc627L+q3BsKps/5ntY0qNxTNkDG5SO1ytjVdD69RcB8luQdVpy6i6POsEelGWRJSnZb5c2qj
x797LsiGJZV4iz8un/yqg8IZJuWtlWjkPwxbjZF/QrPYQe9eNOBVB0i1FGC2vzrUfDgmu0xajB32
mGcuWyT66Xje4IQxs5FU3MyLGXp+A7RoykEX07OEXQxIV4WSLP/DMN37qO1hwSD1eCMLpgGsyWN4
WFq3XKm8LVXOt8lFMy3+IDIE0JJ+j2YEUH7Hak4qFTlYMe6zT/jZkfEtV6I4eDfR5lRp7r18wfqS
yUu+v6aA3MnGwlhM/vyiQ8M9ofFlxt0XZZrcJYfAYNhjdTwvvXxmOXnFIiG57pwuATz8PKI59qyg
CPYj5k4R2NqQPOQTPhd/nY3DtHu1PqOudEGVGBacEnTWaiOmH+EWUpXth/Q5d3VTS6oxkV8/f9+6
qKEMzhhA+EDIatPDxmTEFErsewBKb5Mu8+c2M46XFZWPsuitZ1iZ8/s9gD46VqlA46mgMhieaDEq
o2KTWGtCRJQYx34rG2G1WmCW3lIEL4HMSYIzhBh2ZC7T+D5SGfjHhfvVMj4OoAdx7Uob4kqOyhxZ
CjkLB2JqM0SGOvI2lZ35HX2bkIVIhO2k3bZKB+a/cet1dhDlaPpKNnl9cXDXARn4SXoExgRAsMe9
U8H7aqaS06Up7ua8oQa+e9EF4AWQbGMNY71G+JK5pNsgB6HnjtVBnkGyWOqiKaOrX+w5M5EH808C
MxHCL+KtLQAcwd8fFkns6Fj5SFFkCvF1Q6lNdcTSvOWwiH1LXbfH+Eyl0U/tn+4qWnvSHWesDbAX
CSOxWMHtPH47g8LftrVr/v+a5BBkfvg3Ey055SrbaPQiqBnhhBPOxAiqYmBXapqfFaWQ7Odzb/+i
Ca0UzuzlrbRkXp0PcWAYf+dN8h5mTDrjwcX+Wuh+66fIn2VOMb4bz/+Ki1v1PQRqn/keL/iG2Kzh
OZDTBBeElbMXm/xCKkxVeFM8wywzTn7vGT+G1et5/ayA8NmRojLvlZXO8GdzrQ3mLnmr5VxgOen/
uQPgKvtSPN+kHXpxDosFoG6GshU9sYpvoqi8EpUQprvf5RhLwKCml3QBtNsTVRuVvHunwGZpr92S
SRMtcRjapFI3u+6pMm6bK+mhdYXkjZEz4Wj49F2QC99nFef6BdZ05PeM94Ck+OWnnKLHRq95Kuxx
Y9OMjuWchnv1bemZWAuOcT1ITMvKcqXNz14o1QHPQOJRzeauimlnYoxiH14ENUHlGQamONyO3Dfs
wEagiq711Lng/pCDn0NuAXJhWTeUKoSs8ER5s0bQttPyUXdhhyxWqKO37xXbRsaxCF/XPD7iUWiX
RwBWicjunXXtIVqtHP1Ze5UVBrWL06Em32EgWlr71IutT+b1gda5hrLuF30awdeXKFJgoeVgFxRi
TWyZ3SHzhVGifG/GJbz+J47/1sDHY16x1ajwIXRMmeJT0dqDpQKybM+AZUdSh/9ZJuq0X2XyN5mv
7JRgSIdB7IPMHQhUXNo35OvidVXMiPRaB1iuBMXlfYgPQuEvpewmgDOinkTWcVpPY6UJnW2HLWgm
lieLmmIlK3VGkXrRsmoa9UWVrqaDrDD+GkfMbvSka/t7uaziqE7EDLVoZc2kfKJvcJiaIwuTMLYk
koEK3VzP3NW6M2XXB2yEJMPJ+hdk+/WNJV2tTIe2xiQLpvsytJ0m1YZnVnXP1BbxcxFsf7En75fR
dNC3OdkNMLOJ2KRc9laoniFGdbWnwMA8I29beB++N689Bmg+Vc9GXf3Gh1NbMtYfHdRGLTzZesTR
2rcjJVezDIc2j9TcWvS3eKnr1cr1wwrmOXlbDoA1hnYM+wA+Joeaq1iXPJ4vhSa5CpN6REzdxL57
MNwyJbtzLle9P2+hYPpGIBIqV6qjviUkEDd4PRdspxxt/oluH9i0zfMQRxTueXNMCuclRP8aBtMh
QYWrtbs9hDgeawDh2wpkONOkgJLP1PQvjEIm8RUTZcBjNYOq292cVZR8tSFtGxp00P6pRNqWGgRh
5u883Pa4yyj7H8DP/jZhDyrw08K/M9U/Gb95i4BTnjQs4PqDbP0orD26gMSZbXmify0PGQsIfHlA
nUEnFhBBQzfvQyOjm79IHWCe6f9lwmdniOpNSbFS7glyMk6Ggy8zpkC/gSvOBRdmlsKHaiaWAvNr
6jlka9JZWsSbvmVLISDc0vPVwgvVeegjP+2apQFEWx+E15qbHp5lZox7kmanzW/Y36V+AJZyaUA2
zVHkcyCVGtyGC4q0A0qq0l57jEPTLr4nOt/zbfYT3N2etQ84F3Tpd/cOVkNfVywFJGrRpN9lKaux
vHkC6DebBR3FLypOlK2k9r7t/kjzhNj7NUIZQK1QzKp/+fepSd+R19t2Jln4l2m27Z6S7oxCxxzd
+hbf8OYMvXr1xn/osOydiASkkLfubAk7DkOWinSTaEpKqGPkkQqRCYxQsP+gNW6QOxiyjZv9QPlK
vF0ZoElx2wxrr87IH/XFkPjGppZTyt6M4I3M/KNHksAXNh96dCb/cMYKI3JeMTgCbDU88NZnK1cU
J8+nopf2v0+rNIn4g5PesEwbhk4cdPI6k6GYGXayqFPH5iNXwfIiofjrN9IRyD9R8uzkEUKsf/so
+EPaIdYax28naQgXR+gYywkUo0Uw+x5D+KcwfrLInwKRw2Qlmk2kJ2JUYPy3GO9M+OKzJQoJnQ0S
9Ud/TEodG33ePxr2tfifMZjlAM8naqpybEwhN/ps957LZGqYT8pEPn8EmxkdkgPqcYlg4Pdx1fUZ
VBeWbspkwbpiyjtJS/504+xFzQteQERHM0JFCM0yzQxCz5xWxnpPWqjIv2Zz7geYAzpxq0rNX56i
12PPK/uK+0vvE91KMaXvnmQe7sGy9WxQwCw8wYk+/XAZnwv2uWZ6Uh6T2DuRqdKu9EqoqA4wE78y
iSvIHh6k5Eq4CTM8i6XVfPDV3VhvqMQ7An2xl4s+dMKbAwa2zH57UpQk104FaK0USfLxd/imy/BF
N8aa17KaNwkiu4uCpAfqUVTsqtkVnR5DTLAykMn3uiRVfkxJU5lEa9eGeBtAKdQaDC0t6a7FDAnd
GGwTwmhT6ygFU05OKtwqHoUBZ9yxh97Bi6tGVIejK5R8+oNdzTiFaSrE/m8uegfvMLrLJADx+ynb
tV8EiUKQN/f5TXfxQ1dv93Db6Bh/4EoD9XnsRDmJcWC90mpKmIIoqu6ESX72eRJLL4XNhRwvf/tv
A6HcSJfXozBtnBAVg92I0QDS7rLhg4lTt2wvIivhrlV0K+dbhT2kBe4trsZzSXyaB+ZU2ddKVS+9
bLZAm6xLBaVkrId2u7hD0ft3Y0itNjZWrv5qoOWxiNDEzZR4H2/HkdvoSWQFNrYmJbewoZOfdB6i
m7Eq7sDfi52o20qTXd3+bKuyHAHgyTfZ+2DLcBIRjRFAOoOdbsOk+d/kmi/59oyRxaA/1SPEmQFL
PDv6B9XDM6CrrDWKKnxR5UlqRGb1ZKOxUuhQB91Cw78dbgZ2C/gXkxQQ9wrPY4wxvA6u1/AKys0Q
lnXMh4BXcLPN2zFGhlhRua0dm4Ycw0xJBx5hrlMcOqBAsH2DJgv0EUgZxOm6ruFVSYyqtObPZfbh
/0CocZ5z3ryX1FF7Sim2o+Xc2qgKR1ickhI2MHfd8iK4DkM+74FbVsO3MP3f8DqMHu1IUbsr6Jha
jyuWqwSdH0mvM98p5uox/QP9k0O80lwBZDL168duKW7pF2Al4NYXVjXlkyPKJsNqIsyuRdD5ouXH
qNUMzAwah/e4GbF8qc+f9TdoXaWMx6NaUto455TvnyNNWiAwUgdU78AQj3mKYPVFXSD0S5YLhvpe
DPM9EoVQEYyDFR3x3itpCcSTk/3YExfl//XlFpOJ6NRDBt2Zf7lgURudCbpCin1CjmDsA022FbQZ
f/Tiw4gPay/Mw6e0XutpGeocsKlactSh5II35b6UgqrETcFniJXS+x6bfzx3XhXGWO3tj/glfWa2
rzMMPVv1l/rRZc+mgZXqlPNathogn797hAu6wYSdb2PW1lfeoJEXayhpKt+5znx4rrV4qGjyStxM
R7jVKWMiBnzeC7HQ9qe5hW01P/uBqrqlwRlukGtk3bR5sA5HKsgOKPUk+f1WlNRa3n6Q3XSK/+AS
Jz2J5sw7D7OI0fGv9QmJsSBCNPvsIb/1yIWu7E7b6Y1xeassSphNDmfb+hs40ebdD5kWvsJVX9yi
5Pc1X7YRuNRBDG4sHcOHycl0tXbrXid2iendlSFBN+sfqV5mGf/3QcAwMqTJppGqIeWrSYwbKFP0
jPJ/gcTaNUxM/+Et7W0NiQVMihsIYIyCVp+U2+hj8KlTrnv8O0yXgZ3tclNOUMR7KLz153sKUnjq
DbotgW7bLNuRLTsZPXDUeQJ/RpNmQgtlnJ8UQn1liBNTe+shdSW+h4KGkvuPxbcWot40/AyaWqZO
gFDuzkxmMGlI9aGKgp5c4XpeExkMQY/7WD6/azyHaOYkthgWNG3RhEZen9eVTtlVZtRkjqlTdji7
dzcz0qFlbyitw7TZMMUel+Bv9MEhcKSVZcfW954ymRcayA7ijacu/jTzaIq2C/vj8bcclsbPPVLN
832gf2ugyneLt4PvY/ioUtyZjR1xLLukV7F606fVYq9hJY8Ll2jDT78vefyvBD3xk4PHYmJWGgqf
xQD533OOLGCagwgLaX/UcMsfrYAjILSVQrHLQsDzxr58MSzWfDJJYIEwMAnNwAxFOGA4lfszYc1X
lCiyqAlA/cHVLZEtuumzjLAl51ZGVWSABMxkgkdTTeueWAonPSRku1pwURIAd3ruYnXHVniOzZ07
EGZR8LOFIqY6imVn62GtbvMTva6Zr59xMf2RmPsNHEwX3QrJcXqYhnwP8+d/OkaGnKrmK6t1zMG5
t7ONDc66HiwKjof1pKfPI5b3cTFPq6Dh3wxGyMbTCxe+oj39ibss6DReFitNvTdVyvy3oxvVVF48
f+UBlem5gNFHoDh81qqta/9aGsdOtkCi1ivMKowpB0gq4SzQdPUzjfBAwn27Ld+LVtUmuELBbxGt
XMge8Txfj96sMOrzLwK27UaKHNu0nL2TIAuFZrLvdJS62l1iRJkX9Q4Osnzh938zawjMjCknUyhW
Pmibft/tsUT4RFHwaSZss1f1IH7HKXYE17ipHmzkrrwzlDJAygSJXvQXVWPqz8NGrQpE2AXji02m
uVdFhLje/LUwVA0nLpKIeGP4esmrwFif09BZqK97QdddGrfERm7WDG6BzWTmCqc/2x2ySCXFYDwm
qHjjgX0CyNaf9cSh1B//kXhavwPHRgPL4RsYePcoGdO5yMw3c5hfjONjJUwGG368//aDZR/9IoL2
mKk++PpQ7vqsOOZSF+Yujd1Qptzq8VbTWYc6/Y2bFmnqk6Pws8iMKbxsyo96XA0SqYWCpiOB5b+D
wXZ6GJO6DrY32MmX0/rUqXj9aOF7yefpirL9J9b7UTxp+NcOUq5dkbLYfHrRZh3X4Nsz2nH+vVRs
Iy7rpdI7VOfw05GcaVLFR/qCwQoMdKjkjAI0fB6a/lLXDSrIR3iMAZFBaKpxLxYM3NhEWRJs8986
9cV+GPDTNRcBnR7Ga60+eZ9KHdkKgwcSg6ismww9+RU7rD4ngWu2RDXeKclRPyfk9A2K67PDpwKq
4yfzlpFK/HP/9wBd1c4H7CO5X28R+FP3Ooq9N0wDwQQOwKsjkehq5d2gcnvN9JozTNjKV/3FDWKC
g0dAdfbwNMxzyB4neZibxH90JAxopqOm6dAw/79sF0eGpaTW0HbXLLn/tcziOiiAkIE/oU6MQ/+z
1i+fk8kLgfVo/eolhAOy8b3hEmZO+oLzVwa2BnEhXA8rlytipWgDzHvYM8jAVWICO4KaVITB2+p4
S2NU+zbLXncpDZJFdcch/tJFGnd1y2003/hhaOiD8fENjZH3MbMglYbUKxzJQH4rl3GNZPEVXAJu
fWHYmvMz2zK5EQdumvo0ecVfBPf7WfSA0jM0q8NixiUmSHGlJwq1imsv/Z+BkoT4lexxeiCHHXqZ
q7qJePcHxIxfAeRB9Ll/IWn0PpIoGSuFqrvWuL2nrE5CKu67npuadsGO9/8AI4KKRt2CbL/BVvVd
2h8SCJVea3f1Opr4wN1jpBVbR8oFj4tVAAzARHmWH6DCACh4b0VjywMofkjk50BzRE6v5EjujkYF
aQQyDL8P550Y2kmvY47/f3fbonf+cVSDU4ZWskGygCVVfB3OIDTSRiGrhOmAE3fkXGoOq0YgJjAQ
E5t+e9smZo2q2JJXQypDPnxjtF3YdhVyw1RKHGeVHYn1blTuDXcsTkkLABSUNUEMme89tBlNt5Ed
2LTlJDtVd4YTy46a3EXYLZql0GN0hfTvNwWWucdPuSXPTjuHzPMrjWJZxc9a+389agdZxjjLN8KT
lrgZnW+4CWjsMiJEwFwUD2UdHaqQSWnRO25cmxGSgYgq7KIbIEabxOm8d9XPot1iND+UAJqpO8MK
T9Z89vvfmhEahNB+i0A81engNvjeLJ8qWgwI636PkmwoaLGgBRkNoz7E4qslLzsRAq1kMkYp4FMM
pP9W3kJI+3iOkXBP5DXQOrVPMS7GSiHun63XGO3La+ZiWj70CiQOuFBLN3j69nVCCDoPUOzbGW6i
k4gMzo+l3NW3TdP75Ih9A07pli7I6ykMp01VjcBbhPuXGKY2KO2Q2aEs133aYQaSOmwPTC3ObiQk
ELyh3kixL/l5uQAfV5cRDCUybTiBK0rG5p/luCCZHHR6Cgn3LWnTLZAfDEdiC2zB7sc5Eh7ZBPLd
rBi/uf8ozh6+fnadj/mzcpsWfkOlP1TrIFGxQpG6F2+L1wZvzr0DB983BMi95eNd0QCaJHZ1IbZQ
pLGZll4NrDw/Ib0GEsuJQhhvZLw99iQrbGGB8udtQVtElIYS6gqmMQUK7ZMfOJiFtpakAYTtUFVm
JTrvm06OyvQ0/apaEvngFFlmo94SDNqXlL7/1F7ClkkDm2vEzlRuVCaU4qQE2nDx4IiyPK9bCKVP
QCox3EuS6kFCnY+D8NZ+l0NvXUDwrG/jt9oPWBPy4Q5KpH/exau8xQVz2H4oMxwgrHJv3fVdLXZj
0oxf7EFtW7qNoZQWqUNeCDvXfES1armSPLNuJc2Z+eeoOP/eRcfuvR9iMopucke90cm7zob/rUCu
Vill51dYnvSWCggtHiSK9ALMNR0RtVQhNw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
