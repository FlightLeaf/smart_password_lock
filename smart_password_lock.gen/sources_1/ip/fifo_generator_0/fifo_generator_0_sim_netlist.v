// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 16 00:00:28 2023
// Host        : xiaoxin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Desktop/smart_password_lock/smart_password_lock.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module fifo_generator_0
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
  (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
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
  fifo_generator_0_fifo_generator_v13_2_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53872)
`pragma protect data_block
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
bXKvmaAMjw==
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
