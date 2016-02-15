/**
 * @file pleora_intf.c
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
#include "pleora_intf.h"
#include "utils.h"
#include "IRC_status.h"
#include "mb_axi4l_bridge.h"


//----------------------------------------------------------------
// variables globales
//---------------------------------------------------------------- 


//----------------------------------------------------------------
// pour envoyer la configuration du FrameBuffer
//----------------------------------------------------------------
void PleoraIntf_SendConfigGC(t_PleoraIntf *a, const gcRegistersData_t *pGCRegs)
{


   a->Config_valid = (uint32_t) PC_INVALID;
   a->Frame_width = pGCRegs->Width;	
   a->Frame_height = pGCRegs->Height+2;
   a->hdr_size = pGCRegs->Width * 2;
   a->hdr_version     = 1;   //TODO SET DE RIGTH HDR VERSION HERE
   
   WriteStruct(a);                                      // envoi de la structure
   
   PleoraIntf_Enable(a, PC_VALID);
} 

//----------------------------------------------------------------
// pour envoyer la configuration du FrameBuffer
//----------------------------------------------------------------
void PleoraIntf_Enable(t_PleoraIntf *a, const Pleora_Config_t config)
{
   a->Config_valid  = (uint32_t) config;
   AXI4L_write32( a->Config_valid,a->ADD + A_PLEORA_CFG_VALID );
}                       

//----------------------------------------------------------------
 //pour avoir le statut du bloc
//----------------------------------------------------------------
uint32_t Pleora_GetStatus(const t_PleoraIntf *a) 
{ 
   uint32_t Status;
   Status = AXI4L_read32(a->ADD + A_PC_STATUS);
   return Status;
} 

