#ifndef MAIN_H_
#define MAIN_H_

/****************** Include Files (User Defined)  ********************/

// Standalone
#include "xparameters.h"
#include "xil_assert.h"
#include "xpseudo_asm_gcc.h"
#include "xil_cache_l.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xpm_counter.h"
#include "hardware_accelerator.h"
#include "PeripheralShortcuts.h"
#include "axi3_metrics_counter.h"
#include "Amp.h"
#include "string.h"
#include "Cli.h"

// FreeRTOS
#include "FreeRTOS.h"
#include "TaskShortcuts.h"
#include "semphr.h"

// Base Parameters
#define UART_PRINT(str)						Cli_write_message((str))
#define UART_PRINTF(str,...)				Cli_write_message_formatted((str),__VA_ARGS__)
#define IO_ID								XPAR_XGPIOPS_0_DEVICE_ID
#define IO_DIRECTION_OUT(p)					XGpioPs_SetDirectionPin(&emio_obj, (p), 1)
#define IO_DIRECTION_IN(p)					XGpioPs_SetDirectionPin(&emio_obj, (p), 0)
#define IO_WRITE_HIGH(p)					XGpioPs_WritePin(&emio_obj, (p), 1)
#define IO_WRITE_LOW(p)						XGpioPs_WritePin(&emio_obj, (p), 0)
#define IO_READ(p)							XGpioPs_ReadPin(&emio_obj, (p))
#define IO_BASE								54
#define IO_ENABLE(ha_id)					(IO_BASE+(ha_id))
#define IO_RUN_OPERATION					IO_ENABLE(0)
#define IO_INT_ID							XPAR_FABRIC_HIER_READIES_HIER_GLOBAL_READY_UTIL_REDUCED_LOGIC_AND_0_RES_INTR
#define IO_INTERRUPT_PRIORITY				160

// CPU AMP Parameters
#define CPU_0_INT_ID						2
#define CPU_1_ADDRESS						0x00200000
#define CPU_1_INT_ID						3
#define CPU_SHARE_ADDRESS					0x00300000
#define CPU_DOMAIN							14
#define CPU_MESSAGE_LENGTH					1024
#define CPU_DISABLE							0

// Hardware (Accelerators) Parameters
//// No identifier should be below zero or the same as another hardware identifier

#define HA_ACP_0_HAS_ID						0
#define HA_ACP_0_STRING						"ha_acp_0"
#define HA_ACP_0_IS_CONNECTED_TO_ACP_FLAG	1
#define HA_ACP_0_IS_64b_FLAG				1
#define HA_ACP_0_IS_CACHE_COHERENT_FLAG		1
#define HA_ACP_0_IO_RUN_OPERATION			IO_ENABLE(1)
#define HA_ACP_0_INT_ID						XPAR_FABRIC_HIER_PSPL_PORT_ACP_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_READY_INTR
#define HA_ACP_0_M_AXI_BASE_ADDRESS			XPAR_HIER_PSPL_PORT_ACP_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_S_AXI_LITE_REGISTERS_BASEADDR
#define HA_ACP_0_PERFORM_BASE_ADDRESS		XPAR_HIER_PSPL_PORT_ACP_HIER_HARDWARE_ACCELERATOR_0_AXI3_METRICS_COUNTER_0_S_AXI_LITE_BASEADDR

#define HA_ACP_1_HAS_ID						1
#define HA_ACP_1_STRING						"ha_acp_1"
#define HA_ACP_1_IS_CONNECTED_TO_ACP_FLAG	1
#define HA_ACP_1_IS_64b_FLAG				1
#define HA_ACP_1_IS_CACHE_COHERENT_FLAG		1
#define HA_ACP_1_IO_RUN_OPERATION			IO_ENABLE(2)
#define HA_ACP_1_INT_ID						XPAR_FABRIC_HIER_PSPL_PORT_ACP_HIER_HARDWARE_ACCELERATOR_1_HARDWARE_ACCELERATOR_0_READY_INTR
#define HA_ACP_1_M_AXI_BASE_ADDRESS			XPAR_HIER_PSPL_PORT_ACP_HIER_HARDWARE_ACCELERATOR_1_HARDWARE_ACCELERATOR_0_S_AXI_LITE_REGISTERS_BASEADDR
#define HA_ACP_1_PERFORM_BASE_ADDRESS		XPAR_HIER_PSPL_PORT_ACP_HIER_HARDWARE_ACCELERATOR_1_AXI3_METRICS_COUNTER_0_S_AXI_LITE_BASEADDR

