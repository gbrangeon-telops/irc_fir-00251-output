/**
 *  @file output_init.c
 *  Output FPGA initialization module implementation.
 *  
 *  This file implements the output FPGA initialization module.
 *  
 *  $Rev$
 *  $Author$
 *  $Date$
 *  $Id$
 *  $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#include "output_init.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "GC_Manager.h"
#include "GC_Registers.h"
#include "GC_Events.h"
#include "GC_Callback.h"
#include "CtrlInterface.h"
#include "UART_Utils.h"
#include "NetworkInterface.h"
#include "FirmwareUpdater.h"
#include "QSPIFlash.h"
#include "Timer.h"
#include "AGC.h"
#include "XADC.h"
#include "tel2000_param.h"
#include "fan_ctrl.h"
#include "clink_ctrl.h"
#include "frame_buffer.h"
#include "pleora_intf.h"
#include "led_ctrl.h"


// Global variables
t_fan gFan = FAN_Ctor(TEL_PAR_TEL_AXIL_FAN_CTRL_BASEADDR);
t_ClinkConfig gClinkCtrl = ClinkConf_Ctor(TEL_PAR_TEL_AXIL_CLINK_BASEADDR);
t_FrameBuffer gFrameBufferCtrl = FrameBuffer_Ctor(TEL_PAR_TEL_AXIL_FB_CTRL_BASEADDR);
t_PleoraIntf gPleoraIntfCtrl = PleoraIntf_Ctor(TEL_PAR_TEL_AXIL_PLEORA_CTRL_BASEADDR);
// TODO : XPAR_FB_MEMORY_MIG_7SERIES_0_BASEADDR + offset
t_SdiIntf gSdiIntfCtrl = SDIIntf_Ctor(TEL_PAR_TEL_AXIL_SDI_CTRL_BASEADDR, 0x90000000);
t_AGC gAgcCtrl = AGC_Intf_Ctor(TEL_PAR_TEL_AXIL_SDI_CTRL_BASEADDR + SDIINTF_AGCOFFSET);
XIntc gOutputIntc;
netIntf_t gNetworkIntf;
ctrlIntf_t gProcCtrlIntf;
ctrlIntf_t gStorageCtrlIntf;
qspiFlash_t gQSPIFlash;
ledCtrl_t ledCtrl;


/**
 * Initializes network interface
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_NI_Init()
{
   static networkCommand_t niCmdQueueBuffer[NI_CMD_QUEUE_SIZE];
   static circBuffer_t niCmdQueue =
         CB_Ctor(niCmdQueueBuffer, NI_CMD_QUEUE_SIZE, sizeof(networkCommand_t));

   return NetIntf_Init(&gNetworkIntf, NIA_OUTPUT_FPGA, &niCmdQueue);
}

/**
 * Initializes firmware updater
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_FU_Init()
{
   static networkCommand_t fuCmdQueueBuffer[FU_CMD_QUEUE_SIZE];
   static circBuffer_t fuCmdQueue =
         CB_Ctor(fuCmdQueueBuffer, FU_CMD_QUEUE_SIZE, sizeof(networkCommand_t));

   // Initialize firmware updater
   if (Firmware_Updater_Init(&gNetworkIntf, &fuCmdQueue, &gQSPIFlash) != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   return IRC_SUCCESS;
}

/**
 * Initializes GenICam manager and GenICam registers.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_GC_Init()
{
   static uint8_t procRxDataCircBuffer[PROC_CI_UART_RX_CIRC_BUFFER_SIZE];
   static uint8_t procTxDataBuffer[PROC_CI_UART_TX_BUFFER_SIZE];
   static networkCommand_t procCtrlIntfCmdQueueBuffer[PROC_CI_CMD_QUEUE_SIZE];
   static circBuffer_t procCtrlIntfCmdQueue =
         CB_Ctor(procCtrlIntfCmdQueueBuffer, PROC_CI_CMD_QUEUE_SIZE, sizeof(networkCommand_t));

   static uint8_t storageRxDataCircBuffer[STORAGE_CI_UART_RX_CIRC_BUFFER_SIZE];
   static uint8_t storageTxDataBuffer[STORAGE_CI_UART_TX_BUFFER_SIZE];
   static networkCommand_t storageCtrlIntfCmdQueueBuffer[STORAGE_CI_CMD_QUEUE_SIZE];
   static circBuffer_t storageCtrlIntfCmdQueue =
         CB_Ctor(storageCtrlIntfCmdQueueBuffer, STORAGE_CI_CMD_QUEUE_SIZE, sizeof(networkCommand_t));

   static networkCommand_t gcmCmdQueueBuffer[GCM_CMD_QUEUE_SIZE];
   static circBuffer_t gcmCmdQueue =
         CB_Ctor(gcmCmdQueueBuffer, GCM_CMD_QUEUE_SIZE, sizeof(networkCommand_t));

   static gcEvent_t gcEventErrorQueueBuffer[GC_EVENT_ERROR_QUEUE_SIZE];
   static circBuffer_t gcEventErrorQueue =
         CB_Ctor(gcEventErrorQueueBuffer, GC_EVENT_ERROR_QUEUE_SIZE, sizeof(gcEvent_t));

   IRC_Status_t status;

   // Initialize GenICam registers data pointer
   GC_Registers_Init();

   // Initialize GenICam registers callback function
   GC_Callback_Init();

   // Initialize GenICam register data
   gcRegsData = gcRegsDataFactory;

   // Initialize Processing FPGA GenICam control interface
   status = CtrlIntf_InitCircularUART(&gProcCtrlIntf,
         CIP_F1F2_NETWORK,
         XPAR_FPGA_COMM_UART_DEVICE_ID,
         &gOutputIntc,
         XPAR_MCU_MICROBLAZE_0_AXI_INTC_FPGA_COMM_UART_IP2INTC_IRPT_INTR,
         procRxDataCircBuffer,
         PROC_CI_UART_RX_CIRC_BUFFER_SIZE,
         procTxDataBuffer,
         PROC_CI_UART_TX_BUFFER_SIZE,
         &gNetworkIntf,
         &procCtrlIntfCmdQueue,
         NIP_UNDEFINED);
   if (status != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   status = UART_Config(&gProcCtrlIntf.link.cuart.uart, 115200, 8, 'N', 1);
   if (status != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   // Initialize Storage FPGA GenICam control interface
   status = CtrlIntf_InitCircularUART(&gStorageCtrlIntf,
         CIP_F1F2_NETWORK,
         XPAR_AXI_UART_STORAGE_DEVICE_ID,
         &gOutputIntc,
         XPAR_MCU_MICROBLAZE_0_AXI_INTC_AXI_UART_STORAGE_IP2INTC_IRPT_INTR,
         storageRxDataCircBuffer,
         STORAGE_CI_UART_RX_CIRC_BUFFER_SIZE,
         storageTxDataBuffer,
         STORAGE_CI_UART_TX_BUFFER_SIZE,
         &gNetworkIntf,
         &storageCtrlIntfCmdQueue,
         NIP_UNDEFINED);
   if (status != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   status = UART_Config(&gStorageCtrlIntf.link.cuart.uart, 115200, 8, 'N', 1);
   if (status != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   // Initialize GenICam Manager
   if (GC_Manager_Init(&gNetworkIntf, &gcmCmdQueue) != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   // Initialize GenICam Events
   if (GC_Events_Init(&gcEventErrorQueue, NULL) != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   return IRC_SUCCESS;
}

/**
 * Initializes QSPIFlash interface.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_QSPIFlash_Init()
{
   IRC_Status_t status;

   // QSPI flash initialization
   status = QSPIFlash_Init(&gQSPIFlash,
         XPAR_AXI_QUAD_SPI_0_DEVICE_ID,
         &gOutputIntc,
         XPAR_MCU_MICROBLAZE_0_AXI_INTC_AXI_QUAD_SPI_0_IP2INTC_IRPT_INTR);
   if (status != IRC_SUCCESS)
   {
      return IRC_FAILURE;
   }

   return IRC_SUCCESS;
}

/**
 * Initializes AGC Module.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_AGC_Init()
{
   return AGC_Init(&gOutputIntc, &gcRegsData, &gAgcCtrl);
}

/**
 * Initializes interrupt controller.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_Intc_Init()
{
   XStatus status;

   status = XIntc_Initialize(&gOutputIntc, XPAR_INTC_0_DEVICE_ID);
   if (status != XST_SUCCESS)
   {
      return IRC_FAILURE;
   }

   return IRC_SUCCESS;
}

/**
 * Starts interrupt controller.
 *
 * @return IRC_SUCCESS if successfully started.
 * @return IRC_FAILURE if failed to start.
 */
