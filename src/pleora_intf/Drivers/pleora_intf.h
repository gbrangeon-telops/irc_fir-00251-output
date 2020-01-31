/**
 * @file pleora_intf.h
 * IR camera Output pleora intf
 *
 * This file defines the IR camera output gige pleora intf 
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL: $
 *
 * (c) Copyright 2014 Telops Inc.
 */

#ifndef __PLEORA_INTF_H__
#define __PLEORA_INTF_H__

#include <stdint.h>
#include "GC_Registers.h"
#include "IRC_status.h"


//PLEORA ADDRESS MAP
#define A_PLEORA_CFG_VALID    0x00

#define A_PLEORA_ERROR        0xF0


// structure de configuration du Pleora
struct s_PleoraIntf
{
   uint32_t SIZE;                   
   uint32_t ADD;
   
   uint32_t Config_valid;           // Flag for valid configuration
   uint32_t Frame_width;            // Frame_width				   
   uint32_t Frame_height;           // Frame_height						   
   uint32_t hdr_size;				// hdr_size
   uint32_t hdr_version;   			// hdr_version
   uint32_t FrameImageCount;        // Number of frame packaged into a jumbo frame.
   };
typedef struct s_PleoraIntf t_PleoraIntf;


enum  Pleora_Config {
   PC_INVALID = 0,  
   PC_VALID = 1
};
typedef enum Pleora_Config Pleora_Config_t;

// structure de statut
struct s_PleoraStatus
{
   uint32_t error;
};
typedef struct s_PleoraStatus t_PleoraStatus;



#define PleoraIntf_Ctor(add) {sizeof(t_PleoraIntf)/4 - 2, add, 0, 0, 0, 0, 0, 1}

// Function prototypes

//pour configurer le contrôleur du GIGE a partir de la valeur des registres
void PleoraIntf_SendConfigGC(t_PleoraIntf *a, const gcRegistersData_t *pGCRegs); 

//pour configurer le contrôleur du GIGE a partir de la valeur des registres
void PleoraIntf_Enable(t_PleoraIntf *a, const Pleora_Config_t config); 

//pour avoir les statuts
void PleoraIntf_GetStatus(const t_PleoraIntf *a, t_PleoraStatus *pStat);

#endif // __PLEORA_INTF__
