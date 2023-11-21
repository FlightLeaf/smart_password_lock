vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz" \
"../../../../smart_password_lock.gen/sources_1/ip/clock_PLL_100_50_25MHz/clock_PLL_100_50_25MHz_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

