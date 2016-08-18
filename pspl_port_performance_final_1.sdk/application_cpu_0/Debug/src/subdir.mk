################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/Amp.c \
../src/Cli.c \
../src/PeripheralShortcuts.c \
../src/main.c 

OBJS += \
./src/Amp.o \
./src/Cli.o \
./src/PeripheralShortcuts.o \
./src/main.o 

C_DEPS += \
./src/Amp.d \
./src/Cli.d \
./src/PeripheralShortcuts.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_0\pspl_port_performance_final_0.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_0\pspl_port_performance_final_0.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


