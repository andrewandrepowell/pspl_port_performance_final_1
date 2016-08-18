#include "TaskShortcuts.h"

#define XLARG_STACK_SIZE	TASK_XLARG_STACK_SIZE
#define LARGE_STACK_SIZE 	TASK_LARGE_STACK_SIZE
#define MEDIU_STACK_SIZE	TASK_MEDIU_STACK_SIZE

extern void vPortInstallFreeRTOSVectorTable( void );
static void xTaskCreate_sc_base(
		TaskHandle_t* task,
		TaskFuncHandle_t func,
		void* param, const char* name,
		size_t stacksize, size_t priority);

extern XScuGic xInterruptController;

void vSetupFreeRTOS_sc() {

	/* Please note the code that defines this function were originally produced by the
	 * creators FreeRTOS
	 */

	BaseType_t xStatus;
	XScuGic_Config *pxGICConfig;

	/* Ensure no interrupts execute while the scheduler is in an inconsistent
	state.  Interrupts are automatically enabled when the scheduler is
	started. */
	portDISABLE_INTERRUPTS();

	/* Obtain the configuration of the GIC. */
	pxGICConfig = XScuGic_LookupConfig( XPAR_SCUGIC_SINGLE_DEVICE_ID );

	/* Sanity check the FreeRTOSConfig.h settings are correct for the
	hardware. */
	configASSERT( pxGICConfig );
	configASSERT( pxGICConfig->CpuBaseAddress == ( configINTERRUPT_CONTROLLER_BASE_ADDRESS + configINTERRUPT_CONTROLLER_CPU_INTERFACE_OFFSET ) );
	configASSERT( pxGICConfig->DistBaseAddress == configINTERRUPT_CONTROLLER_BASE_ADDRESS );

	/* Install a default handler for each GIC interrupt. */
	xStatus = XScuGic_CfgInitialize( &xInterruptController, pxGICConfig, pxGICConfig->CpuBaseAddress );
	configASSERT( xStatus == XST_SUCCESS );
	( void ) xStatus; /* Remove compiler warning if configASSERT() is not defined. */

	/* The Xilinx projects use a BSP that do not allow the start up code to be
	altered easily.  Therefore the vector table used by FreeRTOS is defined in
	FreeRTOS_asm_vectors.S, which is part of this project.  Switch to use the
	FreeRTOS vector table. */
	vPortInstallFreeRTOSVectorTable();
}

void xTaskCreate_sc_base(
		TaskHandle_t* task,
		TaskFuncHandle_t func,
		void* param, const char* name,
		size_t stacksize, size_t priority) {
	xTaskCreate(
		func,					/* The function called when the thread is executed */
		name, 					/* name given to the thread for debugging purposes */
		stacksize, 				/* stack size for calling functions from thread */
		param,					/* pointer to the thread for access to handler */
		priority,				/* priority is set to the default */
		task);					/* return handle for the thread */
	configASSERT(task != NULL);
}

void xTaskCreate_sc(TaskHandle_t* task, TaskFuncHandle_t func, void* param, const char* name) {
	xTaskCreate_sc_base(task, func, param, name, LARGE_STACK_SIZE, tskIDLE_PRIORITY);
}

void xTaskCreateMedium_sc(TaskHandle_t* task, TaskFuncHandle_t func, void* param, const char* name) {
	xTaskCreate_sc_base(task, func, param, name, MEDIU_STACK_SIZE, tskIDLE_PRIORITY);
}

void xTaskCreateRealTime_sc(TaskHandle_t* task, TaskFuncHandle_t func, void* param, const char* name) {
	xTaskCreate_sc_base(task, func, param, name, LARGE_STACK_SIZE, configTIMER_TASK_PRIORITY);
}

void xTaskCreateXLarge_sc(TaskHandle_t* task, TaskFuncHandle_t func, void* param, const char* name) {
	xTaskCreate_sc_base(task, func, param, name, XLARG_STACK_SIZE, tskIDLE_PRIORITY);
}


