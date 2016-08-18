@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 40536577d8e84b6fa379637b0be04a7f -m64 --debug typical --relax -L blk_mem_gen_v8_2 -L axi_bram_ctrl_v4_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot hardware_accelerator_v1_testbench_behav xil_defaultlib.hardware_accelerator_v1_testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
