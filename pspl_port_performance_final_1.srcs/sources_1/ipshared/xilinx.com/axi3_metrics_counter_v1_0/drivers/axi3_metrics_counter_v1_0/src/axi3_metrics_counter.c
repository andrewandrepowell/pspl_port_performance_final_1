

/***************************** Include Files *******************************/
#include "axi3_metrics_counter.h"

/************************** Function Definitions ***************************/

void Axi3_Metrics_Counter_setup(Axi3_Metrics_Counter* amc,void* base_address) {
	amc->base_address = base_address;
}

void Axi3_Metrics_Counter_reset(Axi3_Metrics_Counter* amc) {
	AXI3_METRICS_COUNTER_mWriteReg(amc->base_address,AXI3_METRICS_COUNTER_REG_CONTROL,AXI3_METRICS_COUNTER_MAS_CONTROL_RESET);
}

u32 Axi3_Metrics_Counter_get_metric(Axi3_Metrics_Counter* amc,Axi3_Metrics_Counter_Metric metric) {
	u32 register_offset;
	switch (metric) {
	case Axi3_Metrics_Counter_Metric_LATENCY_TOTAL_WRITE:		register_offset = AXI3_METRICS_COUNTER_REG_LATENCY_TOTAL_WRITE; 	break;
	case Axi3_Metrics_Counter_Metric_LATENCY_TOTAL_READ:		register_offset = AXI3_METRICS_COUNTER_REG_LATENCY_TOTAL_READ; 		break;
	case Axi3_Metrics_Counter_Metric_LATENCY_MIN_WRITE:			register_offset = AXI3_METRICS_COUNTER_REG_LATENCY_MIN_WRITE; 		break;
	case Axi3_Metrics_Counter_Metric_LATENCY_MIN_READ:			register_offset = AXI3_METRICS_COUNTER_REG_LATENCY_MIN_READ; 		break;
	case Axi3_Metrics_Counter_Metric_LATENCY_MAX_WRITE:			register_offset = AXI3_METRICS_COUNTER_REG_LATENCY_MAX_WRITE; 		break;
	case Axi3_Metrics_Counter_Metric_LATENCY_MAX_READ:			register_offset = AXI3_METRICS_COUNTER_REG_LATENCY_MAX_READ; 		break;
	case Axi3_Metrics_Counter_Metric_COUNTER:					register_offset = AXI3_METRICS_COUNTER_REG_COUNTER;					break;
	case Axi3_Metrics_Counter_Metric_TRANSACTION_TOTAL_WRITE:	register_offset = AXI3_METRICS_COUNTER_REG_TRANSACTION_TOTAL_WRITE;	break;
	case Axi3_Metrics_Counter_Metric_TRANSACTION_TOTAL_READ:	register_offset = AXI3_METRICS_COUNTER_REG_TRANSACTION_TOTAL_READ;	break;
	default: Xil_AssertNonvoidAlways();
	}
	return AXI3_METRICS_COUNTER_mReadReg(amc->base_address,register_offset);
}
