onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -pli "C:/Xilinx/Vivado/2015.3/lib/win64.o/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L blk_mem_gen_v8_3_0 -L axi_bram_ctrl_v4_0_5 -L util_reduced_logic_v2_0 -L util_vector_logic_v2_0 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_8 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_6 -L fifo_generator_v13_0_0 -L axi_data_fifo_v2_1_5 -L axi_crossbar_v2_1_7 -L axi_protocol_converter_v2_1_6 -lib xil_defaultlib xil_defaultlib.block_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {block_design.udo}

run -all

quit -force
