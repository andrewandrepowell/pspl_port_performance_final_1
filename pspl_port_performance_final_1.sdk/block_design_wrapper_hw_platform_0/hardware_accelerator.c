/**
* @file hardware_accelerator.c
*
* Contains the definitions and the documentation of the functions that
* provide a simple interface to the hardware accelerators configuration
* registers.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- ---------------------------------------------------
*       aap 06/25/15 Initial version
* </pre>
*
* @note
*
* aap - Andrew Andre Powell of Temple University's College of Engineering
*
******************************************************************************/
/***************************** Include Files (User Defined) *******************************/
#include "hardware_accelerator.h"

/************************** Function Definitions (User Defined) ***************************/

/*****************************************************************************
*
* Configure the structure needed for the other methods.
*
* @param	ha						The hardware accelerator structure.
* @param	base_address			Address to access the hardware accelerator's registers. Should be found in xparameters.h
* @param	run_operation_param		Parameter of the run_operation_func callback.
* @param	run_operation_func		Callback to the function that initiates the hardware acelerator's operation.
* @param	is_running_param		Parameter of the is_running_func callback.
* @param	is_running_func			Callback to the function that checks whether or not the hardware accelerator is running.
* @param	is_64bit_flag			Flag indicate to whether the hardware accelerator's data width is 64- or 32-bits.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void Hardware_Accelerator_setup(Hardware_Accelerator* ha,void* base_address,
		void* run_operation_param,void (*run_operation_func)(void*),
		void* is_running_param,int (*is_running_func)(void*),int is_64bit_flag) {

	// Run test and assert if the self test fails
	Xil_AssertVoid(HARDWARE_ACCELERATOR_Reg_SelfTest(base_address)==XST_SUCCESS);

	// Store data
	ha->base_address = base_address;
	ha->run_operation_param = run_operation_param;
	ha->run_operation_func = run_operation_func;
	ha->is_running_param = is_running_param;
	ha->is_running_func = is_running_func;
	ha->is_64bit_flag = is_64bit_flag!=0;
}

/*****************************************************************************
*
* Set the burst length of each transaction.
*
* @param	ha						The hardware accelerator structure.
* @param	data_burst_len			The desired burst length in words.
*
* @return	None.
*
* @note		data_burst_len must be a power of 2 between Hardware_Accelerator_MIN_BURST_SIZE
* 			and Hardware_Accelerator_MAX_BURST_SIZE, inclusively. Also know that
* 			only Hardware_Accelerator_run_operation checks whether or not the
* 			burst length is valid.
*
******************************************************************************/
void Hardware_Accelerator_set_data_burst_len(Hardware_Accelerator* ha,int data_burst_len) {
	HARDWARE_ACCELERATOR_mWriteReg(ha->base_address,Hardware_Accelerator_ADDR_BURST_SIZE,data_burst_len);
}

/*****************************************************************************
*
* Get the burst length of each transaction.
*
* @param	ha						The hardware accelerator structure.
*
* @return	The burst length configured in the hardware accelerator's registers.
*
* @note		data_burst_len must be a power of 2 between Hardware_Accelerator_MIN_BURST_SIZE
* 			and Hardware_Accelerator_MAX_BURST_SIZE, inclusively. Also know that
* 			only Hardware_Accelerator_run_operation checks whether or not the
* 			burst length is valid.
*
******************************************************************************/
int	Hardware_Accelerator_get_data_burst_len(Hardware_Accelerator* ha) {
	return HARDWARE_ACCELERATOR_mReadReg(ha->base_address,Hardware_Accelerator_ADDR_BURST_SIZE);
}

/*****************************************************************************
*
* Set the data transfer size.
*
* @param	ha						The hardware accelerator structure.
* @param	transfer_size			The desired data transfer size in bytes.
*
* @return	None.
*
* @note		transfer_size must be a multiple of the product of the data width in bytes
* 			and the data burst size in words. The transfer_size should be configured such that
* 			the writing and reading memory regions are exclusive to each other.
*
* 			The writing memory region is defined by the memory starting at the write address
* 			and ending at the byte immediately before the sum of the write address
* 			and transfer size. The reading memory region is defined by the memory starting at
* 			the reading address and ending at the byte immediately before the sum of the read
* 			address and transfer size.
*
* 			Also know that only Hardware_Accelerator_run_operation
* 			checks whether or not the data transfer size is valid.
*
******************************************************************************/
void Hardware_Accelerator_set_transfer_size(Hardware_Accelerator* ha,int transfer_size) {
	HARDWARE_ACCELERATOR_mWriteReg(ha->base_address,Hardware_Accelerator_ADDR_TRANSFER_SIZE,transfer_size);
}