#define HA_GP0_0_HAS_ID						2
#define HA_GP0_0_STRING						"ha_gp0_0"
#define HA_GP0_0_IS_CONNECTED_TO_ACP_FLAG	0
#define HA_GP0_0_IS_64b_FLAG				0
#define HA_GP0_0_IS_CACHE_COHERENT_FLAG		0
#define HA_GP0_0_IO_RUN_OPERATION			IO_ENABLE(3)
#define HA_GP0_0_INT_ID						XPAR_FABRIC_HIER_PSPL_PORT_GP0_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_READY_INTR
#define HA_GP0_0_M_AXI_BASE_ADDRESS			XPAR_HIER_PSPL_PORT_GP0_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_S_AXI_LITE_REGISTERS_BASEADDR
#define HA_GP0_0_PERFORM_BASE_ADDRESS		XPAR_HIER_PSPL_PORT_GP0_HIER_HARDWARE_ACCELERATOR_0_AXI3_METRICS_COUNTER_0_S_AXI_LITE_BASEADDR

#define HA_HP0_0_HAS_ID						3
#define HA_HP0_0_STRING						"ha_hp0_0"
#define HA_HP0_0_IS_CONNECTED_TO_ACP_FLAG	0
#define HA_HP0_0_IS_64b_FLAG				0
#define HA_HP0_0_IS_CACHE_COHERENT_FLAG		0
#define HA_HP0_0_IO_RUN_OPERATION			IO_ENABLE(4)
#define HA_HP0_0_INT_ID						XPAR_FABRIC_HIER_PSPL_PORT_HP0_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_READY_INTR
#define HA_HP0_0_M_AXI_BASE_ADDRESS			XPAR_HIER_PSPL_PORT_HP0_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_S_AXI_LITE_REGISTERS_BASEADDR
#define HA_HP0_0_PERFORM_BASE_ADDRESS		XPAR_HIER_PSPL_PORT_HP0_HIER_HARDWARE_ACCELERATOR_0_AXI3_METRICS_COUNTER_0_S_AXI_LITE_BASEADDR

#define HA_HP1_0_HAS_ID						4
#define HA_HP1_0_STRING						"ha_hp1_0"
#define HA_HP1_0_IS_CONNECTED_TO_ACP_FLAG	0
#define HA_HP1_0_IS_64b_FLAG				1
#define HA_HP1_0_IS_CACHE_COHERENT_FLAG		0
#define HA_HP1_0_IO_RUN_OPERATION			IO_ENABLE(5)
#define HA_HP1_0_INT_ID						XPAR_FABRIC_HIER_PSPL_PORT_HP1_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_READY_INTR
#define HA_HP1_0_M_AXI_BASE_ADDRESS			XPAR_HIER_PSPL_PORT_HP1_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_S_AXI_LITE_REGISTERS_BASEADDR
#define HA_HP1_0_PERFORM_BASE_ADDRESS		XPAR_HIER_PSPL_PORT_HP1_HIER_HARDWARE_ACCELERATOR_0_AXI3_METRICS_COUNTER_0_S_AXI_LITE_BASEADDR

#define HA_HP2_0_HAS_ID						5
#define HA_HP2_0_STRING						"ha_hp2_0"
#define HA_HP2_0_IS_CONNECTED_TO_ACP_FLAG	0
#define HA_HP2_0_IS_64b_FLAG				1
#define HA_HP2_0_IS_CACHE_COHERENT_FLAG		0
#define HA_HP2_0_IO_RUN_OPERATION			IO_ENABLE(6)
#define HA_HP2_0_INT_ID						XPAR_FABRIC_HIER_PSPL_PORT_HP2_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_READY_INTR
#define HA_HP2_0_M_AXI_BASE_ADDRESS			XPAR_HIER_PSPL_PORT_HP2_HIER_HARDWARE_ACCELERATOR_0_HARDWARE_ACCELERATOR_0_S_AXI_LITE_REGISTERS_BASEADDR
#define HA_HP2_0_PERFORM_BASE_ADDRESS		XPAR_HIER_PSPL_PORT_HP2_HIER_HARDWARE_ACCELERATOR_0_AXI3_METRICS_COUNTER_0_S_AXI_LITE_BASEADDR

