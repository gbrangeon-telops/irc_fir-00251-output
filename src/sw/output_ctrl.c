/**
 *  @file output_ctrl.c
 *  Output FPGA main() function.
 *  
 *  This file contains the main() function.
 *  
 *  $Rev$
 *  $Author$
 *  $LastChangedDate$
 *  $Id$
 *  $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#include "utils.h"
#include "BuiltInTests.h"
#include "led_ctrl.h"
#include "sdi_intf.h"
#include "AGC.h"
#include "GC_Manager.h"
#include "CtrlInterface.h"
#include "NetworkInterface.h"
#include "FirmwareUpdater.h"
#include "XADC.h"
#include "DebugTerminal.h"
#include "output_init.h"
#include "StackUtils.h"
#include "verbose.h"

#define DEVICE_RUNNING_TIME_REFRESH_PERIOD_US   TIME_ONE_MINUTE_US

#ifdef SIM
   #include "output_ctrl.h" // Contains the class SC_MODULE for SystemC simulation
   #include "mb_transactor.h" // Contains virtual functions that emulates microblaze functions
   #include "mb_axi4l_bridge_SC.h" // Used to bridge Microblaze AXI4-Lite transaction in SystemC transaction
#else                  
   //#include "dosfs.h"
   //#include "xtime_l.h"
   //#include "xcache_l.h"   
#endif


/*--------------------------------------------------------------------------------------*/
/* main                                                                                 */
/*--------------------------------------------------------------------------------------*/
#ifdef SIM
   sc_port<mb_transactor_task_if> *global_trans_ptr; /*< Pointer to a transactor interface */ 
   void output_ctrl::main()  // We are now defining the main() function of proc_ctrl (THREAD) for SystemC
#else
   int main()  // Defining the standard main() function 
#endif
{
   #ifdef SIM
      global_trans_ptr = &(this->transactor_interface);  // Link the pointer to the SystemC transactor interface
   #endif

   #ifdef SIM
      (*global_trans_ptr)->initialize();  // Initialize the SystemC ports
   #endif

   extern netIntf_t gNetworkIntf;
   extern ctrlIntf_t gProcCtrlIntf;
   extern ctrlIntf_t gStorageCtrlIntf;
   extern ledCtrl_t ledCtrl;
   extern t_AGC gAgcCtrl;
   extern t_SdiIntf gSdiIntfCtrl;
   uint64_t tic;

   Stack_ConfigStackViolationException();
   Stack_FillRemaining();

   Output_DebugTerminal_InitPhase1();

   FPGA_PRINT("Output FGPA starting...\n");

   BuiltInTest_Execute(BITID_BuiltInTestsVerification);

   #ifndef SIM
   BuiltInTest_Execute(BITID_TimerInitialization);
   #endif

   WAIT_US(30);
   BuiltInTest_Execute(BITID_FANControllerInitialization);
   BuiltInTest_Execute(BITID_LedControllerInitialization);
   BuiltInTest_Execute(BITID_InterruptControllerInitialization);
   BuiltInTest_Execute(BITID_NetworkInterfaceInitialization);
   BuiltInTest_Execute(BITID_DebugTerminalInitialization);
   BuiltInTest_Execute(BITID_GenICamManagerInitialization);
   BuiltInTest_Execute(BITID_QSPIFlashInerfaceInitialization);
   BuiltInTest_Execute(BITID_FirmwareUpdaterInitialization);
   BuiltInTest_Execute(BITID_AGCControllerInitialization);
   BuiltInTest_Execute(BITID_ADCControllerInitialization);
   BuiltInTest_Execute(BITID_InterruptControllerStartup);
   BuiltInTest_Execute(BITID_CLinkInterfaceInitialization);
   BuiltInTest_Execute(BITID_SDIInterfaceInitialization);

   GETTIME(&tic);

   // Main loop
   while(1)
   {
      if (elapsed_time_us(tic) > DEVICE_RUNNING_TIME_REFRESH_PERIOD_US)
      {
         GETTIME(&tic);
         FPGA_PRINT("Still Alive\n");
      }

      GC_Manager_SM();
      Firmware_Updater_SM();
      NetIntf_SM(&gNetworkIntf);
      CtrlIntf_Process(&gProcCtrlIntf);
      CtrlIntf_Process(&gStorageCtrlIntf);
      Led_ToggleDebugLedState(&ledCtrl);
      AGC_SM(&gcRegsData, &gAgcCtrl, &gSdiIntfCtrl);
      SDIIntf_ZoomSM(&gSdiIntfCtrl, &gcRegsData);
      SDIIntf_FlipXSM(&gSdiIntfCtrl, &gcRegsData);
      SDIIntf_FlipYSM(&gSdiIntfCtrl, &gcRegsData);
      SDIIntf_ChangeInputWindowSM(&gSdiIntfCtrl, &gcRegsData);
      XADC_SM();
      DebugTerminal_Process();
   }
}