/*****************************************************************************
*
* Get the data transfer size.
*
* @param	ha						The hardware accelerator structure.
*
* @return	The data transfer size configured in the hardware accelerator's registers.
*
* @note		transfer_size must be a multiple of the product of the data width in bytes
* 			and the data burst size in words. The transfer_size should be configured such that
* 			the writing and reading memory regions are exclusive to each other.
*
* 			The writing memory region is defined by the memory starting at the write address
* 			and ending at the byte immediately before the sum of the write address
* 			and transfer size. The reading memory region is defined by the memory starting at
* 			the reading address and ending at the byte immediately before the sum of the read
* 			address and transfer size.
*
* 			Also know that only Hardware_Accelerator_run_operation
* 			checks whether or not the data transfer size is valid.
*
******************************************************************************/
int Hardware_Accelerator_get_transfer_size(Hardware_Accelerator* ha) {
	return HARDWARE_ACCELERATOR_mReadReg(ha->base_address,Hardware_Accelerator_ADDR_TRANSFER_SIZE);
}

/*****************************************************************************
*
* Set the operation mode.
*
* @param	ha						The hardware accelerator structure.
* @param	haom					The desired operation mode.
*
* @return	None.
*
* @note		Know that only Hardware_Accelerator_run_operation
* 			checks whether or not the operation mode is valid.
*
******************************************************************************/
void Hardware_Accelerator_set_operation_mode(Hardware_Accelerator* ha,Hardware_Accelerator_Operation_Mode haom) {
	HARDWARE_ACCELERATOR_mWriteReg(ha->base_address,Hardware_Accelerator_ADDR_OPERATION_MODE,haom);
}

/*****************************************************************************
*
* Get the operation mode.
*
* @param	ha						The hardware accelerator structure.
*
* @return	The operation mode configured in the hardware accelerator's registers.
*
* @note		Know that only Hardware_Accelerator_run_operation
* 			checks whether or not the operation mode is valid.
*
******************************************************************************/
Hardware_Accelerator_Operation_Mode	Hardware_Accelerator_get_operation_mode(Hardware_Accelerator* ha) {
	return HARDWARE_ACCELERATOR_mReadReg(ha->base_address,Hardware_Accelerator_ADDR_OPERATION_MODE);
}

/*****************************************************************************
*
* Set the address to where the hardware accelerator will write after completion
* of its reading operation.
*
* @param	ha						The hardware accelerator structure.
* @param	write_address			The desired write address.
*
* @return	None.
*
* @note		write_address should be a multiple of four bytes and defined such that
* 			the writing and reading memory regions are exclusive to each other.
*
* 			The writing memory region is defined by the memory starting at the write address
* 			and ending at the byte immediately before the sum of the write address
* 			and transfer size. The reading memory region is defined by the memory starting at
* 			the reading address and ending at the byte immediately before the sum of the read
* 			address and transfer size.
*
* 			Know that only Hardware_Accelerator_run_operation
* 			checks whether or not the write address is valid.
*
******************************************************************************/
void Hardware_Accelerator_set_write_address(Hardware_Accelerator* ha,void* write_address) {
	HARDWARE_ACCELERATOR_mWriteReg(ha->base_address,Hardware_Accelerator_ADDR_WRITE_ADDRESS,write_address);
}

/*****************************************************************************
*
* Get the address to where the hardware accelerator will write after completion
* of its reading operation.
*
* @param	ha						The hardware accelerator structure.
*
* @return	The write address configured in the hardware accelerator's registers.
*
* @note		write_address should be a multiple of four bytes and defined such that
* 			the writing and reading memory regions are exclusive to each other.
*
* 			The writing memory region is defined by the memory starting at the write address
* 			and ending at the byte immediately before the sum of the write address
* 			and transfer size. The reading memory region is defined by the memory starting at
* 			the reading address and ending at the byte immediately before the sum of the read
* 			address and transfer size.
*
* 			Know that only Hardware_Accelerator_run_operation
* 			checks whether or not the write address is valid.
*
******************************************************************************/
void* Hardware_Accelerator_get_write_address(Hardware_Accelerator* ha) {
	return (void*)HARDWARE_ACCELERATOR_mReadReg(ha->base_address,Hardware_Accelerator_ADDR_WRITE_ADDRESS);
}

/*****************************************************************************
*
* Set the address from where the hardware accelerator will read prior to
* starting its writing operation.
*
* @param	ha						The hardware accelerator structure.
* @param	read_address			The desired read address.
*
* @return	None.
*
* @note		read_address should be a multiple of four bytes and defined such that
* 			the writing and reading memory regions are exclusive to each other.
*
* 			The writing memory region is defined by the memory starting at the write address
* 			and ending at the byte immediately before the sum of the write address
* 			and transfer size. The reading memory region is defined by the memory starting at
* 			the reading address and ending at the byte immediately before the sum of the read
* 			address and transfer size.
*
*  			Know that only Hardware_Accelerator_run_operation
* 			checks whether or not the read address is valid.
*
******************************************************************************/
void Hardware_Accelerator_set_read_address(Hardware_Accelerator* ha,void* read_address) {
	HARDWARE_ACCELERATOR_mWriteReg(ha->base_address,Hardware_Accelerator_ADDR_READ_ADDRESS,read_address);
}

