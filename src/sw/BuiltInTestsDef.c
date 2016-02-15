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
   {BITID_BuiltInTestsVerification, "", BuiltInTest_Check, BITR_Pending},
   {BITID_TimerInitialization, "", Output_Timer_Init, BITR_Pending},
   {BITID_InterruptControllerInitialization, "", Output_Intc_Init, BITR_Pending},
   {BITID_NetworkInterfaceInitialization, "", Output_NI_Init, BITR_Pending},
   {BITID_GenICamManagerInitialization, "", Output_GC_Init, BITR_Pending},
   {BITID_LedControllerInitialization, "", Output_Led_Init, BITR_Pending},
   {BITID_QSPIFlashInerfaceInitialization, "", Output_QSPIFlash_Init, BITR_Pending},
   {BITID_FirmwareUpdaterInitialization, "", Output_FU_Init, BITR_Pending},
   {BITID_FANControllerInitialization, "", Output_Fan_Init, BITR_Pending},
   {BITID_ADCControllerInitialization, "", Output_XADC_Init, BITR_Pending},
   {BITID_InterruptControllerStartup, "", Output_Intc_Start, BITR_Pending},
   {BITID_AGCControllerInitialization, "", Output_AGC_Init, BITR_Pending},
   {BITID_CLinkInterfaceInitialization, "", Output_Clink_Init, BITR_Pending},
   {BITID_SDIInterfaceInitialization, "", Output_SDI_Init, BITR_Pending},
   {BITID_NetworkHostsSynchronization, "", NULL, BITR_Pending}
};
