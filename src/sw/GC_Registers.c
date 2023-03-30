/**
 * @file GC_Registers.c
 * GenICam registers data definition.
 *
 * This file defines the GenICam registers data.
 * 
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#include "GC_Registers.h"
#include "GenICam.h"
#include "clink_ctrl.h"
#include "frame_buffer.h"
#include "pleora_intf.h"
#include "sdi_intf.h"
#include "colormap.h"
#include "AGC.h"
#include "Genicam.h"
#include "utils.h"
#include <math.h>
#include <string.h>
#include "BuildInfo.h"

#define SVN_REVISIONS_INIT {0, 0, 0, 0, SVN_HARDWARE_REV, SVN_SOFTWARE_REV, SVN_BOOTLOADER_REV, SVN_COMMON_REV, 0, 0, 0, 0}

/* AUTO-CODE BEGIN */
// Auto-generated GeniCam library.
// Generated from XML camera definition file version 13.3.0
// using generateGenICamCLib.m Matlab script.

// GenICam global variables definition
////////////////////////////////////////////////////////////////////////////////

/**
 * Factory registers data
 */
gcRegistersData_t gcRegsDataFactory = {
   /* AcquisitionFrameRate = */ 0.0F,
   /* AcquisitionFrameRateMaxFG = */ CL_FG_INTERRUPT_RATE_MAX,
   /* DeviceClockFrequency = */ 0.0F,
   /* DeviceTemperature = */ 0.0F,
   /* DeviceVoltage = */ 0.0F,
   /* VideoAGCFractionMax = */ 99.0F,
   /* VideoAGCFractionMaxMin = */ 2.0F,
   /* VideoAGCFractionMin = */ 1.0F,
   /* VideoAGCFractionMinMax = */ 98.0F,
   /* VideoAGCResponseTime = */ 0.100F,
   /* DeviceFirmwareModuleRevision = */ 0,
   /* AcquisitionArm = */ 0,
   /* AcquisitionFrameRateMode = */ 0,
   /* AcquisitionStart = */ 0,
   /* AcquisitionStop = */ 0,
   /* CalibrationMode = */ 0,
   /* ClConfiguration = */ 0,
   /* DeviceBuiltInTestsResults5 = */ 0,
   /* DeviceBuiltInTestsResults6 = */ 0,
   /* DeviceClockSelector = */ 0,
   /* DeviceFirmwareModuleSelector = */ 0,
   /* DeviceTapGeometry = */ DTG_Geometry_1X4_1Y,
   /* DeviceTemperatureSelector = */ 0,
   /* DeviceVoltageSelector = */ 0,
   /* EHDRINumberOfExposures = */ 0,
   /* EventError = */ 0,
   /* EventErrorCode = */ 0,
   /* EventErrorTimestamp = */ 0,
   /* EventNotification = */ 0,
   /* EventSelector = */ 0,
   /* EventTelops = */ 0,
   /* EventTelopsCode = */ 0,
   /* EventTelopsTimestamp = */ 0,
   /* FValSize = */ 0,
   /* FWMode = */ 0,
   /* Height = */ 0,
   /* IsActiveFlags = */ 0,
   /* LValSize = */ 0,
   /* MemoryBufferLegacyMode = */ 0,
   /* MemoryBufferMOIActivation = */ 0,
   /* MemoryBufferMOISource = */ 0,
   /* MemoryBufferMode = */ 0,
   /* MemoryBufferSequenceCount = */ 0,
   /* MemoryBufferSequenceDownloadFrameCount = */ 0,
   /* MemoryBufferSequenceDownloadFrameImageCount = */ 0,
   /* MemoryBufferSequenceDownloadMode = */ 0,
   /* MemoryBufferSequenceDownloadSuggestedFrameImageCount = */ 0,
   /* MemoryBufferSequenceHeight = */ 0,
   /* MemoryBufferStatus = */ 0,
   /* OffsetX = */ 0,
   /* OffsetY = */ 0,
   /* PayloadSize = */ 0,
   /* PayloadSizeMinFG = */ (CL_PIXEL_COUNT_MIN * 2),
   /* ReverseX = */ 0,
   /* ReverseY = */ 0,
   /* SensorHeight = */ 0,
   /* SensorWidth = */ 0,
   /* TDCFlags = */ 0,
   /* TDCFlags2 = */ 0,
   /* VideoAGC = */ 0,
   /* VideoColorMap = */ VCM_Gray,
   /* VideoColorMapMax = */ 65535,
   /* VideoColorMapMin = */ 0,
   /* VideoDigitalZoomFactor = */ VDZF_x1,
   /* VideoDigitalZoomFactorMax = */ 32,
   /* VideoDigitalZoomHeight = */ 0,
   /* VideoDigitalZoomMode = */ VDZM_Simple,
   /* VideoDigitalZoomOffsetX = */ 0,
   /* VideoDigitalZoomOffsetY = */ 0,
   /* VideoDigitalZoomWidth = */ 0,
   /* VideoEHDRIExposureIndex = */ VEHDRIEI_Exposure1,
   /* VideoFWPosition = */ VFWP_Filter1,
   /* VideoFreeze = */ 0,
   /* VideoReverseX = */ 1,
   /* VideoReverseY = */ 1,
   /* Width = */ 0
};