#define HA_TOTAL							6
#define HA_INTERRUPT_PRIORITY				(IO_INTERRUPT_PRIORITY+8)
#define HA_PARAMS_BURST_LEN					16
//#define HA_PARAMS_TRANSFER_SIZE				2048
#define HA_PARAMS_TRANSFER_SIZE				65536
#define HA_PARAMS_OPERATION_MODE			Hardware_Accelerator_Operation_Mode_FULLY_MIX
#define HA_PARAMS_MEMORY					&mry_objs[MEMORY_OCM_ID]
//#define HA_MAX_TANSFER_SIZE					8192	// in bytes
#define HA_MAX_TANSFER_SIZE					65536	// in bytes

// Memory Parameters
//// No identifier should be below zero or the same as another memory identifier

#define MEMORY_OCM_ID						0
#define MEMORY_OCM_STRING					"ocm"
#define MEMORY_OCM_BASE_ADDRESS				0xFFFC0000
#define MEMORY_OCM_IS_OCM_FLAG				1
#define MEMORY_OCM_DOMAIN					MEMORY_OCM_ID
#define MEMORY_OCM_POLICY_0					Amp_write_back_no_write_allocate
#define MEMORY_OCM_POLICY_1					Amp_non_cacheable

#define MEMORY_DDR_ID						1
#define MEMORY_DDR_STRING					"ddr"
#define MEMORY_DDR_IS_OCM_FLAG				0
#define MEMORY_DDR_BASE_ADDRESS				0x00400000
#define MEMORY_DDR_DOMAIN					MEMORY_DDR_ID
#define MEMORY_DDR_POLICY_0					Amp_shareable_device
#define MEMORY_DDR_POLICY_1					Amp_non_cacheable

#define MEMORY_TOTAL						2

#define MEMORY_SLCR_BASE_ADDRESS					0xF8000000
#define MEMORY_SLCR_LOCK_OFFSET						0x00000004
#define MEMORY_SLCR_LOCK_VALUE						0x767B
#define MEMORY_SLCR_UNLOCK_OFFSET					0x00000008
#define MEMORY_SLCR_UNLOCK_VALUE					0xDF0D
#define MEMORY_SLCR_OCM_CFG_OFFSET					0x00000910
#define MEMORY_SLCR_OCM_CFG_MAP_BITS				0x0000000F
#define MEMORY_SLCR_OCM_CFG_MAP_VALUE				0x0000000F
#define MEMORY_MPCORE_BASE_ADDRESS					0xF8F00000
#define MEMORY_MPCORE_SCU_CTRL_OFFSET				0x00000000
#define MEMORY_MPCORE_SCU_CTRL_FIL_ENABLE_BITS		0x00000002
#define MEMORY_MPCORE_SCU_CTRL_FIL_ENABLE_VALUE		0x00000002
#define MEMORY_MPCORE_FIL_S_ADDR_OFFSET				0x00000040
#define MEMORY_MPCORE_FIL_S_ADDR_VALUE				0x00000000
#define MEMORY_MPCORE_FIL_S_ADDR_BITS				0xFFF00000
#define MEMORY_MPCORE_FIL_E_ADDR_OFFSET				0x00000044
#define MEMORY_MPCORE_FIL_E_ADDR_VALUE				0xFFE00000
#define MEMORY_MPCORE_FIL_E_ADDR_BITS				0xFFF00000
#if (~MEMORY_SLCR_OCM_CFG_MAP_BITS & MEMORY_SLCR_OCM_CFG_MAP_VALUE)
#error "MEMORY_SLCR_OCM_CFG_MAP_VALUE is invalid."
#endif
#if (~MEMORY_MPCORE_FIL_S_ADDR_BITS & MEMORY_MPCORE_FIL_S_ADDR_VALUE)
#error "MEMORY_MPCORE_FIL_S_ADDR_VALUE is invalid."
#endif
#if (~MEMORY_MPCORE_FIL_E_ADDR_BITS & MEMORY_MPCORE_FIL_E_ADDR_VALUE)
#error "MEMORY_MPCORE_FIL_E_ADDR_VALUE is invalid."
#endif
#if (~MEMORY_MPCORE_SCU_CTRL_FIL_ENABLE_BITS & MEMORY_MPCORE_SCU_CTRL_FIL_ENABLE_VALUE)
#error "MEMORY_MPCORE_SCU_CTRL_FIL_ENABLE_VALUE is invalid."
#endif


