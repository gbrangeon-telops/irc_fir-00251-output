/**
 * @file GC_Callback.c
 * GenICam registers callback functions definition.
 *
 * This file defines the GenICam registers callback functions.
 * 
 * Callback functions are alphabetically ordered to ease searches.
 * 
 * Once a default callback function has been generated using the matlab script, 
 * callback function header and body can be manually modified. The script
 * performs a backup of existing callback functions and rewrite them if needed.
 * It is suggested to carefully inspect generated code to ensure that there is
 * no source code lost. In case unused code need to be kept for future, be sure
 * to copy that code outside AUTO-CODE tags.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#include "GC_Callback.h"
#include "GC_Registers.h"
#include "GC_Events.h"
#include "clink_ctrl.h"
#include "sdi_intf.h"
#include "colormap.h"
#include "AGC.h"
#include "output_init.h"

/* AUTO-CODE BEGIN */
// Auto-generated GeniCam registers callback functions definition.
// Generated from XML camera definition file version 11.3.1
// using updateGenICamCallback.m Matlab script.

/**
 * GenICam registers callback function initialization.
 */
void GC_Callback_Init()
{
   gcRegsDef[AcquisitionArmIdx].callback =                     &GC_AcquisitionArmCallback;
   gcRegsDef[AcquisitionFrameRateIdx].callback =               &GC_AcquisitionFrameRateCallback;
   gcRegsDef[AcquisitionFrameRateMaxFGIdx].callback =          &GC_AcquisitionFrameRateMaxFGCallback;
   gcRegsDef[AcquisitionFrameRateModeIdx].callback =           &GC_AcquisitionFrameRateModeCallback;
   gcRegsDef[AcquisitionStartIdx].callback =                   &GC_AcquisitionStartCallback;
   gcRegsDef[AcquisitionStopIdx].callback =                    &GC_AcquisitionStopCallback;
   gcRegsDef[ClConfigurationIdx].callback =                    &GC_ClConfigurationCallback;
   gcRegsDef[DeviceBuiltInTestsResults5Idx].callback =         &GC_DeviceBuiltInTestsResults5Callback;
   gcRegsDef[DeviceBuiltInTestsResults6Idx].callback =         &GC_DeviceBuiltInTestsResults6Callback;
   gcRegsDef[DeviceFirmwareModuleRevisionIdx].callback =       &GC_DeviceFirmwareModuleRevisionCallback;
   gcRegsDef[DeviceFirmwareModuleSelectorIdx].callback =       &GC_DeviceFirmwareModuleSelectorCallback;
   gcRegsDef[DeviceTapGeometryIdx].callback =                  &GC_DeviceTapGeometryCallback;
   gcRegsDef[DeviceTemperatureIdx].callback =                  &GC_DeviceTemperatureCallback;
   gcRegsDef[DeviceTemperatureSelectorIdx].callback =          &GC_DeviceTemperatureSelectorCallback;
   gcRegsDef[DeviceVoltageIdx].callback =                      &GC_DeviceVoltageCallback;
   gcRegsDef[DeviceVoltageSelectorIdx].callback =              &GC_DeviceVoltageSelectorCallback;
   gcRegsDef[EventErrorIdx].callback =                         &GC_EventErrorCallback;
   gcRegsDef[EventErrorCodeIdx].callback =                     &GC_EventErrorCodeCallback;
   gcRegsDef[EventErrorTimestampIdx].callback =                &GC_EventErrorTimestampCallback;
   gcRegsDef[EventNotificationIdx].callback =                  &GC_EventNotificationCallback;
   gcRegsDef[EventSelectorIdx].callback =                      &GC_EventSelectorCallback;
   gcRegsDef[EventTelopsIdx].callback =                        &GC_EventTelopsCallback;
   gcRegsDef[EventTelopsCodeIdx].callback =                    &GC_EventTelopsCodeCallback;
   gcRegsDef[EventTelopsTimestampIdx].callback =               &GC_EventTelopsTimestampCallback;
   gcRegsDef[FValSizeIdx].callback =                           &GC_FValSizeCallback;
   gcRegsDef[HeightIdx].callback =                             &GC_HeightCallback;
   gcRegsDef[LValSizeIdx].callback =                           &GC_LValSizeCallback;
   gcRegsDef[MemoryBufferModeIdx].callback =                   &GC_MemoryBufferModeCallback;
   gcRegsDef[MemoryBufferSequenceCountIdx].callback =          &GC_MemoryBufferSequenceCountCallback;
   gcRegsDef[MemoryBufferSequenceDownloadModeIdx].callback =   &GC_MemoryBufferSequenceDownloadModeCallback;
   gcRegsDef[PayloadSizeIdx].callback =                        &GC_PayloadSizeCallback;
   gcRegsDef[PayloadSizeMinFGIdx].callback =                   &GC_PayloadSizeMinFGCallback;
   gcRegsDef[ReverseXIdx].callback =                           &GC_ReverseXCallback;
   gcRegsDef[ReverseYIdx].callback =                           &GC_ReverseYCallback;
   gcRegsDef[SensorHeightIdx].callback =                       &GC_SensorHeightCallback;
   gcRegsDef[SensorWidthIdx].callback =                        &GC_SensorWidthCallback;
   gcRegsDef[TriggerModeIdx].callback =                        &GC_TriggerModeCallback;
   gcRegsDef[TriggerSelectorIdx].callback =                    &GC_TriggerSelectorCallback;
   gcRegsDef[VideoAGCIdx].callback =                           &GC_VideoAGCCallback;
   gcRegsDef[VideoAGCFractionMaxIdx].callback =                &GC_VideoAGCFractionMaxCallback;
   gcRegsDef[VideoAGCFractionMaxMinIdx].callback =             &GC_VideoAGCFractionMaxMinCallback;
   gcRegsDef[VideoAGCFractionMinIdx].callback =                &GC_VideoAGCFractionMinCallback;
   gcRegsDef[VideoAGCFractionMinMaxIdx].callback =             &GC_VideoAGCFractionMinMaxCallback;
   gcRegsDef[VideoAGCResponseTimeIdx].callback =               &GC_VideoAGCResponseTimeCallback;
   gcRegsDef[VideoColorMapIdx].callback =                      &GC_VideoColorMapCallback;
   gcRegsDef[VideoColorMapMaxIdx].callback =                   &GC_VideoColorMapMaxCallback;
   gcRegsDef[VideoColorMapMinIdx].callback =                   &GC_VideoColorMapMinCallback;
   gcRegsDef[VideoDigitalZoomFactorIdx].callback =             &GC_VideoDigitalZoomFactorCallback;
   gcRegsDef[VideoDigitalZoomFactorMaxIdx].callback =          &GC_VideoDigitalZoomFactorMaxCallback;
   gcRegsDef[VideoDigitalZoomHeightIdx].callback =             &GC_VideoDigitalZoomHeightCallback;
   gcRegsDef[VideoDigitalZoomModeIdx].callback =               &GC_VideoDigitalZoomModeCallback;
   gcRegsDef[VideoDigitalZoomOffsetXIdx].callback =            &GC_VideoDigitalZoomOffsetXCallback;
   gcRegsDef[VideoDigitalZoomOffsetYIdx].callback =            &GC_VideoDigitalZoomOffsetYCallback;
   gcRegsDef[VideoDigitalZoomWidthIdx].callback =              &GC_VideoDigitalZoomWidthCallback;
   gcRegsDef[VideoReverseXIdx].callback =                      &GC_VideoReverseXCallback;
   gcRegsDef[VideoReverseYIdx].callback =                      &GC_VideoReverseYCallback;
   gcRegsDef[WidthIdx].callback =                              &GC_WidthCallback;
}

