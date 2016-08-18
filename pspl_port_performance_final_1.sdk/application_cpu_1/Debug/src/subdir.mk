################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/lscript.ld 

C_SRCS += \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOSMain.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOS_CLI.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOS_tick_config.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/IntQueue.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/IntQueueTimer.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/UARTCommandConsole.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/croutine.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/event_groups.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/heap_4.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/list.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/platform.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/port.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/printf-stdarg.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/queue.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/serial.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/tasks.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/timers.c 

S_UPPER_SRCS += \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOS_asm_vectors.S \
C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/portASM.S 

OBJS += \
./src/FreeRTOSMain.o \
./src/FreeRTOS_CLI.o \
./src/FreeRTOS_asm_vectors.o \
./src/FreeRTOS_tick_config.o \
./src/IntQueue.o \
./src/IntQueueTimer.o \
./src/UARTCommandConsole.o \
./src/croutine.o \
./src/event_groups.o \
./src/heap_4.o \
./src/list.o \
./src/platform.o \
./src/port.o \
./src/portASM.o \
./src/printf-stdarg.o \
./src/queue.o \
./src/serial.o \
./src/tasks.o \
./src/timers.o 

S_UPPER_DEPS += \
./src/FreeRTOS_asm_vectors.d \
./src/portASM.d 

C_DEPS += \
./src/FreeRTOSMain.d \
./src/FreeRTOS_CLI.d \
./src/FreeRTOS_tick_config.d \
./src/IntQueue.d \
./src/IntQueueTimer.d \
./src/UARTCommandConsole.d \
./src/croutine.d \
./src/event_groups.d \
./src/heap_4.d \
./src/list.d \
./src/platform.d \
./src/port.d \
./src/printf-stdarg.d \
./src/queue.d \
./src/serial.d \
./src/tasks.d \
./src/timers.d 


# Each subdirectory must supply rules for building sources it contributes
src/FreeRTOSMain.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOSMain.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS_CLI.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOS_CLI.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS_asm_vectors.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOS_asm_vectors.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS_tick_config.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/FreeRTOS_tick_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/IntQueue.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/IntQueue.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/IntQueueTimer.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/IntQueueTimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/UARTCommandConsole.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/UARTCommandConsole.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/croutine.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/croutine.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/event_groups.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/event_groups.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/heap_4.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/list.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/platform.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/platform.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/port.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/portASM.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/portASM.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/printf-stdarg.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/printf-stdarg.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/queue.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/serial.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/serial.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasks.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/tasks.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/timers.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_0/pspl_port_performance_final_0.sdk/FreeRTOS/timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../application_cpu_1_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


