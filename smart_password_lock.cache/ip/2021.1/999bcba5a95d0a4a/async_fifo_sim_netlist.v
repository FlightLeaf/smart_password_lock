// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 16 00:14:03 2023
// Host        : xiaoxin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_fifo_sim_netlist.v
// Design      : async_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_async_fifo" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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
uTcyXhBFkA==
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
