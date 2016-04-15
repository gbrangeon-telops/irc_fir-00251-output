/*
 * @file OutputStartupTests.h
 * Output Startup Tests module header.
 *
 * This file defines the test suite used to validate the Output FPGA functions.
 *
 * $Rev: 16804 $
 * $Author: dalain $
 * $Date: 2015-09-14 15:28:45 -0400 (lun., 14 sept. 2015) $
 * $Id: UART_Utils.h 16804 2015-09-14 19:28:45Z dalain $
 * $URL: http://einstein/svn/firmware/FIR-00251-Common/trunk/Software/UART_Utils.h $
 *
 * (c) Copyright 2016 Telops Inc.
 */

#ifndef OUTPUT_STARTUP_TESTS_H_
#define OUTPUT_STARTUP_TESTS_H_

// Standard Libraries

// Xilinx-defined headers
#include "xil_testmem.h"
#include "xstatus.h"
#include "xparameters.h"

// TELOPS-defined headers
#include "Startup_TestMem.h"
#include "DebugTerminal.h"
#include "IRC_Status.h"
#include "printf_utils.h"
#include "verbose.h"
#include "NetworkInterface.h"
#include "CtrlInterface.h"
#include "CircularBuffer.h"

#define TEST_RESULT_SUCCESS_CMD     "TRS"
#define TEST_RESULT_FAILURE_CMD     "TRF"

typedef IRC_Status_t (*testFuncPtr)(void);

IRC_Status_t AutoTest_OBufMem(void);

#endif   // OUTPUT_STARTUP_TESTS_H_
