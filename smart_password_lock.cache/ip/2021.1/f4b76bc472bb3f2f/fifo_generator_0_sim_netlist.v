// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 16 00:00:27 2023
// Host        : xiaoxin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1" *) 
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
tLCSFj6nFEIFbixGxRaoGGHBckvkLoT41UHNyrjALx4vnh+X/5yo+JSoXtHX44xaWTsCeqiTmUDc
h8IXoMP8tMoNEK1BgbRZxFZygkav3KqNMuyp3E75A1cystQrVGygEqt6Ertc4osOU6cEMgsNVixO
7P5Gb7G6TANOgOzWzacsp2Uuan4Lri1o3wNFSMAr+rG569kUa9LK0KLqS/4VOvdLiI/RfVh636hB
9XoV44SAfLiKr2Rfz3Vy/In9IepnGIcDAOtBaCBFDjPm3Fll9XmOZzlDkQzp2cMMEo/UP4p/2diB
8sTsMmnCDqkQ/nHhudtRvc9Jz1Pbj4/DzMg3l1AOeHCQCJhqeB6OQqz4opIUpO/aYOQBmAT5k3x6
WvqAZ95qYmZ//mOoowDyxfruhBidBk/yC0kCpp2L9ztWZqkeyb9wnNY/p5KszsmM9CoKwTPkcS7Z
DzfaY+MalL6TmzUQt68m1t7lu2ntUgCI6x/boptpgwf/38YUYS3D6O09haWqBNDxX9YV5KRFMPjb
HFrpKTEHL9/e6VTParVkLhi3U/IUmEXlx4l8dsXOA0O5j8pfWa+kOnWEpAqt1KkBNF6uREO5nkoy
EcaSjJeorQY9Kiq2iQkmjnT3hgQc20/gz4qXefyVs2301Q3M3F3Fk8ETFXaJmW57LMCC4ZPaNmHe
GHKh645zUmYfYOA9mmCRfZGdviy0suemUZ26R6vJGBvoUMobw8ggFxrtZAd+IgS/0Sw1nx2jMBNh
PwJgZWn69nysnLQfx9+CBf+eSuQyPvg2C0qhtAHTukt8Y3KF5Fp6li30Dq6Zd+NA2TzcD+szQvRB
yOfp2DHZdtimsApwcJSHJU5NgbNpiK+D0SSMAKEwlEksomKIuJaVlWtkwmY1ypPhUWhJEUQvcb6Z
vMzPL6RtclRMMvVKmFmDhDOyaF0JMy1EqfVxm6ybzEoSkegrciLGTP7S5x7Xi7KCcoPW9K6ZGBdG
Ib7KCP8qamOLYVCWH3c43cM1ewJK+XvlG0eOqmUJOEhRq/QqIjUvUDvb2XMAxAZP8lLlLX6WHGKi
tYgsImZHXoFnSLNYT1JC4sEIyNNy1b9cFkz05m91cgrA25EudoAd3aOr2XRU+1FQx1YLTqVE/wkl
dYIAKx44ssMv96Z1WYr4Q+FxdSwNXwitR/3EVaLosyCvdNAN7tbVM+GWNIJ6YKIoCDh7rMsyXb8Q
zNC0N6v/0OGZ33YGGlEO1i/9f78gkcUQG1l4HC0hvDSylWDv/SGI5dIP3BESRQvd97ARxQIqx3ae
0o0TLpElmBa2favA6kH09X7oKg7wita+GXK2g6G00vVH0/Ttk48jey/U8X4MJqUm0H5cdCWJ2mi6
dNAfQ9WpdvnTZsYZ5Qb8JctEEDhD4eMfYd7VdaP+g1OemdoFxxRAOYoCH8gOPoeWk9d6d8Ds5PMv
E0ErrqG5NT0wG35DRtq6qf7mjqhXTaw/c9cgM8UjoBw4FHP/dSyQqfyqelNQiS8b3TtQg3niK/Zm
EgBfWap2ylzUuyrhF8EwqrQrVI6OT4xe0xfimly4zUz0Xmszfk/PWyjRtet4ETaVmRiORBAnKBGH
z3Bt6EhMmNHGWBBJipAr220/oqotK4OiJIJ2RIct0GXmmnM+hee9qDL7GrP4H2Tcj/0nV+FFVUqR
vF+x7LX2DWITsd1dDZZaFeBj0SVq+msZJvhxIew9WZIGY2o0sLmC6GhtCUC2QF8IrEqHdyzreXwz
a+ziSIGzFm4jDLde0VHAxRVCAaxsDqOJm84T4XF5vnRwe3Sspg/s6c4zyOiurq7lGte2JXBD1uyv
wn3yiq/PA7G4qFihvSYCeU0MssNrGHMYW3DDuqG+DS4ZbZo3rae9oVVOsXb5ZbmGcUAD4YHklkCy
VOejhMJJvKriXHn2UUBhJx/chfubt6e01vX/G88/rUbr4KyoB2R2/NGIpAZGsmuBQ1t9Ch4FhjQ9
ARo9ZeRq4XQOPuMpptyj42AW8Ynt/QyWnC5rMJ0su8iFcndzlb0ryTwvMq/opB9bHm+/ypgAPLz0
JUXFFcauXuNiu6lANNlUyhxz6Z6EH5GghoISnWquOGqIp69pELcO0jBzJAr61/PT+we6gHdqg3d+
V8ObQxYBWy3Bmh3RXHh+sp9lIGYBf4quIocOpeOMB/WI7xbVcVVOCpIND9b4hhC61r4DbH5oC4/k
CS5K2WAyVQd58km0rw9+Rs4UURP+0tE8LWW1FQ6krHfzRHFqex5JM/3XfQ8PgxmTKKHEhsVFy3th
yur+95zSAe4MWMZ37NE/tVrJix14aB2tFCkA4wTCVD/pnRpllc95Wmd+uzT3Csj0A6WJPxQNMp+3
v/cab6nG0uCS3UD2Slc+oz/NOCQUu5mjXdQaOSmlxMdfAM6VJdYm/nnKc6W+aYB/woQfVdsZZPnm
4gxBCdbaYvCJP863r4L2TG9ZEB3bjbwEIOCx/Sd5NhV+qXJnQmJXgkXqoKXER1I9dWhqNE/fHsDP
cUggrVtGnTaI0gSc4eCXTmZbe+RraKZDtG3QNCbR4ySd8sCZTzLNeXEzKExXKiWbfWPfCLqK+iPQ
TmcfQuFPDCYxBE6Rxhl6wSDrkWqPlwNebp43AuvmuPsoITlLd5hu9Qk3MN/pOHV18fMvB9jGMmUd
aTasdCOcC4zWvuMTnjdiKtObvAmMlCZD4k3cNr38EPMJg4TstAFsBeNLtdX33DRgcKS2v49vEPBj
ZWliYzLm9LgYjAwje8Omrt0TkS4V05aUoIBV86hbZ25lb42/V2I/PSe5rRJ0BZ1vYzoeGotokn5p
4na1tRYbmQ/Xcgy6FlNzzwHV+dpNMs1ygDAb6odabJ3O2BmxrhwDKA/Qax6bmOHEeReEzShhMvUq
oGr2E0gtT/Gq6W37ZKdM0lEa5yjrWumhErdLrTanxtO0HhQobExKmtTn6Dr0ttoSAwVxGbpifHl7
obWBmMQZpvaSoKr+diWAE4zuIZjMguQQh7VHUUbGluoD4iHWedeWFdSh9DNTZjU+1ZhhpJELeA2S
QvqIWZeic0ZosJ/ykfVEszpv79aAngak0Wz11iG9Z2egbzHE5LHxoZcoquGTA87BYUwSKn7EEzJ8
LnKbQ38EoKCsavZHBG1xnVpe2nifDLBEWf9e7+t8Q4VK4iDe6zu2RW5oypJcB8sEA+fHFCAeBlDw
ic5btlqtiEMgi07uIesnpeca/gWlaR1rZJE9VgymnYz6nhwTKGZjpD8hOAAfHJDWkkMDxvhd7IcX
lj1qWZ1tqvMttepqaxCuAhoIZ8lGYHhNsJezDSGg6Xd1tD2TpdtzUIlwXx6Q1KP02WY7ydLK0Qlt
ca1v4Qbu9ud3cYhep8YH+LYsWs5md0tCEse1ggKEvuJpKypy57ErALkGYM/iMRQiOtBvsj1KgGbM
56k60RDUFxS1Wpns+8aUhdUoxYyGh1UHqA8rEVOdJ7iHdjCqkPfVffD5Ct/i15+p07Sb2zNZv0qA
l8tfj2FO/RSyRTxDmJkangQZN//7vRHgBna1MN5so501r52hKY6dFfOojaUWjqSPtshFRdmnRVI/
B6ClfEMxhSydM0bRzSFPbB+uQ1x6FaFoHi6tRtZoaRUMTvNhN/CPYrUEBSjMT8LVK2uWBINUgx/a
wbGlvTJY40WZl2QMWvWCpH3IjR3wnAWQ3IGMoXm01DVqyaYitxbnAoetprmxqc+l873ER/XFeCG/
/nV6KqM5s+qzKagHb1F1+eUWgtu6LY950P/XiDVUQYKjoNHgX+qk1bf09gFaSGHOwULviyrztEZX
tL9BGFAB+P3NXs8flgzg2lWL5LlROWw9VMl0Nc/a6rWBMiIrsFDBKmVeeGvlq1+om9xviTWuyAWK
5ZnUX5lrYFsD7Wy86hBFd5SOi2N1vNycDkg09486jdnO82M4jK6siQjYSAWqi13Q12ligRUIPopZ
684rYQSXlDH0FQmT0F0KCsFihCS8ZR6tjfYSTzpyVdXwRFvPczvRnuiou2IEIJMIsU39GIMG4/kv
w4SnG7ED/uiEXfmJ2kvn6PqJhjYYURJYaLBmWQ0r6W7qs/QPBYwQrS6lMs0MbJmFSB3/nY6XYbop
eepUu2Z1Oee6/hlusGzdy9QrVYcjHWaAlN/RYIYVZxo3G0zLzU2z/z7zzEghfOrdu5FY0VshHfLQ
6ep6ulQ1PKRXgc+8GgYHRL4gVbC1UAZO3VA87FXEoOHvYY/bh4KdecmO28kdqwaF1f7humC2QJmN
teJDQSEWnWOuXl2BkT71RC8IXajflqmFVD6d9crNfnjafR0IkNcH3qsssNRX6kwCrnyXrvMnaWTG
Igp1FtrUYzZUj2oG8bmpshGroZ7mC0N6Q/nqaMp18mLjNfwO/+bs3T0Cy7/OC3n6zxe6jzGh4miC
9gN2RCGs1H+U/IzesZTbYwO74bACoUFcg/zOUs5FWDAoABtAF51Df0uaZSYEAuIHMa4j3FHUyO01
w/IPLHy3vJGghN2BWxi6wuz1lvkEh8lHdhIJfjV++Txo5XdVC4cnHIUnHFlSw/zGg3+pgBFsQldN
yYEvSQnlJaAuYsKfSjVhDLdFI8WjD06ipFzPSuuc1XyEz6CE8lnBhl3oKYdMoHUBilp+2awQpN/4
8rYEoItMaAfwQHjjIIoea3YIp14m9v2Gx9ZSUKGuTz7RJcvPIvDfOmwG27QmHrS1DONGa/gRiqTq
l0zfXHU6QUZe1JrHnDZ4BaUVg15welp3XMgXvlmn54TYAsLlv9ZZ/hXbleb3fnqyTa+KRKbGZSqu
U4ow5eGVIKIs0xGGmAzHFp4jDUvBnWvlJcCeIVuxJkvBleZ8KGYtZoBtjefev4cnQdI7+DOY4r+C
zn7MuIcltivyvq8sCd285pbUUiFoC7YYtbO0tCS2Eb+z3vBxXsohM5xBI/6/S4P2o2vjcjIqorFR
WoFCbiCauifFXK2OjROLtmRrijGUaSmUHM4L3QOxHMjsbtQmys2otrtd8HLA9gME3Mp1XSi6PXPz
wZ4KYNzrQXl4wWyyOaMKT/XFLNeFIBCuc8R8CN9jDWhy80rOHgCtn5qTS4edB8RQpNwNT8/+gqUk
oisfiaOpXCZWbQT55JuC6y6R8H2+ry9FOlnIBc6Ic1p75Pg4aVTpTPBQPqBzX1qh+RvDk59WUyhF
bIHsceH0+FjR+TgHSwKPJOTnkR7f6NXICA2VeulXa/f43vaDns/hEON+29hL0ElByXGf/U/Pf/9+
rsg33ztvWS4jVhGxIMpgZwbOR2yTcBsqVhrFdERmrBLPC+0Bx0H1l+bMpZtWqXddFLTXpD8HiARA
bAMlSIm2rCN7LmnpDB4ThzTQa+x2VpXKC1cimn/eUkZhOCePoeeQvCDlArhL/dHzvB7Nv9Sr5qRU
IzlkqZt7o1aOI7I76olDCkBv4GXl3QqpXv1GHJPAP+ONwuppmioXX7l/XGCNSEYWp38yjK/9GOHk
seCipghS+qLjc9DfT9JSqHrsc/3rRA/LbxIylu7GfhTwDJq2lDzHdjbHAAGk1hOErl+ktu449DFV
jk0m0WPTgCDGTQzjPQqH0euz/h0cEfapO84yyItngKFU1zJK9fyBdhd0otp62YDtV442a4uqGmK4
TuTFj1qW2RKJELuWNdZd4aqV/dQZWgTtZBJEas4YZQ7KTaLeixbiWuSrsnw7BntgXpSu/fR22ZyQ
UrYs1mjZgEymflRjpOyikhKYJYEMj3JAFvAc8BajGm4NSXIdvr4wEOFTVhrHDE/wWmWRLGQhEcgI
bMX/DoI6723NE4bLVLsqNZQGdEK+14kdtmM48ON+IgFZQFe/hqafhudg3oNKYHc1uhOEMRkZHpEG
dBRu9vZV1BOyh8FfyyAxiaHj12oW2Vh5xTBlUkoFh93FJBDceKp3gXjuyZaE1DMIqzD2KfduOZtg
N+mBd9Q1hITD5K/VlQDax0lWMWgnfu5XSdsOm8zXPgm4OlYbv/o2ucRvC4BtFeuj18xX4D6let8q
ScfrSpS/7lXsMubnDi/xsHXIL/08+gre+8n1S3mKAO7Z0W2uXfxRyAqc/THNZ34cEFlMvb1gGXzt
uVO2Beb1T3T+p5RrXAyhjh8bFeipwCvffbH7OgysQpaPopZ6EinRbz+S+V2JRlDvrafWp3AI6yHl
KtuX3yOGOZeyhdpqkWjddJY6gbPGhUo1oSFPm6baDC4oRukgij9KAE2w+tIh5kwpsvXKKuqXGpd8
H/5gzpluYQSKksGTQcz/MZgvv/DHoXx+8L7TFP4pUVMvrNbwWF6tCiR+fEss39/rYDLQEE2trAup
eHD4xq/Iu04xhXBOnJ6tsj7ihN4uCaAagAMpGjadj09SiQ5s/LUFFFNqBGiKPjhQGl7a3GfMBwJw
mtXdMcgfx7L8eQfaMW8v4IkgG1qB/nVmYNBubWhhSc5IqeuuYoiujmfDxvE5fTIFdREPNCpe7NZI
Tklv5/xTAbMmZsh/P+4Q3eEsONF3TuEXpnoQLLvx6gw8sbUG2sWLUFwPjOSmqDojxL8pGXCC1aU3
bPvWbS+y0dV0OrK0x9Vbizu1jOCIc4OdywQUDGG742yy4JAUEV+3Zh1YmXucPYlkJ/Ovo7YAcTxz
+MugXCgGlyKBAPBijc4ms8/f4zlwMHzehYX47ecx39XuUVbt3HzPZRpwkoG6rqw9NgKrHj/rGUKl
0HzNWMWutdoi8g5p0KfW4ANwY8ywP9f1D4V+MOd86+WXY5mjQTTLPW5O1R64K/ELpNVPKdls8xIc
eVFEysRz4yCx/cl/4/J39e8GhcbENiISr5Cg4JcCCIobTXQiZX/fJYKgNhhBnv3XQTAaTgEvA1kl
iKTv+sW2JJXEbQnJpO6geTxBtdKQ9NzCExp8/HPs70r9H8S87WG/tpUcJYZJyv1pm+zdj+t4+e+i
X8/tyUoRQqGQ80qKrrLaS7chKx1jNEnbtTFZRVDfBH6Bq0Ulmm39YInc3/O4PwQK5qFggaIcsJ+q
2nse+Ila1WDXTua+AxTkY95s8QIrZJNEALepe2c5NWwvVDXjyPmeVz0WErGRsSeVghsVNqCHh5FT
enUTvpsJAEEB2739HNzQPWGaQMx4Vy2lEpZ5n1hLT6hR22wM1OojTbp9KIR0jYpQ9FH1FPluCjui
wEaCCoSbx0jDK0LgZ0CWsNnjxLHipqgayJJ8mRETLPgeU7JctHGCWfWPHLZKdSBsJlC8lC/MThLC
FJz6b04H5AWFb/yJMDDEip2c123AXTiC50xzQWF8ptfGFUeWNuO/giOqs4Za7+QmdVX7gOpH8VA2
O0XF1HDyb/R95qVqWfDD9Tc5g9B8L7WJb7xwrZY6G6YEF5eXskZwep9DcSDopOI7saLcfr8msanP
ZIb7byyLubPpXmk3fQ2D89/AuzLarqPmcHkmYyDYZoc85SaGIVamLzCCp/LRKRXMevhOOaa+q8lE
tQ+9cZvdY6jYZ5lK5Xto4EwVz8HPIf1+2bi8Ggy1szYK17jmP/DaNS30PC4QCwEMsmpE+38P/1aJ
rVDLCiXfoNi7tlwsniJww3M+XrRaYvPt9bU9sF7X84WCR5RmqzFNZ/IXtkZXAL1ROpkTUVpgGQT0
AewVuB+ihlXg/i6W0U1JmRWKba1rAykaJqUegNGIYGmaF/oS5efintz9qyv6PMBR+ULVeqRWLitI
+2W6PyALnLbgfqW5xSnFopa42EnppH0of0OkAsTD04xw+aMq0oOwySw6OQjqPXek1TElPyC4oTC4
ao1c45cCShte6QXfPoJi5xt7tBHpESUAlMZvCDGvVmOpSRfTdkoPzU/dM4B+lW9KgGrPLBUkha/v
/KR0vFXL2vE4hscVuzlz6Sci+FMtQjn9PTYOpzLqcY+c4YVMDklWfRgN5FRTt0sfI/ueT2GpyTRh
D/UdTNVb9GcPMTQkUm8kStlFeH5eNJZgeqTewzgSIE2v3xL9TqjO3ZqWQlZHNiCXoZJfM55LCIgs
69L8iS0r5wrJdweHbA4Ky/LfX9Ijnh2FkF5SNMgXFsqSqixjRY6K6ZRMPgl8s9m61UxwQqoNnn4h
B1Wd3aU22LC51RfebTwx1sAkeCLkq+kYQtC6Y6AT1rJmNO3EEUd//bX/oE9Pnm6c/0tZNZn/FN5l
0yssaivkLmYpCT2K+yeYuU04SBlEAzk0UoWRhDtutAFoM+Kvh6sIWOSvEf0x7bzKcFYOPq/Ki6qN
MVQAS9OYHZEKryJ4YfUqOHWelwLBCpUz/mUkTdKFByBdX5g0kK/Xa1A4iUZZ7aza/p0ISMp7luVI
GeERu51RoTXRNNQEcP0XwY6dteYnUs0GFcDX+wASM8XVvb3Ilg9oa2d1kwyBXdLUtiID/w0u7wtO
85Mc9mk6pX90LpMvufAEDXjsj3CJekQIXzTYRYrLf8DJwQ5aqzCZy21PN0eJF7+IW6HFicJvfdz7
83mg2rIfx6z44oieLO097C3JB6BWNsbquR7bwgb1IlzoSN5TXF2Sk29wVheRv1s4p8sgq7dCO7q+
RLW6yCVSWY8EElXWiQtr8zoJ22tGj/mUplHpIh5lWTQTqvqSo2NnwjENLcnNYX4gT8nJ3wxJUSnB
VEc/IxKDjZvrcKkQX4TFFxd+jPhvDsp7XveFKjgShR6CCOxhn7v+okBtaWva+tJjBnabxB8FSnSA
b5IR1/7zskfEb9crlBoR8ulm/DvD/mHGnf69+Xt5os3s5NtxCbdldcZ6/4GqFgHRXwoZ+glSOiOr
61Yz0T4OLmCytf5VNx26RG6uqMN7+ygeJUaO37MK2czBEfuv4s9tdJRD8a0CUxJvV5/QEJUhM6l4
W9Y9LTDC547BD0wEo1Yegh48q0v5DdEvrTn7SriOUa0OXMUDV8kbGOKryBrvpdRS3Grs7+jPXG9x
DcFiI2XLDxjt6XSeg+s8yTsOzAXJx4gEqzaqsCC+u6RWq/l93WBL+r/7wSR4i5oulfDfqcjkjIlw
5WZdZmVupc7NNVTxdUUJh1nzBPEhRN3uJ17rEV6cv4i6ZryU7PoMdBtK7kXZ/LDdmsirRhJmLqQA
n517qsd1ag4JQUabf7axYlmQNJHld+Za2I7s4SQNzOFS6MecLcoQiBAwKFAhE0vlDIPdISoicUlR
CtU8Am+f3KKN5/Rco7MUy5bZS4JuoVjrZMg0wcSZIMQJreeSN+vFw9paFsBL0jUthIkqtXVMddwh
NegbnaHvcRtMbMtgm4viebuALYQh75C1jxmwTCCHe5d23WKXr6nzBHxyZuYyHor/pZoJ8No0kQTP
Qwgk6nHOTL5GX1lruYWXS0yFct3bd7NWxgAcN7uluKOAVn4vGiv8cmiWtM+rhJ9sfI7quEr693y9
OnqghIonYWQaE47fMS/nvSP84T4NjeJJVHm4s++uod7RgSsa6TZGiE3SLtXBEzy5cbS/pY9XLXBM
comEVfufOH3c7NrsLII0azFYQpsRS6TsyrwHn8bi6EqiJCQJ/lqWOFMW1KR9tg1qDQr7olLr6VuV
/dYsNNky6A3Oc8/GhFibxRZn3cS6gyfPe0S7gEprD1iush+vleoXI7jMdzE4lq14RxYgrWbiV4F7
TfxUiPhAccXT8okcVQoUjdYqgUissrYobW/dWI8eUlTZTc3iy07jooCfI0yUY0G2Mb1CYJNzrKrn
AN6uydJZa8ajEWTc9Ch1j29tmxgNpay0Nq1ycLrGopFIikJZGbyNAG1KjjCXjSRkEVClw2y8N4Om
DvMX8/b/y6zgABacvd22yej3blY7OcoBEkANDKY0AUZkrH5AnzdJswmt0W6JUjs4uba4KNz4gPSE
rNilaNK1vCLTRJo18HdJ5duPARKgNwao7JY95kIxURnpF+LEBiUwu1DPi8OBs0u3rNJ6rXznM7Nu
AneyKvKgEwEGK6OExE5AQhyaQMiIVJ0gTDb7/+31SuIJEM0+YZMcjcJPUOC927p9jxL8xMLpQoIT
YA7HPyidJf8d4Fflzmo6pb9OMg5WunuiqvqU6+JJPWwXVHSa6Psi8/jiC1vH4rj+n6Dd/SsvRXL9
WbxRVD/LE1pn+fYIoMXXTxv2DyKUNagpS3gQl9SzMKzmoIlfQfqtzJkTo2nkVB7aO3EbRXfklOez
tjheQfz1Muv8+vCCwMfycm7qB1AnBSGLc9bK6zNvm0Q5ddJ/5rTCfXg1BnpxOrM/0o4xcaG2OGrt
xAPonSStYUHia0NHK+emr8jGtJiRj4RTxp+RG1BlSho2EryxzN/ja+lpD8zZDAGgk0jgf6cpzbzX
D1wEkik+zKymvJLeRIq1oSusDaHY+EZszuivyoLm7n5n0FH6G+IprzUi91FyK7tao10mXOTgcPaZ
UABOFIqyNvx2doucuG6DKJaArsOtMgvbvxS2dv34MugN2CSZcafgYF8olgkGXtlE3t3XxKJj4maT
wZSZ0Yh3ZDs33t9MUxRqI1K1QD17tMcE74cxsvmUixFsMhFt1u4fVYt3ZKiKcjFRBd1VWcbRVqfd
SzWNB+hG4zX2sv9Votk6Epjp3Y2DRyh9Gm80UpIlU5dvaFXU1K+uqYLdp3h0+RzjkskIb1Q//a5J
enSPrGNRK1C4xOUgeWfx52wMzYoRtPKLOgWS1wBogQ/CIpf2230lmjBGngHxAMZc0JHCgP+4tpaR
DUcTo4h0zCTzzBgG5y/9Oc0BcP+Y9opIlf6jY95QcxSgIWajwz8ZX7WptGlHQsYSpg1HoJA5U2PS
5/hNZ2px23ENBmZSaCa0ppq/pNINV/mfw65eX3dLos+HmwkfF/jTEVaMhbSkaUDJPeBx+U0D/TTe
gfstUO1PWgRcBYNO90KXDP0scD65AgynfM3Ja/s0rzACj0gI25x0ddTbYRMgJas78j7+lwODZ/HX
dLSVNTU9zLaNOdmkIO+JFAmsZIeC+1N6+AhfEiKtpGJ4Z167KQ2AeHIHBIOeERpXwwxUvdrOZXyr
tLZLSzZBEKay14E6OPJVHo/uP1EGKoxNW/FZCoqfKCu5zGP7pafaLfL55nzGZ5OcnjGktcqd0Bg+
JFWR8BbEKqW+UUAhEXTyXG7JgF5/w2vA2N3B/cvYNs0YnRzv27s3ajgxu0S1BXMZK7vzt+g5pbmH
M8a1l7eiHG+OWcDZY/V71b2wKjq/r4w0nyh3ImNsP+sPGiPRQ80Yt0wtk1ouchg2xegMZEbNmorO
GmjlwuSQCS8lJ9V7zCCwm2BiEv0zh9lrUV8fgkt8EaHFUl/3LpofPIRbBA89xLuRxqg0MefUs+tX
PZAIpT63jZXglAhAPWCx7y9H4DwZfUd5CwWVwDin7DKb3qlpXBYyGZYJ6fEoEGXpO/5j8BHQ6/9e
oEf7L/X9YvMlFA43r/Mdq/27yge1cTRysSgQQynjrBSRRHbmrcITSChYz52tea5DkaeImdZuSxjU
phJUg0Aw9NiwEWES8nVWPOG+jdQdMRRRmQWCek7f1pXUd2DZh/qm2r12oYEqhVTBxKu28yUc5hgX
lFzj5wp99SiRfLbV2XgZT/apaQPlq4bGVVHgHeOGiZVzLOMcWy46rwVQbMuVXatsuNsmCKPltr4L
wvxV+4XbMAK94Oe+emwQk/C8L4jmfDH31sncaK9j2UTlgBYTX+deEL01sWVa9Rt7CuqMmVibadqp
bLn7DBKoTl/8e9Cg/I66YgcgmvORx+4XJJEp14K3CwpfF0pWiIV0tfc9/4IkivuRAVwVv9LpYJG2
q1Ccq5IlFWi/KkzVXrGvgX6gCqS+PdJ3cWlJb0T9O7hzbWRn+iwq2mQZCkIIZxoxwHavnp//giDy
q3QJuEQbj4Cst5E4vbaZBCrUYyIjDTDxGqmg9/M0NMqqZS6ZZ/3tvV9IruuoFp98C1FzFNqPru6W
UcvSCKdgSjDjXWNcTXPArjhzNj+3rxj0VVPS+PhG8D7W9t8DCbY6SXlHUEtCVuakCvPrUkmoF9kN
gFGv73Te7i2+Pk79h04q/1QuIGNFwO5D8N1KAYTWqxzqWWMbGGGvbAv3GxbJQJQKrSdTcdnhQ+ny
I79ZluO7VXNHTr3RnJTectLrbRlKYUv1yC55/nueYJxZRoRdvPUyrO08jacAAJ1ZvsVSxJotgjhA
8PR1XfVKcezblfkpF5VbkTuo5Y5Lsu4wn67XH/Eqjp+z7dnQ0eGQ00J7G3pN5TpvKa74NgHmySOu
HJq8aoo+klaUAHmpDsYxF5Y/XNTCXmdj1cllynAvzapFDd54VJvKGbWTGuJbpGQlUKBI0OuNf9JC
dKCSKIVSBvmyGOPDfqiNgdAv2qDgVUVpyYWSeY0EJDGxEoRKxuT4Frap9qv0PSa2NeFc039cRHnB
CwH171laEfAqmwFwlHNHHh9W2LgpU0gqqvXZCGySTaIl/gsO0oeelUFPkrjS7+8k/sTPnI+O98Oe
uvL17NEjGlAlMPG1ihrk+cP7LwL2DXLqvSFXZGyLD//eH/Nq0hT4rISkMQ7P1FSirN2r/1Egd5xW
F8zrbS/2/DbaCBUnC8WDj2URuaBMyJDIUK/QjpF5bjRskXBaJDisjFKFAP2qvbX+9e5saWZY9+eh
iyiY0xuNcljQY1YTvCx/O8aooUEh8LQsP4pCb5HE4NDC6H0JJnVEAtzHE5wfssBRcrZ+MUua5TwJ
yrbFKC+8DSDDW995IEI6+eVJqCjWDw+GhDgqtQk2YQrKhuKNBZ8VIzqSTKVPE4TTHaT5Fpl7Zf+k
+vIQ4drqmwv9+JNCvhcngnorHZ6PQa7I1K8o0fRvfqz+xtpj60JkR7d12Oclb83QKGmW89hP84mj
h3zo/QzU6KZsorVoERO6LR3SltuVU0sDpZBQ1TrqKV+4q2oVOM2p70Yb7FcokI8wzE6Soohxe8JA
eP+u71ZvbHhZ9jUmseiSHAy0dzg5DRX7H/0VqJB01SSp5RneU9rAIb5KKUHBU5fOYcoGm/LjYl5f
RdXwhAVrtwz8FktZRlnOoMe8YLwwKY4J1UVbqdydR28T2qN77uMfj/qLfYYuyu7DpnO8StP0z+uM
JhWjiwrNAwNrlfW7vMtczukHLPsXP3+MMCkDYM3EJTGhd9skdOCXn4c7/k62f0SD/uacw6Yc5eTz
hcKBl5wEhUpy1hKuyi6tXKBzTCo0zG6WwqIxS3/UED8n0TbZXXe9Bt2JllD+TCtIxrxG2ClrX6EZ
noRQpzwH5UbCIDdZtO4XzUkMW6ulQ/poF+FVWqrLfI6UxqICX+8vthNJoDE/FrFyYw5xU1kz504q
RaueRutMEyNFa1Mt1Wo6SL9Hpjs7cdzDkSvA7/Oq+kRL8a7T1ni0AJjK3qCA1LR5mbCtjbwCjJ10
0Af123aM615NtMOv4z7jrH1HJQ9OmkrpNX5IupyE0NtPuz7o7hMRxAfjS6O8+9nWewYzH21daLRe
ynduETlLhN7biJTEBCPiVqfhlnWyYvx1PvrYj1ms90xT7b4P8yf7w0zuqreM85HLKUkJv/7U0IM+
0viJ4yUZVUB5zbdAVPEjoOe0RUIACfRpK/GIX/DgJbAOdpg1s2v+VPhP2rCQ1JieQUTzsE2mWaEM
LKTxmJ3Mjz6YmGLpv2q0X5S7B61F+VvKTjMe9AR81+WL2dLA8xFwE0g+DLEj6UwItOgH964cle2C
a0giSMuaDQIl25ThrB7iFdgS+ZmYgnMUzZbWjK8IT9BJwyqjz94sYfJyAYIKQo5YxBuzY2mXwfYy
+K/TRQVw+dgzgP28gD+QIRlijQqWDwF5jpwQ82hyg+JmxmYcv9CSfn2pHMUkqJjYRSrCjteVed2f
sAIOm0IZpummKXWHtio2uQfzJMf0VfXiU3dUKxyQ5aj3Rf1BRGR05SQrG7MiTcYpNxMPRqq/Vn5h
i0fmGwzf7+dKADxp7GB6LIzsFNx0w3F07Cvov4rzFZAsT0WbhEoOEye+LCKbJ1OO/am/Rjes1A+L
3jZLHPTu8ToU9JNMxiqEEnTQcR5qGBTLcO0ZG0tCildl6Myq9jGiil2131n4dLkhxmbb7NmydncK
sdU+CHOAE0J3JOaK4tb6Kts7LCVImNdv1M51CqtAbxeg75fzOpwcsEVSS883T18Bq5+/ol52x9ve
/zoAQxHHe01dWBkvs4w0Gz/cMifd9CFwfJlAJjXKSd//S2Ge7KIXFHkbDpd7sDmHKemNjTSrGdCi
TdxyaHZwEbMzNBunaiU5Ry8PieTUoW3Ww5FGlEm6V7GnAHygi9mnAaru/qm9xy86xS8y8yjOBESk
bzvb2+g0PXZERMZTqQRPgG6tZSTeS9ctOLQ6qe1jvZu6Asdc1hrz1bFPnGZrj5E9Tnn+GDUIyBGE
bo9Qi1URQfUNnqilUlackzUaxLxfmzkFD1bpnl1o0qCQBQnU46ptsxXKoYhB5zNjIgUCGaYGJdn1
afK9GciSN2CvFn2U94gKe/fVs4g6z+hGmZgdOVh6lMNP4EyEPreKWX24s1ONgrz9fAnKRI2qey8t
L0A0YKi3QtG2q3CUF8BKlGVIALTiq1NC3OUu5TlsQRHhvKixHhbO50jRCV+7ETx/kiJig7eaVwe4
KOgKv4gYSqeUN+JpT4EoLfZ0hxQuuJR3ZVnLMMY/Zx5K4zskQkxk1YFOL/I+/gp/YDqQ39YnH8Cq
tn8S4jm1ArD+KnkMoBp6i1mLQrpvOu9bak7Yd9ciPCUt2IissKZjfj705cQ7uWEYNv+Wbyd53zL7
xkFthbmVIx1mGENqETH/b+2jQbQOqV3MU5jeVKZHzHcsm/2JLLz5/2HSWKfGyoRwZ2wgqiOJokuy
YjjxxH1milGpYpUyy6EtxiCTsrCkKdhaNfV8JKDWfwSWeASNsozq8Zmh/WR/m0Jn0/BUz4GFIDSB
gjVElOGLHPMxrfGjRj2A0zWKFbaE7uCg+lNtQBZ94UJfSCPVrn8FSWPPaBJROyVMJPZnnYXh8xgs
OqFynYHwUjtHiUS3W18tngafRq1YEb7iLm9c+g/caD0pJIEPoG5lF5+61YMzxG1jbdsrum8A1As8
i6B92W74q4VT1IclKxIe2NXFwSZY99sV5RdTOV0pvEy7W8N33EDa4tTo98lyD3aBMfxkmh/r3Sos
uIgfSUbGf0BkwT/x32FRSfhCs/SSniguSU8FfDhirnfs/SCemy6g9kShzk9B1/iTmOcUPzTlXyMj
VVXych8DMU0rAfyQQ3XATAe3gSrVDMVZZX/02iH/w8RXuUDhyWh5UdrCpmj/ylnRlfrq3ZIEIWb4
9rEjDv5IpfVYdi56dAHqD+LFas+MOCGlxRwBIBXvL7pyJNMp9m3fPFOTcnf7jEn/I7CLuC0PZLSx
z20/jSgdngJd8jHdjAK1N93eRAK85STt3QkNtgRMUpm4JRh1maQORxQzWS9BFg7DMicxXv5M6qX9
PrgsBUEEYhO1Ed7dyXdrHZlVByIxVezQLjJ2SotweeLfFvyEgV2WliDzJUoV1FeRihVDNeOl4UXn
VPNTYdODlvVDvPhOB3onYUhK05dP60YwyU37AEkaErFORkzue/YKmv+0LNp8Xci9YuTFxy4gh9t5
xQGUSjEkSR/PaFT9JOcERiUyqPyw5lKXI4NG5Y61G83mJPpsP6zUryf5LYfbjVdErRVq4GnCO2I7
/OA6Pdqi8H8R6AmnW+KA6EbYcg1wSYYv3ZQdArv/Yl185ZJaGiGUXWVNyyIAxlrle69+FCn6A40v
ICq541W7inHjjQnvLzUP7v917qdbsRdeQUh8qzfNbllYU1g1kZRL3BPtybsYZAO/rbfMOcg+NPqa
5us2OUBD8r4Vay6Jcj4d5Uq+A37+CXH8tUsPHxhpfCCPTpUqZLzp3lHGX0AE0lvnupxzhElUIrg6
Vm0wsghfwahCdoBcZi2QhXm38Ka/cmvYa+6xwEwCJ38yRRnd50D3M0+sN44duw9SeDQgfJDb0Fga
cQkDk2lfVYMDuu32crcOyHenHEHl777zVqvESHUbEQ0PWoKSps4vnC4v86UX4N97YZr+E47othea
YIJ243HuVVoiPoXN9kYn/9ocqUYwm6l47XtZnzxZeAhhIX/nwleRlKlQb6ksUNCCmguVNojZJgcU
H/WMtJH00c/hag1WFqGbqVj5JYbcWbtnu47l3vmkzpBZreh20HjsJFkEK1Lav/zC1+DPRwJvYJpj
b4q25cWWi8lp4Muz26qmmOf2OwbvPYWd2Dv8Cvixz3S+EQP9okRZvzV4KfMQ0rEt1cYItAnt1MQz
tnO3u4R12rNhXWkps14hnTJwF4swg4pHvcVsIVq4JwHqa91ppt9oFbVIUga2Yj3DIVGF6x2p5+I5
nwdpDiTvHNme+r5Zko4obEJr0au4JoNx8o0C8jyNr33xkQz00y8iQMAL/jbWYX72WHOF2Qtddzk5
VB2s/H+AQoW75AuWjr5aKS7fszPW3bkZxejntwLZZcCJefKGHj8R9zUoArAZnow28LBpgSDSqOn+
LXfr1tD+0D7JMnpX7Aj0FZTp1GkAiqYwLp7nz+sSio+A/EJky3qcC7J6eIlEmFUXoqxjcz9pu+8b
phFkorpqufENYlAhOrqPqSGkPJB+1FQmirki8PZyHhzpRJnCUw4Nu9EaBuiOm0NOeNamM0LroQcL
evRkMYkZu8W8D3i5qctjt3Gw0WpiNcgpZmTxzn6FWkdv54MK1j+iqOE4YQaThM7U6ftW1IGbYWxb
WyvgzQo1i9tiHd6ES6SkDa+Tmef2s0wVKqLbY9IEHEfasZqm1JpV3VV7Z/jjaNqiYSGAaZo80lGl
mZ7iVW2KMMykolBxID34F1tTTpxCfHhVnYG1H4sDAwxhHPXjzoaUb86QBHS8TdwiUch32js6y5vW
Qy4WBGujLHz9rvXlBG1gk/u0va0TNZZm9K65gv4mWGdpAykwsnz4CrIAG02sTDsK68RssiVeBP+D
HAKeNdICdf6pqobYL3cOMdUwDYjoNUFJvORVcIXVZObkpJpamhqgJA/qQJ69nC1aCyG33ZpRdrYY
Mr0wIwHwiNi81X7luxsLMxD4qURXJC4t3QQpcz7I2WR7kVz/JtIvlxecYu7N91SrDO/QIwxz3Vqs
v1AoJWvx5kW1N/Bzufb2ND4nze7RMCP4lTr5kYVfREjxJdY+iDwK1kANexEkbdwQwCtMarG/SwuT
8Yt0SIptonDeWNe6ijTGeQXnxiquYTuW52GsR6xAlyUrNlpZq6GKpSifo8/VGeRUvKgP4Zt+V3vw
MXonRWvef1r61cMStGmbHRonKOUy4Ql/0yhik2SUcb9ttsJ2yUD79PwvrIxlsRPZX+omtqZv8Tmc
zCqDewyzdM0+IVSzVSz0kR9Ntg+IstcHB3DaNgveAFgxfWJ4CcvtVdMSIZWZFMEtcbz/SZ3vuitd
I/O6XuJU2qCP9QtXVj43UhQfvd94X8fkA66QNb8L+wl10+zNyODD4iQpAppTmGTLqFglHihq+55p
Lgcu6gp/ylounZDEeKOvRMGoO3wBzaji/Oa4c1Qz6+mZM+KmuN2Y3e4Xl70DTGGSumwKvfLRQwId
vHPEzhnRi0OCaOpGydtfKUjx3qPymaKNiu9BeNhvKaqmBe68LabFKA8vWvbolQyMBHb2FBP4t8N4
1l91UWaxajtyADCxdauXppYk/s2U/oCXlKVp6lk4ePTBfb0IfJKaKNVVMx19zMSDcRq+QM2THitW
HErfnwuhD29Ke5OifnAsS0CxBwD5Tdi8QlKIoPEjbtrIOlM8xv9Nags9bw0vmqSGp7uxkacUMTes
OO0Qoju50rrlIMK/JimBWKRKkuDngSjn/iNGFr/Ayp6dDAx/UaRuP1gBGCFVeBOhyCCqPrmBKiuz
cWW7xJ0a4l3q3p5eMOM1V4yCNtgI2AeuX1C2Ui+LROIarpTUxEvz/KTRiTe+wtPRWYyx/r/MK5LY
617UoK8ygfcTKRQfJTkijL208dV1xHYg9R7vi1zUZoAnEK5Mq/6s8/dMYfrDF+2JkvJaIeva14Lh
NYpueV525SBYxHdw//RJ/YEygVA1paUNUIGexztaathS0CIyLtYxOw2Uy+8kZQw9QgjDuGVohm08
c5RPvqCMl0ByZ/G+c0d7JA2q60X15JBmKMCLGPnylLGIw0JKT1ipkY6eboLXwCOE+syGGMlcKT0N
NPw+rZbFBAwuE5JX/ls3M9Rzd9zKo194jHWQCJhqskJfvcQIE2QdXEmjqZhPFEkk89lXtQmGSYZP
1NnWBHxnSr5IXVcprjqsCJMEouBlhIr6WPlDcsyrThQotP5Rvy37ClRUa7eX2VG9+PxXV9/hRahb
t1I2IVx+s3N65c5mV+Ce2w4NuCT9Shfy68ZHI6CCAwnhBCp2e2ELlNj8NlEcWcS4MeFe7Na+oqsq
8nSTUl2sn18pkQjOGQUS3/r5o/OqF5ADBBfdEJTUiMZPO8YYAsBxWR/slsci5jPZWPtu456XME77
6UbYxL7LqOdf86A1cKDso6m7YBfVXic+/9rt3QxHnrYrtTKeFkLiYH8guX42FyH0RPBJLAOpurLB
248Fy+eH5dkyr3gZf3ufhCSKVpAV9IBs87nZqFF9ibFUT5AHJle3hMwfeqhF5R8iCkwZLL8H6LpG
tDgTCkB+FR4R3jcBuAzZ9xa5ONV7JMQfTtv/7k4Y4awBzSGxM9bQBPxf/n9r5Z9J4tyZ0PsREy/5
/RNc5BZA2qqZsVZIQrwMo5yHjCl7MB8jbwFUCK0QrswOodsIdw+7f+x1ECRxEMPwvbEm7iWgZp0K
MqJldMW5T3lcebw7IyRv5plFX2ahk0kizsJryr1wybG3CvX958KWrXjffI4njBCqA4wYKY3H7qyZ
1GOHX5srWiJ5Bs1k3hP9UiiJjfBjYG2wyYOY9Dx3/5SWMuNwOy/+grUSLfR9CEFCITnKh5i/GB7K
eTIzFVaQ4xGYnyDiLkuMcAdCYjpP9DHauF4Kr/imRNpZT8v7ns2RMGMhM5to11gMerEMduu6kKKo
11nII5pufejkJqTEa4Fprbxnk7L1b25v1M+S88cZEGiiZexHxLYkBdtlMFjmHDMMAWr+c8yqlIsA
tiq+4TZNpYbrAh+YnkjvmIXnF7YVP2GIUqkzlbftA/d8R/PqVRBk2pzFpFCp/rgP30X/ry3TuZE0
8fg/azyH0P796u3xlZliUSbn9TmyrZ52YR3AGiFRaOvfOg9Y5l1/X7V6KZfljla4zCBNVVEy+JaF
d60xdSqDqfcDItQXoglGuPr8cmWamOaxsgdjqG3qbVAvuKuPQ1rSGP5+uJPJQAnyrwTOx4IU/7Tw
ZiHhMFAB+x+addXLHTsCN5BSFwSoP4Y3dj7hzfVg1FTr3LjyY4hTOi39Efl5hAGV7Ghac8h/OVTX
SKIxDkX8IsAA/acyMMGqX2FNTjVuNa0e53Re7sE4494FQGeK7vRlM7PH/9xQTvDI+go0LzaCQMO/
xRjcub1OznrMyfCmYl2CiGspE2bb4V5hiYKKH4Ogf8nBR/Twl8uH+d9vOcp40XJ1Mj0gSs2V8s77
mfGUG4WwrM/yYXy9mPsqkv++iZNitU2axuKW8BipTLYNiYyy02cvYbE05maHXkseZWD1cRdGMRuB
8UFT+EYeLkIfWOnBMlHi92kAa3d1fmCJklQgz740qDTr4JCt2b1hgNSkqBQ1XqGX6yEu1GzoH/uP
Uxim7HknOpRiZXzeb1JL9eAdDVFuBUFk3dG0sIco/6dY2aM+p7Ql/noCvyzYH+6bmQ/VhLmeknO8
n6v5SPBX53/sCXPQmaS/vmJdXRr/TPFuUKqX53abRfX6iJljefi8jDo3vxt6p9LnzV97fz+xtPIC
iB7zGsFZTNAcuyiynB+Zymb4VRtlFllOOIxFD/1pxmL+9VX9bbbltggzPOZMN1l7YNOdFWaeHCvb
+99Ia6KLH2A5SkqHCr/MgPjUUXWdaSYWSLM3+oJwndIx31W9HiHsf/yps8KPa6evmNHHw1JK4MD+
Q9Ho5FzgaUv8Z8VrqH9I3jmtGq+4Z4/UjhUnaPtJ9OfGJgo6gPVaw89k0zeho1hxqwCf8rl/wrnF
F0+4R2M4MaGZq/FsQFGAvS97DoY47GYZTSo/ggiJ/tH17SjpJCcAABcu0mzZ/AErybBYsWVu/+q6
J7Mx74hx0F7YPKASd1pooUohMPd2PyVGJVNQSb9T9lKIsMSqKL/w76eZG19ccxZXxVxbs3nt9SdF
0GmkGFu16VdSpvsUlm9wUMS+gdfhEgeQ0fgK6Yd83S1hswPxWqkF+NBcq+6twtP3XuCI7SVqfnv3
R8CTp0iWnbpktAM4Af8gPV8GVfrarvfyh/jjw5g8F7o8cM3o4fvEV3sQDpmVl8CgavqgZ4x5E+50
Z53txvkLpGe08rcPvAvs4PmNX6Ce2i4rrJKi/zPdm3CXKSdcq0L3dVK/0OSqvFwkyj+jzANNMFS1
Uyj/IaerXNYmAnRTHzhHmhqSENrKKMG2MgPY124yU6KjUtKFcN2rrIS8wkRFcVLHHHPrwCPZzI9G
CA73JrgLf0KCPNh5JQJQvx4SN1QPDUb4LCA6i/9aRo440AXZCZ12zqofgt+nEoFC3n1kWtRWmWZ9
Wn1iwh48qKZleyOlMrO815RMxVq6E5Fen9XymbajGGfWv7P2Uz2Q/cPjL8sX2wwT0hfdaONrRPxQ
ABByJEzwb6cyaeIfvfJvB6w0zOh0H19Lqh8KkMt83dcxl7wTaLTeHJ+yIF9Kgzwns1mkz9qu1/Ri
M631I8jfcY5DSokefCeBff3HYg7ZG0Oyaum53+voxFcRB2PwUSO/KqnnekvHvDfjSmS3GJA7+mgK
MUlyxOrPp5jqPYfruNCxYqai3bIwBP8O4xL2BSVYkeT/5GGzVrS0TwRblNZ0P5AKMOxq0pTDaPuv
DUxeaU7w8SPOAeKSno3CPA+hnE41PKyuDcihPBF52GvueC9G29xdMusCgUI2joCCQvneo1WDik9w
ifYnjEpIARDUAO8WM53872YTqoO9369IlM3ZTBeDX42tyj8O+jMEI53/egOIOvf9r7bmpgxKwn0s
B+crZgyjMMQlsN0YR7iAgySipgrslQV3msv6nWCCoDcNLcyESb8IIpsR2X8YOGF00NuYhzEnH4w7
cdmCDra2y4JFEQZPoNIf7LnlaSUGnU//7WVpfN+PLNi0c404YlgT3rY+01GF4O8+WAQyu5jF752n
JTpsaTS0EFPSAC/XjwqgkiDE8z1KY1xBnCcWUpB6hoiI2/driuq1vW2pzCbJVOFHOXRh3bpGNqC7
SiVZ1XOBrc9aCMc/jWIdFriWsw7KWaXRGXqoXAn2EShtJhzv/YVXmJluFUA5rAj1d30JJ1O5nyrJ
MZnquo9H3VlEXZO8dMJ6KNqScetY96/eCr12k+9Kjz/HOLWjjQBtvcMftUyW0xT0I16/t//0IvkJ
L9/k9QrcsQs+GAvYPHjOtdDf1DweqOO7n31s4TTpLZiwJQ4f3LiUNMQqY1JGJc4fHKgGHkFDBKsU
hc/zx9GD7ZZPsQ3v3F/wjPpPpWBcHWu/0ckBpX8iADyelgnDiOcNpAt8S+/1FXOhS1Dq5J8M5xYt
HaOcBUzWkqjiit+/j+hOobXjM3WHjeDqsCGlv0jurQoID7SanJe6AL7N5mHR3lPzC1Cefl/edh9U
IRl8TcVy2ym7UqeJ0tG7TsviR2Hr/vK0waDmtSBKdtGe4nLeKsPh02qylHQF6l42KWtU0RSzJ6ud
iKyYH0uXbTJANdDYzDoZGziiKqvdEvv5x19Hmh5Vy6AsiNmGMmlh65gS1NdFvR9VPxGC8ul5nh5X
a0XpwUSaF/P52uoFDs2e2OjPCkEFTcnr/sgfW9WrG/T/kCM/MM4Vg+lIr5uHN6hyV2bWRIIeL2Si
3tTg+Y72y1RwW6KkztMfH6mLO/2dEGvFEdCrItgUNcMa2Jv86BwCDk+j3z6dKYSmK4+JBZzgzs0B
6p1yJTU+lLAJMvp7aX8io7WR95O65INV/sYW+wVwaorDY0KpGZLF2bveUmFA48ma44Tkw52trA3O
NXoVmv1EGfGrysYWhysIlt37iUwYYMEUbqdJgHOyQdJ1G0+VHXquWlQaNilcpU58Ctl7OkxjaAWH
AA2E30JqwXGPFNRn5IIETwRVjX7vOfLiHId+PimR+4peMeEAWJLcK3y7uMU2zyRFtY9ge3CEqYTZ
/pqR3pD8eHIzmV/QlDAMeDVuNviPR1jSlFbSLkcP21AWBArCt4sGsRlPsWIH5lej+yj22O6qOEnd
2AnjT4qIrZ70wxTPrplBBX9N0nTEfsvggsyJuO6kt2B9spN63fzBRog1XsD9r+eGpEwCtdTzlqa6
00vOBzi11SuBf3aFuCu9vT3gMpaXpMeH86RyNqMUpOSCIa01yOWuYDHPCzQdDS/pmz7Tl3Nm67X0
ma13bQEHMfGN8k1e/UfiECD0Duitka2tb85rGYCQ6M5K0xHgCvH7Ow74AMU5PBcXbm7skcDCmimW
Ah93cB+Lqe+Ii0xYKIQ6uDGLDwfIQ4ymtqM8wxIWy4uCuVsO6r6m7YWC9BCAjeXxTNDzbC2F0Zr2
A/IxM1gq3tqd5XO+Ol8DsxZlvOpvmzPJnrOyB8+g6cCT6p/hgSV5HbPNx+2JpdgybMhrqmUp0SqG
gXmCcbEBLYUbW/DOjesgBPMdxe7/M7XStinBEtEE6iAkfgHVNRu09NLzRb7GgV5YtZ7QaHujArd9
lCbBm5K7cI9LcW4UHmsKBdGKaZ2OECEElb+beClEWOoCUvm44YBymFB3T7TMjubLtEIQtgHSV9/u
V6SJOU4eQulhXpJFyP5+E2B1o+HOdVQciWGY3sJy/twZSOxr0fmPLd0Q7e3C7wQzf0MYSmYbJh86
Urxvbemyuvu2NRVLq5UuaFbDAv5V/Xlicuie6XNHk6EkNjfVvE+cqa8PyUwo1QkbNLbFPJbXZP2T
P9dnPFRQhVpLu9JMvUVCP8KxM7rfgCv8wL+EL5VTAEHs1CuiG05A3VNj5d98NKkstmBg8Q+IUKoP
pjXN2w2eFNmki+eaWyjO355ot610escJmmSWwnv2yUOKwgg5U4vtsWwlvCA2MKkrGva8GBKDMZk/
mJbigfucbpT8+0FG0RDmVpijNd6/XkVZIcztaKaQVxZQBQiUlyBmx9AgVqSCN4+aIbr7Z4XQucqv
Nde+APYHKhBCoSMUYb6eXPcMfGTUs+h/YkZDififpIg7tq1xdwUp+a7GmWa9Bl63KZ9t2biIkkaO
PVKpVyZRiQLEpAyYZkb7+OyiYtCbUuiBiPil2e1/LYFUuNf+7YwidaDVM6paujWWczDu6kM3VeJY
8CQq+FdI4xfVCnzZdCLA8FFuxnVf0acOr2xiOdbYuv8Gn0zcGvMW1Lh0oDifMqEmFFo0M03+Wf66
Y/LdYef2KqXXdUAYCz+ceXb136rhnZRaVr4P7IH1u6oxtthOeZ8aFMWP0mpLTeBUcdX9bsLWwSUL
Lm7/g7xPxI71FYQAB1CweO7iJnX29D1Ha5Zt8lpq2Sru2CwLCjK/qbUldjeHSfpCrsZnKj7BBOW7
3BKrZt2j6HMI0PQ1p/KjeLDr22j/9f2LsZgL2WTQsvWcjIvUSn9D3CHYF6/aqaeKNgKrp2lbEYzK
RHYpfbTp9nNcwXW6fsI5HExgKUJ2ot78imeZurxHHAxp1xtHrW5pVx9Mmo3mgVOYCMI9aPbAKj/l
V/vrPczGiabWSBhyZTe3UXdmyj+c+OhiaWjHFa1Le5jX83chKJ+IxKtbRHxQEiCtzLUqQeUBMpew
FgsL4Q4ml+Wfu+0TQa121VcxCnyyihopbyUo0A6+uoII/79y+VabRuEehGMt2h9LzftTMiSYCrey
4ku9MF/psWsoiUuBKGUsQwWjdAPxzB6j0BuiP+s2DYgc9119R9J73j5Yc4yIWioRik4g/uaRjxRE
dxHGgm9xH+1kePW6M6RjAOoEYrKaIPuet4hfe5hoykQL02/iQjBHXxjmVj6mRCpjmB9P2Ys2On2o
b2BXWId2FV6YPJ9Wv6W4Kvz7tVz/jItMBBEDIkeokd7NxRhI6EKu23gELT6d5u2pIBFvQAMlVC5H
J1kLfi/5gqN1OwY60hPzfypQzS7s8tl701RNFqA+6b/E833wpiocV1G/DAz0JObKfej0arjmOymx
bRt5Ac9F5/H6zRSTi/M6tlQaCET/yo5hZLCXQIO1IFLDIskwTaz8VylKBvKxFVB22zvOhq6I4DP5
ICDO4vM7JVYeFVbAC43yVclMb6zzOnWL1j2wbk+8nH4dXrvf5L43ntwbSoKIFzBqHlOOWHH1/HKN
ZkupmUKhCd1rIXLgDXh7JjiwHQY6oMxhT9W9TmD5EWg8vU8LdrLCkJR2RPhjKDpnahCGInsl357H
IH+D3YiOx8cqHl3FZZDunt+F8Ljkvp+Zu1IVHHLgaK7Y0/rXyf8iiXtcCTLRwSyoU9vngYIEQOjj
xAJoCXZ3ASTJFr9MTf8lBkJZTaTxSs/LuTy5uWIXOADYcUFUk5Z5cJbkz9Ipo3bgLU/aT3hyjbUo
UXudwHoQl1HmUZod7Z83Rt9orQEtSwg+Em4rBKHGi2afgAJwEw6ZzEjPmzPSV2TSHoCJd09egYt9
wD2NdPeFWoecr0dBzfxWX5S0ll/WNmL8af9pkDJ2N+VHsu40h5tNB9PhFsSU5BBqWI+oopp/uRs0
EkQEfftR0p0Vz0LfT1katpce7cWYbsQYF91TiDOYOfL62MOIbZG5ujaOQPjLIG+wvGwg0ZHmYXLH
UXtERBalHZOHRiWStqJKJHI6YPqr9kw0dG5+xrb1RKkrcsHmP2IStlp4eSa9kjym+in9fdB2t50G
dPBKMyQ42KJX25RlKBSGa1C7wfl3JObA09/cObIlTA+oyk+TUydv9In5BtPMt4GfNZsJ473sR/sk
QnywDrI3WJ3lQVJTofzIzxeqWxSnL2psHs8N9OIc1CKiNKfEAwzs6s7YLiMeBKv/eWjOkcyCGV1A
+u2SyWyt7gFMpus8USM7VU65JbZzIt2sqbVEHyDrqpHeCOsE76eNLsxN1RzNWexsTciFmS+rDGhu
bk63Soe0520ABW7ybWmVTIaDuW1oh2t0RE0f0WS0qY9fL6zYhaD56kib3LxC4xSRq3BnnWzkMLIc
L+8W9t3aEHCmqguYBhPt4Sq5nQ3N3zFhTlgcvYIUIQ000ziGrXCCv9oGaDo0As3y4079t0KjnuXK
iJg1bhC27qPg8fHCKO14nZxZOPGs3Yf/do9FHy2jbtGKzqvsbCQOZ7MWpa26FGGFGOlRVl8xilA1
Zj+OXISxzDAmc6qpBqZYYEwFp4qVNQVnnmh09pO2hlj1OmyxU5JB5eEyGnkZhRYSUcHPA4OkAEcl
DOARRvp/bWQ9tLpfj/ugzMIZi9WJ452zJeCGbCQOazoKeD4lNI6BPNg5Akk0rKvoECWn85ZKOB7a
hQ62IgPEocs6YwZPL7/e56dtBzlTmyl0PtaiDdEWyRR8RqIrCF8I38WwrvpvNTgjxtdbhOjFA9/M
YbaCFhJqlr4kdEMbhR40/yAqtAneCH9l3WVVtuuZvjBE7oq3avw67d9x8UIWaO2lzKMG1jgoZJmW
OqTxpr2LfT8ui1mlAkf5gtgiCBSm3orcIvQDbZDqeHWwgA+QlryjIg9ANX9p0rMD4m3kyml0tr2Y
BbMkDLP26MVy8DC4EN1sEJ01RN7U93E0IDiXd4hMnWADALie7O4hjus3BgNiS6ay4/7tfLj70Hbd
0L1H/fvVuECGJks26mWQ2jNeN4f1rwdF2IlyfDhDnZdGMUr1F38NV2GQPVsk/xPNYS1d6s4wC2pg
P5IOM/xT5asYpJ35PGJ77ZQc1qKGQJct9tTExbQXnd+Vbv+VprpCwbxyTh/5FYDDSCRbHWVLDYWm
w4XpIKDfDPROL2lZYuQOb3Q9JE3Bbc2pLLqP7h92qDObpY5NmH5bxVCxXRCNUmSI3hZ9o5SDzkpc
9wx6A+OqPE2rVgudTL8YFjPW9yKrJRoQK7mLAz3AC16kpuAdb3q7ZRLBpkluCGEh8PIUDZMIxOdM
ZWof71aRpqYg9kVezyDD9iDGKTmFj4kW9AkG7+H+NX2jONM9afHUqRcWYZFyDGMVRkuUBCT27UZz
je4bmZKgmh+aRCtcWJ0/kyfsO8pURskW/o/7QdCsdjw5Aa0lqseK94cFeLTWfIOPmAt/glFuhuKL
vFTQ//gHqehybNZ7//aO3FyZrvmJJ5Bigtji189s4hIlUSvP/8nYik3A5nB+jPWNxvKic68zh11N
ZGgiYq3HGqLxmN5lvYN9hXfMJ21DZT6d+O/ZD813OXcOPBumqLPfGdk7qXWGNJqG4RHVioagtIJ3
QNt86ibW47swsLKLX2AZ9i7dt/earQGDLRQmPB2Y4yzLdgBpw5iVksgOrr6QZnGNHj/PWib1l0nM
xdSs+gmnGhmROBdenWJrV4E0qBUvHCq0o/1ywdHdlkWxzGdS3T/I9RGXfikODja/TI8Va54ypYzk
kPYQoD5npIBLsE5sAHrB4WJoqJX7pQtoOrX6N/JKKTRT0sdtpz+f/rXT7uEyP+75mj0os0dpNH08
U3NE+/qWqExmk3kxAoPcnMssrNMU7a4Qys0xkdUB8v63j77S9dC1VK7udgqm0XatuEaz9yBlY76f
iV+64+6GPHQKttB4icivZdnq+qxoXcIkISJFJ/uUj7tAVZlVqwx3YXqI/tcyIGB0TUZdWzI3evB7
s7rM4BqoPl6pq7pbCdZ66yk46UGrIZZ7ZT/cleqZndmsw9owSnZXRAhpspW5K/QYae3UenZDM3sy
7kpU4qojPYbKSFAle6KjrVw+QEHu7sqJsD0uvXo8Ol8zwny+jnyCeKq/lkyLPYVIwHKamKuU+OBi
+ikspi19W/sUeZo3JF3dD0nhmpOUMhyA+43/ndQJQBNvtNOGxWLFUmSTzy/XXeUlhPW86wTo4kti
1xbtUh0dUGFx49GVEAGlAv3I2lRkFmllxY4qMneyNgPolBCtkwG/WmILxZYshlkFnlJBbsSWgOc0
iwCfymhMWprfNapp4oLIyDaoYMnI1HW5jd8NPCtdzA9E1o+udLz5XtI8OnLHrS8riIaB4s7n2PiJ
uNjblSmuiqRBsz2WZyEdxgIaEcnSS7WGl3zoQ6rnW8ih5Cza81H8lqkjbVqIACTV/eYcssyBNQyo
ZKSHSzc4JyCHaYm4SqMNacW79bgDiyRjuyWYTqA8A33VuIRJA2GG5azz8KVEwMXxAelgi4rrNj60
M5LEjlvHy/14qukxvFeKgWIIREE5QCFvuxHyLgL5V2wWFDi67Qz66VAssHDOT3pFk8tCDUwHfnYO
C20ZacJhp6xtcgUyp6/YHlmzHnpoFf6RfiPJnrgAj3nQV/1a6bTi54OErQh9hmXfcOwXK1+0vjz5
7ZzT0TyA2OgIOxr+w8o097c7df+NtRQcocbySksh6wtip2KwqoQ/hseWZjUh1ehidA6zqHFZpjB8
G5OLoCvfVRCFFztAaqVNkuPabfd7od9a9QYV0PprT0majP9j5AiUY9USRd+Dyjltx430JZWXl1b9
LqoajAg7O1y2oEvcdkUyBTiS6bMCLA5Yo9uUKsWb+QfWQchokcVpzRzdTPDNnHwNJkcdVi5+7ai1
gc4I9/qLZF+s3B6Wefk01Ml5XQ5sxw4W1jMnVE1zRq9U6bumvhUXLA/mbIiLtj/fF2sSuWhcwpqL
CuRwsIIRGy7iGzCcN4bDk6zyQGXa8cAYlYzRxx7xXHsDPZFquLZs3sl8zgFO5kEfgtyBcmQpEIlk
gcjGdLNWT4pFoO+jv6UHhSAExPtAUbRb95FgM7Sb/U/tEXWY+mk1wzsVWliP91TwgnnTZ8ipvVH2
7eXJM7jtfgy8csX9Ac2/+HxK3uj0k5AKzckWmsW3qVUEo4MTZA6PfSMCwqXDkn29f7h5HUz/M53P
G6PuB+h9F3RrguIQSAJ+Gn+NzEmY1bqJ7uZi2pnkhmHt6GKyMmPna5pNDEKSkYm3Jog7R2e9KaUJ
5oa1f7L7+E65ojKNHX+nbi9+kX9YiD7z62xy7eaURsSh7pQ/0LfaoRb6NVLannEyslxinWKFRvTE
yAtfQXY6VMOiLlIA484geEZXQcEmok7YEyI8QuZN/5tn2olJU3C+gwuN9SbgJkjb7zOUqOr3KoXu
PGdYxVgUrUgmLDo+n5atdTiJ8ivbpCrd9413EqNvVniXqfWgAJm1AeZuBS3rEpYjX0dLpazB5Hji
z1g6TsL4rK7oGuHQF2SEEjUOKt1wg8+Uj3WK0FcvD16ODzuiqc4Fv43PpnzZO1/TRNZz+/YvF3Di
w+LeOEBmE2cyQypzGpHkfgtkKmO99BurciqaLbpVo5aXsQN7rncBeXjpVJOB5t8+ysYodJdKDCo8
evEFH+uBhtbUgpC2m4XPv7oNcHeU6f4h3U27+fm5TXspz2fu5SRoSveq6JECC84t6KjzHJnEIbtq
hO9gKYjXCPcNkQJhdACOYA5BIYdhG+YGGknK0fJY+jSfghwnyUA6h63btO0xMmnh7naEP1ZPvGbK
PU2RQgvRcw8t4az1ETw4noJZDB9Epl90M1h6o/lJEd7kDOOA8EMe81Zoq2Y8uSjjzbnWTODqbfWM
2jM+FKnN55vgLbwj2niyHnj/Jc8Rn8YH5847vXwrDo2lkTVjazm9AH8/VsEiQMqWwrgMpYybeNxX
YzEiFi3Gy9oUxBfIIaRG0/9GM5XbqeNM24KguNQYpMdsLqNQBixIZ9HaD6KoZKnRCiqSPALIEHNv
cnDIPKaHNgvbqlcmIUIEd2ByxqTZNjYZW2EX3yjs3s0sfMVVr6ZXE3AGvZm4B2bH0aBYDBVCaFu7
FAT6WdGWt+pPy3T8nqmGMA7aShG9A8vL4VzWE+wFUnwJodJqT8rCla6GmpE2blIaBCuLcjefWxjT
4j7R/OSKhrMfZOzo3CidWSUL8xIlJ0Wa2bdeZPR/CZkcaY4s02ofNmxevSqEL3ByMPJITb2iDmfO
OjkpPu2mEXc3OhEDegZsBaGtIvjYqks+F3kBdNR/VBTwH1exaKXTgFAfzv2B8PdgzfoACwVQdeBJ
1FePuyzv3eYa1oqgsh2bOzxh3IC0ErNcHUuFpC+7mXtFM9l/CgudQZsICkjH0YHLefj/OXv6L98M
Uiv7SEbyzStbj9Q8QGK9WQZl+empUAUbR9W6vBHel0Aj35D/KJmqmEKErbueSjyMgEwdzUGT6cg4
Wji4pmYJ7GxY6F+YxJHhsGH7namUkpxfHy/t8OS4pQKFc8LYLwqiyzbV//4Uy9Xsd817qknczMwh
bId2nlSJVaiGd+v3v6p9jt8GR/GSA8FDhL//D3SCCuttA3Au6fAd/IfTdIHTmuU8fddIAwWVkYmA
C22/6+Pv3cEAux8n4RrCSSgaCKotUQonLjOSOxyi2e3he9qDyaaWdaPVTprgQUB57WVz59iUQxLp
zWGjeyBokiCSDwbsWkVl8sH4nrGGUR8e7P+4SeFQC87AoeM9LsAdCDd0T1M+UilHQCALoUNuYM4r
L9ECdWpSNngWcErALx5nNSyqgGYckhjrlmDBjQzOZW664Jf4nq0Q52KBvcUUb+WmzY6FNbnP9jqV
xdpILVM5J2gv9HOrl/CTYXOtDI+L4k4/2reyPLXgf2vw3Y4fWRYJKhiRuoYyRimSkbq0sFqcHowI
WClnwSaURZudpWh1xj/da+uKJ7xhaAIzefrgaVR5NY5NEkSU19P+KvnslvXsEehMJOB231WeLMoq
3hhCui1qoERzKGx+TFJznifDU+KbHhexArbkzkIqzjYaeQJybMCl4lIGUU3Ga8pMtR+nLxB+wZrj
dn9hzeFgZhiqUh79QmGrzmbRwck8R8YxQ4lGDTo6j7fFWaqNt5FIVvxcXy9oIQ3jOYsdTp9dobSE
6oCG+ECYHjJFmPEMiSOoniKnWHsjnsFW3AUpkOqJgwu6qNDzUPEKWk+h27MQgzi5rxoFB/ohrJbh
aMbMlyaROtXWKqIZtvJk8Lr96vhAnj5sghJNRAOJmJERQowmejmZgvzF2yxNxXFcSanPkzH7kk5t
Jgicku1pbU7h+Yttrrzei51rFE7c51kDRRKM0y+vEwHyuflcxF5k6/ezIsNuZe+ib/5jIiWj/6+b
KgSN1k0RXyqiYuTWKHzGkMqMNWyQ53Y5IOt99CHLmqK39lJbI2eoFzvv+RsniH4hZ4DnKbvB4QUj
/gkRJio3EjJHE84ovq3mCFes/SfJUR4Lp6Y1cOhhiVJ0CtYXwP7/RSdZauuJp1WWI7kvrGT/Kwik
6bbefDwrxifJwxmTESQXguvfWUR0a/YOhQ2e5uk3GQaIKVoDUIIUju8oGxKLWLja/CaGsXbrLV19
wNa71kc0ql6cCQetwBOwI2lHKwv827t7pzbVdQETfCqZMUfac9gU8MMFxR+VAZnarc4M2nsySYyg
sWIGsFiMBiaOE1AyYI9057nt74eAVq+6G4UdMxX/uMRNNHiOVvsy1BlXv265fXzHxx/2bxEHTMi4
e4O7tsmOGwzOd6tM5QXaqwrGmaYeWPNpUecjbBEj35zhz1m86PKPLcUyvKW1mGwF2xm2TFaNOtPZ
vkpQwT8jsmU+krgqxAIfQDythixGu4k2A1ieMcfmbDWSIJ37u9DlXZHQxO9ISEWZR5C2q4UpqMr4
zOw62SSGV3NeeHXotNtSj268TehYD0ugVp90W7cHmuK9nQhyed4JsckMMTLCIewvOTTHdAlzC0V9
3dShD7Pn5P0M9FjmXk4MkHuNq+DQGaTB/a/qqYQJO8iwEQhz4bx5FykhTaP1jtV7OBb3LomcxBhe
BDNTBX4SaadoPdLSJln/diJ614MrYQAKaUfCgw9FtPrmqOwvUhFL6aoDKvDhmWooBKXL5Q4pAzKx
Mr+04IU3r7jDb6vKg1aJ8f+uPfu0AzBqQMYfVry4SXdiN4cHaIQjwoF2nbKnWQ1+1NURFhp9iTaB
i+iDIOIzBysPxHE6rWsJwGnNX9MGpAP966yftsPzAzOj0AotB39H036lEqkms8fJhZRb9HAD9dX/
2Iqfnf9nTGqlBoADRSZaSi8nL0aGVyJKcqJRV4aBcOSrsmZK5ETDqUL1XYVpa2M+eQr7WN84zcrr
jEngR0IFIdeOyno4iNDzabW4ZQahmuw7e8u6L/DfVXjVe2EYz/Y3ACFMz22L2edd9XgLXGaSkFEh
9BZuecfAZDOEV4w+7m0Y8l4UhPcPcx4xO/2kY+jF6vEXJ45HsKZyR371CVPF66QjlbC8drI6g2oB
zvcYtik5SOxrGKNhx6ftXM9sHXpeZR69GuTFhcKicLzb9pXRpP7qOSan7dqzOOWpMpWLauvqzjky
ov5R/USmT2ET7rxlzWGWZqAD7ox+YyToMGQRE0OJiUmazgYzeBRp6oVQeB0BpYuvhkuYvCh+e3R0
jw9o7wXXIEK9YFpVIi4d+uli+2eIx8zGbvIFC8lJVIA4IeT1koFrztHwYXL+n1feHir1JjUdz1uF
hSaVBkdrEvZ9deYvwmacEwKt1d+GsSXqzHOItKv5LkYhoaznRjTrmlsB8ccPwVIIDiM5Ocm3VceN
yQw8qEzOs04iZ+MfHSEpIpZuQ51xzPmpmfMJJETwuYjKehQrKShlXpX+dx4Vjs+d3y6cRpzvJEhI
1r2gP+u0ieIySF3jJ83YKJXBlbCtwSokMfkWSvlVPJTaztPX5F91maR/EuF+FnMBfbr9SoXlwClW
xVsS4/gIwKerjdhy7d2K4TdONzagnuYwzwSW10PT768KwbcV4vjEa2YIN1nsZ6SH3WQ5i54LwLBB
QHn8cE46A4YdVsJmo4cvqQ5S0pD/ztmDkuzPU2uw5QhS7GfN8uLAG0YycdvsGTtopXqCSVz56N4j
u8biNaI9YjfgjAOCFVaVWxLT/+Xj/B1dzIY+KevT0hqPWoFtRhEj22JoD+5vnKgM8MKPJOa/2pRW
31YjeqJFLSuTnMVdBSYMC0ZyT+XZdSzXGQI3b3waSs77Oy5NmGylbhlnWPNLO9qYoygsLzj9N3mD
dlvK95JEaHawWkfWK8889okPY5E/hspaq/nN1WIgnu8q1k8o4Mj3XQMqXVw1uT754bJfDYIHUkiW
hxtPSnrpJUQOPIpZO4QRA24/g8hm7b7I1dYx/aQjzNEXem5iEFyPS9XbobKy+Yx5znRprmQ6zCzM
yDiSqvw/MAqDene85sd2ZpYDHa9nKIbcmVZVKh72ST1WRiO2btd0uA/voTsV6lyVyWMdOFJf+N6c
O/R0CFOlsiYqQ2EB33dikEtPSYMmaqj3/WKkiiWqcBSO4Zec7+T/cXzgsHi5Y91Bk1pKkRsEj+vc
C1M/8IJkv/bjwZO6c9RaGTSeBecObfGHeBVg1FNcXpJckbPVUNHj8Xl3YAoaSbfagPE27BHYTUg1
eENsDcB/IUjFsupE9mPGn3TFp8SRspQ/k6x4PKD0lFIHi3t89tkrC+mAQe72HwEezAyvF9kRKYrq
3MZXMJyx3k6u1Y2a35FZ1PbdTRpVJr2OF9xA8iSqhCqalIrXzrMSVC/vkbQKQqfZfFg1GOazhXhw
ka5fS2alujJrvsIctu4zrKuqgMRNoNz8vUjvG+L82NUTyU+IJVjfD6JJreuWULDn6CrT5pgdwwtM
zp3xqEm81jFjJRbAdYDS5korHlnrSnZCdoc9x/EjQo91avvzJKh79BCUS9NtvO5pKy6CGHcJoCIw
5zNy51xuaqE0P53++Idm0Wu8rPdQHzg1yNBHVeYeyojx056xMK5BVmtQQPagBav1Hlwd3+n4fdPE
xMxDwOQzsUUE3euQ/O08icz7q7yqlsp12nQmH5Im3AUe1qyBh8dNO7ra4TxfkOEtzMoNpKdrFo4V
4Ec3mK304Uc77QCgQV3yzVF6uDVAgz4pnGdUwg+fOHbssw97D+4vYcK/Wq1JK/g8IYfmDUNxQDng
4XwE033yZcTQdCxUGCvzV0JDend2MHW2zzyeZMi5yx3uGGWdZkcHRMqBs29gMLtcGm0HzI0WfAHC
L6qcBQcBy4vUCAQ87DKggHxAsOQ/8g5yOpAA/JZYeiYl9sLK3S5+LCl++Zbs4zqMG9lYZNAEWdDB
SCsWJ6Pl6/XJ0hN4h2ygNhwJYq5mk9FscreBJz28RFZweYdhgR0XrY2inB7PeIdI3CC/a1b4kbY3
hMVC3uyWdAnNvc83TAD+oI221/ez6z5480xxBJ+lwye/WzLukoxH61I8OF3x19YvtHFHUwWJsk6C
iALVil9YKBoFwhEC7ir66Z9a1Ehvc3vlSN5lzlNrK0sSs1u5uU1PyU5MXIGuMhjCZW1weLxdEc7T
YsP8RsgMnuylJ3uytvYo/3vtIpl1j7zoP9ghbiVXlzxS+YNUozL808JNAoGYnhM+qlA95OAXqcTf
s97eKhaAVdcfRNtjRTqpCEAg0cEDoWpPvf+QcEsfpl9jkBwBGa2GresziUQEl2np5DfUW2HPKtgV
V44Euo/mMp9xUFIqtjwV7aJGopQhQqGzpTbl2iw5ow1lfIDenWRT6M1SR1m70XJcm7HsIAhtxPu1
REAG74WyYw2UcGyHPVt+Ut4iJPMtFwNWoApE7Exk5muKJPK58wZ9/kpGuZdufgb/EgrxQI03x0sD
NVao/9iUjL14Po40wgkko+t2DKI/Rw2LjzxfQr08P8im2ARPIPqAUdtvnmucagV+jwaqnCHoz+69
8eo0E2BqX5FPRJ8DOhFVMsHO5W2hlcJ1Zx2hFPj+vEB2scuMsGsLVwqQYG5XGBxdU80xPLNsAVem
eK/XHYQwrVxN/c/DViZ57IASEGKHD9TlwhPAXkj+j631/RCx5dH8pjqUTcDV2ug703SoGu2W3i8E
AIgZ7KopZDkqMQMzOoQppot4Gyg4Pbn7/iA3fauv88SqjTMgM6zmvr1l2gbt7xMqKIIcrDvEVS3S
DpX+qRQ2Z9g/Ae1hgmzdBBwr2E1PedxTUKvsd4Se49WtKCBOrF2fziC2M06OXRMeL4UEXZtyL8g0
WlB/CEbYt74c3RTTqfrYEP6uR1HvgfFMXPZxuaY2HrWbLsLpb4sUIqy6CYRNxZEQ99pLwJ2ZLM9z
Ojn8VIztRUDP4n7rUBdvs/MbnLATkAMlkgEqXGSPlY9J8ALtznS+9UC+yOQ17mF2FB7TUmkg1Cve
3zzxnvAkAL/bBg9kRJbxArNZnCHYhI2oTOI89f48EL1qYGMDcdhdHdkmfi8NA6sstC8D6AJZPRT6
HxXV+tlNo5g2Df98hX0CklchYQDpm8T7N+RdXsZZG1QcohU37w238Tjy0xwcnl0PgiXYd7bCMxSV
yEWPJknNu3TxAMPyxWQjSdoGrTP5q/QOzqShtjyWEe4kSBL8kj7bGGurapSovdrSr6IHmNJcxB2M
8c6xRl7mH05NTP5MDlOUT/LhduDPo8R6LoUZL53Lv1z1BlqTfhL+AOHN66xM+2adOp/h7SYLjT5N
m/ODZyVJhc7gY6wuxCJ++8aRHo/aDpgTtpb60bLPko1S4MlkNYaITu547knHhKesh4GxpsuxaDXR
+zhfMRRLg6YHADTaV1dgwS70x3HeYc2QAwy6B22q9LAHZ0Sqz/S2ore9Na5coJX1YuxvgemzCHjA
Kb/fMswsbcjXGsXaO/K6mjr/ANGD2Dj+1CHneATuL7i72HCTf2SxKrkEyvZa6ki3o63TMcZvq/hn
9KaDUhRMwCkRTPkmMbgxiBD+T75YCMuO4RaSm18sCy2ZLorWXHfzdDDhwBAJh0vtVLxgl+us7beQ
/uIwz+KrYdVAigS/q0ljCjiTc6q4wyyRCk8Hg0r832LYHkRelv2EtZgOM5qvbkIdsN8QoKWTkvZV
bgFu0lXiCi+LVRIf9PGTuCujGcNqe4V6fla7hZe7sMKSPDBrDQV6z88h1GLYHCdpZ121y3CJdNWt
WgnkIy3JCR97U/U8p2N/33wnliuOQNeZlS1t4zS7lV4Awe96Xvif9hQPpmyeE2BLQVxR1slQSNyH
1pxOjGsazD/CSiEKDKY4UvETsODm4ipS5bjPRkGCplz4CFGffcCPmG619cQ1L0hRYDmL+p8H5aDl
NlPsPGZP3THbcz1H4jtgOX3JpCukbccv9jANH1fe4gOnfWLqZIqvDoxD4vwwFfzrXuMBvlDvj8e3
aRAlxPkC0x2rwb8XMsYc92oDhGq7uRfGMqDsawJoMsCldStgRjlFbhJgjQDi5qGxtJ86PdylbUKX
nmSQbY7A18pk0t0mbRHakW1joOWlpigYFj8LuVFtmyLRYeadMjdIgcIzm2Zn3ES613SGrJKJ0o/a
d52/8VdEdSeaXEqanIj8elUX3jqQsZ/UBjowFmdp20kNgw4sCvn02j65OIadKRL3TtoU/GPOt/Ku
/F7UeIgAPpH77iuOnewfChWyXgPP6V7WWSav1BtnIaZ8bm04SpRnuTs4YSIXzKbYuX2Irzl26aau
sPUlR3V/GNwdmBV+tzAUq7tWjkWqJDlol7lwyFur1BYt5rJmndvgXhrSh1tOYKamGUjfZrt6T+X1
QIbIDRxx/ekdrYutnAKQYS37xOZNGRUDkNUQsERID3nE0EpShlJbiry8Xh3AkFTtWjha4sA+jFPK
bjBHs1hwqX/9p2xvvl/Idw0PBIAxVHVGlSDLp5sUriJiQlAR6+lpMLM+SFog3Sm1BHLc65DC7xz8
hOybdSu0Md2ZKVofyfKx/Az9tqBLFChbNCF7ig8ZgnWcg271q4+Ze9EBn+QUGqcY3J7EMEzJGIDJ
sRyqRTMvxkV8yE2nmXQWqfh4RmsiUXKreFKpacb77T+HOTFrDhqqXBN4HQOAsCy9Tn/iefsuWAC8
cu2VcDdnSW3nyOvOmokiQbViipQTIQWl/g0qqvdSpW4iDO+wvVivR10HyEner1OfbnJLhwFtzlbO
LA4LYdHclSUPon11rqOj3qQvu1/kjJmwmNsgh9z/cMKMi+ttjO8igwp8/HRHZsvmeeD8oyk6aYec
CBTqiPPV7JRAHos1l/sY5cZI0FQr/aDCYS3pnKayLVlxX1q84P7DMBy/n6hBIyGJ5ortvm53R7mq
ZAZ2pSlj6bYGQUGnr4lrBzODxKXw2eyNt2quQg5HkGVqqJYL7iVKWzv2hojVh7GYeEv+CJeaEmfa
1BD8TIEbJZiEQtl/6RWnr3gv0RL+let/8SY5HojiXzFuLETcCs60k1DK2n6ZhgLW6hZpFKN/CP4+
NDlc3SkaLwifTRiYzEvi/6krBEY9VAzlTmu8O/esTMVvDmRcnNa3lU7u/XRgOd+YAPRgYKmMZb7e
FvlRBIL561E0woriWffTXif9VDajt3dh0GT0NjvjNrciquBqsD1OB/V8fAIc7QSUYRtSX2qdSwvk
HMAq+qjyWVb95+4Ul8JWFW1CscBH1lACTDcuJA1m+lnd+gCnZl6pxmPttezx7pqdtxWO8wHJYf8D
gwFoEste37M+duOtvblv7Q6jOGgoRg1gAiWvBPtPdTWbnq3hO5K/Sc//HVO2JJ2CdPFIToNCvaxl
3fkdH4bPFbg6aQNDYIODflu5mQdv2WiMxEi67N62fFJ5HAAYFj+2BKoArMF9UWdk1xVepJGwbOqR
+nGgSo0F9QYBJR8dDEYGy0JHbT/KGyWeUqnIgun4+E/r8z7SDbqqagYBgAOHgwBd6ms6iigWtoX7
Nl1ZmUQX0mgoRYf8sce5TjQVSZ80WoolHBBqkuPfWAcJH7Arm/4SOK+puSBoivjX0+7VYK+rjNHp
S+GJ7WAHIiuWawrC0SxmAsAoIS/4TlFpHz0g4CzEhSCN3sb7Otq7gR0e5Tx86V51zDN76MrvZ8ZY
E5uwyOWvbfNuq6KRrpOcUVJzy5sqMJO0mwP6xGmHBfq7LWBa4+Y/4qygtxUl5AqDb/mWtLNm9Jwj
q8vNSeHxxcPWL9T+djY60GKHp2OkGfCKWKz6w4ooA6KhpUxnz7ERya5GDPfnfm0/tDasayGlLNqr
oQ6vMtDpfSC1DG3TyMGgstd9Q12En4pOcc8vM1qWkMgef6uyb6zMwIStpbKf6RBZbGBDTnWCj+z3
yGTWsr4cy1JFXEMgKKmwRllzBDVbR1GQ4tGt0YuVvRti9cRTnLxXDuhfBDuydWp8u2LL0w07srCe
uc8LFWe+RZMopc7gbSXhU3Rd06QyGqhDvSDCyyE1+/e1ExbGAr4V5r15rGMNaa95+0CUFRbNlkcn
+I0vZC2Fe37pb6Yoz0DrNb6Zj3fp8+3LTELH3sancTUvTbUasCii7WeKORbgVKWWyFuUxdzJXeDE
FFoyMRKDWtvm+jKy168lbqEVHIQ99ospw4BkIRucCzoJg2OwgOMCGI2w4cN8Z2sfnDE0X7NZDyDf
biJb6glY2rJuxWuIJLVUyfQ1MAkMNXXgAzaAw2CWTFYxHmvMS9UNdf8DJHttFbjsmIQPGjs9I+o6
oqu81jNvzwOERF9uO4K5ONr1T7D9nK2bct9YNtgCL+K4eWN1SrmA+MvFKVTPVS4HtMKxxyQZlCij
mDzHjSYPy7wxTH41lQeC56R7+Y7CJUpscLUZE63sfw2eFuOFedk77lzhIUQalp+q4M+lr07nLEZU
Q7lcUMWbiGbeqngq+ekiC7qERE9rL3BCm2WQk3TsNQJ8Ot2zjjs5qDjIUVfZzL0PIcVLZa3QPEYK
/Va7biOqfiPe3ezjR9GbFccFM0p/u0SPQoI8TRJnsPJIhdNu/1zASQyFh4tYTL7GkwY94gWMNYik
AbxtqLCGxHavIuVpiD7o3waAiWSSR8hG0fJxI0cx4j8nYVaFS0Mu/y1cCKi33oNoeduA93qrdWyT
QbuyQMkuphCAXD3y9cg8a/p/WqJ04DgTebl2fuu+tNwPYyeBJwvW/LzX59QcMigNT6LGrrLi2j1Z
tiUCc+W2vb8AAxI3cPn/5kGaEvcWW4h00KXnEz9oi7/jeS5/pqHE1BsYZjMFK9iOt8cmAyNkZtjp
3DGOqaurTOH2pff7uUjbnm+Mojo/NwU1Ip1/S5SAMsyfp8IVBQLfHu2fiAX/zaRSuA8wdEL5qR+m
mTVJDRzNXjhPHXx12v9adDkKUwlVDH2icftTu+2bIbGoJOKgOlT6PYsQ9Fginc3a/5Zz3C9cv/3T
q0BuTZF8CESkkHgn94e0jF1i/LLIVu1zkkMkRFAbr8+v6KlfkeUysiMs02AgvRUiyMJWwbby4Vgw
Ww+jg22gm+Rdjj1Po3xkLLpsOmovYXwXoCusElkH0FQnfe5gAlKcHYEv0Hhh/DN0NT6wI7nnRZkC
YrhoRHMiQdHBNWVYOc/qA433dBwngUJoUdGZA932en5aWX56kWt6SldbbqN1wMnqEOhp1JhLEQPV
vooCaYooXWlyd4moFAKEFRIOC0Q0ueN1nTKg6kC/aYvGWaqu+BxKdauzKWsYcDACfW1OhiXCoCji
hK/9yAHpBjJ4382CT/IWyghf+diVQyf80wQQHrTNzIcQi8e6mlhITtnV4gpN8y03fBplSI/Rjvh6
Dqr2+RVwxdUKHcsntfyHs7QS5QT1Gmqn0O0ICbN84GtCHFi6QSEbIZIoiTw49rO79FrOzYCBAsmf
m1PtgG42S+LLDcs31gQ7O9dKYwZDRVfseEyr5eeAh5HmOlvf5G7KrxSA/LGK8YTbWCdoAOA/uUTJ
9gl/OfZxZjEKIXyYttxjOw17p/VDT4MPSO4L4nsWxjffumAea4ytoAMmobDA0zwHeweaJzcHQ0nY
5aivVKVKGo/TESburr9lBMVIUb5NFf+GGXGNBN3KmyQNoZS7t9m2hQnRNU+0KmdVPTvK+9ebQ3+l
Kd7rh8iKmIFU2FKmfS+OX0sUWwxT7sRa4omueFrHirdYwIZxy+SteOqjMGGbW+2+befivLw8XOP0
xIvJRMv09rRQHvwj2lAV/Eq/J7x8yTvfdcHOGHJl0783WATF80VAQmS/VJnjNHRszQEz+f98y5Bn
kMCuhPz6+BMLFwD/XuprcjdaPvCRgKVn8xBFT5zWBZvIOVOreyACsEpvBU7r2Ks3Ri1kZQamL438
VzZ16LVk7GlZywDlf+yUT4Bhy7lu1zqjBaghAvmEnv+8MI2IRFeyDGbRE/XEo7RukRJkkTnNChLB
dJp6Tsly6G4KWJz4Crd0VLzGUTx95qiyqk61ZiVlArZ6yLePK6NHra9byvl3XU1CmVx6lQOhX0Fd
VS/QF2Tocp8/nmSZsWwE56DXctm/gt1f/GIyWUu/YpUaKXThkP7x2sigmKqkDMwf9fB0u3F1ia+/
E3f3Aq8kg3D1j4MW6v+g53iEMFBMgfxKEDFpfBQiokbd30py61DpNMny156TWUGMgG2PFvo95l7q
s5Qb8iZba2tE0fSKLFsVPgeydQbjE9SLHFEQ5c9hrYWc6Zlke+LuHIJaoM8icrstONARepg05ciE
LU7CMJfR+8RfzeCPAFotFi+sOP7ZS/eD6w06HA+DARFaeHVrful8TONQ58xiebvoTzi2lmRZgNx/
UlgymSPpuIypUWqUKpT3o/hlqS1QsyxBvfOojMQRP++SsGQ57rWO8rrcdWR3QBvPOeZdTM+Xifbf
wbmckt4KrU2eEKpJ7ZgbrcGml17nKrGosazEwgbRYL6vbqhzRg2jzlbdgDk8o4RLzgZhSoKLOn6K
eSP5sv2Rjv5pF8y1wfSmmmpadd+ApFfJ7aGAxtySjIvVCmcpLwnwmZ0SrgPftAGO20MY6dKpsewU
0DTL9kstARuSMjgksjJZ5Skk9NWG6r+CXqdi26LXx15BgmQOkaAiHsV0gOKp2fKS1J1DKGBFJRFN
HZFLkPcPilkxPdQawbpDDkI9eSIV6a3qjjoRzwKH/rZ1DWvnfIvGZNbwCpXiJX//bj255tYBkOfU
XObD5iKOfo9dHBFc4Y5mwOf0nYvHHPn9c9TrvD8wyjhtrI/q7rg1VzqFgy97mFTb42f3G+jmU1A5
LtSNo+6BkQfyEYcEV/q5X6vDo9RKtdCcx+PV6zjjpK878y3G7iSIINOze/9Gbr6+/9uPX4udFbNw
45dHZOxhwFas8xRPYz89XSC0WNxf/577mf1YrLnNPbmna9/COHy2ErzvG2G7i90ERNno7CFsaKnk
7LHGgW89cxAKlUt7tteF72+sgIZ02zeIVY5sfDAhW9W7Q4YY2+nWLz0UJo8j93bMe7cye0/n5jPy
dNTPolbzNp5A+0eI7AJRT3N8ZGnpc26N2jOlNwGADQfWMIFfZf4aFABMCs7QZGGOW6CkPhqAI+Qr
O2L0xTbViaV2C6ur+q/Tp1fAZm6hdrAjGhm2U/kO0g2DFbCEtipoIReTi/isBc7qv1iEdtPhCFpI
zFaBR4Jf514bAK/VTBa3tQ/1JXtoPtK37NW4vAnQ0e6oNnCoWjJ7K6SBfRmcMnT+mhb/D9wASYYs
WxKrz7TnKFsXPoqtCvBpwshqKGBqdC7lyvbfv/3qRCPwBOq3833UC8vRfvAeSC46IKTTxg7YDL5K
NkOVvsNGQapLTpwKSf0UKXmiscvl122VJ3ZnsZER/WeVU/HefQfSBoqUQZH7XaM/vHJQqldVPf5G
LAZ3mvjmOTUqg7v5w1qWUkf4EnysV51ApjShzVRT8XZNuHXyCEip+Hn3XmxyDRUb+OM4rQVq0eVX
sjdOMYrPinnzlFkEboQAA3pfyVWRpVSbHJ3uwJTLTCu860+VFKHUEOtN91PRo+nVhNUlqoG2FG2U
S5S0G91qbovhu4bulyExuHdY+/AlTzYkreO9YQql7Su0/DH4NdT8s32t1It/F8/lqMqYfrH6r6zn
5MPnj+zUnD6I1eOILnxm47a7lnKPfD0SIYroe8vqvsAOPRhp7FtsLDvZnTYyB7H9BKBw6PyM9Ht1
0tDIrtZJul/KqP1oIET5hM9nl/g9+/z5/9N9B54V8lOWP8nRHso2ZBTvkIfHJwIbVffOrnuFrH4b
JBYM6DkEM1XF91svcCVwlI6GrzDvNORiDu10b4kuv5VKwVnXv9mDhdJ7U6pwwJne8kwM9ygSLHQR
WpmNpf6XMQbv0I3sTyDC8nrGZVQzPJl3530347SHpmKDg5Rg/HjojazJ+eSqzmSRrAAMAH2qwgeS
AIYKD8mu/7j6SHpURfs2X/xQBb+d42wZWYccLmdg2mtOlO2p2Pz1UWX3IsfD6P6vaDqgl1pMcHma
kIiEtI9mlQYoUGiokuYPIZYwOXGI10uYIg7ZuVY3XPq0qHBWpJtUj9OjTnZGoO++aKdaeOFtpJnt
5TosuMm2Sy4Q8AM/vmP89ASOdMMAHsY+gy/hfYQ7K+gLchMYczTs8hR9hoDfSFlF5V+G3Fi0fon1
LSig6WGBx9pJYpsArw3V0OoxFV6bHYT8j9Yhj2neJ955n1H6wQB3oY4GBm8GmmaCMaPFdozUSbcP
V40Vff5UrnkXaOkvS879Yzb+xAyTfEAPsrKXrpHnZBQATPHZJZlnbpn0/ReV0kwOJ0opNC8FPtCt
m35hworXpd/F62BdqdR61p/jIyoK3uUsEmOJh1cnV0peA96fBb1qDTzNuvwnu8rQC7lKOAzf/qDt
79gYeFAA200/AtrDR1PomX1fZqbG1cQUnh7+DT6gHLyAw5QzxWR4I8ff9KpPFV2gt90WTSxb3U6X
d6E+/al/mDmGziF2uYUvgELcOdfh/xTKlkrdEo2vWE20Xo/m2Fle5oLa4Wr1pFNCRNSC75nrJxTn
XgGwybxGIqG5kZ/fvXgshY3Y3zPPXTKJhBG12zEMASSGl9aYr16sw3phLgDPtbsyFaRaWN1roQjF
eFNG1JjOKWmDi0/l1osx2gGrV9rInYBAmN3buPUaYpa5s7ReXeuY8AKxlwKGS1kgi9175dLh2vCB
iOVxATVImwOj7YE2Bqjlc5kMVLCYri6ZoOvV6UsODfp4R2RukXY9hacIM29GE7pKppxyrlil1WBD
tugvmbCzOwHcXXMdkm41J0g4T28l8YhQ/ZK8AWHLPxZari0GeXKslOopftZZT4nbcX4ywwCwR44L
quk661qp/1LjhZPUgHT8LwaUo1ZvabgaJGgOqiuVDb2ioP1L9MQLYN5O6rtTKW1N7SAjO0YIq0VC
NDRjrVFVFhfGJ6j1SIifvxn2Ih22sTggaTgF9dpF7LRO8nOH9kT9obYGPS+mEfb+3W7BTGndaLI0
mNPeeLFgmUoN9xE/OjTn7SE7xE6OuQ2HSoyLPUcwmSqPIBvRRFHJFicvB8LOqd4nHEZyVyFeNZ3+
2PsD58x+INITfylabVr3NKlp79cvaGUVKCGNfquCFnT7/TbqQ123iIVkbQPa/KK4u2s+kHAcnKDQ
aQlrVKF+Mnyh+3/YOyygR5Y+AQK0uF7kM+B+k2oiDgDaeKtt6basIwA3Ov1AsaMkAC7xnPzsowXf
414/kVdfEVjvuabUe64EEBTEnpAsltQktR+7xOhMhDDs4thXwwIbhjYsSE392Y1FBWiZLQP+e2za
k0CtvWcizGf7Bylw0eIqphjbT4eD9d7RLRHjnFQeAyZOo5LyPbVhtdRSybZqTBhGdu3O5h9qw6bC
XXlN0KFhFBVgyWvmE46XLPhK0yUZBHkaN1NiB2IjVAtAHyCx3MahIDYO3zEfNzJ8xniQa/6Aqlqw
5tkkQ7LUtfiC8pPs0Qvrz9e94nfP4PhbrsNowMupoaaN+E6au7TyZYxJuHxRCBPy2A+APZhfUx4P
oLrWYighJDi0eOctVIx/l4SBFCyhgtwk1kaG1ToeAoOMR7HqYugV/dmOIAu0rE61VWFumCppi1jl
c2oDuqmCdx9oxe3ww5ZzB+fTb+8qSaizAtD8pIuY5MS+8PsVa2PuS6yQGwv2qgloDQhb8WkhpT7/
/RRWWKXOALFaK1BiYHTAbLQyHKC2vfcmVhfvrkSnHP+c78aqZixd5fntSkXBpZ38AErfuXx2cd05
RX4yG+YNRTLDVOKBST3jg29nKLzgaVBwZIG834yMsihPTaCSrmkTXZo42SsSR63nq//rt8YpmIOO
6mICrAiiAlrHmH5O1m05Ym2lsGn1KDAGflx1ZlgAwyLLloJ8bVeBC2pxvrjeK7bS/R3K+stLagN9
BwqrT7dyvCBudJJ+aDmto5Aclrz+XsYXhCKJNGTyPDH/iRIvYngyZC6El7wvNGVtHXMWIpQc9hZt
KH0ckZWgrT9J79l8wcIg4NNCNLOI8GxkrYe8R7KJPcrC47McKpEjPnB9BbPQa16v7dA4ftpN0BaF
Z3Irt1yw0QL28gUdl+vS4jpspsG6HNYlBq63+SiLQitweA36P9AjyyUeMxwtqa+5GiJCtS29Y79M
C+KgTQ+tlegnLJgf6kCQv6105HtqyEhObwROsTBhpy9CG8DY/XTmOYILNRkSNTHI3LnyN4kJQ5wH
JXrC4pCzBvNOwqw10TUKlnjDijI37eR7H5ItsOpT/jYkkkCe35wU1s7JZRzlLDxDAJeLvXqBDunI
LQknICP54Ct2bczOgdVxA+SPacjFGZJSP1UHnvGOKm6OMo+rZ2sJm95QhRBOWrhKPm7GoTKtEvno
5wW17tex0tbmRm2pM5TxUWGNpBEPBjMghynJyF6OSmHjOmmrEs7sI0oUYO9moGNwqjgY+MrE8TyX
n8AjwGUBiDd70oD20z+7AnvFL4JvSg034ECCmP05UsKB9QJaJBlW5M2rViz7jDKwG4+bI5gKEpMa
gUgPdu9tspsi+wZwWBUxQ5GC/q2R/OLBDm4IMqWz0IzmAJnxIZoRm9Am8iSgCPMFA1O+vxv+wTi1
nunG7TadzMwoFTypI51zt4I89Srwo/fYTq2UNAlJIej9NxNbhGF1qhtU3EYRCkrmkc1uQuvn4GGK
vritLAMHxhGUVKoAcfcHAQnpoH3zpDC8wxR/cIJT/KHi+1kI6K+M7D2OEHbhw+epJ+HAvV5YpJPF
ZnVpuQRlWbS4GVeV7O3PiZE7G2VXa1N7NRSGOWJz1NnU8ngOf9TZWseYt9T0f5GwxX4bF5dI3f05
glv3VYfsfocR1eraqf8iFok2OerD7w21OpQNuP0hiVpv79kpT9kfb7y/1Gl+t0yNZwv6NV+IK8XM
XvPaB47+KE8sTkrntqb/eCVWXUtnSx8mJggpVPUFfJAKVH8JvgfFNVJRWufOMWyw6T6tbK/x7KF+
ZyWxgIf+iVqmP0mDIp06vPNI//UFc9KtL+Ii1pc3ksW1XBchdaauau5PnbdJARDYYj1TBUsBwya4
o857AASINrV70fFJs3PThDrYPyGTV23v6OBd+4pYbhzAujTen9OXVaJMsZjR09bGdHyDl9DLa17+
2eFvramMPfeRglTaJ3xO9AGD5ulvwcRfSUIRIPP5wmJrpQpT/WVjb6KsQ9asH87jOEX+pUYeuHjk
Mdu6IHNQmLlYibrgP0YjNAzeg5WzWCON36796vvvZBswb0F1oqnZaW3zTwd4frhmBbPy92OgAYP8
ReoObst9ov+TyQ94o41rzJE+5fV9I9A1v9TgBFhSwalWDkQRcWw01zjaNeyHkSeFePQLzeNE0IEk
AUIMF2CU88vN0+ZNOP50AEYhxzFJnmGvSM4F0Sr+u3oEzz7iPWmuVW7tcIGMZtSP3cjQyfqwvc7i
F/G3Jl1psGPXZpXesdYgnRA5JiDYjA8SgjYmxkTDJXvwdfzHcOCNKv29e245KxbbsIQoECsmYXn3
QdqhXRgf27emx6yx/YmpwBnaVUpaLWg1CUY6eOwHDMZ+9qzGpjpGzmCcKwYVcD0U6ymrNpXQoLZm
w3YN4EputywImuxSTmd2Rt8vYEAoiZOfkpoAGUa8P89lPJnkXG3GRRflx8mLUfRJH/wxmkNcG72O
Yh9VKcUcXluHqXOeDy2oaG9tuBAzzmjsSEH6IpVzk/hXmCmPah393ini/Q5ETTPnDSg67gU7LvTh
ELjZt9ub2M3ZBMoyNe6hgMJjQsza9uYdqNkj4Q7x7rKh7yhpI4OzSO+9ZQRHeHN15b9pOrlxggJq
rCkcmniBQIdjpDAtQH1W+/sqrbBBn6RQBnc/wV9mvNf+MwY/VJqSdpUvavHQeKT9pfJJt51lX/uE
znLtcgs9lWodbYUDNELx3D0WVZBoJhcGhfNMFQRGJy9Pjb6NnCUdny7bB5490hO8D/p14pI+pXvV
jn8dtGUtiFmHUiHl4TMgqc+78K9xJ5eGaGF3UmhW5YJGfSDXjUz9TqcKF04+U6w3InTiD9LBoPZ+
Pn1k5y/lXzcGsX2T2iV+ZonHj0gr/0A1drv3Bfkx7M4F8Ih7KJAp+bEHtNRzkGBU9vqdCQ45mg9j
13mVLmKx7CJuS57ozttsrC6Ezxn5tUpxt8CxKw+7bJwwfu8NWST80qXjgLMBIFbr1H7bUL7KQ7Zr
EX+ClNV2hufC4fMrlZ4is8K1O/zHRaoUaqfk/qsokSpQHxK4OoKTj1ozUb3tqxsTWspgfqr3GPcr
G3pByhWhJDInItHPgLxZei1b5hHOWi89Q+S+MbkFQqBwMMGEo8j7UC9Ya+LUpmNuM9IySsrTfvRC
W81Y+HJoIG6weJQWZburjDWTG7X+Y84Ygl2S9i4fzIb2SN1+CgTGxjZaShIA0//DEW3stGlfuOce
trI1BK7YKjRI6s56pmeiq/UVSVcU8tLZqsGpE05nL51GE0HBZPFLnu95mahCed/JrPlnWoltKm8A
d9M4PcTDQ3+DBCWcyWWzfIf/d2iTgrCcDnGWpijfdTSIviNmE/93r9t6xl/A6iikfoA9jSggUrzt
hGxOF+dsVTdpotKLFYZ7TcesgjovGG0WUP2oBUQ6+2EgsGqEA8CImqQn+j5jHFODsZvLH7K/VdiI
3lNltd/z+fRZoG4mkyBtULFUkamj1DVgc6BzWB16t1+ekBuDv3AuSgjFQhdeJT/j9ApzGZAjTSWb
6g+4h6dSDft2qTQbBoFFONT5rQTsSixTaEYScIVPLhN9hBDveengHsbwxa+Zs+cWRoAr7vE/Xc9C
LO3aMZdsWFJZA5hotzZHp61Cg+ivk0IYPm5RrfpURBowMxVxEnCNSsXuKPWq8pxIluy+ZfLkJK8Z
nrgMZHEmEB6DvTKv7vaIvjuDCRK+sVTVoaMLJFoQ1/jjg4ksjf/83llM6ay5oJfKCDtMrhJrlmDM
3rhFomvgyHXTRFQ9vWkkR8OfPhA9rwsMF9ZAyH+J/XiCN7GVLXMhgVZ6/fQ4ZVe9LCzGqYJHbuy1
OYESjT6huzklqxcyVKrvRY/VYyaSUvISUzMY/OUvNr3rpxdZ2Sa8kWljX8UcdHrfcqD1P0Hr5A8B
EcbDw/ijIxfLjfwIEBM1bsG+3Q39zZo1Ziaha5q0732s6B761GWeWgPOyPyUspDDYsY+SbCX5p83
+6F8M8xQ7aRhaxWLX+wMnzvPCuSPzr9kUnzKPwS5FTSFeff2yMkGbXPjoKOtOI8WTT88TnvzoT5D
OPuaQF4qYOHpckKw9IT2er+xyr6SrQ++IAz1K9IxTapf+B66zPLjyblfG2KyMSWSL1WSYynfhU8T
zWtFvp6wET8JAxXdJji0n2EXyeN33aAEHYCBwmpLHwBIxBlgr3wmALyDBKNu6C2Ao2ud0BhJq7dD
hFxLzG5YZpUF2ScMbHtBVvJJvYoMZgdrsB+97Tvh4WMuNCTO+0FKGifrgdzrAcZlcN/fN+oruONN
MUlqgl0RkbTqK58kGlzShkyNLPSq0qB6lv1GdCHtcJ0wQ5/iq8n1Vi/4hAo+RomSINy1aitHoccl
IKbfXBMew1q5Frwu6EXmVGZGtI9z3PoquHpcU9at9BFEwNQ3+qI9iQh96Ff+JFcbNkQB6di6CyEl
BkDX5h/OYdh1eGll3bHFPu0abCmiS/egJ7OqLBaxehYbNvqHOHyTPWsR4Ukh01EltpL5Ni3bmfqc
rkiGN/SeH3iCFuGyfEVkYBWi7WjRlfChcLl/h4md8DLoqPVFSqWQq22xtshqShhIhAkOYyRAPYaO
qMJ6bFsHfxZf1WlJXXuffVVzs1nwF1iaDP1EbkljONtcLgqtq0AL+hHX+LS+uA7Qmtq57OavgJC0
AMf0rQUVH1SyYmXnWngEEV6YO09dPbWynNnBYS/+H3rsFisdr6nCWa3fmHzBZWKypwVb46smGruB
5hpwEB7STJHmOBtK06DGlh1F6qiMbPbljR4JrSDfnRhZgSlRJNSoBbfJ7p1K7YWJmvd93SsThLMv
51aJiPNSwg2FUf7oO/N0Te4GY2e6gMnIWwSfTJOlDVYw0I/77GOU1KGzl/tkCQQ+88Otwj/XmLRu
n/9UKeVIWRxBVaWW0GyegcKCEbaPCQHu57hW0NaNOFc1QzmfPB09PARlhQeGvI24xoT9kEaZ0xRb
YCTwOgC6heV5b5syu83jjI6dVP7x4Olu7+ztKCYPFqRQFAEeP1x0iz5kAxPHtZyM5TLO9M+pK8G4
VBLFiwX+oVdjUXJ3GgfDYGW9Vcc7WZDAYlx0a5WUz66aSaeGh4LhimjLBqR02pJsIHck5vGSZTim
V/FockSIGl3GZNHv6aGfnl+SEgeaBmAJtuBdpF+Tod5oKhgQPewtrJMGfzb7IOGFzC3IRsnQFlTm
3YxI7Ip8P5U4WPVhsB0b2uWkCmna6ZuvS9jm5XdDfEHDYsV6F/uPA+jUDgtblCU9K7NVp73tqT/p
HV5tW0p4TuRXDZfLZG8zI9zQaEQrZNMFhJPUQNjNyuMajJbGU+QrHC7U84ypBUYudpHZCm1xPluW
ylK398fqedyEvVh+/58X3EowQQqIRT655VYzbDIZlIQcYXiOZ1B5YvPNrp2DDkdtKSt3h1F8rrRb
0vUSrCbMYuXJINJ5ICtwUsnwfKasdruq7+NSqMrrvMcyiI3fP2IU77uHwSBybtnKfbaCtH11Xaxs
TiyqIy3gPPA1G2CUVymvtLWCdaR2+Uteg+4M+4NYCOqtWOqP2aq0xgM8dyrqL4VmWAn/r8HuEMAq
m+F0H+aT/jj5tEZVjEAgv+TU5nEqZx9TXuVEvR1CAjI9DcVNALPSH1pDX4ERSF8CfHTgGlslkslO
XrDWgCG0BRO1Ot0nLej5FPvRua5exP3id0ihZKCJuVn0vZRFOtT3N6NLWcnqmDQfDHHgpLTBQ1oa
YxKWjF1YuiCNUMO8ESoUtsye3rYOyushhq2rXewL048hMw7WpY8lz0pailF0anBBNmYGkGfkz9vW
dvNzdhNrxjEjUny0OKwqiPp2z7qOBCoSXVhHWvfpH0TIGmue5iU4tFgMNTVoJ9SV/Y8DfZusAnHI
X1l+FFQHBWq7tJgcScyabPnuuG07rCdTmYfBE2qEJcvJpPysbz8mwquW0/zsDiAdYaEV+Y0Fw56R
9unDdZv/H+gHne8bsxW7ROxd90LvMvOtWMDPELU0hg1Gmyp2sk20RoMHUmyNWcWR/XBDPJPum6wo
ZcqwBf5fV/EtfGaG92nJMMmDMiR9WIKHJNKuGq+VlUHD7E8kTU608o4e4yueTBWzGFhhUXSOw+FN
dXN+0HOtWXbB8r15XnyViBXw2waGs4r2j/bliDc16DsSPqNKKqGeTcCYAF3X/vOCXOmvS6qw7atU
xVBhIgTYkJxhjSgpG/DbmFgacugwom5RLYCvjwQ1l7HgqqCkHP7Xe77eR2AvcIAByGzZRRHodF3k
z5Iyb4HxfS5UdHl+nEC8B2eSFzTQ9l3q/vdbtUz06+M6WRqI60lpsLavXnlg6pYGp3gNDfgb7Ko8
XOKxQPyafDDqTuw4M5JEMPodDvg73HaUw6+Cyjcl+usSRhao0Gjr/14HdcyFDuSA3sDnavTQE+Yh
2UEAdpNP79HxNGRS1e8eRf7QHHgzKGNdifGHAfXPkC4aEDxRLQnLh06fInofesoNLvSLJOrB79Jf
tLTruSH3+EdfoyTVqUlMCF7AiplURLAwuvBKdmxgcS8lUdXS6nuflNNsAK8tpIElkj1AhBQjCl5q
OO2naN7T7pUxBKBugztFZWYF3To3nl8gX0JAGWYlR9C0Wex4n8GrTh+Loil3OyJqme2jd/oOB3i2
ybKz+6PTfMsozU1fzVEpcRWEfbFvLSruSadA5fTiE/z47vEDqZuOImjbCYo+EqoPYfoSqvwyWR38
fL3UtknN/Kgb7I8Lkd808wBP3V6Vp/l/Kv4DU9G7ho0XWYl2jFMM0GVnD8omn1aE70ikfoyKPBjb
HjAKqnJUmhufF68BGJ+RI5U5u4hW12fFWxxan7pjLeH18n0H457KlvcBQB8gW4Qv+80VRzfqLkRv
RG1q7N8Aldx6fsL9TgqW7vnU20VUnW9MLbCiy8A8wN2mHXzcJCbwLXF5MSFKkzyZfHAmdZc5AOz7
BGS26rj+/nQrxaAAr7eluCOcS0nK87XoUdJPOVeactOKL01TfZEa3jht4XSBlWTrAsGYwu261TdA
UFryQ+IzlJ9rUaifrrol+60RUJDS8HpLDptbFjAuWiQD8Rs0oux5R+fqmUdFzLk8ovmJfP/vk2O3
nSGPmq+4oRZCRvT+czCb8PLft3kvdMXbJxGtNeMQ9eK4lXLTz9J6FJcNu0rWuMJbxYj9YB8ndj/h
KkxU3U0IMh5BHk4kXeJebmR0EuzGSmEk/AAIjK4X2N0WEeLPozhm3fOHdbG/rZtBzKBFMQz0SvVM
n6imyYXxVI7PVmDmBWF2BBIS3hFxtFB2CTWLcoRYd0U2arbNbyXgHqKwQhcyaU6wmWLsOmlkJH6J
EDqI8rMj7vIDIzQq+pML+uPRKJb4GEU8Nd/9xdwho8E/8MmxxR/DEWvf1/+u3UTktStqbgbNz16O
wU//tq912d5IZLZTLMHKUTZTsJT6DHoZj+9J/9BOL4PPcMUCXxUNT3E9rtUcUZQ3rkl4fBH8LvTH
lk2IlLAaEQ5/IYzXgm6IrwELe4qDH/7OMTU2FfJ4oGeLW2AXo8/ogzmbSAgt3sep/NQuKPLCHtJW
BZmJXBwwfo0oXzQMJjhEgxPqRGYfko/lMeUMY8tbf6Q/dkFoJ3IVDIeAJv2nA/tZ+OcbZikUJOtn
8QHAvN+5EtvRUK4/I365f1xDzStEHRJB+y9PF4HBZrgY7NNAyZnPg00BXtKgdoQluapvaw25tRoe
ik4WU9SM5SK3Qxr/nns1eXECbvvrrF3JYGXfxmytfgTCylNZDQ/2mWlwaRSeKPp8DaoXkuWQHSOm
1zrPiE6aFA3lUxw24+IQ6f29VBfkDMwhcFCft+vND7tirbWJpNKIngzQm8h1QDdJA3UZHIi5xfJZ
o5+kz5CHlRMCywSsN3Lahjn7UgV0YqJKTkKqFMQUhk2Y1c1B2u7ht1zPuwsL7+hM9QKmQYHGvIKd
nC5q/Wk3DWd3JJYH2ZVuK9xhPs4de+fbbtaUTtNdmIhzlEO9N2xDzhRIpMVjyoGEslKolOXc6dpS
D8xqwrzvmBfIX5+kcAb23xr5sn2xz92OWeT248ZCc80HUEuYF89vZNvHMPza7y+48EcFg50nWTjz
PcIhDbYVi/MtY+w2eWd2shSMT+fUuwkB7fVcM1xY1QJ7BnjvU7t1GYymfioOk/8PtWT5r3MWsnjY
e2X98CSZoXsyIWdE60TF0+JE16my95iPPSMfAxRjk/90Yxen+D36hfkQl9+yXFayvpmEj+6UvxuF
LphahDHwJaFQUmwb4qXRrNuOGeYrEQWPtL5QBXt7hmTXgeOgUoenZEZt3Gq7aJqLmKfmcGFxPAoR
Ag8ba95R4UZ6cU9WCDz7UZebp9K8BfN2EhjzK6MDPMclmtT3ARJoPeJQu8kZvCdBmVXZstIkqR6g
x5YOpA5aGkesGCooHbvhOLqJHoNbCUnIsgxc2fN3lgbaEF3RkTC74MeUaDZaswDyy/HMerv80S3q
ym1N5ul1tnK+iRP38GHAqWxqjZQvJ8jOavCCuHqrwPqcRAWZUCQbQvOuvfN/BAyHywwYiu2DaDf3
cKmoJAmSFN223e0Xk2EeleCaY4oNpdMTNZxFGlJJkjIrAzZNCpM3lEiLhGopPKSYBSNBO2O5bKxY
QKJa5uw3Cn1Qjb0ZpK37U1QBgBLYmJLVgfkUD5E77yHhDE+l8bs17Z/fKhf/VECESKzL1RFTRNEn
FYUprnI4arCmPgRYLKfw9MEw+3v3VAw6geNFdkcd9+94jn81Knbqx/0V4CMMWTWoByHwfGEvidxq
xibOjClrsBWQRO8+Mle9zaJNJ1SqLTA2sVF9AI9fXVrmGmf27F8xyFaqGJeq2qaF29QZqVpcJWfP
dQr1oFmAWZ8Uc6ucBOJc4PaAVsxgI8fWlwxKikwSzLP4f+65OvKSdvTh7+14oGoYHo0pXw+A4qE4
u1Avuf/fK4XsvMI+PkRjdVZV3KjKjmH+E/4Ef0ztpYoPeGkzOj4cFYEk3djYVCRFn61d0k1pqUeV
rmAZ5LFh1QoHh4IhPtUBRWhOm1FDHKaJSYvuNdKMZsEfH1HtISt1h4q9nNyVLfaDfnSmi/vTxTzq
j0FzBP0/CkhvI9CHYpLOnPGCfdJNzGYw+iBtOYjKkoDpSrAXriZlQpCWPZrI3THKueuDkAsBwEj+
CQKqBTv8XOhDBjCo3V0K4sPormhMIk6hl0uYU0YxOsVkl1+rIs7T9dr2TDIIcZrfutgB7IVNWd0J
K5WNqSy6eeUoz6xoUNQXXjuuMHVu7oE5E9QIE56nwxzyHg6ZyJB6oJUltVL6GpJhA/dHJBdNeGLY
oNLS47TANKplDavJ+tPKso6DdsyLLPGc92qIv0Xkh1GZwqCLX7TbRYsuQY4vn5IkIno/U/OK2V9Y
JF3KGUYGXLRH0mqqzc+oxGcBhA5CWKSJG3ZH3ZiHnFELsw2ZZUz3oE3WxQ7vewUPQwYZ59MG8PqG
RHlChNFfVowBR7KZjuYwGfw5T08cR2yirzdCilGkfO2VlFo+YPYbXHEiYzvpLu05PPOza3PiO/QD
Oto7Dnmy2Ci8gSMysCYjgTR5elBc0/uPrrudvaAMHdh+zWqwGbIDgW/+EpGkEXkWH83G65LdXHPK
/FXhaZPrqcMqBNBCq9HolyYDBA/meuSHtYDjKG9YnzruOUxIRwCq7Bg4uf8/WzKELCmusFZqZNe4
UL4ZRrtbOjQcEtS+pRevkg3bvz+L/uGuypTEQTYNT2y1RXaKStIkL4JPN25U7h+a+D9AQ2GqI5er
p/tyG/V0pQR1KTckNJr674UyqSvDKWgZVQ7gmx1DV4zzgj/9bLn6DrMN11SwZMnABdF0rNAbEtZK
bomP1iv7DL1xafU3pxdfhnpLVSGKJ+tWnU/ze2iLGW5d81d92ndxJSiO04gS9vXOlRwaztbd5DqO
aAUumJM5jPf50vN6IkzAXOVuvM+9+Nbb0ZrsD8WSJjyJmfum2m7GHoh3HYKZHNNmDmEm6CkCF45q
wn1d6rEMPP1AAXtciRPBkdl/Viikq0XsKxgnFAFK0NN+CcP1D8us62iYv0mtnt238ytG8+APoLxO
A+zqqTm2VvUYvNfb7ST0KloOD6QnKN5bPxtiQmjqzudyKRQgik7nn6DC9WkVwKETK7W/aBiuBg8z
+KFOcFVpos8ntyJBlzX8mNjFhiNXuV+rcyt1PNFFz87MkCHjmWSx7XEhzgpzKBpu7HxY+2kiYuYh
8ij5+VmMaMAlSIBJHTGxvA9JLje7tQQEXxO5zfRvK+LjbVSi3u7i4TIIYdLO17W4tZUzVj9Pa+XA
Qq2parRpOY+BYH8vrYMrZlJnHIelXkv4LR4FxuZ82w62U7KmrAJgtdpgLUEsSWjmDnelRYRE89+9
QELadU6GTvzk7Wr+5VYuw2hdaVuVa17dCYhE2wErQz5hLTm+63xSQUqvC/b32gCESSeMXf0AJLJx
5HOLKGhO5h2T3+O06bFCtGVOTwzq4bvmhaTy6K0nxuVOBCKO3PPMhCqljfsFcK8vE6yvn+0jEOlD
W+690tDSjvQWH27H/tq+ifv9Fcia+RaOEVQGcIaAJZAuIGlZRyhssve06wmmUR4XJjpzBc3moQZa
TPgfEcM9KczG1Xzadz2KkUNkc8V5ngxgysqx4phK2R8OcgowCKatcZ0ntZx5QKB9RO1E3q/LsXig
Ii/zQw9nUS2k1Zy2ToUgiPzv7hBZhbWiJS06gEPNtOiLrW0yDlRQrYViaNbX8cHW/0GxXfv2sxME
zUUihQ4a9Pyp6U0v0X7gdnKQtD8KsLx13YWb6iwgT8qvS3oMWUmrBEn2roriN3bMRrUwV6K5ly/A
IOKzv62/z6Zd/iDoFrEbYS6EsUeTJiavycZ2KQ8zHCTtYfrFZzgCt7PzFOGhDjOwPnhd9BOj6OX2
4BTLRQtbYr4OVqb8Z0HNDL0i2PfAFE0bF/PnZcXsn76PEq3BePKjkfGUbRDocrTZHx19B7oUkEDK
m3+djd4/90k5YGLk5VZscAWOD7ViTXO6kFOAMrxAAU69FDaawVzilsZiZ01Tx1CHsixVmVjku6Ll
7nhm5jtOjvKe9VFOLIfmwaV0MTqVb5d3AJVmHcbTcD3Mf5z7U+a+Q7e4A8pCwBJWg0XzbhV/hqmA
GyR24nTiUAOoWzXU9EBWpN0A2VKFKJK4IbNVTnnnLSgC76DbQuOXdKcbboBmBqA3eby86WJmnRpJ
819T6Laq7DHDscs7gL7t2z021B0Lk9vePe0gXSagaKRvzhuuwxJN01KC4y+f50I8HlptzhczE3fx
JDfTsADD9feF+KptHdflOl/YrQY/oxYnSf7aAechFQgnLUf8ZFFSGu+jMQa+2J0SYME6Hvt48xta
VsSZr2OChdPDdBs8JLoeaDFs5nJGsxhXF8qedERYZ0zwmATSREas9w6E7vmxhYOwXgMxciyqjPy2
NKa/tNQ8qlDjWxMLasM00x1lIpmpzsrNyZW8qJvmdKesOA6HS+aerh3dYWKYn1ldyrcZGo02AQYx
TCsCfsELufBnfWV+D+Qw4gQBvP+r//Ex2XceA8LyO6sTzLKjSvEm7oj8ZBDPfp009qpA3/Wf8xFP
fU6J2RovA9kqMGH975bE2YxdRtrvQlSJH5x1X4NA698kbGxzFiZ4P25VNfwse7HXOFXHt3cGg/vb
Vn+Xxj7A2+pJnLkxBfo1Pt2gppwgn2A7/Z7TcAq1TxD7LD8ZnYEMvIjkutnbhTDQwmQmfqOwltZm
dIa2Jucto+Z7VefLtKW3JL8GVJ+XFK95uVKNI+4XZdz1BPv/KHtIdubfkCvYdfDvyiWSErQPsHGG
xiSECsR3Jin+q+nTQ24YIXbVtYwAa9ncwZVie2j5/ZdrvvyiiNnxnprvyPciCuQcOgSvsowbtluu
74zoCO0JHpSoAbjfrqjXZ8b/lcbm19OsszuBTPZzqWuzFH0m/7g6ARwuZcbs3bFhUVy7jN3TtMBc
HCwWsNjt813G1peGU3vnnXIrmTm9QMfnHXQmsq61MJthMMsnDlXVfR0u7YCj5NtyFXVq6qmZudfF
uP2vDGOW55txJZ2NE2z4c4sHERTvUtm+I2lXaEtxAEgRTOaW4cWy9iHJ6onXi8isnFquJO8kYDGr
x0Yy4LX5zLRfsQHHmo0Rcz3tN8ZkunUA5b9CI6PIZ5HeVvVUAuLdH5eb4kgQDHiIR9J61pOZK3/a
wBOYMC7PzyK39LAPQLmNDbJGO0NPSXBzylJK0fs5bIyijtk4M3rzNXfbyOr3/HOs+Cb/YE1jDy0a
t5bMK6PN1S2j9Z0NMSmhviuUMnmvhfgMHBi0v/et5NsaXUGRs5x9cfK+0Kbs8PMKWbDwoB63ZXdQ
BJYbN88USWmnyiIt3WsNvWGjfEU9IsrHQTiIc+6OjmW3Og6+GfNzi9C5yd1X/9OcEqAd63aUmzxa
LjwAy+uKjltOTScuWrtEXBqgOfHpt8K4hFY8Bn/VbTebxMvmB8MMm6yC0NjJ33fNtcIfq7MQB8ag
obaauifwfe8Av1hV4EWfjmGKot0Xqz3ZoRc7UWeA8z8MXiCIL0yfSE2MX5jtMzg/+WYOg5WpXQ/F
u5iBnQ4f40Z6+jLuz1kl6I1m9Ungb22Y4SqLToGCDFDa9HqA3XvX1IxbmPPQ3oco1AhYDwUpZO2X
mhYH/68/GVFcJ4Sbuck3KCAP9WeEnT3SC1lxwB1CFYHBkVXL6hMlC1sR/nmGfrQh4ylcNpnx/G8A
6yo1oWeFmZNmo7DwCCcW3yG1KAzCcaKNvVArUbrYX5eU2h/BvbBLbW7WIBbLJccfGuN011At5hVs
Rgfd5b05TxPwEDA3tjJATaaYIKKRSOihrFAkRtSLVkJFU0sJWMm41fVx3Kfiwvtsy6n7zdnBOun9
4WKcpG25a1p5N/D200F0pX3iOFFX8nsZgbm8ZSvpfTg7F5VtX6F8qNGbDaG4j3rwDmQdfvovfS0j
QqSEimdFMLHjh9PCFNS2o1QlRZ4AzzL34wArDwp+poUBxyecjew2xnpqDepv404ZxhYWV9fiYhiC
DpkrBA9+bzMaFPKKCfTizCjXo2FOQ0uXjkUzayxguMcX72Z5dKgU2lQ3EttGZBEXw37Bcj8xowAi
kEkiT2K0OHMDElG/nNKvUd5np3ign/fpiCgRmXyt9aTycBaZTkQa0nWfxBr4RbLfhHCQOz/bMX3h
Q+Z3v99bcG2qqKRklDLB5eZm+BlbxvwqBEzPPukiMjqbYdP9mUfdzxl+yWVndTeroWM1/6kHLgoQ
uZpJJi9M6SvZ7cS8QVwIO/TTqthbnautrv8sHg2F19EiO2aGRh2MkU6XXOuCRK4IIOSGLHTj/Kyb
JU1n/PwbNEWVD1Yrq9juELsqtd5PzF8JM4HodYBWRRsyiN9W38UWs5uAWxQLqXIee/veqr/1iFe1
/h2DOki4/BYlLD06N8Layfqb2aczo/e+t6rlanO05/7CHzPUMIsuM0TCS7jc0f04rcPhx860Q+CV
JQ+9NcxHINSIn0+2ym5zbbZxxUIPS/5EpcvAuZE7qHjODHtsSeCsECbad40nw3i7eYPMsDGtYbHB
QLdFSeEWj7RvS2TEt11Rh8go9zTWbht27Ku+761eaovIhsYVi5p/bNt8ybZVx17QxnkGGZYSY4hQ
qCz63+Vof90En8ne3JquEffmuXpaGCDymKAvR2szM+M5edsvtNQKv8JrE3A4ryTK0s+uSE4qeArd
XBIDnTRQepJvny7brv6z4J6pDM2O2EUxRWgCxOsDkCHU41tDVizpYpcDDBFwB0WBRMS4pikbD+iV
82InreUCg/WeiWpcifL5cd0DyEfPffxc7gj1rOnXDSKPFrwdbSNNw9Gwtmn/hxxkQK4gMKDGieMR
9KaTlgX6nG+cJJhE9z2acpPj3vGeZtFNAKAw3HL6g5OYJKBWIkKHODNkv3/MyiHFtTiiqsW4Zfgo
krrZC2ETtW61y/XBI004FmIYvl3cNy4bJTUygrUhOmrVT/XR71mf67gCdNlns2Pe06HynytOEXtj
4y8pzgSIrAWWAUngEAkalvErzYpeqjez1403uyxY4wySOAaM2EzbCjczhGObE7+tEUZzNChWJvuY
Ur4FMc4Sng+BKeXqOIbXANW7HZ+BAvQGXsj42Ch7OFuG1Vj2k0BswYY9+96Tixu9UJkhAvJUE/8m
Y+o0/j0VkMtNFmZMkfyjox0fq28lF6ymFqOjbhQAKUE5jPEo+t87/1UnS+Ek1IXqpYhbUbcuErxK
0cFCXxA1MPntk4ZZuPdQa9k3EyAi2pwACPP4uOSDYrIYFUa3hrBLqQb6mIDG0yUXTNwceXQZl3EK
vIMNgVDKsItkYRhcMUVgDZl3ZFAnYZE4DhSXlSNJ/9gSpSEUdRljaN+tlTUX3w3xvPtZC2f4mTBL
T2oVAwPSK+K7K8oqf+vd0WabLlblyJolsy3DaUwcEZCTK/e4196eobO1hEd4adjyqj6t6Q1pca33
Hd7o5MBfiUu+I1kiH9jx+C3Mht7BGpiFL/Pi3YFmedh5jhtTkgmqlWSFRH7V+hMW3zD1Vdx+j8zQ
uw8UvGp79P5gARg7/QJ72NV00iyj13f/xNot9mxoqTvk5c9/LoHeLo/XqCWGzltLlzK9mNdXrU7C
uOUB+sfEMBZFRqS7sWUpGF4pufSfngrE/bRbU7rni7ftD3MGkUZWzS9tzlZ40otp4rT0Rf+qSvTr
jmJp99yhK+5K1m7hDJ5sSc4TyyPcA2cpQsRszeK4IpQ0Z08NAIwnpjkTq/cFym2AbUNODhbnKD4Z
uFpm9kHTR2jVGjhRxcbycC5taV9zrzcaZLE2wI6jbW2hI5Qqlq4aFTwJoeEImvE1n/g4ayAAhKNR
tmtvqJQtiUj3q+6enaHjsx+1vgapKZIDRwWgEyHFUmr74MHuumxmAOdwIalGQ5T44OHGILSJS44O
HC5xBEwQFtkigmqr/YavLxGyhxFN7X2HDIgCozxflB+hPRcDmNrP6RUuBmKVdVIQejVj0crSKBcR
mzC29eVjMfkBJ1vIHgrvOeEC+HqMyGBKpQhT4wTyuJ6wlcr67QqQ9aoTmJ1qxKllLmiCP42B1bH1
UDkjad8SQR9Uq6OG+IQj5AeXJEBvVcL7V4ApioLf/1Gvj+KvNqPnVTMLVquOEAqvMOCGLsrF2MKz
G2onnzoeYLzo19vxDpIr7+UbkTyQSGN2Sm3URuSU39i6SPfAcUb4g83OA74eOVrs/nQvyV1J8EGQ
erP3q0QeFE4Z6YHnTtLXf8afF/LdPyeG9wPNQXPSbQPNiSYvN9F3AizemBJpUKWks9AUTYzq3yfR
3oleMX3kgzwCCZc51s2+s9wEa8YpTWM+Bn4LbwdyBT8eBS6D+xchnmzdp08BZPHKqZAJx4vkDUGs
7Z821rkNoKHUFuMWaF+Fndv/0OswMWNsizgWUvCjH3R/KWr/C61q3hXxcimHZ7rqfawIhx4ZYFTE
lcG7QUSuuq+rkdFxNINe/982DSgYxm+wmxkqnsh1dnhBh9BChHFh4nmlhp4nOnGsoR3Y9YveNMNV
B4ja//pxTq4gTTuWs0ck21fA+ouVuxuWre3WaudjeKNqpnPYPCcG6nD1Rd0RkllwKddudFnlnmlD
3OkcpBdqLB/3TKuW41dDt13fResEx6e85s5Rege15bKG6jYiOVWT3/8dwIL2J84TH/CWCr0QYE2Y
xsU+f+KGuphlv28Onpl6uAlmQ4KknIrsCiYoRiFBmQyCO892raGgXsx1WbL7Khb3D0CI1v7JM2eg
L37ig8EkhUlQW34c4sog6QEIr0quh8dBzOdZSEFTh0K8yjd36akJKZIHFzE90uVnEfxvkpnlm0UY
7PkPMwRTyqmNT8JlN+zfmrsumUChjFwae3k9vWE9GQlvKKVYcGEwxbGtqGUMnuW6ogNDysfge+p3
W6zrPlvlffhMM1w4vby9KC4k5amAd4vyfnbRUnyf6KpyoNTsIRtCmzqT8dcspMnHTIe6RP5LEbfr
jyzTNySPJRVfCacjzFNvL0spgAMSXSt9eHa96XizfRv2+ZXPZ5aqBjPkrQVXGZhkG1UVRI7hBemp
SrAlX7mCAl+WYBHKFMTGu/Opo/U9oiqlOu46R3m4gzxK+7ZQoiSPSHXhRuF1kQPA76EBboEDxckF
zbR7QhsYEXx1s1McIgwgYg3AOip1JcBFjHM61J973c1lnMgXqNfXaty6NIHG4fPI0FqjgChkTPqx
Z8OLIQVceDT8PU84LusDX3asU9KvmS41PF1XzroS5TOQCoIe/j03qbbSySHOdPtU6wHHqVSl0h94
g+3DuaOQBS8OcCghPXYuXhfgNqxDiR84RjValaUc/zSVHgZVI/b9nNUcTbOorsiEVJiRiAT2x6cq
fzRhT0Qf5YWHXFG+5wWK70/EuilxgW3HZvrWMQLuj4mpwhRLfT40B1DrVX37dAC0lvFyJ3ob/Jt+
JhE0IXkcHnjMcEJ2T0+HO6T/KG9fhehLwGSljBQ6wXpge81CWgxVAJ3WFJLOinfCxK3Kt0NljBGZ
4umsQWfLqmMWVSFWzX9ty/g8RsH9mfeIIF9djFCO5AjmET2nIFrYv34dGWkGF12J4I0jPlZuQgwe
brAK9/2Llemm9fdKqF9ZDdCZDblz4yg64pwmoVhRd+u3QZCC8WRGj8NCR12eArlVqGt8lKlI1EM9
6hJz+7xIcK+sqmeLxjv6Btkqy2pQuLYHTb+Gu+QksbALVKRGFlhULe90ONnQv8r8ikTlIExFzjXa
F3UEiAJk09c8iql5R39BAboQvMzoxGkiAFQHju//lPHMlpDrTm2OHDjE02q/YJo8PYiLWN7Kullz
WVi1yRshqUnwP9RWQC3xX79MlVoqbBLNIDWUt70sxtLIbVOQbhGJk8J1nF7A6FPDyUwgRmq2HUkg
sRLBJIl4QgpBF8wOH0sfI2LqIt3Si1b3KeZvIVVeUH0iIsHO5Xo+1FobZkWBdfGb0KEXdOv4oN3r
etCzDU2oktfX4UbndTN4Cnv/OIo1Z4ApZYazPybcSTChSFNxOyY1AAvxhaB/WkBNpwe168TsobYd
6X3JnHkjohMWu6ai7cdt+Iws73nS1BVugb2smTsg32BZ0x7dNwq8pPv8aV6Uwq5AbafSM3SmQtWo
etDHyLlU9RPpMA5z1LXbw+L9ggvpZyAnT3IsqwyspwPYfr/+kiX4rYLnpBYoPABfLOb2Z9mqdZSB
8MWh0HCDRpScH3FcgW3PpUpo5sEhbMIICE+BZizGojxCpKaXAHmPPLbOjnEGH2nTQBByim0pa1SG
UJ+6ZXa5SJSLNwfO/4OlhCxXZop0dlVIZnms405GshGESrbMg7A7WTzg0d9JPGwgGO2u0/lHvO57
HX5ksS7KNf7xl+3bjS1UbyMhFoMmAsEGJRMDXhKVRRv1eMMnS+kORAtguFTeizlXbDJwYe5qncyh
datJWjK+1Ge8DHUGB5yal9V9YjKiLIfYzPwkoa+BoWH0imTAVZfyk8vglIHGKYUL9XYF3U47mZR5
qIjbgdaKcYTyf965T4EzpD5f4rSQkRcTcpEF98j3+TlOL9Wf4/BMJzykktfXtJILZRroQrmKTHBC
LmZc52+hQhhtumsejcnU5NWzs2/CpIfvVEb/RoKk9oad8BwM7pS7fCjvBOvFn7FLS43yFq5z0tLH
hgdKsONRpZem9H6A6JmK5/dEUNdOFzbgxJfxV3/ZguPGgDJYd+8tXCU1e8cSYFcqE1letgnbZIBM
CgbPLkbrvRB3lV9P60CpK8XgXZBte1ss/gne4of/vG/9PpWUt7fzDsyng12nM8dSr9X7nMmEOsEP
E1mCe/YWioPJ9Yjmk1NEF1g/UGRQHoX9UfHtVyX+chajXLgpoXTBmXkom7nfO/wfC5IbCXokVyN7
GVb9qIDsClUgrAmCMfqh5awlqgdSNNyRwkqXdj11C3R8K6d30ez3QmxdioZecOk+iXthdk/3rAW4
LwxH2QWLnRH2ATGJXTHUDUJ+F3FJWa2gklkasszBGf0i5WIMQEyYKvsP5lf/xzMFGXifPCIMNUJM
j81LJ5M1TRGNV/fumFu8AKQKpFnEgKFgqCRCfKPsJKNVCqSk+KmPDALqhyNSQkxTDibdANoWU3ao
mH8sYMWdZpgaCmvCeqDp8YCkbqHjjucGwHJxxss1/Q7aLWZwmU4bSJnVdrj+PSVhgMVJ7nubXItG
WTbpYH2l35llhO4v5te1HFEiDjtg+yUZd51m1D9r1OD8LpLVu9Eg9YXXW1H2TjlnC/WyQwsygmIe
5PwAwVWtcj4de7KG9in/rzn1q+ghqLix9W7Rv/C/Asrz5lh93+FIDv5TbpoFhoDDgpLJlH8kwQkx
8iDQGfEEQyHMEfczoY9qWYcCFzj5pMyqVEaifu2fITnZDaQXmI/CiOdcsX1FYkYHHdzehnWUx5ip
0l0syhvUeYzaLxiq/xpGJXZqeIKS+6SeRx4gAhWokSzR8Vkdc06/YW5ugxAXjXlVnfUEixUmJQaQ
H7Yn2TI/hoZ3r1Maic/qdvqSRtvWN8Y/xXgxV0h2z1X194S9vwk/br6wEIAT4pPDi+ke6WU+Mx2/
aH9LRk+R4k6B/cRMZW2q2r6QdJMlo0hrNyjM7sCFO1jDIgLlVVJMkyWnfpPTPdphbjTFIl0tZ7ty
m6062JZG6iLC1oJzOjYTbBbFYpSeskJfVmrJXg8uSAAagLAHuLO83baJkSPAFlxnx3lYfUywwi3t
tmPtsuxbPMZpXmq34yTk5+gY5GJYG8j3XIOrhS8SE4oxlpvRz9ywE61xBGfslCfSd5qnlOLkvTr/
pxMDsqqMleV67emjtPgRx++poqfn39tgGdcVi0d5tIR/GA8bO3ULNhBi3ItJyNfPiI1OSTEhYSAl
F2rk3/TcxixGpkvBMLQ6Y9vTEY7fva2F0BNnfv6JtVd9s+rHNfeOc/yQUZo0cDab3UZNpb+XSFVI
hHjwDqUNRr7k1hb19ww9F71RqUBjMSDsQ4EjQnvYuAczKY8tZepvWenH8mxwT7/9Ldp3I0o6Cy2T
Ivl7WJqwYFAHyWTLByMIOfsCM1YBOCa8Xe1jKvSGXvQ/07+y/Mqev+SK7pnQOblr2wObog8OJXh1
zaPyxb288DajWXv4lw53tC7UKBBd8jt+TH44YmgtvOEwMVujeBKA7rNfToEpw0TN/QNQHayQri3H
ia9M1d3xTBPsVDQIIb8j+8njCHN7nEFXu2rC+LC5F7mvtCbUXQk83KLuty+3GJlLl9/cFmHN9etF
iXngotC6zAIb+x0eapa+PkPTCRLPC/ebmaXKSXdjpa3IHtgXjh6hfoV/5fEx4l+O7UyFVnuv6FkO
6XT26NcxNRCCTmUXsTcV8Mr5ntzgWmEKG97mZecFAWGbeQGQWyLfPK3HppUgMArpFvGilMG5uoVD
+8EcRNsPE/PRxc4GhoKm51S5LRLT8W6yKFgr76OlwO8LW3pliq9TLOd/wn8zCQ3Xaba7mTZ8P8vn
IkDZrMoPydO14L2VttD4LFTKpQPC6q6Y/xEvZXfGMVUnuXd8tjh0wadNpqltPtbG2ceaBBOIZX5U
ZfAxVKJrWbGKESIUDVqqZjMbRxQz+anz1FyZjlEtGgPGtuwNrF7ssPG0xmyg38XGqdvSOFRttkGt
nLauebno7HJR0DKwiP3BesyAOTOVfmUoAdSvf7w2j1nYfNZoIogD3ZpE6H2IwBrVq5rKuDB0Zla7
J7ibszDBp59vPlUOIFMREO3T6LxW0mK8L7lKQSktnUpycoxdu288KRHhapp26Tgth0jqYTxqTSng
j9n+vK9Dg2/VEu8IqiM0i4lVtLZLPOgFtb+rJoM85Jy2eVez+QxPGBEOB5fMD+1UPnJAhCuIV0Ia
8XLqyeW8lrShWohGD9y96FXYsy259kwMxoH9D+5jDBwVx1QUf4Ld2kmTSSPraxh1pHJqophfh2H0
28huGGOYSc1jv8Ozd85G4C31WwzwUcWhCo3yh3zEHxrNES5Ax+si7WLf4MTa4d8fpkDh0zmpgO7l
z28Gy14TJVgRLyOVUgArz+zKuDm5HaG0nJ4fbznqRGX4ipT0b+UtF5Jd+u6T6TQUrodknkN70Z03
QXtG7hiQp9zq2qIByCBG7skjNwF1LVJIomSBmd396HFgpd3pwKx3G/Zynd3tSSWhy0lyVeAK47Dn
kkLWmLvWJFFZ63VkmqUiJTBBMTXmchbO8gdmnnPVQghVejx+vVScBOH55e+UBfYynxCD/9dwqpM3
Aq5GoAWb++oTcjfs5TSaV50Ecf2nQ3NdWueO9Tf6IhjyqcrQACgI5E3EQP8YK1Ev3rcJSy7N/tjn
QM2pUZ9hfB8no+dISEs+CazDrt2rs/3KIoTPQLFBJxFUqNrhPzkCOz+qkADVG96zeQxt7SlS8XOK
9MAALMl6Cyfpa83eYDfUxicwENngNTyEfDawI3mZi33B9vn8qsD7KJIu/juffL96RjjvqpxnemXF
a4bjqunFK/WV9M+VOygcg3Rk6RF99J/dAHHvHN8NIHrZb21J43DLnk2iCEteXWKp/VBKGBq2gjnh
JbhELNyEiGoBIqzYfpG4o9zfifcBIkbMiiQEKeJ9cz+GslnmPseRn7EkXc2NSZF9kNZ+UM17zb81
YSqIvGch+K+JartCqsoleb3nAmK+lbF8rg4mWltfYGcG6yumXCfSiyyJsPpZuqWE8rjMUUQT+bzM
p4UrRaTX/fMoJw+2kE3jhQSXlRsP3JjbDU7u2F9Uut4hapk1MDWwuTwRMQctsUNE7pcGaZP+EIQs
V68Rdo8328d03DZM3KRhQU5swxGND4SW8KKnqLhXmBrhpWj5ZVWAGqaQKqPXW7zMq2YJctvT+5z1
RE9nItUCCw5V/NMP4Umuel6f6pF8u9m8zZ1v4ManKR+ZAZgVsmtQW8DGPIXbdlSF3tUEawrLKAo1
XqIOfj/1JMJKVopiDj5MuqY2XEe3nx6B93Pqnligjwh03KOEbyLYnFOQh4mvjQ+ZTy6wbfiK3Vpw
K4KKFxdRJAeZO1D45TtdQUlYTW/v6N8XjyUmVPnnIurd70P42n08qAhKXrwdWFgg6lKWEM1g2PEr
vLibpelCHtiZMXqeWp99y14k+sKQ4Y/US5L40u6XNx3FbmY8oBEU5+FqGXmX9HKQ5djYPWB63ziB
DbBnAZcPtLBz/GVgzeVYJV+asoF4BtWa/4hIWTiRNdmA/QqHiIx9z/zElyDs8cZjdpN40KE8CAgt
VDJLzxXiinUlQ4GAZXyJ+8is0wydMF9jP0FJIgUMNoHOnpfPkgrjp1Kj8AOMHZuBRiV8w9pP99K+
GgVO/2zRjcG8/EkhYKGU+s9Ul8+YSEC3AHSAN1tf0aRwpQ1jZMBlh0f71Z0NiR5bkl8VlwTwrSBP
9omgzkUURGJIZZy58o+Hr/ALrakJ0/cwvnQb2FetknzNPVBZa/P+WaY/DNZ8BQUr2pSOoEHELlic
V4ACnjN7ICZ2qCIuKLM5EXfRtgGirHQNzh0vtpOAbQH7QRexxRc/LZOvotmsAUFkvTd19ftX286o
tsvPwCdh65IsoJ3h2tZ/tPys9f1psW1uJ6wSxwJRFa7wup5wzrjjVb8NxYO3Y0J0F31GPqeNU8tA
DgPYhC0KMow51qIZtTxQ/XRSF8SnUd4LuZRKgc3VvX6ivnxla9EGuZ1cPWPI+cVc9QQEKNSZYGva
nWTfkD7v86M3Yhbcu+9RLBM76pMKq6nTXSi3K15naMuN8O4hZs6uEoJegJqGE7t9jjOdDfm/Ik4H
y9uG41xvEPCEHTyUql6Yo6svlqs/EIdSHJORhpbijPWy2MaATYrrwUDqpRwxH4Rlk3iRsAJzYDJI
2YHxYnMKQ6FZFP7YCcXrn20CKFlXtJIhqsVWXcTExiWq3wXZMsOWTwizXTHTR834T1Hb/421gNu9
MM2JQi75ggR3Q0tPhCR2HJtVKaGvGYIuLP7F9rDJTU6kgMo1SSGBm9carpwwf/BuJi4zCuWuUUwq
ZOu5DToIc1xxZGTvBS9EIYI0txIwBgn5TFIp2ekO7IcymuYy7kXZ70EUV0RzyqjQmGJrU735a0z5
Q/cjRUY2vB0pCpokM1TrNlUcbEVEWmLZYg22omByFd6qXNE5Ed77SokWDehRCrLJ1l4kvqGJK7gP
i73xZZdT0N6FC0oe1YBEM/PfAmtV0tOv0MvmuS60De5aVEgu+e4cZgKaRc+lLRI8vILf+Z4pFgRq
jMVFrjVjO3vk+M9LjwIMBIk6SkvK4nBA2mSY0QbSaGmtCQQuvj92nkXtZoPISglNvfKHiNp9gk5A
sEmhfuXlLB3lL0A6NKhoX0LtIrpPiTp4ZEesGD5bk6IfmfWIyNsOmPZP6ZxEo27G3h2nK63NtbOA
ybMG5Vt/Q8Wkaq/Bl9Ff7QjdXqAEhkOteCAcf8BQya6nn2RVib0rNXMDysHUesYDBQl7K0YGlJay
7PByHpS3CGVK0p7KfwHkJVqpybeVbJauhPtcRicQmXLT3GObb5qtSrkVQglVTBDEPVDDwqT584ta
v32L0nbNIZtO/SU6mI6W4Dpy1XSQYCbCj8S20g5fPElRK6JJgTpPBUS/PdcyDC1vlvUk4aOYCHql
J3h+DGRGvimsrmHlJHL+4M5e56yuyQXHwi1bKUYG+1ueewkybABuQ6YKR2XXlhyjLS3P1RweJJYE
NNx/qo408jUZ5WfyPECSxQGPXsd232FOHwIXyM2MwTz7Y1G1ZJsD8hRxAJr572WkC//89OEJZiFf
tLz3gLo/zpou2XqbnL7H+U393RonXJmcvD9FFDjGr8FuFM/yot3kmtxORxLLIBt2riXMB+xVEUMQ
c9Fg2bR/qQe6ksTZ1eTw8o4hT9YqKCPCyHp81n0eCb23tTVrn0liuF15plZTCFUF9NMiD6ryfNxe
xXUPg55a2N+WGj7BFPNNmSTDbMA8H1JWt3WsSalGULpD2smWkgbOY0CYaChK2FtlDAVt+dq3QudF
+lLbsdPoUga459tPf6QVJlTg9sTMyPWZK+6jutDNqtX/bG2t2o1r7X9QzkzTUeE/bnKComgKxy4B
OAeriZN/16Q+am+9BWmiOkQ7GAk0pRXUCVsYj7jRYQSl/Mxa4Dk6JkDxUUHy9JI0d48W35Falwp1
ifMzT3jdzhxquUlKJx/ZExXN0vPvKlQGsMva6NB5Wg3m+ABGGb3vez1062x8m2amXo1OE8lM+3c3
+zYgXQm+iS4VMPy3QwfuPjPJD8f7+Kb3MXVxVsnigQC5otOV12NltTDS6pFda1XAGwRrbXsVtjwR
yEYPATZrVgjMMxiq7Tx4p2UPQDN8CJ6rHPpmepKLChCtcQkRXZkO50lbecMKgLOqGmlJmas7J/0j
88U8bIzA20u6lzGVmiUL0Fy/VFdbrxpsIdvZydyO+DMiWgvXh2liPfYnZrXnf/Vijei5UEcJYnRB
iwNmz0RurKHdycrlM86F9nQ7bT3am42xRvo3Yp71XYwU8mgk3T8jdNVysMHABEtn3/76SCW5bWsc
ULCOeWEhFYd1+CWEO9MqF8RDCLHF+pKnQU9VcXxp9PRwzSg06Rk9aZ55++fYHFtIxAj4DGEAvjNH
fyngcV2UUxHY60FqaPy0K9LBxopxl6IdiMKrC0dbjL2meynC+ZWrPSNCc2HkG7UBj8JLVWW42/dk
Sy5Hh+gjbC3djKnoWBy960/TxOgJHeUDJsN6w+2ukHdizdWrMdo2GURA2Ah/7PWtL7VsJQP6OBkO
ekSN4LQsDUUI3CuMv67PKOFbWhHH3Xwp3oeoUXXf+OVoG/VXSQ/r3I2s+nx3GMabY7uNJl/RN+oU
kzY/9rSIeYBP6BNdbPcWCRPwk7r7UJqasrBm+o8iR7dMHeBt2Yj3VJSWrlIzXyyLpmaqExdS0RD8
er6DK1VgbMKhHIp/nn61ytrt1u9FphYZaav78a+qekkpkT/HQwMyNSo5K2yfWcPUERPhihMyO3is
cYsqVEscaRs8NzfIAM87IDQyvW8DgxzhTmTowNjLnxbrY5YF1zjPzK7YkFb5XRaIQccWWVvtVJEd
r3uiFAYjaHeitqU68e6uwdwCco4X2MOw8EKhpEMcmwzRcCqdxtD+Af/mBilwZnQwGsmfXvVF7mW7
qUFnciw/Z2lRdpSlo31t0SbCIzwc+RwmbvRwlw6J1FuUGgvo8xUKx7dNQQiTYT+tmMeZdty/EuWv
1MEOVpaqgBiOaAOUH8un3TgX8WMOzPDGyjuwnsCDFS5EQkbMUWtaV+vsOqWtfrj2UchmC5RLMrmj
zfeRCsqW0GOD3DH3n0dySnWAuL/L3GCpNUZKPgGSU7Aua6rVUgiKZ++YIm5za/l7842XCQGqgR9x
xlLqmaLCanK3q0ueUYIKOdt185Cx+GA4+sKWTH5gtya6LMaWxx71HzoSwmP+xrUuSYv2cSy2tDv1
m2y0WnFw+oSmP4wp8T0OSbbG1u+cO7q6MVZZG0Wc1GPjWT48wBKUjG/Antq45gsZ/Yb/vKHrnT1s
TQndSExnQxNGWcXLDajWY1R9G550BtierZ6m5/nBBhMNV9qlNwQcVNzj7Zh3qJu9gEqauqHVES72
gNSa6uguIoV55tM0j6xvqUxlZjKktmX+agOoEdfmO/BTNDMToQMqgbnA48TT7D4KDJeDhg5I4bzd
H16J0vPPGA0XbZQv8m2ogOuzaa+1CwFKwh5wBKeMbsWj50UzJs6TvAMKkGLCHe1Il31g3RbI8y1D
3dECCw8kutDMXiKe/pNiAwzYPXUyHQLNVcfVx1Wj946jnuSOVPVLPaYcu2zvg3bxABmfDvn6hkZv
S31cByEazCBLIOmRJ2a1uEmafToSbCzW36Kpv3Sctsp2bpZG48cE8XORfwrmV5SGkqSPXg55ubZZ
j/6Am6owjujvWKELE8jy8rGFmSASxq0nFU+Rpa90RK3Va+nJi2lHsGKxH5qDHLRV6UpX13dpyvjG
Bm7k4ya11zeF/e3HjqrWT1kXyD0mkreQ6jdm4GOh79DY0aU8Z+KX3n9HfkAxuR/kXpnDnm8Zkq/L
lTJGZ34HJyyg5eKRpKP0udD6rb/+oVvi3jqBZNSM6x/ZiPOF2zzp/cA9vVH3QM27EJR65JKM6JCG
Q4arizDaBQwmBusKmLtvXG9I1ktQyo3BYW+mzMNf+NFhjCw1XcEiQOgu0KodbwuwZzABt+nqwaxe
lRLM38XHaH7K9YtzjIv3uQcyoZBl3QQinSoGwWgrhGZ5ocRmGlu7KWc+QvORlqXwUyTXcF0c5RiI
nTTqNjqAxXBCkiDmuLP9GNeS6y5mAkUSVwe2OtPDqDFxUbht6CRXRtm9hgt8BCt0u+GuKa7F+hX4
k7Cn2yc9RQvowu54i0F/HvarPh7cblHn6NeP00ZymMmXyRj6qwOx6Wf+Zk6hEjpmUy+NyvnhUWX6
ZoZhuw63PhtLziAtmiieYPqkiQmZDS41gTP5j9D5ULj95L0tmBXymDymwLMsv0+uOoQbHgY33rxZ
+Tc6BbvrYPnPNMjksnsxjHA2u5w8BaTlVoPKmuI6KRtzBDYYJn8aMCcsM8CZcGt+vPkStrn0vznY
6mwzjJGhW4PPKCmHpohxb8UAKndnduHeamdNOIMn7AFJeCdAItQ2L1d+Zs/WhM+vOIXO0YSqom8B
KFPbid30gEgMYsZNliseuvzC56MarJnwxmHKPuHeadSH6s/YbI90z5PQrxHB67r0WNP9S9E1PeZC
MBkKNeRs6rYSYnJuYrcgculk13GlOzD72UTc13GAQ74iCbJGtm/UEa/BKHxSFpn9qoNP26VEOQs8
bWsvuQwCWs+wz+6HUDJw4RpcSzfgNI43H/CBYiZoCRJO75vP3AOCPUquCXpSCfC+7neEr/jgU+YG
xofe8MRGmxQG+bnW6fBjuXDwZVl7Gw5MMbu5LJNrGZmq9gHcjjoJ9Eu76JRk2a0V7lFecp+Mtq/t
7f9ro3JJ8WoaS1xCfFXbSd0DUPOSZ7RnhRacFzQXbOd7m1iRXT3Xwg8pfuohdiX+XmwmUtH4qgjv
ViHzc62aMZKoUbuA3zPuHIdC42XUMKx8YIEubdxIv0LGJRI0rDWAp+Ndii+AvzzRmZbt2rhWI/8m
Og2x9wjI2sspke4bAgqUHgUfBCWs/rQjTEryQ5N8G2dCCp17NPjnPZub/TPy3eC2boQgqIG1dCju
8anjRC1hhuq0co9U4ATIDdZt0u4wJ5uDgcQ8iT5dI157AlZx0I+zFqkhdgV9y7D7xcX3cIAFkmOi
F5dVyUsTwdX1qp2lQgzTJBkDVXcbG0E6kkV6TJUdREu6KNAFQwj/kcr/mBOS4g/vyoNe+GSeyN0t
bzhyygdqiYQeoc+GGGEd7N895j1F5d1VZsBQeY4K69aT2+HOHTfGBOqtxG4Qaqk5288ektOmDVAO
7zhS6XhSXdYQd4aGeLTSbqeTXh5vEfGwiPN7rei05shObLq4QLejgBfoxpEOkEjxwxTwraUjmpUB
P6RAoNK/fiMkfWc8hWLLsV8T5fOsP22qRIV9Zun2Tggfp+S85QqUGEk/h7MANuOMwvrXjjRc2p7F
n9TIEte+P/Om+yOIIgsAOtfeniGMUQe/1fwQOehroNLBSrjhloVwoFG0nF6DVgMMByzTV8/jYzKV
9mOHGxI/8MUars/AnyjIi9/c3Uv5oeVbDk+9z+nSTjfW67B13EhJfw7hXvYAlpxfH8FhAImSFZWO
trLC65ArHSNA0qr5NZ5o8a39Ro9jL6kVqZayDmr6QpWhGq8Bo4LAC7NcKYTUrIfyIkV7qR4tJiQM
vTGl2UJ1JdR6dPMQ8TcfK9AZQaZb5tSNOeiG7XpDV5HVlMO4i/NHhKPefgA0l/JEP0//vxh4G33N
EmVTaJrLTrzfCZBeUxiFccLjWTinED2LSy9798UKpjmq3k44GA/6M6HVaJpvM/csSG7QVrbD8CjB
Sm3UveJp6UAnVfShw4pTicVhmjNQXsh0R1Yzs88Zp9p9n7MUkVp3Bt/NAU6wOetnRuYHzGRBmW4P
U8iQaMvv+eFWC7m/HSTaZrB4DuTxLUv4vlHdVp0n20R4RkSKk0BmwqMW9oUxq9l+tc7P4t/d6qk1
cmaSbDBIEabf/tiQAfGxKrXF3uLqrB2464uMPqk+/KmxywdA9gAjPhyo2siuZaNv9USKzZqHavo8
ZW483pAwoNBPDgGfCsom3w3oDKdHnys4S+kMZULeiExAIeh6FcvkrpTzshKUkIVFd34NxtatZ8yv
LD5lNPelzaMIfY2nEnE3gyZUcsndi6lWoU8Ek/uUrH0otzHQzUSt4Ptd71SaJTyENRyIsk8Xa4dt
khuuVNojQksuMg+RhEdSSqyCYjz079mwJC3XuczaCUM1I9ZFm/vdQcLA/1UO6LfzoE3edww9eIbk
3+VYREMHy9TshDki895ogPWSFQDFnFrfg214pGHY/XxxGCemX+skfqd8FpgZ5K7kuSlnOvoJD7Ng
22h17iT5Z1nP/wzXZmK0XlwcQ4oyAswTMO0FmgL2bO3WRtbJ5vLDyXyrbj6G3cPEsxvnqyVpo8VK
w6W0a3+dXtMI7NxiCqGsDbXpq9Z/Nfb3g1F03W9i2eYFTz4j/h6iywGCJL+SoDzik+i9rT1iXh1P
dN8P0wliGTsaffytPoZUBaqwV6k8D3qVW9DbTSb6wo1OV7ngQAGcGXaiGmLXaEb8ylZDCZCTWS1K
/an9Ixv2Xbu1QoOtpHK1hLffRTRKToi0MoClbMdXybykAn1IQ3cG21YgRhnDzuMbxVFlzP8quChM
O7QFT6UDTTEWP6oyfJMUamVDqNQ5DWXq/QmJdbZXKY0oUVRNjj9fA8MiRXnwo8pQEceIyLtEjfjZ
5ln67oQ+6nE/abJur4p+aIXvAhHa0VDHUNCg4QIaiKslyLU6YbtDFcV7EhdEpn96J/kc8JDmudEB
L6D4865fILEAiILlLgP1NQAXDodkhtrsezfJS7b3S8CSh791ixtUTVUUX7gI/ke97RImz2MhQ8bt
rNgixrBN++Z+zwD+dIYI7PAflSmbtuP6A1PuhpLe1e5iNS+9dzPWKdZNFXBY0LZGMxVppLmIKl65
iWbAhswou6uV0hpYlyyz/fuHo2i4TtGQbkzWvYWafvsNJzHOsGVhCFvk1s5ooYNCbdm+T7GW3XlQ
ZUizj/YFYmxAZUvE0UZVuWmira4G3G2j/YzxgtfLhdVQkWOkWEziO1ngHDC6Gr/3zaz/WzftXrlI
9hDHwPLCBz9L9o+di3+wxiC74yA3ceQR+DywyusdpXQYaayI8Ag1cdJUj2YsCJ/vJJeoyIFvV2Re
53dJ7m8OKs1uut53b3fEesqfh7Gm6AciYSVkjQTnKVmnROiZ7vAgADvtlYiOpEoqOHu6j5hmdm8m
pFJ3/j9hhdlIq6zjz8iXdoBMqqMWjcmMHpOmF3nnNrTU/GkNL9nWh/9d/mz0zY+5kUQFOU1sGIsN
Tuy4HLZA0Mm/s6LWq7Pd0oyRnHFt6AoY3p8DhUBgzaYXMIchNrRuSSu+oR93T3v5rxNazSlarBfA
WeDaSZlvDEsHOpm2tKw5kstvSKOodJpIGe0pcrefXbyb8DrWwF/X7eOf6SwAH0mWvnUEEFsOFR4E
O1u7DfS3cvbtiYbnTkDMcLR8HHdnDARLYNfJIfg7g+wuThkqkmqdbGtJK7MkUT2XsOiv54iZaTTT
Pt733OgOnTpcehTBY6rvt/iMHC2wPIHu4t3DbvIIHHa4WB7uuxTK1N88KS07Ksj1TV80tMwndwiH
KcI3bPpn8LxCTk5uad5hBr6OpHKu2VdgmarO4m7Lyfzpl1UCjJFABIDNchZUnQGpo2nXQ5OlAM3u
dYzkP6823NBwgLZb/wXjFSME93d48S0QtOjAv2LtYesL90Ey1v3UDt9i4STeyXqW8mgiGJSJyIJz
2NL8NhdEskOgTWMlvY6529uHNwk3Vn9oo7Cg8RkB07Y2dwscrjfX1OkPFp4sbLUKqxRmKl6ji80u
D2j0iDF8VKAapWKMxo2qOGklxlrm0O8MALZWku8jbPn0lM19Tg2/h6eVEKLC10V//UPdS4cja0PE
+VU+qsfmXqx0MQjn/9pKSdmeKyVNVv0YTAJbMY8iJ1bY2CkxjXL/pDUiIGd7Y6swMtV+pwN7Xtn9
MxIWAfHqb2wScqVy2uYANOMb/m5tHyfw2JKFQq7q/pIFrtzVkhdFjnmx2TYEbB0Wu1qrlGWwDYiW
4CCxEwOv6tJmEN9xhAWCk4ioLnmb+he3mFCFO4gDL0vjnGRTIcxC12ltOOC15hOljDfBE74tVMuv
37+e+rFXecNvA28zim7nxSSmxHXe3wh9IWkQZlP9D2zvx9GZWIZVRUptoJG19umcM2T4HJh/0kT0
mFvJ6jXF0UPmjGdvfCpFAX+s55UIunsGLZnY+VjDidHPuWApkZQUEoR92wHTwoJ/AbMQk+D1P5A2
IfX0FrnRw7r6Q/u5afk9dcpbv6bq1vRB09ZHEFyJ7VgpHBbuje2PeXhIwTKRCgBMrKl8MvKR+hel
ait96seU+A==
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
