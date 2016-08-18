################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/axi3_metrics_counter.c \
../ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/axi3_metrics_counter_selftest.c 

OBJS += \
./ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/axi3_metrics_counter.o \
./ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/axi3_metrics_counter_selftest.o 

C_DEPS += \
./ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/axi3_metrics_counter.d \
./ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/axi3_metrics_counter_selftest.d 


# Each subdirectory must supply rules for building sources it contributes
ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/%.o: ../ip_repo/axi3_metrics_counter_1.0/drivers/axi3_metrics_counter_v1_0/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


