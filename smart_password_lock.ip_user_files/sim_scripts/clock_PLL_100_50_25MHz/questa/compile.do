vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz" \
"D:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"D:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz" \
"../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz/clock_PLL_100_50_25MHz_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

