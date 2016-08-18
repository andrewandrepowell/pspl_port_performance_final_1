onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "C:/Xilinx/Vivado/2015.3/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib block_design_opt

do {wave.do}

view wave
view structure
view signals

do {block_design.udo}

run -all

quit -force
