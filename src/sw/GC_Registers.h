/**
 * @file GC_Registers.h
 * GenICam registers data declaration.
 *
 * This file declares the GenICam registers data.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#ifndef GC_REGISTERS_H
#define GC_REGISTERS_H

#include "GC_Manager.h"
#include <stdint.h>

extern uint8_t gAcquisitionStarted;
#define GC_AcquisitionStarted    (gAcquisitionStarted == 1)

/* AUTO-CODE BEGIN */
// Auto-generated GeniCam library.
// Generated from XML camera definition file version 13.3.0
// using generateGenICamCLib.m Matlab script.

#if ((GC_XMLMAJORVERSION != 13) || (GC_XMLMINORVERSION != 3) || (GC_XMLSUBMINORVERSION != 0))
#error "XML version mismatch."
#endif

// Registers data structure and data type
////////////////////////////////////////////////////////////////////////////////

/**
 * Registers data structure
 */
struct gcRegistersDataStruct {
   float AcquisitionFrameRate;
   float AcquisitionFrameRateMaxFG;
   float DeviceClockFrequency;
   float DeviceTemperature;
   float DeviceVoltage;
   float VideoAGCFractionMax;
   float VideoAGCFractionMaxMin;
   float VideoAGCFractionMin;
   float VideoAGCFractionMinMax;
   float VideoAGCResponseTime;
   int32_t DeviceFirmwareModuleRevision;
   uint32_t AcquisitionArm;
   uint32_t AcquisitionFrameRateMode;
   uint32_t AcquisitionStart;
   uint32_t AcquisitionStop;
   uint32_t BadPixelReplacement;
   uint32_t CalibrationMode;
   uint32_t ClConfiguration;
   uint32_t DeviceBuiltInTestsResults5;
   uint32_t DeviceBuiltInTestsResults6;
   uint32_t DeviceClockSelector;
   uint32_t DeviceFirmwareModuleSelector;
   uint32_t DeviceTapGeometry;
   uint32_t DeviceTemperatureSelector;
   uint32_t DeviceVoltageSelector;
   uint32_t EHDRINumberOfExposures;
   uint32_t EventError;
   uint32_t EventErrorCode;
   uint32_t EventErrorTimestamp;
   uint32_t EventNotification;
   uint32_t EventSelector;
   uint32_t EventTelops;
   uint32_t EventTelopsCode;
   uint32_t EventTelopsTimestamp;
   uint32_t FValSize;
   uint32_t FWMode;
   uint32_t Height;
   uint32_t IsActiveFlags;
   uint32_t LValSize;
   uint32_t MemoryBufferLegacyMode;
   uint32_t MemoryBufferMOIActivation;
   uint32_t MemoryBufferMOISource;
   uint32_t MemoryBufferMode;
   uint32_t MemoryBufferSequenceBadPixelReplacement;
   uint32_t MemoryBufferSequenceCalibrationMode;
   uint32_t MemoryBufferSequenceCount;
   uint32_t MemoryBufferSequenceDownloadFrameCount;
   uint32_t MemoryBufferSequenceDownloadFrameImageCount;
   uint32_t MemoryBufferSequenceDownloadMode;
   uint32_t MemoryBufferSequenceDownloadSuggestedFrameImageCount;
   uint32_t MemoryBufferSequenceHeight;
   uint32_t MemoryBufferStatus;
   uint32_t OffsetX;
   uint32_t OffsetY;
   uint32_t PayloadSize;
   uint32_t PayloadSizeMinFG;
   uint32_t ReverseX;
   uint32_t ReverseY;
   uint32_t SensorHeight;
   uint32_t SensorWidth;
   uint32_t TDCFlags;
   uint32_t TDCFlags2;
   uint32_t VideoAGC;
   uint32_t VideoColorMap;
   uint32_t VideoColorMapMax;
   uint32_t VideoColorMapMin;
   uint32_t VideoDigitalZoomFactor;
   uint32_t VideoDigitalZoomFactorMax;
   uint32_t VideoDigitalZoomHeight;
   uint32_t VideoDigitalZoomMode;
   uint32_t VideoDigitalZoomOffsetX;
   uint32_t VideoDigitalZoomOffsetY;
   uint32_t VideoDigitalZoomWidth;
   uint32_t VideoEHDRIExposureIndex;
   uint32_t VideoFWPosition;
   uint32_t VideoFreeze;
   uint32_t VideoReverseX;
   uint32_t VideoReverseY;
   uint32_t Width;
};

/**
 * Registers data type
 */
typedef struct gcRegistersDataStruct gcRegistersData_t;

// GenICam global variables declaration
////////////////////////////////////////////////////////////////////////////////

extern gcRegistersData_t gcRegsDataFactory;

extern gcRegistersData_t gcRegsData;

#define gcSelectedRegListLen 5
extern gcSelectedReg_t gcSelectedRegList[gcSelectedRegListLen];

#define DeviceClockFrequencyAryLen 3
extern float DeviceClockFrequencyAry[DeviceClockFrequencyAryLen];

#define DeviceTemperatureAryLen 13
extern float DeviceTemperatureAry[DeviceTemperatureAryLen];

#define DeviceVoltageAryLen 31
extern float DeviceVoltageAry[DeviceVoltageAryLen];