// Dummy Task Parmeters
#define DUMMY_TASK_0_ID						1
#define DUMMY_TASK_0_STRING					"dummy_0"
#define DUMMY_TASK_PARAMS_BURST_LEN			16
#define DUMMY_TASK_PARAMS_TRANSFER_SIZE		2048
#define DUMMY_TASK_PARAMS_OPERATION_MODE	Hardware_Accelerator_Operation_Mode_FULLY_MIX
#define DUMMY_TASK_PARAMS_MEMORY			&mry_objs[MEMORY_OCM_ID]

#define DUMMY_TASK_LFSR_SEED				0xACE1u
#define DUMMY_TASK_TOTAL					1

/**************** Type Definitions (User Defined) ********************/

typedef struct Memory {
	int identifier;
	void* base_address;
	u32 domain;
	u32 max_transfer_size;
	int is_normal_memory_flag:1;
	int is_ocm_flag:1;
	Amp_PageAttribute policy_0;
	Amp_PageAttribute policy_1;
	char* string;
} Memory;

typedef struct Params {
	int burst_len;
	int transfer_size;
	Hardware_Accelerator_Operation_Mode operation_mode;
	Memory* mry_obj;
} Params;

typedef struct Counts {
	struct {
		struct {
			u32 total, min, max;
		} write, read;
	} latency;
	struct {
		struct {
			u32 total;
		} write, read;
	} transaction;
	u32 count;
} Counts;

typedef struct Arm_Counts {
	struct {
		union {
			struct {
				struct {
					u32 total;
				} write, read;
			};
			struct {
				u32 total;
				u32 sleep;
			};
		};
	} latency;
} Arm_Counts;

typedef struct Monitor {
	Axi3_Metrics_Counter amc_obj;
	Counts cts_obj;
} Monitor;

typedef struct Hardware {
	Hardware_Accelerator hae_obj;		/**< Hardware Accelerator driver that encapsulates register-level operations. */
	Monitor mtr_obj;					/**< Encapsulates driver for metrics counter and local storage of counter values. */
	Params prs_obj;						/**< Encapsulates the runtime-configurable parameters of the respective hardware accelerator. */
	Arm_Counts acs_obj;					/**< Contains the metrics of the arm core's read and writes to memory. */
	int identifier;						/**< Unique identifier of the hardware, which must be equal to or greater than 0. */
	int location;						/**< Value that determines where in memory over which the hardware operates. */
	int pin_run_operation;				/**< Pin of the hardware accelerator's enable. */
	u32 interrupt_id;					/**< Interrupt identifier that refers to the ready pin of the hardware accelerator. */
	int is_cache_coherent_flag:1;		/**< Indicative to whether or not the hardware accelerator is set to request coherent transactions. */
	int is_connected_to_acp_flag:1;		/**< Indicative to whether or not the hardware accelerator is connected to the acp port. */
	int is_enabled_flag:1;				/**< Indicative to whether or not the hardware accelerator is selected for operation. */
	int is_error_flag:1;				/**< Indicative to whether or not there is an inconsistency with the written and read data. */
	char* string;						/**< String that represents the hardware accelerator. */
} Hardware;

typedef struct Task {
	SemaphoreHandle_t sync_hdl;
	SemaphoreHandle_t lock_hdl;
	TaskHandle_t task_hdl;
} Task;

typedef struct Dummy_Task {
	Task tsk_obj;
	Params prs_obj;
	int identifier;
	int location;
	int is_enabled_flag;
	int is_powersave_flag:1;
	int is_error_flag:1;
	u16 lfsr;
	char* string;
} Dummy_Task;

typedef struct Synch {
	Arm_Counts acs_obj;
	int pin_run_operation;
	u32 interrupt_id;
	Task* tsk_obj;
} Synch;

typedef struct Shared_Data {
	char message_in[CPU_MESSAGE_LENGTH];
	char message_out[CPU_MESSAGE_LENGTH];
} Shared_Data;

typedef struct Shared {
	Shared_Data* shared_data;
	Task* tsk_obj;
	u32 self_interrupt_id;
	u32 other_interrupt_id;
} Shared;

