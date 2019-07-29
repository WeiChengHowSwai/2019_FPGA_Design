vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ipshared/7b7b/src/PWM_Decoder.v" \
"../../../bd/design_1/ip/design_1_PWM_Decoder_0_1/sim/design_1_PWM_Decoder_0_1.v" \
"../../../../Lab2-1_prj.srcs/2019_FPGA_Design/Lab02/Lab2-1/RGB_LED/RGB_LED.srcs/sources_1/new/RGB_LED.v" \
"../../../bd/design_1/ip/design_1_RGB_LED_0_1/sim/design_1_RGB_LED_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

