/**
 * @file BuiltInTestsDef.c
 * Built-in tests list implementation.
 *
 * This file implements camera Built-in tests list.
 * 
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#include "BuiltInTestsdef.h"
#include "BuiltInTests.h"
#include "output_init.h"

builtInTest_t builtInTests[BITID_Count] =
{
   {BITID_BuiltInTestsGlobalResult, "", BuiltInTest_UpdateGlobalResult, BITR_Pending},
   {BITID_BuiltInTestsVerification, "Verifying built-in tests", BuiltInTest_Check, BITR_Pending},
   {BITID_TimerInitialization, "Initializing timer", Output_Timer_Init, BITR_Pending},
   {BITID_InterruptControllerInitialization, "Initializing interrupt controller", Output_Intc_Init, BITR_Pending},
   {BITID_NetworkInterfaceInitialization, "Initializing network controller", Output_NI_Init, BITR_Pending},
   {BITID_GenICamManagerInitialization, "Initializing GenICam manager", Output_GC_Init, BITR_Pending},
   {BITID_LedControllerInitialization, "Initializing LEDs controller", Output_Led_Init, BITR_Pending},
   {BITID_QSPIFlashInerfaceInitialization, "Initializing QSPI flash interface", Output_QSPIFlash_Init, BITR_Pending},
   {BITID_FirmwareUpdaterInitialization, "Initializing firmware update", Output_FU_Init, BITR_Pending},
   {BITID_FANControllerInitialization, "Initializing fan controller (obsolete)", NULL, BITR_Passed},     // Obsolete
   {BITID_ADCControllerInitialization, "Initializing ADC controller", Output_XADC_Init, BITR_Pending},
   {BITID_InterruptControllerStartup, "Starting interrupt controller", Output_Intc_Start, BITR_Pending},
   {BITID_AGCControllerInitialization, "Initializing automatic Gain Controller", Output_AGC_Init, BITR_Pending},
   {BITID_CLinkInterfaceInitialization, "Initializing Camera Link interface", Output_Clink_Init, BITR_Pending},
   {BITID_SDIInterfaceInitialization, "Initializing SDI interface", Output_SDI_Init, BITR_Pending},
   {BITID_NetworkHostsSynchronization, "", NULL, BITR_Pending},
   {BITID_DebugTerminalInitialization, "Initializing debug terminal", Output_DebugTerminal_InitPhase2, BITR_Pending}
};
