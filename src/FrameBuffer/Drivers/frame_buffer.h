/**
 * @file frame_buffer.h
 * IR camera Output frame buffer
 *
 * This file defines the IR camera output frame buffer driver module interface.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL: $
 *
 * (c) Copyright 2014 Telops Inc.
 */

#ifndef __FRAME_BUFFER_H__
#define __FRAME_BUFFER_H__

#include <stdint.h>
#include "xbasic_types.h"  
#include "GC_Registers.h"
#include "IRC_status.h"


#define A_FB_STATUS 0xf0
#define A_FB_CFG_VALID 28

// structure de configuration du frame_buffer
struct s_FrameBuffer
{
   uint32_t SIZE;                   // Number of config elements, excluding SIZE and ADD.
   uint32_t ADD;
   
   uint32_t FB_mode		;           // Mode du frame buffer (0-off, 1- GIGE 2-Lossless)
   uint32_t Frame_width;           // Number de zeros à padder (unité = pixel)					   
   uint32_t Frame_height;               // Number d'éléments au total constituant le header (unité = pixel) 						   
   uint32_t base_saddr;				// HeadRealLen/2-1 
   uint32_t FrameSize;   			// ZPadLen/2-1 
   uint32_t hdr_size;	           // dit si on a besoin de padder le header
   uint32_t img_size;	          // dit s'il doit y avoir un TLAST à la fin du header ou pas
   uint32_t config_valid;	          // dit s'il doit y avoir un TLAST à la fin du header ou pas
   };
typedef struct s_FrameBuffer t_FrameBuffer;

/**
 * Frame Buffer Mode
 */
enum FrameBuffer_mode {
   FB_STANDBY = 0,  
   FB_GIGE = 1,  	
   FB_LOSSLESS = 2      
};


/**
 * Frame Buffer mode data type
 */
typedef enum FrameBuffer_mode FrameBuffer_mode_t;

enum  FB_Config {
   FB_INVALID = 0,  
   FB_VALID = 1
};

typedef enum FB_Config FB_Config_t;

// Function prototypes

#define FrameBuffer_Ctor(add) {sizeof(t_FrameBuffer)/4 - 2, add, 0, 0, 0, 0, 0, 0, 0,0}


//pour configurer le contrôleur du framebuffer èa partir de la valeur des registres
void FrameBuffer_SendConfigGC(t_FrameBuffer *a, const gcRegistersData_t *pGCRegs); 

//pour configurer le contrôleur du framebuffer èa partir de la valeur des registres
void FrameBuffer_Enable(t_FrameBuffer *a, const FB_Config_t config); 

//pour avoir les statuts
uint32_t FrameBuffer_GetStatus(const t_FrameBuffer *a); 

#endif // __FRAME_BUFFER_H__
