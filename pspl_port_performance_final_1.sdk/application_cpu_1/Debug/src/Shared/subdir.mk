################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/Amp.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/Cli.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/PeripheralShortcuts.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/TaskShortcuts.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/main.c 

OBJS += \
./src/Shared/Amp.o \
./src/Shared/Cli.o \
./src/Shared/PeripheralShortcuts.o \
./src/Shared/TaskShortcuts.o \
./src/Shared/main.o 

C_DEPS += \
./src/Shared/Amp.d \
./src/Shared/Cli.d \
./src/Shared/PeripheralShortcuts.d \
./src/Shared/TaskShortcuts.d \
./src/Shared/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/Shared/Amp.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/Amp.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Shared/Cli.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/Cli.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Shared/PeripheralShortcuts.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/PeripheralShortcuts.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Shared/TaskShortcuts.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/TaskShortcuts.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Shared/main.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/Shared/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