/*************** Function Prototypes (User Defined) ******************/

void Memory_static_setup();
void Memory_clean(unsigned int adr, unsigned int len); /* Don't use */
void Memory_invalidate(unsigned int adr, unsigned int len); /* Don't use */
void* Memory_memcpy( void *pvDest, const void *pvSource, size_t ulBytes );
void* Memory_memcpy_clean( void *pvDest, const void *pvSource, size_t ulBytes );
void Memory_setup(Memory* mry_obj,int identifier,void* base_address,
		u32 max_transfer_size,u32 domain,int is_ocm_flag,
		Amp_PageAttribute policy_0,Amp_PageAttribute policy_1,char* string);
void Memory_set_base_address(Memory* mry_obj,void* base_address);
void Memory_set_policies(Memory* mry_obj,Amp_PageAttribute policy_0,Amp_PageAttribute policy_1);
#define Memory_is_normal_memory(mry_obj) (const int)(mry_obj)->is_normal_memory_flag
int Memory_is_non_cacheable(Memory* mry_obj);
#define Memory_get_identifier(mry_obj) (const int)(mry_obj)->identifier
#define Memory_is_ocm(mry_obj) (const int)(mry_obj)->is_ocm_flag
#define Memory_get_max_transfer_size(mry_obj) (const u32)(mry_obj)->max_transfer_size
#define Memory_set_max_transfer_size(mry_obj,value) (mry_obj)->max_transfer_size = (value)
#define Memory_get_string(mry_obj) (const char*)(mry_obj)->string
#define Memory_get_base_address(mry_obj) (const void*)(mry_obj)->base_address
#define Memory_get_cache_policy_0(mry_obj) (const Amp_PageAttribute)(mry_obj)->policy_0
#define Memory_get_cache_policy_1(mry_obj) (const Amp_PageAttribute)(mry_obj)->policy_1
#define Params_Memory_get(prs_obj) (Memory* const)(prs_obj)->mry_obj
#define Params_set_burst_len(prs_obj,burst_len_0) ({(prs_obj)->burst_len = (burst_len_0);})
#define Params_set_transfer_size(prs_obj,transfer_size_0) ({(prs_obj)->transfer_size = (transfer_size_0);})
#define Params_set_operation_mode(prs_obj,haom_0) ({(prs_obj)->operation_mode = (haom_0);})
#define Params_set_memory(prs_obj,mry_obj_0) ({(prs_obj)->mry_obj = (mry_obj_0);})
#define Params_get_burst_len(prs_obj) (const int)(prs_obj)->burst_len
#define Params_get_transfer_size(prs_obj) (const int)(prs_obj)->transfer_size
#define Params_get_operation_mode(prs_obj) (const Hardware_Accelerator_Operation_Mode)(prs_obj)->operation_mode
#define Params_get_memory(prs_obj) Params_Memory_get(prs_obj)
#define Counts_setup(cts_obj) memset((cts_obj),0,sizeof(Counts))
#define Arm_Counts_setup(acs_obj) memset((acs_obj),0,sizeof(Arm_Counts))
#define Arm_Counts_start(acs_obj) ({ Xpm_SetEvents(XPM_CNTRCFG3); })
#define Arm_Counts_end_total_read(acs_obj) ({ u32 buffer[XPM_CTRCOUNT]; Xpm_GetEventCounters(buffer); (acs_obj)->latency.read.total = buffer[3]; })
#define Arm_Counts_end_total_write(acs_obj) ({ u32 buffer[XPM_CTRCOUNT]; Xpm_GetEventCounters(buffer); (acs_obj)->latency.write.total = buffer[3]; })
#define Arm_Counts_end_total(acs_obj) ({ u32 buffer[XPM_CTRCOUNT]; Xpm_GetEventCounters(buffer); (acs_obj)->latency.total = buffer[3]; })
#define Arm_Counts_end_sleep(acs_obj) ({ u32 buffer[XPM_CTRCOUNT]; Xpm_GetEventCounters(buffer); (acs_obj)->latency.sleep = buffer[3]; })
void Monitor_setup(Monitor* mtr_obj,void* base_address);
void Monitor_reset(Monitor* mtr_obj);
void Monitor_load(Monitor* mtr_obj);
void Hardware_setup(Hardware* hde_obj,Params* prs_obj,
		int identifier,int pin_run_operation,int is_connected_to_acp_flag,
		int is_64bit_flag,int is_cache_coherent_flag,u32 interrupt_id,
		void* hae_obj_base_address,void* mtr_obj_base_address,char* string);