/**
 * Registers data
 */
gcRegistersData_t gcRegsData;

/**
 * Selected registers list
 */
gcSelectedReg_t gcSelectedRegList[gcSelectedRegListLen] = {
   {DeviceClockFrequencyIdx, DeviceClockSelectorIdx, 3},
   {DeviceTemperatureIdx, DeviceTemperatureSelectorIdx, 13},
   {DeviceVoltageIdx, DeviceVoltageSelectorIdx, 31},
   {EventNotificationIdx, EventSelectorIdx, 33},
   {DeviceFirmwareModuleRevisionIdx, DeviceFirmwareModuleSelectorIdx, 12}
};

/**
 * DeviceClockFrequency data array
 */
float DeviceClockFrequencyAry[DeviceClockFrequencyAryLen] = {0.0F, 0.0F, 0.0F};
const float DeviceClockFrequencyAryFactory[DeviceClockFrequencyAryLen] = {0.0F, 0.0F, 0.0F};

/**
 * DeviceTemperature data array
 */
float DeviceTemperatureAry[DeviceTemperatureAryLen] = {0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F};
const float DeviceTemperatureAryFactory[DeviceTemperatureAryLen] = {0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F};

/**
 * DeviceVoltage data array
 */
float DeviceVoltageAry[DeviceVoltageAryLen] = {0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F};
const float DeviceVoltageAryFactory[DeviceVoltageAryLen] = {0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F};

/**
 * EventNotification data array
 */
uint32_t EventNotificationAry[EventNotificationAryLen] = {0, 0, EN_On, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, EN_On};
const uint32_t EventNotificationAryFactory[EventNotificationAryLen] = {0, 0, EN_On, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, EN_On};

/**
 * DeviceFirmwareModuleRevision data array
 */
int32_t DeviceFirmwareModuleRevisionAry[DeviceFirmwareModuleRevisionAryLen] = SVN_REVISIONS_INIT;
const int32_t DeviceFirmwareModuleRevisionAryFactory[DeviceFirmwareModuleRevisionAryLen] = SVN_REVISIONS_INIT;

/**
 * GenICam registers data pointer initialization.
 */
