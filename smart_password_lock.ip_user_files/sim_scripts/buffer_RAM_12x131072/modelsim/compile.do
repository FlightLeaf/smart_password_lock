vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"../../../../smart_password_lock.gen/sources_1/ip/buffer_RAM_12x131072/sim/buffer_RAM_12x131072.v" \


vlog -work xil_defaultlib \
"glbl.v"

