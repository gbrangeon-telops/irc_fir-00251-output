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

#define GC_AcquisitionStarted    (gAcquisitionStarted == 1)

/* AUTO-CODE BEGIN */
// Auto-generated GeniCam library.
// Generated from XML camera definition file version 11.5.0
// using generateGenICamCLib.m Matlab script.

#if ((GC_XMLMAJORVERSION != 11) || (GC_XMLMINORVERSION != 5) || (GC_XMLSUBMINORVERSION != 0))
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
   uint32_t ClConfiguration;
   uint32_t DeviceBuiltInTestsResults5;
   uint32_t DeviceBuiltInTestsResults6;
   uint32_t DeviceFirmwareModuleSelector;
   uint32_t DeviceTapGeometry;
   uint32_t DeviceTemperatureSelector;
   uint32_t DeviceVoltageSelector;
   uint32_t EventError;
   uint32_t EventErrorCode;
   uint32_t EventErrorTimestamp;
   uint32_t EventNotification;
   uint32_t EventSelector;
   uint32_t EventTelops;
   uint32_t EventTelopsCode;
   uint32_t EventTelopsTimestamp;
   uint32_t FValSize;
   uint32_t Height;
   uint32_t LValSize;
   uint32_t MemoryBufferMode;
   uint32_t MemoryBufferSequenceCount;
   uint32_t MemoryBufferSequenceDownloadMode;
   uint32_t PayloadSize;
   uint32_t PayloadSizeMinFG;
   uint32_t ReverseX;
   uint32_t ReverseY;
   uint32_t SensorHeight;
   uint32_t SensorWidth;
   uint32_t TriggerMode;
   uint32_t TriggerSelector;
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

#define DeviceTemperatureAryLen 13
extern float DeviceTemperatureAry[DeviceTemperatureAryLen];

#define DeviceVoltageAryLen 31
extern float DeviceVoltageAry[DeviceVoltageAryLen];

#define EventNotificationAryLen 33
extern uint32_t EventNotificationAry[EventNotificationAryLen];

#define DeviceFirmwareModuleRevisionAryLen 12
extern int32_t DeviceFirmwareModuleRevisionAry[DeviceFirmwareModuleRevisionAryLen];

#define TriggerModeAryLen 3
extern uint32_t TriggerModeAry[TriggerModeAryLen];

// Shared registers write macros
////////////////////////////////////////////////////////////////////////////////

#define GC_SetAcquisitionFrameRateMaxFG(val) GC_RegisterWriteFloat(&gcRegsDef[AcquisitionFrameRateMaxFGIdx], val)
#define GC_SetVideoAGC(val) GC_RegisterWriteUI32(&gcRegsDef[VideoAGCIdx], val)
#define GC_SetFValSize(val) GC_RegisterWriteUI32(&gcRegsDef[FValSizeIdx], val)

void GC_Registers_Init();

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