void Hardware_run_operation_handler(void* hde_obj);
int Hardware_is_running_handler(void* hde_obj);
void Hardware_interrupt_handler(void* hde_obj);
#define Hardware_get_identifier(hde_obj) (const int)(hde_obj)->identifier
#define Hardware_set_identifier(hde_obj,identifier_0) ({(hde_obj)->identifier = identifier_0;})
#define Hardware_set_location(hde_obj,location_0) ({(hde_obj)->location = location_0;})
#define Hardware_get_location(hde_obj) (const int)(hde_obj)->location
void Hardware_Params_set_burst_len(Hardware* hde_obj,int burst_len);
void Hardware_Params_set_transfer_size(Hardware* hde_obj,int transfer_size);
void Hardware_Params_set_operation_mode(Hardware* hde_obj,Hardware_Accelerator_Operation_Mode haom);
void Hardware_Params_set_memory(Hardware* hde_obj,Memory* mry_obj);
void Hardware_Params_configure(Hardware* hde_obj);
#define Hardware_is_enabled(hde_obj) (const int)(hde_obj)->is_enabled_flag
#define Hardware_is_connected_to_acp(hde_obj) (const int)(hde_obj)->is_connected_to_acp_flag
#define Hardware_get_string(hde_obj) (hde_obj)->string
#define Hardware_Params_get_write_offset(hde_obj) Hardware_get_location((hde_obj))*Memory_get_max_transfer_size((hde_obj)->prs_obj.mry_obj)*2
#define Hardware_Params_get_read_offset(hde_obj) Hardware_Params_get_write_offset((hde_obj))+Memory_get_max_transfer_size((hde_obj)->prs_obj.mry_obj)
#define Hardware_Params_get_write_address(hde_obj) (void*)((u32)(hde_obj)->prs_obj.mry_obj->base_address+Hardware_Params_get_write_offset((hde_obj)))
#define Hardware_Params_get_read_address(hde_obj) (void*)((u32)(hde_obj)->prs_obj.mry_obj->base_address+Hardware_Params_get_read_offset(hde_obj))
#define Hardware_Params_get(hde_obj) (const Params*)&(hde_obj)->prs_obj
#define Hardware_params_Memory_get(hde_obj) (const Memory*)(hde_obj)->prs_obj.mry_obj
void Hardware_operation_generate(Hardware* hde_obj);
void Hardware_operation_check(Hardware* hde_obj);
#define Hardware_run_operation(hde_obj)	Hardware_Accelerator_run_operation(&(hde_obj)->hae_obj)
#define Hardware_is_cache_coherent(hde_obj) (const int)(hde_obj)->is_cache_coherent_flag
#define Hardware_is_error(hde_obj) (const int)(hde_obj)->is_error_flag
#define Hardware_Monitor_reset(hde_obj) Monitor_reset(&(hde_obj)->mtr_obj)
#define Hardware_Monitor_load(hde_obj) Monitor_load(&(hde_obj)->mtr_obj);
#define Hardware_Monitor_Counts_get(hde_obj) (const Counts*)&(hde_obj)->mtr_obj.cts_obj
#define Hardware_set_is_enabled_flag(hde_obj,val) ({(hde_obj)->is_enabled_flag = (val)!=0;})
#define Hardware_Arm_Counts_get(hde_obj) (const Arm_Counts*)&(hde_obj)->acs_obj
void Hardware_set_is_cache_coherent_flag(Hardware* hde_obj,int is_cache_coherent_flag);
void Synch_setup(Synch* syn_obj,int pin_run_operation,u32 interrupt_id,Task* tsk_obj);
void Synch_run_operation_handler(Synch* syn_obj);
void Synch_interrupt_handler(void* syn_obj);
#define Synch_Arm_Counts_start(syn_obj) Arm_Counts_start(&(syn_obj)->acs_obj)
#define Synch_Arm_Counts_end_sleep(syn_obj) Arm_Counts_end_sleep(&(syn_obj)->acs_obj)
#define Synch_Arm_Counts_get(syn_obj) (const Arm_Counts*)&(syn_obj)->acs_obj
void Task_setup(Task* tsk_obj,TaskFuncHandle_t func,void* param,char* string);
int Task_lock(Task* tsk_obj);
void Task_unlock(Task* tsk_obj);
void Task_sleep(Task* tsk_obj);
void Task_wake(Task* tsk_obj);
#define Task_wake_isr(tsk_obj,xHigherPriorityTaskWoken) xSemaphoreGiveFromISR((tsk_obj)->sync_hdl,(xHigherPriorityTaskWoken))
void Dummy_Task_setup(Dummy_Task* dmy_obj,Params* prs_obj,int identifier,char* string);
#define Dummy_Task_get_string(dmy_obj) (const char*)(dmy_obj)->string
int Dummy_Task_set_is_enabled_flag(Dummy_Task* dmy_obj, int is_enabled_flag);
#define Dummy_Task_get_identifier(dmy_obj) (const int)(dmy_obj)->identifier
#define Dummy_Task_get_location(dmy_obj) (const int)(dmy_obj)->location
#define Dummy_Task_get_is_powersave_flag(dmy_obj) (const int)(dmy_obj)->is_powersave_flag
#define Dummy_Task_is_enabled(dmy_obj) (const int)dmy_obj->is_enabled_flag
#define Dummy_Task_Params_get(dmy_obj) (const Params*)&(dmy_obj)->prs_obj
#define Dummy_Task_Params_get_write_offset(dmy_obj) Dummy_Task_get_location(dmy_obj)*Memory_get_max_transfer_size((dmy_obj)->prs_obj.mry_obj)*2
#define Dummy_Task_Params_get_read_offset(dmy_obj) Dummy_Task_Params_get_write_offset((dmy_obj))+Memory_get_max_transfer_size((dmy_obj)->prs_obj.mry_obj)
#define Dummy_Task_Params_get_write_address(dmy_obj) (void*)((u32)(dmy_obj)->prs_obj.mry_obj->base_address+Dummy_Task_Params_get_write_offset((dmy_obj)))
#define Dummy_Task_Params_get_read_address(dmy_obj) (void*)((u32)(dmy_obj)->prs_obj.mry_obj->base_address+Dummy_Task_Params_get_read_offset(dmy_obj))
int Dummy_Task_set_identifier(Dummy_Task* dmy_obj, int identifier);
int Dummy_Task_set_location(Dummy_Task* dmy_obj, int location);
int Dummy_Task_set_powersave_flag(Dummy_Task* dmy_obj, int is_powersave_flag);
int Dummy_Task_Params_set_burst_len(Dummy_Task* dmy_obj, int burst_len);
int Dummy_Task_Params_set_transfer_size(Dummy_Task* dmy_obj, int transfer_size);
int Dummy_Task_Params_set_operation_mode(Dummy_Task* dmy_obj, Hardware_Accelerator_Operation_Mode haom);
int Dummy_Task_Params_set_memory(Dummy_Task* dmy_obj, Memory* mry_obj);
u16 Dummy_Task_get_uniform_random_value(Dummy_Task* dmy_obj);
void Shared_setup(Shared* shd_obj, void* base_address, u32 domain, void* cpu_1_address,
		u32 self_interrupt_id, u32 other_interrupt_id, Task* tsk_obj);
void Shared_interrupt_handler(void* shd_obj);
void Shared_signal(Shared* shd_obj);
void Shared_wait(Shared* shd_obj);
//#define Shared_wait(shd_obj) ({Task_sleep((shd_obj)->tsk_obj);})
//#define Shared_signal_on_Semaphore(shd_obj) ({Semaphore_signal(&(shd_obj)->shared_data->semaphore);})
//#define Shared_wait_on_Semaphore(shd_obj) ({Semaphore_wait(&(shd_obj)->shared_data->semaphore);})
#define Shared_set_task(shd_obj,tsk_obj_0) ({(shd_obj)->tsk_obj = (tsk_obj_0);})
void Shared_forward_command(Shared* shd_obj, const char* message_in, char* message_out, int message_out_total_size);
#define Shared_get_message_in(shd_obj)	({(shd_obj)->shared_data->message_in;})
#define Shared_get_message_out(shd_obj)	({(shd_obj)->shared_data->message_out;})

#endif

