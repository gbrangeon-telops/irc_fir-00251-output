/**
 * @file Frame_Buffer.c
 * IIR camera Output frame buffer
 *
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL:  $
 *
 * (c) Copyright 2014 Telops Inc.
 */
 

#include "xparameters.h"
#include "frame_buffer.h"
#include "GenICam.h"
#include "utils.h"
#include "mb_axi4l_bridge.h"


//----------------------------------------------------------------
// variables globales
//---------------------------------------------------------------- 


//----------------------------------------------------------------
// prototypes fonctions privées
//----------------------------------------------------------------


//----------------------------------------------------------------
// pour envoyer la configuration du FrameBuffer
//----------------------------------------------------------------
void FrameBuffer_SendConfigGC(t_FrameBuffer *a, const gcRegistersData_t *pGCRegs)
{
   if (pGCRegs->MemoryBufferSequenceDownloadMode == MBSDM_Off || (IsActiveFlagsTst(BufferClinkDownloadIsActiveMask) && TDCFlags2Tst(BufferClinkDownloadIsImplementedMask)))
   {
      a->FB_mode = (uint32_t)FBM_GIGE;
   }
   else
   {
      a->FB_mode = (uint32_t)FBM_LOSSLESS;
   }

   a->FB_base_addr      = XPAR_FB_MEMORY_MIG_7SERIES_0_BASEADDR;
   a->FB_hdr_size       = pGCRegs->Width * 2;
   a->FB_img_size       = pGCRegs->Width * pGCRegs->Height;
   a->FB_frame_size     = a->FB_hdr_size + a->FB_img_size;
   a->FB_config_valid   = (uint32_t)FBC_VALID;

   WriteStruct(a);
}


//----------------------------------------------------------------
// pour activer/désactiver la configuration du Frame Buffer
//----------------------------------------------------------------
void FrameBuffer_Enable(t_FrameBuffer *a, const FrameBuffer_Config_t config)
{
   a->FB_config_valid = (uint32_t)config;
   AXI4L_write32(a->FB_config_valid, a->ADD + A_FB_CFG_VALID);
}

//----------------------------------------------------------------
// pour avoir le statut du bloc
//----------------------------------------------------------------
void FrameBuffer_GetStatus(const t_FrameBuffer *a, t_FrameBufferStatus *pStat)
{ 
   pStat->FB_in_FR_min  = AXI4L_read32(a->ADD + A_FB_IN_FR_MIN);
   pStat->FB_in_FR      = AXI4L_read32(a->ADD + A_FB_IN_FR);
   pStat->FB_in_FR_max  = AXI4L_read32(a->ADD + A_FB_IN_FR_MAX);
   pStat->FB_out_FR_min = AXI4L_read32(a->ADD + A_FB_OUT_FR_MIN);
   pStat->FB_out_FR     = AXI4L_read32(a->ADD + A_FB_OUT_FR);
   pStat->FB_out_FR_max = AXI4L_read32(a->ADD + A_FB_OUT_FR_MAX);
   pStat->error         = AXI4L_read32(a->ADD + A_FB_ERROR);
} 