#define EventNotificationAryLen 33
extern uint32_t EventNotificationAry[EventNotificationAryLen];

#define DeviceFirmwareModuleRevisionAryLen 12
extern int32_t DeviceFirmwareModuleRevisionAry[DeviceFirmwareModuleRevisionAryLen];

// Shared registers write macros
////////////////////////////////////////////////////////////////////////////////
#define GC_SetAcquisitionFrameRateMaxFG(val) GC_RegisterWriteFloat(&gcRegsDef[AcquisitionFrameRateMaxFGIdx], val)
#define GC_SetVideoColorMap(val) GC_RegisterWriteUI32(&gcRegsDef[VideoColorMapIdx], val)
#define GC_SetVideoColorMapMin(val) GC_RegisterWriteUI32(&gcRegsDef[VideoColorMapMinIdx], val)
#define GC_SetVideoColorMapMax(val) GC_RegisterWriteUI32(&gcRegsDef[VideoColorMapMaxIdx], val)
#define GC_SetVideoDigitalZoomFactor(val) GC_RegisterWriteUI32(&gcRegsDef[VideoDigitalZoomFactorIdx], val)
#define GC_SetVideoDigitalZoomFactorMax(val) GC_RegisterWriteUI32(&gcRegsDef[VideoDigitalZoomFactorMaxIdx], val)
#define GC_SetVideoEHDRIExposureIndex(val) GC_RegisterWriteUI32(&gcRegsDef[VideoEHDRIExposureIndexIdx], val)
#define GC_SetVideoFWPosition(val) GC_RegisterWriteUI32(&gcRegsDef[VideoFWPositionIdx], val)
#define GC_SetVideoAGCFractionMin(val) GC_RegisterWriteFloat(&gcRegsDef[VideoAGCFractionMinIdx], val)
#define GC_SetVideoAGCFractionMinMax(val) GC_RegisterWriteFloat(&gcRegsDef[VideoAGCFractionMinMaxIdx], val)
#define GC_SetVideoAGCFractionMax(val) GC_RegisterWriteFloat(&gcRegsDef[VideoAGCFractionMaxIdx], val)
#define GC_SetVideoAGCFractionMaxMin(val) GC_RegisterWriteFloat(&gcRegsDef[VideoAGCFractionMaxMinIdx], val)
#define GC_SetVideoAGCResponseTime(val) GC_RegisterWriteFloat(&gcRegsDef[VideoAGCResponseTimeIdx], val)
#define GC_SetVideoDigitalZoomMode(val) GC_RegisterWriteUI32(&gcRegsDef[VideoDigitalZoomModeIdx], val)
#define GC_SetVideoDigitalZoomWidth(val) GC_RegisterWriteUI32(&gcRegsDef[VideoDigitalZoomWidthIdx], val)
#define GC_SetVideoDigitalZoomHeight(val) GC_RegisterWriteUI32(&gcRegsDef[VideoDigitalZoomHeightIdx], val)
#define GC_SetVideoDigitalZoomOffsetX(val) GC_RegisterWriteUI32(&gcRegsDef[VideoDigitalZoomOffsetXIdx], val)
#define GC_SetVideoDigitalZoomOffsetY(val) GC_RegisterWriteUI32(&gcRegsDef[VideoDigitalZoomOffsetYIdx], val)
#define GC_SetVideoReverseX(val) GC_RegisterWriteUI32(&gcRegsDef[VideoReverseXIdx], val)
#define GC_SetVideoReverseY(val) GC_RegisterWriteUI32(&gcRegsDef[VideoReverseYIdx], val)
#define GC_SetPayloadSize(val) GC_RegisterWriteUI32(&gcRegsDef[PayloadSizeIdx], val)
#define GC_SetDeviceTapGeometry(val) GC_RegisterWriteUI32(&gcRegsDef[DeviceTapGeometryIdx], val)
#define GC_SetFValSize(val) GC_RegisterWriteUI32(&gcRegsDef[FValSizeIdx], val)
#define GC_SetLValSize(val) GC_RegisterWriteUI32(&gcRegsDef[LValSizeIdx], val)
#define GC_SetPayloadSizeMinFG(val) GC_RegisterWriteUI32(&gcRegsDef[PayloadSizeMinFGIdx], val)
#define GC_SetDeviceBuiltInTestsResults5(val) GC_RegisterWriteUI32(&gcRegsDef[DeviceBuiltInTestsResults5Idx], val)
#define GC_SetDeviceBuiltInTestsResults6(val) GC_RegisterWriteUI32(&gcRegsDef[DeviceBuiltInTestsResults6Idx], val)

// Locked registers utility macros
////////////////////////////////////////////////////////////////////////////////
#define GC_AutofocusIsActive IsActiveFlagsTst(AutofocusIsActiveMask)

void GC_Registers_Init();
void GC_RestoreDataFactory();

/* AUTO-CODE END */

void GC_UpdateLockedFlag();
void GC_UpdateCameraLink();
void GC_UpdateFrameBuffer();
void GC_UpdateGiGe();
void GC_UpdateVideoConfiguration();
void GC_UpdateVideoColorRange();
void GC_UpdateVideoAGCImageFraction();
uint32_t GC_GetTimestamp();

#endif // GC_REGISTERS_H
