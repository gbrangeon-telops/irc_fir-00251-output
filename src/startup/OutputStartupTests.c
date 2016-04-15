/*
 * @file OutputStartupTests.h
 * Output Startup Tests module implementation.
 *
 * This file implements the test suite used to validate the Output FPGA functions.
 *
 * $Rev: 16804 $
 * $Author: dalain $
 * $Date: 2015-09-14 15:28:45 -0400 (lun., 14 sept. 2015) $
 * $Id: UART_Utils.h 16804 2015-09-14 19:28:45Z dalain $
 * $URL: http://einstein/svn/firmware/FIR-00251-Common/trunk/Software/UART_Utils.h $
 *
 * (c) Copyright 2016 Telops Inc.
 */

#include "OutputStartupTests.h"

#define OUTPUT_BUF_MEM_ADDR         (uint32_t)XPAR_FB_MEMORY_MIG_7SERIES_0_BASEADDR
#define OUTPUT_BUF_MEM_SIZE         (uint32_t)((XPAR_FB_MEMORY_MIG_7SERIES_0_HIGHADDR - XPAR_FB_MEMORY_MIG_7SERIES_0_BASEADDR + 1) / 4)

void Startup_InstantPrint(void);

testFuncPtr oBufMemTest = AutoTest_OBufMem;



/*
 * Runs the predefined memory test suite XIL_TESTMEM_ALLMEMTESTS on the
 * Processing Calibration memory range and outputs test result at every step
 *
 * @return IRC_SUCCESS if all memory tests were successful
 * @return IRC_FAILURE and sets the corresponding EventID flag otherwise
 */
IRC_Status_t AutoTest_OBufMem(void) {

   IRC_Status_t Status;
   networkCommand_t dtResponse;
   extern debugTerminal_t gDebugTerminal;

   debugTerminal_t *debugTerminal = &gDebugTerminal;

   Status = Startup_TestMem(OUTPUT_BUF_MEM_ADDR, OUTPUT_BUF_MEM_SIZE);

   const char* debugTerminalCMD = (Status == IRC_SUCCESS) ? TEST_RESULT_SUCCESS_CMD : TEST_RESULT_FAILURE_CMD;

   // Send test result to processing FPGA
   F1F2_CommandClear(&dtResponse.f1f2);
   dtResponse.f1f2.isNetwork = 1;
   dtResponse.f1f2.srcAddr = debugTerminal->port.netIntf->address;
   dtResponse.f1f2.srcPort = debugTerminal->port.port;
   dtResponse.f1f2.destAddr = NIA_PROCESSING_FPGA;
   dtResponse.f1f2.destPort = NIP_DEBUG_TERMINAL;
   dtResponse.f1f2.cmd = F1F2_CMD_DEBUG_CMD;

   snprintf(dtResponse.f1f2.payload.debug.text, F1F2_MAX_DEBUG_DATA_SIZE + 1, debugTerminalCMD);

   dtResponse.port = &debugTerminal->port;

   if (NetIntf_EnqueueCmd(debugTerminal->port.netIntf, &dtResponse) != IRC_SUCCESS)
   {
      DT_ERR("Failed to push debug CMD command in network interface command queue");
      return IRC_FAILURE;
   }

   return Status;
}

void Startup_InstantPrint() {

   extern debugTerminal_t gDebugTerminal;
   extern netIntf_t gNetworkIntf;
   extern ctrlIntf_t gProcCtrlIntf;
   extern ctrlIntf_t gStorageCtrlIntf;

   extern IRC_Status_t NetIntf_ProcessCmd(netIntf_t *netIntf, networkCommand_t *netCmd);

   // Move the DebugTerminal tx buffer into the network interface f1f2 commands buffer

   if (!CB_Full(gNetworkIntf.cmdQueue)) {
      DebugTerminal_SendMsgRequest(&gDebugTerminal);
   }

   DebugTerminal_Process();
   NetIntf_SM(&gNetworkIntf);
   CtrlIntf_Process(&gProcCtrlIntf);
   CtrlIntf_Process(&gStorageCtrlIntf);

   return;
}