void GC_Registers_Init()
{
   gcRegsDef[AcquisitionFrameRateIdx].p_data = &gcRegsData.AcquisitionFrameRate;
   gcRegsDef[AcquisitionFrameRateMaxFGIdx].p_data = &gcRegsData.AcquisitionFrameRateMaxFG;
   gcRegsDef[DeviceClockFrequencyIdx].p_data = &gcRegsData.DeviceClockFrequency;
   gcRegsDef[DeviceTemperatureIdx].p_data = &gcRegsData.DeviceTemperature;
   gcRegsDef[DeviceVoltageIdx].p_data = &gcRegsData.DeviceVoltage;
   gcRegsDef[VideoAGCFractionMaxIdx].p_data = &gcRegsData.VideoAGCFractionMax;
   gcRegsDef[VideoAGCFractionMaxMinIdx].p_data = &gcRegsData.VideoAGCFractionMaxMin;
   gcRegsDef[VideoAGCFractionMinIdx].p_data = &gcRegsData.VideoAGCFractionMin;
   gcRegsDef[VideoAGCFractionMinMaxIdx].p_data = &gcRegsData.VideoAGCFractionMinMax;
   gcRegsDef[VideoAGCResponseTimeIdx].p_data = &gcRegsData.VideoAGCResponseTime;
   gcRegsDef[DeviceFirmwareModuleRevisionIdx].p_data = &gcRegsData.DeviceFirmwareModuleRevision;
   gcRegsDef[AcquisitionArmIdx].p_data = &gcRegsData.AcquisitionArm;
   gcRegsDef[AcquisitionFrameRateModeIdx].p_data = &gcRegsData.AcquisitionFrameRateMode;
   gcRegsDef[AcquisitionStartIdx].p_data = &gcRegsData.AcquisitionStart;
   gcRegsDef[AcquisitionStopIdx].p_data = &gcRegsData.AcquisitionStop;
   gcRegsDef[CalibrationModeIdx].p_data = &gcRegsData.CalibrationMode;
   gcRegsDef[ClConfigurationIdx].p_data = &gcRegsData.ClConfiguration;
   gcRegsDef[DeviceBuiltInTestsResults5Idx].p_data = &gcRegsData.DeviceBuiltInTestsResults5;
   gcRegsDef[DeviceBuiltInTestsResults6Idx].p_data = &gcRegsData.DeviceBuiltInTestsResults6;
   gcRegsDef[DeviceClockSelectorIdx].p_data = &gcRegsData.DeviceClockSelector;
   gcRegsDef[DeviceFirmwareModuleSelectorIdx].p_data = &gcRegsData.DeviceFirmwareModuleSelector;
   gcRegsDef[DeviceTapGeometryIdx].p_data = &gcRegsData.DeviceTapGeometry;
   gcRegsDef[DeviceTemperatureSelectorIdx].p_data = &gcRegsData.DeviceTemperatureSelector;
   gcRegsDef[DeviceVoltageSelectorIdx].p_data = &gcRegsData.DeviceVoltageSelector;
   gcRegsDef[EHDRINumberOfExposuresIdx].p_data = &gcRegsData.EHDRINumberOfExposures;
   gcRegsDef[EventErrorIdx].p_data = &gcRegsData.EventError;
   gcRegsDef[EventErrorCodeIdx].p_data = &gcRegsData.EventErrorCode;
   gcRegsDef[EventErrorTimestampIdx].p_data = &gcRegsData.EventErrorTimestamp;
   gcRegsDef[EventNotificationIdx].p_data = &gcRegsData.EventNotification;
   gcRegsDef[EventSelectorIdx].p_data = &gcRegsData.EventSelector;
   gcRegsDef[EventTelopsIdx].p_data = &gcRegsData.EventTelops;
   gcRegsDef[EventTelopsCodeIdx].p_data = &gcRegsData.EventTelopsCode;
   gcRegsDef[EventTelopsTimestampIdx].p_data = &gcRegsData.EventTelopsTimestamp;
   gcRegsDef[FValSizeIdx].p_data = &gcRegsData.FValSize;
   gcRegsDef[FWModeIdx].p_data = &gcRegsData.FWMode;
   gcRegsDef[HeightIdx].p_data = &gcRegsData.Height;
   gcRegsDef[IsActiveFlagsIdx].p_data = &gcRegsData.IsActiveFlags;
   gcRegsDef[LValSizeIdx].p_data = &gcRegsData.LValSize;
   gcRegsDef[MemoryBufferLegacyModeIdx].p_data = &gcRegsData.MemoryBufferLegacyMode;
   gcRegsDef[MemoryBufferMOIActivationIdx].p_data = &gcRegsData.MemoryBufferMOIActivation;
   gcRegsDef[MemoryBufferMOISourceIdx].p_data = &gcRegsData.MemoryBufferMOISource;
   gcRegsDef[MemoryBufferModeIdx].p_data = &gcRegsData.MemoryBufferMode;
   gcRegsDef[MemoryBufferSequenceCountIdx].p_data = &gcRegsData.MemoryBufferSequenceCount;
   gcRegsDef[MemoryBufferSequenceDownloadFrameCountIdx].p_data = &gcRegsData.MemoryBufferSequenceDownloadFrameCount;
   gcRegsDef[MemoryBufferSequenceDownloadFrameImageCountIdx].p_data = &gcRegsData.MemoryBufferSequenceDownloadFrameImageCount;
   gcRegsDef[MemoryBufferSequenceDownloadModeIdx].p_data = &gcRegsData.MemoryBufferSequenceDownloadMode;
   gcRegsDef[MemoryBufferSequenceDownloadSuggestedFrameImageCountIdx].p_data = &gcRegsData.MemoryBufferSequenceDownloadSuggestedFrameImageCount;
   gcRegsDef[MemoryBufferSequenceHeightIdx].p_data = &gcRegsData.MemoryBufferSequenceHeight;
   gcRegsDef[MemoryBufferStatusIdx].p_data = &gcRegsData.MemoryBufferStatus;
   gcRegsDef[OffsetXIdx].p_data = &gcRegsData.OffsetX;
   gcRegsDef[OffsetYIdx].p_data = &gcRegsData.OffsetY;
   gcRegsDef[PayloadSizeIdx].p_data = &gcRegsData.PayloadSize;
   gcRegsDef[PayloadSizeMinFGIdx].p_data = &gcRegsData.PayloadSizeMinFG;
   gcRegsDef[ReverseXIdx].p_data = &gcRegsData.ReverseX;
   gcRegsDef[ReverseYIdx].p_data = &gcRegsData.ReverseY;
   gcRegsDef[SensorHeightIdx].p_data = &gcRegsData.SensorHeight;
   gcRegsDef[SensorWidthIdx].p_data = &gcRegsData.SensorWidth;
   gcRegsDef[TDCFlagsIdx].p_data = &gcRegsData.TDCFlags;
   gcRegsDef[TDCFlags2Idx].p_data = &gcRegsData.TDCFlags2;
   gcRegsDef[VideoAGCIdx].p_data = &gcRegsData.VideoAGC;
   gcRegsDef[VideoColorMapIdx].p_data = &gcRegsData.VideoColorMap;
   gcRegsDef[VideoColorMapMaxIdx].p_data = &gcRegsData.VideoColorMapMax;
   gcRegsDef[VideoColorMapMinIdx].p_data = &gcRegsData.VideoColorMapMin;
   gcRegsDef[VideoDigitalZoomFactorIdx].p_data = &gcRegsData.VideoDigitalZoomFactor;
   gcRegsDef[VideoDigitalZoomFactorMaxIdx].p_data = &gcRegsData.VideoDigitalZoomFactorMax;
   gcRegsDef[VideoDigitalZoomHeightIdx].p_data = &gcRegsData.VideoDigitalZoomHeight;
   gcRegsDef[VideoDigitalZoomModeIdx].p_data = &gcRegsData.VideoDigitalZoomMode;
   gcRegsDef[VideoDigitalZoomOffsetXIdx].p_data = &gcRegsData.VideoDigitalZoomOffsetX;
   gcRegsDef[VideoDigitalZoomOffsetYIdx].p_data = &gcRegsData.VideoDigitalZoomOffsetY;
   gcRegsDef[VideoDigitalZoomWidthIdx].p_data = &gcRegsData.VideoDigitalZoomWidth;
   gcRegsDef[VideoEHDRIExposureIndexIdx].p_data = &gcRegsData.VideoEHDRIExposureIndex;
   gcRegsDef[VideoFWPositionIdx].p_data = &gcRegsData.VideoFWPosition;
   gcRegsDef[VideoFreezeIdx].p_data = &gcRegsData.VideoFreeze;
   gcRegsDef[VideoReverseXIdx].p_data = &gcRegsData.VideoReverseX;
   gcRegsDef[VideoReverseYIdx].p_data = &gcRegsData.VideoReverseY;
   gcRegsDef[WidthIdx].p_data = &gcRegsData.Width;
}

