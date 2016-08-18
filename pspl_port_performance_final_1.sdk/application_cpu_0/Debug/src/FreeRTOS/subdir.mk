################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/lscript.ld 

C_SRCS += \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOSMain.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOS_CLI.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOS_tick_config.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/IntQueue.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/IntQueueTimer.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/UARTCommandConsole.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/croutine.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/event_groups.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/heap_4.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/list.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/platform.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/port.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/printf-stdarg.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/queue.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/serial.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/tasks.c \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/timers.c 

S_UPPER_SRCS += \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOS_asm_vectors.S \
C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/portASM.S 

OBJS += \
./src/FreeRTOS/FreeRTOSMain.o \
./src/FreeRTOS/FreeRTOS_CLI.o \
./src/FreeRTOS/FreeRTOS_asm_vectors.o \
./src/FreeRTOS/FreeRTOS_tick_config.o \
./src/FreeRTOS/IntQueue.o \
./src/FreeRTOS/IntQueueTimer.o \
./src/FreeRTOS/UARTCommandConsole.o \
./src/FreeRTOS/croutine.o \
./src/FreeRTOS/event_groups.o \
./src/FreeRTOS/heap_4.o \
./src/FreeRTOS/list.o \
./src/FreeRTOS/platform.o \
./src/FreeRTOS/port.o \
./src/FreeRTOS/portASM.o \
./src/FreeRTOS/printf-stdarg.o \
./src/FreeRTOS/queue.o \
./src/FreeRTOS/serial.o \
./src/FreeRTOS/tasks.o \
./src/FreeRTOS/timers.o 

S_UPPER_DEPS += \
./src/FreeRTOS/FreeRTOS_asm_vectors.d \
./src/FreeRTOS/portASM.d 

C_DEPS += \
./src/FreeRTOS/FreeRTOSMain.d \
./src/FreeRTOS/FreeRTOS_CLI.d \
./src/FreeRTOS/FreeRTOS_tick_config.d \
./src/FreeRTOS/IntQueue.d \
./src/FreeRTOS/IntQueueTimer.d \
./src/FreeRTOS/UARTCommandConsole.d \
./src/FreeRTOS/croutine.d \
./src/FreeRTOS/event_groups.d \
./src/FreeRTOS/heap_4.d \
./src/FreeRTOS/list.d \
./src/FreeRTOS/platform.d \
./src/FreeRTOS/port.d \
./src/FreeRTOS/printf-stdarg.d \
./src/FreeRTOS/queue.d \
./src/FreeRTOS/serial.d \
./src/FreeRTOS/tasks.d \
./src/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
src/FreeRTOS/FreeRTOSMain.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOSMain.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/FreeRTOS_CLI.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOS_CLI.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/FreeRTOS_asm_vectors.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOS_asm_vectors.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/FreeRTOS_tick_config.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/FreeRTOS_tick_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/IntQueue.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/IntQueue.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/IntQueueTimer.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/IntQueueTimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/UARTCommandConsole.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/UARTCommandConsole.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/croutine.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/croutine.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/event_groups.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/event_groups.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/heap_4.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/list.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/platform.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/platform.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/port.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/portASM.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/portASM.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/printf-stdarg.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/printf-stdarg.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/queue.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/serial.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/serial.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/tasks.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/tasks.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FreeRTOS/timers.o: C:/rp/zynq_com/vivado/pspl_port_performance_final_1/pspl_port_performance_final_1.sdk/FreeRTOS/timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -std=c99 -mcpu=cortex-a9 -mfpu=neon -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\FreeRTOS" -I"C:\rp\zynq_com\vivado\pspl_port_performance_final_1\pspl_port_performance_final_1.sdk\Shared" -c -fmessage-length=0 -MT"$@" -v -I../../application_cpu_0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


