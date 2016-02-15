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
 
//#include <stdio.h>
//#include <stdbool.h>
#include "xparameters.h"
#include "frame_buffer.h"
#include "GenICam.h"
#include "utils.h"
#include "IRC_status.h"
#include "mb_axi4l_bridge.h"


//----------------------------------------------------------------
// variables globales
//---------------------------------------------------------------- 


//----------------------------------------------------------------
// pour envoyer la configuration du FrameBuffer
//----------------------------------------------------------------
void FrameBuffer_SendConfigGC(t_FrameBuffer *a, const gcRegistersData_t *pGCRegs)
{
   if (pGCRegs->MemoryBufferSequenceDownloadMode == MBSDM_Off)
   {
      a->FB_mode = (uint32_t) FB_GIGE;
   }
   else
   {
	  a->FB_mode = (uint32_t) FB_LOSSLESS;
   }

   a->Frame_width = pGCRegs->Width;	
   a->Frame_height = pGCRegs->Height+2;
   a->base_saddr = XPAR_FB_MEMORY_MIG_7SERIES_0_BASEADDR;
   a->FrameSize     = a->Frame_width * a->Frame_height;   
   a->hdr_size  = pGCRegs->Width * 2;   //
   a->img_size  = pGCRegs->Width * (pGCRegs->Height);   //
   a->config_valid  = (uint32_t) FB_VALID;   //
   
   WriteStruct(a);                                      // envoi de la structure
} 

//----------------------------------------------------------------
// pour envoyer la configuration du FrameBuffer
//----------------------------------------------------------------
void FrameBuffer_Enable(t_FrameBuffer *a, const FB_Config_t config)
{
   a->config_valid  = (uint32_t) config;
   AXI4L_write32( a->config_valid,a->ADD + A_FB_CFG_VALID );
}                       

//----------------------------------------------------------------
 //pour avoir le statut du bloc
//----------------------------------------------------------------
uint32_t HDER_GetStatus(const t_FrameBuffer *a) 
{ 
   uint32_t Status;
   Status = AXI4L_read32(a->ADD + A_FB_STATUS);
   return Status;
} 