IRC_Status_t Output_Intc_Start()
{
   XStatus status;

   /*
    * Start the interrupt controller such that interrupts are enabled for
    * all devices that cause interrupts, specifies real mode so that only
    * hardware interrupts are enabled.
    */
   status = XIntc_Start(&gOutputIntc, XIN_REAL_MODE);
   if (status != XST_SUCCESS)
   {
      return IRC_FAILURE;
   }

   /*
    * Enable the interrupt for the UartNs550 driver instances.
    */
   XIntc_Enable(&gOutputIntc, XPAR_MCU_MICROBLAZE_0_AXI_INTC_FPGA_COMM_UART_IP2INTC_IRPT_INTR);
   XIntc_Enable(&gOutputIntc, XPAR_MCU_MICROBLAZE_0_AXI_INTC_AXI_UART_STORAGE_IP2INTC_IRPT_INTR);

   /*
    * Enable the interrupt for the SPI driver instance.
    */
   XIntc_Enable(&gOutputIntc, XPAR_MCU_MICROBLAZE_0_AXI_INTC_AXI_QUAD_SPI_0_IP2INTC_IRPT_INTR);

   /*
    * Enable the interrupt for the AGC instance.
    */
   XIntc_Enable(&gOutputIntc, XPAR_MCU_MICROBLAZE_0_AXI_INTC_SYSTEM_AGC_INTR_0_INTR);

   /*
    * Initialize the exception table.
    */
   Xil_ExceptionInit();

   /*
    * Register the interrupt controller handler with the exception table.
    */
   Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
          (Xil_ExceptionHandler)XIntc_InterruptHandler,
          &gOutputIntc);

   /*
    * Enable exceptions.
    */
   Xil_ExceptionEnable();

   return IRC_SUCCESS;
}

/**
 * Initializes XADC.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_XADC_Init()
{
   return XADC_Init(XPAR_SYSMON_0_DEVICE_ID);
}

/**
 * Initializes general purpose 64-bit timer.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_Timer_Init()
{
   return Timer_Init(XPAR_TMRCTR_0_BASEADDR, XPAR_TMRCTR_0_CLOCK_FREQ_HZ);
}

/**
 * Initializes LED controller.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_Led_Init()
{
   return Led_Init(&ledCtrl, XPAR_AXI_GPIO_0_DEVICE_ID);
}

/**
 * Initializes fan controller.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_Fan_Init()
{
   FAN_Init(&gFan);
   FAN_SET_PWM1(&gFan, FAN_PERCENT_MAX_VALUE); // FPGA FAN

   return IRC_SUCCESS;
}


/**
 * Initializes Camera Link interface.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_Clink_Init()
{
   Clink_Init(&gClinkCtrl, &gcRegsData);

   return IRC_SUCCESS;
}

/**
 * Initializes SDI interface.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t Output_SDI_Init()
{
   SDIIntf_Init(&gSdiIntfCtrl, &gcRegsData);

   return IRC_SUCCESS;
}
