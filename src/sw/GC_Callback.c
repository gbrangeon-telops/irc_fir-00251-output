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


extern t_SdiIntf gSdiIntfCtrl;

/* AUTO-CODE BEGIN */
// Auto-generated GeniCam registers callback functions definition.
// Generated from XML camera definition file version 12.7.0
// using updateGenICamCallback.m Matlab script.

/**
 * GenICam registers callback function initialization.
 */
void GC_Callback_Init()
{
   gcRegsDef[AcquisitionArmIdx].callback =                                       &GC_AcquisitionArmCallback;
   gcRegsDef[AcquisitionFrameRateIdx].callback =                                 &GC_AcquisitionFrameRateCallback;
   gcRegsDef[AcquisitionFrameRateMaxFGIdx].callback =                            &GC_AcquisitionFrameRateMaxFGCallback;
   gcRegsDef[AcquisitionFrameRateModeIdx].callback =                             &GC_AcquisitionFrameRateModeCallback;
   gcRegsDef[AcquisitionStartIdx].callback =                                     &GC_AcquisitionStartCallback;
   gcRegsDef[AcquisitionStopIdx].callback =                                      &GC_AcquisitionStopCallback;
   gcRegsDef[CalibrationModeIdx].callback =                                      &GC_CalibrationModeCallback;
   gcRegsDef[ClConfigurationIdx].callback =                                      &GC_ClConfigurationCallback;
   gcRegsDef[DeviceBuiltInTestsResults5Idx].callback =                           &GC_DeviceBuiltInTestsResults5Callback;
   gcRegsDef[DeviceBuiltInTestsResults6Idx].callback =                           &GC_DeviceBuiltInTestsResults6Callback;
   gcRegsDef[DeviceClockFrequencyIdx].callback =                                 &GC_DeviceClockFrequencyCallback;
   gcRegsDef[DeviceClockSelectorIdx].callback =                                  &GC_DeviceClockSelectorCallback;
   gcRegsDef[DeviceFirmwareModuleRevisionIdx].callback =                         &GC_DeviceFirmwareModuleRevisionCallback;
   gcRegsDef[DeviceFirmwareModuleSelectorIdx].callback =                         &GC_DeviceFirmwareModuleSelectorCallback;
   gcRegsDef[DeviceTapGeometryIdx].callback =                                    &GC_DeviceTapGeometryCallback;
   gcRegsDef[DeviceTemperatureIdx].callback =                                    &GC_DeviceTemperatureCallback;
   gcRegsDef[DeviceTemperatureSelectorIdx].callback =                            &GC_DeviceTemperatureSelectorCallback;
   gcRegsDef[DeviceVoltageIdx].callback =                                        &GC_DeviceVoltageCallback;
   gcRegsDef[DeviceVoltageSelectorIdx].callback =                                &GC_DeviceVoltageSelectorCallback;
   gcRegsDef[EHDRINumberOfExposuresIdx].callback =                               &GC_EHDRINumberOfExposuresCallback;
   gcRegsDef[EventErrorIdx].callback =                                           &GC_EventErrorCallback;
   gcRegsDef[EventErrorCodeIdx].callback =                                       &GC_EventErrorCodeCallback;
   gcRegsDef[EventErrorTimestampIdx].callback =                                  &GC_EventErrorTimestampCallback;
   gcRegsDef[EventNotificationIdx].callback =                                    &GC_EventNotificationCallback;
   gcRegsDef[EventSelectorIdx].callback =                                        &GC_EventSelectorCallback;
   gcRegsDef[EventTelopsIdx].callback =                                          &GC_EventTelopsCallback;
   gcRegsDef[EventTelopsCodeIdx].callback =                                      &GC_EventTelopsCodeCallback;
   gcRegsDef[EventTelopsTimestampIdx].callback =                                 &GC_EventTelopsTimestampCallback;
   gcRegsDef[FValSizeIdx].callback =                                             &GC_FValSizeCallback;
   gcRegsDef[FWModeIdx].callback =                                               &GC_FWModeCallback;
   gcRegsDef[HeightIdx].callback =                                               &GC_HeightCallback;
   gcRegsDef[IsActiveFlagsIdx].callback =                                        &GC_IsActiveFlagsCallback;
   gcRegsDef[LValSizeIdx].callback =                                             &GC_LValSizeCallback;
   gcRegsDef[MemoryBufferLegacyModeIdx].callback =                               &GC_MemoryBufferLegacyModeCallback;
   gcRegsDef[MemoryBufferMOIActivationIdx].callback =                            &GC_MemoryBufferMOIActivationCallback;
   gcRegsDef[MemoryBufferMOISourceIdx].callback =                                &GC_MemoryBufferMOISourceCallback;
   gcRegsDef[MemoryBufferModeIdx].callback =                                     &GC_MemoryBufferModeCallback;
   gcRegsDef[MemoryBufferSequenceCountIdx].callback =                            &GC_MemoryBufferSequenceCountCallback;
   gcRegsDef[MemoryBufferSequenceDownloadFrameCountIdx].callback =               &GC_MemoryBufferSequenceDownloadFrameCountCallback;
   gcRegsDef[MemoryBufferSequenceDownloadFrameImageCountIdx].callback =          &GC_MemoryBufferSequenceDownloadFrameImageCountCallback;
   gcRegsDef[MemoryBufferSequenceDownloadModeIdx].callback =                     &GC_MemoryBufferSequenceDownloadModeCallback;
   gcRegsDef[MemoryBufferSequenceDownloadSuggestedFrameImageCountIdx].callback = &GC_MemoryBufferSequenceDownloadSuggestedFrameImageCountCallback;
   gcRegsDef[MemoryBufferSequenceHeightIdx].callback =                           &GC_MemoryBufferSequenceHeightCallback;
   gcRegsDef[MemoryBufferStatusIdx].callback =                                   &GC_MemoryBufferStatusCallback;
   gcRegsDef[OffsetXIdx].callback =                                              &GC_OffsetXCallback;
   gcRegsDef[OffsetYIdx].callback =                                              &GC_OffsetYCallback;
   gcRegsDef[PayloadSizeIdx].callback =                                          &GC_PayloadSizeCallback;
   gcRegsDef[PayloadSizeMinFGIdx].callback =                                     &GC_PayloadSizeMinFGCallback;
   gcRegsDef[ReverseXIdx].callback =                                             &GC_ReverseXCallback;
   gcRegsDef[ReverseYIdx].callback =                                             &GC_ReverseYCallback;
   gcRegsDef[SensorHeightIdx].callback =                                         &GC_SensorHeightCallback;
   gcRegsDef[SensorWidthIdx].callback =                                          &GC_SensorWidthCallback;
   gcRegsDef[VideoAGCIdx].callback =                                             &GC_VideoAGCCallback;
   gcRegsDef[VideoAGCFractionMaxIdx].callback =                                  &GC_VideoAGCFractionMaxCallback;
   gcRegsDef[VideoAGCFractionMaxMinIdx].callback =                               &GC_VideoAGCFractionMaxMinCallback;
   gcRegsDef[VideoAGCFractionMinIdx].callback =                                  &GC_VideoAGCFractionMinCallback;
   gcRegsDef[VideoAGCFractionMinMaxIdx].callback =                               &GC_VideoAGCFractionMinMaxCallback;
   gcRegsDef[VideoAGCResponseTimeIdx].callback =                                 &GC_VideoAGCResponseTimeCallback;
   gcRegsDef[VideoColorMapIdx].callback =                                        &GC_VideoColorMapCallback;
   gcRegsDef[VideoColorMapMaxIdx].callback =                                     &GC_VideoColorMapMaxCallback;
   gcRegsDef[VideoColorMapMinIdx].callback =                                     &GC_VideoColorMapMinCallback;
   gcRegsDef[VideoDigitalZoomFactorIdx].callback =                               &GC_VideoDigitalZoomFactorCallback;
   gcRegsDef[VideoDigitalZoomFactorMaxIdx].callback =                            &GC_VideoDigitalZoomFactorMaxCallback;
   gcRegsDef[VideoDigitalZoomHeightIdx].callback =                               &GC_VideoDigitalZoomHeightCallback;
   gcRegsDef[VideoDigitalZoomModeIdx].callback =                                 &GC_VideoDigitalZoomModeCallback;
   gcRegsDef[VideoDigitalZoomOffsetXIdx].callback =                              &GC_VideoDigitalZoomOffsetXCallback;
   gcRegsDef[VideoDigitalZoomOffsetYIdx].callback =                              &GC_VideoDigitalZoomOffsetYCallback;
   gcRegsDef[VideoDigitalZoomWidthIdx].callback =                                &GC_VideoDigitalZoomWidthCallback;
   gcRegsDef[VideoEHDRIExposureIndexIdx].callback =                              &GC_VideoEHDRIExposureIndexCallback;
   gcRegsDef[VideoFWPositionIdx].callback =                                      &GC_VideoFWPositionCallback;
   gcRegsDef[VideoFreezeIdx].callback =                                          &GC_VideoFreezeCallback;
   gcRegsDef[VideoReverseXIdx].callback =                                        &GC_VideoReverseXCallback;
   gcRegsDef[VideoReverseYIdx].callback =                                        &GC_VideoReverseYCallback;
   gcRegsDef[WidthIdx].callback =                                                &GC_WidthCallback;
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

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      if (gcRegsData.AcquisitionArm)
      {
         Clink_ResetFrame(&gClinkCtrl);
         GC_UpdateCameraLink();
         Clink_SendConfigGC(&gClinkCtrl, &gcRegsData);
         GC_UpdateGiGe();
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      if (gcRegsData.AcquisitionStart)
      {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      if (gcRegsData.AcquisitionStop)
      {
         gAcquisitionStarted = 0;
         GC_UpdateCameraLink();
      }
   }
}

/**
 * CalibrationMode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_CalibrationModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
      gcRegsData.DeviceBuiltInTestsResults6 = BuiltInTest_FillResultRegister(1);
   }
}

/**
 * DeviceClockFrequency GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceClockFrequencyCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_BEFORE) && (access == GCCA_READ))
   {
      gcRegsData.DeviceClockFrequency = DeviceClockFrequencyAry[gcRegsData.DeviceClockSelector];
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      DeviceClockFrequencyAry[gcRegsData.DeviceClockSelector] = gcRegsData.DeviceClockFrequency;
   }
}

/**
 * DeviceClockSelector GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_DeviceClockSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
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
      gcRegsData.DeviceFirmwareModuleRevision = DeviceFirmwareModuleRevisionAry[gcRegsData.DeviceFirmwareModuleSelector];
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      DeviceFirmwareModuleRevisionAry[gcRegsData.DeviceFirmwareModuleSelector] = gcRegsData.DeviceFirmwareModuleRevision;
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
      gcRegsData.DeviceTemperature = DeviceTemperatureAry[gcRegsData.DeviceTemperatureSelector];
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      DeviceTemperatureAry[gcRegsData.DeviceTemperatureSelector] = gcRegsData.DeviceTemperature;
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
      gcRegsData.DeviceVoltage = DeviceVoltageAry[gcRegsData.DeviceVoltageSelector];
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      DeviceVoltageAry[gcRegsData.DeviceVoltageSelector] = gcRegsData.DeviceVoltage;
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
}

/**
 * EHDRINumberOfExposures GenICam register callback function.
 *
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_EHDRINumberOfExposuresCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
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
      gcRegsData.EventNotification = EventNotificationAry[gcRegsData.EventSelector];
   }

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
}

/**
 * FWMode GenICam register callback function.
 *
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_FWModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
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
 * IsActiveFlags GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_IsActiveFlagsCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
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
}

/**
 * MemoryBufferLegacyMode GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferLegacyModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
}

/**
 * MemoryBufferMOIActivation GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferMOIActivationCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
}

/**
 * MemoryBufferMOISource GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferMOISourceCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      GC_UpdateCameraLink();
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
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
}

/**
 * MemoryBufferSequenceDownloadFrameCount GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferSequenceDownloadFrameCountCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
}

/**
 * MemoryBufferSequenceDownloadFrameImageCount GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferSequenceDownloadFrameImageCountCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      GC_UpdateFrameBuffer();
      GC_UpdateCameraLink();
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
   }
}

/**
 * MemoryBufferSequenceDownloadSuggestedFrameImageCount GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferSequenceDownloadSuggestedFrameImageCountCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
}

/**
 * MemoryBufferSequenceHeight GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferSequenceHeightCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
}

/**
 * MemoryBufferStatus GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_MemoryBufferStatusCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
}

/**
 * OffsetX GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_OffsetXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
}

/**
 * OffsetY GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_OffsetYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      GC_SetVideoReverseX(gcRegsData.ReverseX);
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      GC_SetVideoReverseY(gcRegsData.ReverseY);
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      SDIIntf_UpdateVideoOutput(&gSdiIntfCtrl, &gcRegsData);
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

   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      // Check if config is valid
      if(gcRegsData.Width != 0 && gcRegsData.Height != 0)
      {
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
}

/**
 * VideoEHDRIExposureIndex GenICam register callback function.
 * 
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoEHDRIExposureIndexCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
   }
}

/**
 * VideoFWPosition GenICam register callback function.
 *
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoFWPositionCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
   }
}

/**
 * VideoFreeze GenICam register callback function.
 *
 * @param phase indicates whether the function is called before or
 *    after the read or write operation.
 * @param access indicates whether the operation is read or write.
 */
void GC_VideoFreezeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access)
{
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
      SDIIntf_UpdateVideoDataHandler(&gSdiIntfCtrl, &gcRegsData);
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
   if ((phase == GCCP_AFTER) && (access == GCCA_WRITE))
   {
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
      GC_UpdateCameraLink();
      GC_UpdateFrameBuffer();
      GC_UpdateGiGe();
      GC_UpdateVideoConfiguration();
      GC_UpdateVideoAGCImageFraction();
   }
}

/* AUTO-CODE END */
