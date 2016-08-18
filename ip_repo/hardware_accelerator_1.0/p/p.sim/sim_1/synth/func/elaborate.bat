@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 142d3e8c7af24d5c8879c071ca037e6f -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L secureip --snapshot hardware_accelerator_v1_testbench_func_synth xil_defaultlib.hardware_accelerator_v1_testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