/*****************************************************************************
*
* Get the address from where the hardware accelerator will read prior to
* starting its writing operation.
*
* @param	ha						The hardware accelerator structure.
*
* @return	The read address configured in the hardware accelerator's registers.
*
* @note		read_address should be a multiple of four bytes and defined such that
* 			the writing and reading memory regions are exclusive to each other.
*
* 			The writing memory region is defined by the memory starting at the write address
* 			and ending at the byte immediately before the sum of the write address
* 			and transfer size. The reading memory region is defined by the memory starting at
* 			the reading address and ending at the byte immediately before the sum of the read
* 			address and transfer size.
*
* 			Know that only Hardware_Accelerator_run_operation
* 			checks whether or not the operation mode is valid.
*
******************************************************************************/
void* Hardware_Accelerator_get_read_address(Hardware_Accelerator* ha) {
	return (void*)HARDWARE_ACCELERATOR_mReadReg(ha->base_address,Hardware_Accelerator_ADDR_READ_ADDRESS);
}

/*****************************************************************************
*
* Load and perform assertions on the configurations within the hardware
* accelerator's registers, and then attempt to call the run operation callback
* function intended to start the hardware accelerator.
*
* @param	ha						The hardware accelerator structure.
*
* @return	None.
*
* @note		read_address should be a multiple of four bytes and defined such that
* 			the writing and reading memory regions are exclusive to each other.
*
* 			The writing memory region is defined by the memory starting at the write address
* 			and ending at the byte immediately before the sum of the write address
* 			and transfer size. The reading memory region is defined by the memory starting at
* 			the reading address and ending at the byte immediately before the sum of the read
* 			address and transfer size.
*
* @note		Know that only Hardware_Accelerator_run_operation
* 			checks whether or not the operation mode is valid.
*
******************************************************************************/
void Hardware_Accelerator_run_operation(Hardware_Accelerator* ha) {

	// Load all the control data locally to the CPU/memory
	long burst_size = 			  Hardware_Accelerator_get_data_burst_len(ha);
	long transfer_size = 		  Hardware_Accelerator_get_transfer_size(ha);
	long operation_mode =	(long)Hardware_Accelerator_get_operation_mode(ha);
	long write_address = 	(long)Hardware_Accelerator_get_write_address(ha);
	long read_address = 	(long)Hardware_Accelerator_get_read_address(ha);
	long write_end_address =      write_address+transfer_size;
	long read_end_address = 	  read_address+transfer_size;
	long bytes_per_words =		  Hardware_Accelerator_GET_BYTES_PER_WORD(ha);

	// Perform assertions
	//// Check and see if the hardware accelerator is already running
	if (ha->is_running_func!=NULL) {
		Xil_AssertVoid(ha->is_running_func(ha->is_running_param)==0);
	}
	//// Write and read addresses should be a multiple 32bit words
	Xil_AssertVoid(((write_address%Hardware_Accelerator_BYTES_PER_32b_WORD)==0)&&
			((read_address%Hardware_Accelerator_BYTES_PER_32b_WORD)==0));
	//// Check whether the burst size is within the appropriate range and is a power of 2
	Xil_AssertVoid((burst_size>=Hardware_Accelerator_MIN_BURST_SIZE)&&
			(burst_size<=Hardware_Accelerator_MAX_BURST_SIZE)&&
			!(burst_size&(burst_size-1)));
	//// Transfer size should be a multiple of the product of the number of bytes per word and burst size
	Xil_AssertVoid((transfer_size>0)&&transfer_size%(burst_size*bytes_per_words)==0);
	//// Data shouldn't be overlapping
	Xil_AssertVoid((write_address<read_address)?(write_end_address<=read_address):(read_end_address<=write_address));
	//// Check and make sure the operation mode is valid
	Xil_AssertVoid(({
		int result;
		switch ((Hardware_Accelerator_Operation_Mode)operation_mode) {
		case Hardware_Accelerator_Operation_Mode_SEPARATE:
		case Hardware_Accelerator_Operation_Mode_MIX:
		case Hardware_Accelerator_Operation_Mode_FULLY_MIX:
			result = 1;
			break;
		default:
			result = 0;
		}
		result;
	}));

	// Perform operation
	if (ha->run_operation_func!=NULL) {
		ha->run_operation_func(ha->run_operation_param);
	}
}
