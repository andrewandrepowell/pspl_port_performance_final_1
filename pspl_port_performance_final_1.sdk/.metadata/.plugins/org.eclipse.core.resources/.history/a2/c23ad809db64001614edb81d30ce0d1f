@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto c3f5b7d2026d42899405724de279f3c2 -m64 --debug typical --relax --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot hardware_accelerator_v1_testbench_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.hardware_accelerator_v1_testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
