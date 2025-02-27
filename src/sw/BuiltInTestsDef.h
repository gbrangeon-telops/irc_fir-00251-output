/**
 * @file BuiltInTestsdef.h
 * Built-in tests list definition header.
 *
 * This file defines the built-in tests list.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#ifndef BUILTINTESTSDEF_H
#define BUILTINTESTSDEF_H

/**
 * Built-in test ID.
 */
enum builtInTestIDEnum {
   // Initialization built-in tests
   BITID_BuiltInTestsGlobalResult = 0,
   BITID_BuiltInTestsVerification,
   BITID_TimerInitialization,
   BITID_InterruptControllerInitialization,
   BITID_NetworkInterfaceInitialization,
   BITID_GenICamManagerInitialization,
   BITID_LedControllerInitialization,
   BITID_QSPIFlashInerfaceInitialization,
   BITID_FirmwareUpdaterInitialization,
   BITID_FANControllerInitialization,     // Obsolete
   BITID_ADCControllerInitialization,
   BITID_InterruptControllerStartup,
   BITID_AGCControllerInitialization,
   BITID_CLinkInterfaceInitialization,
   BITID_SDIInterfaceInitialization,
   BITID_NetworkHostsSynchronization,
   BITID_DebugTerminalInitialization,

   // When a built-in test is added to this list, the following tools must be updated:
   //    - tsirinfo
   //    - IRCAM_TEL2000\Test\DeviceBuiltInTests\ParseDeviceBuiltInTestsResults.m (called in TSIRDiag)

   // Built-in test count
   BITID_Count
};

#endif // BUILTINTESTSDEF_H
