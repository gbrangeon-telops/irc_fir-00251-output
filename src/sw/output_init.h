/**
 *  @file output_init.h
 *  Output FPGA initialization module header.
 *  
 *  This file defines the output FPGA initialization module.
 *  
 *  $Rev$
 *  $Author$
 *  $Date$
 *  $Id$
 *  $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#ifndef OUTPUT_INIT_H
#define OUTPUT_INIT_H

#include "Protocol_F1F2.h"
#include "IRC_Status.h"
#include "BuiltInTests.h"

#define DT_UART_TX_CIRC_BUFFER_SIZE          1024

#define PROC_CI_UART_RX_CIRC_BUFFER_SIZE     (2 * F1F2_MAX_NET_PACKET_SIZE)
#define PROC_CI_UART_TX_BUFFER_SIZE          F1F2_MAX_NET_PACKET_SIZE

#define STORAGE_CI_UART_RX_CIRC_BUFFER_SIZE  (2 * F1F2_MAX_NET_PACKET_SIZE)
#define STORAGE_CI_UART_TX_BUFFER_SIZE       F1F2_MAX_NET_PACKET_SIZE

#define NI_CMD_QUEUE_SIZE           5
#define GCM_CMD_QUEUE_SIZE          1
#define PROC_CI_CMD_QUEUE_SIZE      5
#define STORAGE_CI_CMD_QUEUE_SIZE   5
#define FU_CMD_QUEUE_SIZE           1
#define DT_CMD_QUEUE_SIZE           1

#define GC_EVENT_ERROR_QUEUE_SIZE   5

IRC_Status_t Output_BuiltInTestsGlobalResult();
IRC_Status_t Output_BuiltInTestsCheck();
IRC_Status_t Output_NI_Init();
IRC_Status_t Output_DebugTerminal_InitPhase1();
IRC_Status_t Output_DebugTerminal_InitPhase2();
IRC_Status_t Output_FU_Init();
IRC_Status_t Output_GC_Init();
IRC_Status_t Output_QSPIFlash_Init();
IRC_Status_t Output_AGC_Init();
IRC_Status_t Output_Intc_Init();
IRC_Status_t Output_Intc_Start();
IRC_Status_t Output_XADC_Init();
IRC_Status_t Output_Timer_Init();
IRC_Status_t Output_Led_Init();
IRC_Status_t Output_Fan_Init();
IRC_Status_t Output_Clink_Init();
IRC_Status_t Output_SDI_Init();

#endif // OUTPUT_INIT_H
