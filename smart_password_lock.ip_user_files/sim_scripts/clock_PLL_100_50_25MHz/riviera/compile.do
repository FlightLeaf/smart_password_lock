vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz" \
"D:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz" \
"../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz/clock_PLL_100_50_25MHz_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