/**
 * Restore GenICam registers data factory values.
 */
void GC_RestoreDataFactory()
{
   gcRegsData = gcRegsDataFactory;
   memcpy(DeviceClockFrequencyAry, DeviceClockFrequencyAryFactory, sizeof(DeviceClockFrequencyAry));
   memcpy(DeviceTemperatureAry, DeviceTemperatureAryFactory, sizeof(DeviceTemperatureAry));
   memcpy(DeviceVoltageAry, DeviceVoltageAryFactory, sizeof(DeviceVoltageAry));
   memcpy(EventNotificationAry, EventNotificationAryFactory, sizeof(EventNotificationAry));
   memcpy(DeviceFirmwareModuleRevisionAry, DeviceFirmwareModuleRevisionAryFactory, sizeof(DeviceFirmwareModuleRevisionAry));
}

/* AUTO-CODE END */

uint8_t gAcquisitionStarted = 0;

/**
 * Update GenICam registers lock flag.
 * This function is called every time a write is performed and updates the locked
 * flag for ALL registers.
 */
void GC_UpdateLockedFlag()
{
/* AUTO-CODE REGLOCKED BEGIN */
   SetRegLocked(&gcRegsDef[AcquisitionFrameRateMaxFGIdx], GC_AcquisitionStarted);
   SetRegLocked(&gcRegsDef[VideoColorMapIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoColorMapMinIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoColorMapMaxIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoDigitalZoomFactorIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoEHDRIExposureIndexIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoFWPositionIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoAGCFractionMinIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoAGCFractionMaxIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoAGCResponseTimeIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoReverseXIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[VideoReverseYIdx], GC_AutofocusIsActive);
   SetRegLocked(&gcRegsDef[DeviceTapGeometryIdx], GC_AcquisitionStarted);
   SetRegLocked(&gcRegsDef[PayloadSizeMinFGIdx], GC_AcquisitionStarted);
/* AUTO-CODE REGLOCKED END */
}

/**
 * Update Camera Link configuration.
 * This function updates FValSize, LValSize, PayloadSize and DeviceTapGeometry
 * registers value and sends GenICam configuration to Camera Link hardware
 * module.
 */
void GC_UpdateCameraLink()
{
   uint32_t frameImageCount;
   uint32_t frameImageCountAFR = 1;
   uint32_t frameImageCountPC = 1;

   // reconfiguration is disabled for now during acquisition
   if (GC_AcquisitionStarted)
      return;

   if ((gcRegsData.MemoryBufferMode == MBM_On && gcRegsData.MemoryBufferSequenceDownloadMode == MBSDM_Sequence) && IsActiveFlagsTst(MemoryBufferClinkDownloadIsActiveMask) && TDCFlags2Tst(MemoryBufferClinkDownloadIsImplementedMask))
   {
      frameImageCount = MAX(gcRegsData.MemoryBufferSequenceDownloadFrameImageCount, 1);
   }
   else
   {
      frameImageCountAFR = (uint32_t) ceilf(gcRegsData.AcquisitionFrameRate / gcRegsData.AcquisitionFrameRateMaxFG);
      frameImageCountPC = (uint32_t) ceilf((float) gcRegsData.PayloadSizeMinFG / (float) (gcRegsData.Width * (gcRegsData.Height + 2) * 2));
      frameImageCount = MAX(MAX(frameImageCountAFR, frameImageCountPC), 1);
   }

   GC_SetFValSize((gcRegsData.Height + 2) * frameImageCount);
   gcRegsData.PayloadSize = gcRegsData.FValSize * gcRegsData.Width * 2;

   switch(gcRegsData.ClConfiguration)
   {
      case CC_Base:
      case CC_DualBase:
         gcRegsData.LValSize = gcRegsData.Width;
         gcRegsData.DeviceTapGeometry = DTG_Geometry_1X_1Y;
         break;

      case CC_Full:
      default:
         gcRegsData.LValSize = gcRegsData.Width/4;
         gcRegsData.DeviceTapGeometry = DTG_Geometry_1X4_1Y;
         break;
   }
}

void GC_UpdateFrameBuffer()
{
   extern t_FrameBuffer gFrameBufferCtrl;

   FrameBuffer_Enable(&gFrameBufferCtrl, FBC_INVALID);
   FrameBuffer_SendConfigGC(&gFrameBufferCtrl, &gcRegsData);
}

void GC_UpdateGiGe()
{
   extern t_PleoraIntf gPleoraIntfCtrl;

   PleoraIntf_SendConfigGC(&gPleoraIntfCtrl, &gcRegsData);
}

void GC_UpdateVideoConfiguration()
{
   // Check if config is valid
   if(gcRegsData.Width != 0 && gcRegsData.Height != 0)
   {
      SDIIntf_SetChangeInputWindowSM();
   }
}

void GC_UpdateVideoColorRange()
{
   extern t_SdiIntf gSdiIntfCtrl;

   Cmap_UpdateRange(&gSdiIntfCtrl, gcRegsData.VideoColorMapMin, gcRegsData.VideoColorMapMax);
}

void GC_UpdateVideoAGCImageFraction()
{
   extern t_AGC gAgcCtrl;
   extern t_SdiIntf gSdiIntfCtrl;

   AGC_UpdateImageFraction(&gcRegsData, &gAgcCtrl, &gSdiIntfCtrl);
}

/**
 * Return a timestamp corresponding to actual POSIX time.
 *
 * @return a timestamp corresponding to actual POSIX time.
 */
uint32_t GC_GetTimestamp()
{
   // Output FPGA does not support POSIX time.
   return 0;
}
