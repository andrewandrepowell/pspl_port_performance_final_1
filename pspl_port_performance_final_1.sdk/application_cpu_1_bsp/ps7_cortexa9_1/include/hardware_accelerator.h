/**
* @file hardware_accelerator.h
*
* Header file for hardware_accelerator.c. The main purpose of this driver is to facilitate the configuration
* of the hardware accelerator implemented in programmable logic, and to perform necessary assertions to ensure
* the hardware accelerator is properly configured prior to its operation. The hardware accelerator itself is
* constructed for the sole purpose of testing communication through the processing system's AXI slave PS-PL
* ports.
*
* It is recommended to be familiar with the ARM AMBA Advanced eXensible interface (AXI) to completely
* understand some of the terminology utilized in this documentation. However, some key terms are briefly
* explained here.
*
* Transaction 	- A single AXI transfer, including control information and data.
* Burst 		- The data transferred during a transaction. Is composed of multiple words.
* Word			- The amount of data transferred during a single clock cycle.
* Data width	- The size of the word. Is composed of multiple bytes.
* Data transfer	- Refers to the entire payload. Is composed of multiple bursts.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- ---------------------------------------------------
*       aap  06/25/15 Initial version
*
* </pre>
*
* @note
*
* aap - Andrew Andre Powell of Temple University's College of Engineering
*
******************************************************************************/

#ifndef HARDWARE_ACCELERATOR_H
#define HARDWARE_ACCELERATOR_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"


#define HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG0_OFFSET 0
#define HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG1_OFFSET 4
#define HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG2_OFFSET 8
#define HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG3_OFFSET 12
#define HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG4_OFFSET 16
#define HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG5_OFFSET 20
#define HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG6_OFFSET 24

/****************** Include Files (User Defined)  ********************/
#include "xil_assert.h"

#define Hardware_Accelerator_ADDR_OPERATION_MODE			HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG0_OFFSET
#define Hardware_Accelerator_ADDR_BURST_SIZE				HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG1_OFFSET
#define Hardware_Accelerator_ADDR_TRANSFER_SIZE				HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG2_OFFSET
#define Hardware_Accelerator_ADDR_WRITE_ADDRESS				HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG3_OFFSET
#define Hardware_Accelerator_ADDR_READ_ADDRESS				HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG4_OFFSET
#define Hardware_Accelerator_ADDR_WRITE_COHERENT_FLAG		HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG5_OFFSET
#define Hardware_Accelerator_ADDR_READ_COHERENT_FLAG		HARDWARE_ACCELERATOR_s_axi_lite_registers_SLV_REG6_OFFSET

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a HARDWARE_ACCELERATOR register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the HARDWARE_ACCELERATORdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void HARDWARE_ACCELERATOR_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define HARDWARE_ACCELERATOR_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a HARDWARE_ACCELERATOR register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the HARDWARE_ACCELERATOR device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 HARDWARE_ACCELERATOR_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define HARDWARE_ACCELERATOR_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/**************************** Type Definitions (User Defined) *****************************/

#define Hardware_Accelerator_BYTES_PER_32b_WORD		4					/**< Size of a 32-bit word in bytes. */
#define Hardware_Accelerator_BYTES_PER_64b_WORD		8					/**< Size of a 64-bit word in bytes. */
#define Hardware_Accelerator_MIN_BURST_SIZE			2					/**< Smallest possible burst size of an AXI transfer in bytes. */
#define Hardware_Accelerator_MAX_BURST_SIZE			256					/**< Largest possible burst size of an AXI transfer in bytes. */
#define Hardware_Accelerator_MAX_TRANSFER_SIZE		8192				/**< Largest possible transfer size for the separate and mixed modes of operation. */

/** Returns the data width of the hardware accelerator in bytes. */
#define Hardware_Accelerator_GET_BYTES_PER_WORD(ha)\
	((ha)->is_64bit_flag)?Hardware_Accelerator_BYTES_PER_64b_WORD:Hardware_Accelerator_BYTES_PER_32b_WORD;

