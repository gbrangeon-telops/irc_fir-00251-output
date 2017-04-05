/**
 * @file GC_Callback.h
 * GenICam registers callback functions declaration.
 *
 * This file declares the GenICam registers callback functions.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#ifndef GC_CALLBACK_H
#define GC_CALLBACK_H

#include "GenICam.h"

/* AUTO-CODE BEGIN */
// Auto-generated GeniCam registers callback functions definition.
// Generated from XML camera definition file version 12.1.0
// using updateGenICamCallback.m Matlab script.

void GC_Callback_Init();

void GC_AcquisitionArmCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_AcquisitionFrameRateCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_AcquisitionFrameRateMaxFGCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_AcquisitionFrameRateModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_AcquisitionStartCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_AcquisitionStopCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_ClConfigurationCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceBuiltInTestsResults5Callback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceBuiltInTestsResults6Callback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceFirmwareModuleRevisionCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceFirmwareModuleSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceTapGeometryCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceTemperatureCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceTemperatureSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceVoltageCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_DeviceVoltageSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventErrorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventErrorCodeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventErrorTimestampCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventNotificationCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventTelopsCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventTelopsCodeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_EventTelopsTimestampCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_FValSizeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_HeightCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_LValSizeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_MemoryBufferLegacyModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_MemoryBufferMOISourceCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_MemoryBufferModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_MemoryBufferSequenceCountCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_MemoryBufferSequenceDownloadModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_MemoryBufferStatusCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_OffsetXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_OffsetYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_PayloadSizeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_PayloadSizeMinFGCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_ReverseXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_ReverseYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_SensorHeightCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_SensorWidthCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_TriggerModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_TriggerSelectorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoAGCCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoAGCFractionMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoAGCFractionMaxMinCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoAGCFractionMinCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoAGCFractionMinMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoAGCResponseTimeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoColorMapCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoColorMapMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoColorMapMinCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoDigitalZoomFactorCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoDigitalZoomFactorMaxCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoDigitalZoomHeightCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoDigitalZoomModeCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoDigitalZoomOffsetXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoDigitalZoomOffsetYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoDigitalZoomWidthCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoReverseXCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_VideoReverseYCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);
void GC_WidthCallback(gcCallbackPhase_t phase, gcCallbackAccess_t access);

/* AUTO-CODE END */

#endif // GC_CALLBACK_H
