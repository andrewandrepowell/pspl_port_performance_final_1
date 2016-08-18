@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim hardware_accelerator_v1_testbench_func_synth -key {Post-Synthesis:sim_1:Functional:hardware_accelerator_v1_testbench} -tclbatch hardware_accelerator_v1_testbench.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