typedef struct Hardware_Accelerator Hardware_Accelerator;								/**< See struct Hardware_Accelerator. */
typedef enum Hardware_Accelerator_Operation_Mode Hardware_Accelerator_Operation_Mode;	/**< See enum Hardware_Accelerator_Operation_Mode. */

/**
 * Contains the pertinent information necessary for the proper use of
 * the hardware accelerator
 */
struct Hardware_Accelerator {
	void* base_address;						/**< Address to access the hardware accelerator's registers. */
	void* run_operation_param;				/**< Parameter of the run_operation_func callback. */
	void (*run_operation_func)(void*);		/**< Callback to the function that initiates the hardware acelerator's operation. */
	void* is_running_param;					/**< Parameter of the is_running_func callback. */
	int (*is_running_func)(void*);			/**< Callback to the function that checks whether or not the hardware accelerator is running. */
	int is_64bit_flag:1;					/**< Flag indicate to whether the hardware accelerator's data width is 64- or 32-bits. */
};

/**
 * Represents the three modes of operation in which the hardware accelerator can operation.
 * In short, SEPARATE will cause the hardware accelerator to read data entirely from memory,
 * and once the entire data transfer completes, the hardware accelerator will write the data
 * back into memory. MIX will cause the hardware accelerator to first perform a read transaction,
 * and then perform a write transaction. The hardware accelerator will continue to alternate
 * between read and write transactions until the entire data transfer is read from and written to
 * memory. Finally, FULLY MIX will make the hardware accelerator start writing immediately after
 * a single word of data is read from memory.
 */
enum Hardware_Accelerator_Operation_Mode {
	Hardware_Accelerator_Operation_Mode_SEPARATE=0,
	Hardware_Accelerator_Operation_Mode_MIX=1,
	Hardware_Accelerator_Operation_Mode_FULLY_MIX=2
};

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the HARDWARE_ACCELERATOR instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus HARDWARE_ACCELERATOR_Reg_SelfTest(void * baseaddr_p);

/************************** Function Prototypes (User Defined) ****************************/

void									Hardware_Accelerator_setup(Hardware_Accelerator* ha,
											void* base_address,
											void* run_operation_param,void (*run_operation_func)(void*),
											void* is_running_param,int (*is_running_func)(void*),
											int is_64bit_flag);
void 									Hardware_Accelerator_set_data_burst_len(Hardware_Accelerator* ha,int data_burst_len);
int										Hardware_Accelerator_get_data_burst_len(Hardware_Accelerator* ha);
void									Hardware_Accelerator_set_transfer_size(Hardware_Accelerator* ha,int transfer_size);
int 									Hardware_Accelerator_get_transfer_size(Hardware_Accelerator* ha);
void 									Hardware_Accelerator_set_operation_mode(Hardware_Accelerator* ha,Hardware_Accelerator_Operation_Mode haom);
Hardware_Accelerator_Operation_Mode		Hardware_Accelerator_get_operation_mode(Hardware_Accelerator* ha);
void									Hardware_Accelerator_set_write_address(Hardware_Accelerator* ha,void* write_address);
void*									Hardware_Accelerator_get_write_address(Hardware_Accelerator* ha);
void									Hardware_Accelerator_set_read_address(Hardware_Accelerator* ha,void* read_address);
void*									Hardware_Accelerator_get_read_address(Hardware_Accelerator* ha);
void									Hardware_Accelerator_set_write_coherent_flag(Hardware_Accelerator* ha,int write_coherent_flag);
int 									Hardware_Accelerator_get_write_coherent_flag(Hardware_Accelerator* ha);
void									Hardware_Accelerator_set_read_coherent_flag(Hardware_Accelerator* ha,int read_coherent_flag);
int 									Hardware_Accelerator_get_read_coherent_flag(Hardware_Accelerator* ha);
void 									Hardware_Accelerator_run_operation(Hardware_Accelerator* ha);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* HARDWARE_ACCELERATOR_H */