/**
 * AcquisitionArm GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_AcquisitionArmCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   extern t_ClinkConfig gClinkCtrl;

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      if (gcRegsData.AcquisitionArm)
      {
         Clink_ResetFrame(&gClinkCtrl);
         GC_UpdateCameraLink();
         Clink_SendConfigGC(&gClinkCtrl, &gcRegsData);
      }
   }
}

/**
 * AcquisitionFrameRate GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_AcquisitionFrameRateCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateCameraLink();
   }
}

/**
 * AcquisitionFrameRateMaxFG GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_AcquisitionFrameRateMaxFGCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateCameraLink();
   }
}

/**
 * AcquisitionFrameRateMode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_AcquisitionFrameRateModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateCameraLink();
   }
}

/**
 * AcquisitionStart GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_AcquisitionStartCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      if (gcRegsData.AcquisitionStart)
      {
         extern uint8_t gAcquisitionStarted;
         gAcquisitionStarted = 1;
      }
   }
}

/**
 * AcquisitionStop GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_AcquisitionStopCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write

      if (gcRegsData.AcquisitionStop)
      {
         extern uint8_t gAcquisitionStarted;
         gAcquisitionStarted = 0;
         GC_UpdateCameraLink();
      }
   }
}

/**
 * ClConfiguration GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_ClConfigurationCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateCameraLink();
   }
}

/**
 * DeviceBuiltInTestsResults5 GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceBuiltInTestsResults5Callback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
      BuiltInTest_Execute(BITID_BuiltInTestsGlobalResult);
      gcRegsData.DeviceBuiltInTestsResults5 = BuiltInTest_FillResultRegister(0);
   }
}

/**
 * DeviceBuiltInTestsResults6 GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceBuiltInTestsResults6Callback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
      gcRegsData.DeviceBuiltInTestsResults6 = BuiltInTest_FillResultRegister(1);
   }
}

/**
 * DeviceFirmwareModuleRevision GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceFirmwareModuleRevisionCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
      gcRegsData.DeviceFirmwareModuleRevision = DeviceFirmwareModuleRevisionAry[gcRegsData.DeviceFirmwareModuleSelector];
   }
}

/**
 * DeviceFirmwareModuleSelector GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceFirmwareModuleSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * DeviceTapGeometry GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceTapGeometryCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }
}

/**
 * DeviceTemperature GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceTemperatureCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
      gcRegsData.DeviceTemperature = DeviceTemperatureAry[gcRegsData.DeviceTemperatureSelector];
   }
}

/**
 * DeviceTemperatureSelector GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceTemperatureSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * DeviceVoltage GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceVoltageCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
      gcRegsData.DeviceVoltage = DeviceVoltageAry[gcRegsData.DeviceVoltageSelector];
   }
}

/**
 * DeviceVoltageSelector GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceVoltageSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * EventError GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventErrorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_READ))
   {
      // After read
      gcRegsData.EventError = 0;
      GC_NextEventError();
   }
}

/**
 * EventErrorCode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventErrorCodeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_READ))
   {
      // After read
      gcRegsData.EventErrorCode = EECD_NoError;
      GC_NextEventError();
   }
}

/**
 * EventErrorTimestamp GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventErrorTimestampCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_READ))
   {
      // After read
      gcRegsData.EventErrorTimestamp = 0;
      GC_NextEventError();
   }
}

/**
 * EventNotification GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventNotificationCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
      gcRegsData.EventNotification = EventNotificationAry[gcRegsData.EventSelector];
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      EventNotificationAry[gcRegsData.EventSelector] = gcRegsData.EventNotification;
   }
}

/**
 * EventSelector GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      gcRegsData.EventSelector = MIN(gcRegsData.EventSelector, EventNotificationAryLen - 1);
   }
}

/**
 * EventTelops GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventTelopsCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_READ))
   {
      // After read
      gcRegsData.EventTelops = 0;
      GC_NextEventTelops();
   }
}

/**
 * EventTelopsCode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventTelopsCodeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_READ))
   {
      // After read
      gcRegsData.EventTelopsCode = ETCD_NoEvent;
      GC_NextEventTelops();
   }
}

/**
 * EventTelopsTimestamp GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EventTelopsTimestampCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_READ))
   {
      // After read
      gcRegsData.EventTelopsTimestamp = 0;
      GC_NextEventTelops();
   }
}

/**
 * FValSize GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_FValSizeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * Height GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_HeightCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   // This shared register will never be read since the owner is the processing FPGA

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write

      // Remove 2 header lines (added for the NTx-Mini)
      gcRegsData.Height -= 2;

      GC_UpdateCameraLink();
      GC_UpdateFrameBuffer();
      GC_UpdateGiGe();
      GC_UpdateVideoConfiguration();
      GC_UpdateVideoAGCImageFraction();
   }
}

/**
 * LValSize GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_LValSizeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * MemoryBufferMode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * MemoryBufferSequenceCount GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferSequenceCountCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * MemoryBufferSequenceDownloadMode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferSequenceDownloadModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateFrameBuffer();
      GC_UpdateCameraLink();
   }
}

/**
 * PayloadSize GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_PayloadSizeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }
}

/**
 * PayloadSizeMinFG GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_PayloadSizeMinFGCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateCameraLink();
   }
}

/**
 * ReverseX GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_ReverseXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_RegisterWriteUI32(&gcRegsDef[VideoReverseXIdx], gcRegsData.ReverseX);
   }
}

/**
 * ReverseY GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_ReverseYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_RegisterWriteUI32(&gcRegsDef[VideoReverseYIdx], gcRegsData.ReverseY);
   }
}

/**
 * SensorHeight GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_SensorHeightCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   extern t_SdiIntf gSdiIntfCtrl;

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      SDIIntf_UpdateVideoOutput(&gSdiIntfCtrl, &gcRegsData);
   }
}

/**
 * SensorWidth GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_SensorWidthCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   extern t_SdiIntf gSdiIntfCtrl;

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      SDIIntf_UpdateVideoOutput(&gSdiIntfCtrl, &gcRegsData);
   }
}

/**
 * TriggerMode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_TriggerModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   extern uint8_t gAcquisitionStartTriggerIsActive;

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      if (gcRegsData.TriggerSelector == TS_AcquisitionStart)
      {
         if (gcRegsData.TriggerMode == TM_On)
         {
            gAcquisitionStartTriggerIsActive = 1;
         }
         else
         {
            gAcquisitionStartTriggerIsActive = 0;
         }

         GC_UpdateCameraLink();
      }
   }
}

/**
 * TriggerSelector GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_TriggerSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoAGC GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoAGCCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   extern t_AGC gAgcCtrl;

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateVideoAGCImageFraction();
      AGC_UpdateMode(&gcRegsData, &gAgcCtrl);
   }
}

/**
 * VideoAGCFractionMax GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoAGCFractionMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write

      // Update VideoAGCFractionMinMax register
      gcRegsData.VideoAGCFractionMinMax = gcRegsData.VideoAGCFractionMax - 1.0F;

      GC_UpdateVideoAGCImageFraction();
   }
}

/**
 * VideoAGCFractionMaxMin GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoAGCFractionMaxMinCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoAGCFractionMin GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoAGCFractionMinCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write

      // Update VideoAGCFractionMaxMin register
      gcRegsData.VideoAGCFractionMaxMin = gcRegsData.VideoAGCFractionMin + 1.0F;

      GC_UpdateVideoAGCImageFraction();
   }
}

/**
 * VideoAGCFractionMinMax GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoAGCFractionMinMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoAGCResponseTime GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoAGCResponseTimeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoColorMap GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoColorMapCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   extern t_SdiIntf gSdiIntfCtrl;

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      Cmap_UpdateMap(&gSdiIntfCtrl, gcRegsData.VideoColorMap);
   }
}

/**
 * VideoColorMapMax GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoColorMapMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      if(gcRegsData.VideoAGC == VAGC_Off)
      {
         GC_UpdateVideoColorRange();
      }
   }
}

/**
 * VideoColorMapMin GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoColorMapMinCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      if(gcRegsData.VideoAGC == VAGC_Off)
      {
         GC_UpdateVideoColorRange();
      }
   }
}

/**
 * VideoDigitalZoomFactor GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoDigitalZoomFactorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   extern t_SdiIntf gSdiIntfCtrl;

   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      // Check if config is valid
      if(gcRegsData.Width != 0 && gcRegsData.Height != 0)
      {
         // SDIIntf_SendZoomConfigGC(&gSdiIntfCtrl,&gcRegsData);
         SDIIntf_SetSdiPauseZoomSM(); // start SM video zoom
      }
   }
}

/**
 * VideoDigitalZoomFactorMax GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoDigitalZoomFactorMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoDigitalZoomHeight GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoDigitalZoomHeightCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoDigitalZoomMode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoDigitalZoomModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoDigitalZoomOffsetX GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoDigitalZoomOffsetXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoDigitalZoomOffsetY GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoDigitalZoomOffsetYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoDigitalZoomWidth GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoDigitalZoomWidthCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
   }
}

/**
 * VideoReverseX GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoReverseXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      // TODO connect with sdi intf to flip the image
      SDIIntf_SetSdiPauseFlipXSM();
   }
}

/**
 * VideoReverseY GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoReverseYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      // Before read
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      // TODO connect with sdi intf to flip the image
      SDIIntf_SetSdiPauseFlipYSM();
   }
}

/**
 * Width GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_WidthCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   // This shared register will never be read since the owner is the processing FPGA

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // After write
      GC_UpdateCameraLink();
      GC_UpdateFrameBuffer();
      GC_UpdateGiGe();
      GC_UpdateVideoConfiguration();
      GC_UpdateVideoAGCImageFraction();
   }
}

/* AUTO-CODE END */
