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


#include "GC_Registers.h"


#ifdef FB_VERBOSE
   #define FB_PRINTF(fmt, ...)  FPGA_PRINTF("FB: " fmt, ##__VA_ARGS__)
#else
   #define FB_PRINTF(fmt, ...)  DUMMY_PRINTF("FB: " fmt, ##__VA_ARGS__)
#endif

#define FB_ERR(fmt, ...)        FPGA_PRINTF("FB: Error: " fmt "\n", ##__VA_ARGS__)
#define FB_INF(fmt, ...)        FPGA_PRINTF("FB: Info: " fmt "\n", ##__VA_ARGS__)
#define FB_DBG(fmt, ...)        FB_PRINTF("Debug: " fmt "\n", ##__VA_ARGS__)


//FRAME BUFFER ADDRESS MAP
#define A_FB_CFG_VALID           0x14

#define A_FB_IN_FR_MIN           0xE4
#define A_FB_IN_FR               0xE8
#define A_FB_IN_FR_MAX           0xEC
#define A_FB_OUT_FR_MIN          0xF0
#define A_FB_OUT_FR              0xF4
#define A_FB_OUT_FR_MAX          0xF8
#define A_FB_ERROR               0xFC


// structure de configuration du frame_buffer
struct s_FrameBuffer
{
   uint32_t SIZE;                   // Number of config elements, excluding SIZE and ADD.
   uint32_t ADD;
   
   uint32_t FB_mode;                // FrameBuffer mode
   uint32_t FB_base_addr;           // FrameBuffer DDR start address
   uint32_t FB_frame_size;          // FrameBuffer frame size in pixel
   uint32_t FB_hdr_size;            // FrameBuffer header size in pixel
   uint32_t FB_img_size;            // FrameBuffer image size in pixel
   uint32_t FB_config_valid;        // FrameBuffer valid configuration flag
};
typedef struct s_FrameBuffer t_FrameBuffer;

/**
 * Frame Buffer Mode
 */
enum FrameBuffer_mode {
   FBM_STANDBY = 0,
   FBM_GIGE = 1,
   FBM_LOSSLESS = 2
};
typedef enum FrameBuffer_mode FrameBuffer_mode_t;

enum  FrameBuffer_Config {
   FBC_INVALID = 0,
   FBC_VALID = 1
};
typedef enum FrameBuffer_Config FrameBuffer_Config_t;

// structure de statut
struct s_FrameBufferStatus
{
   uint32_t FB_in_FR_min;
   uint32_t FB_in_FR;
   uint32_t FB_in_FR_max;
   uint32_t FB_out_FR_min;
   uint32_t FB_out_FR;
   uint32_t FB_out_FR_max;
   uint32_t error;
};
typedef struct s_FrameBufferStatus t_FrameBufferStatus;



#define FrameBuffer_Ctor(add) {sizeof(t_FrameBuffer)/4 - 2, add, 0, 0, 0, 0, 0, 0}

// Function prototypes

//pour configurer le contrôleur du framebuffer à partir de la valeur des registres
void FrameBuffer_SendConfigGC(t_FrameBuffer *a, const gcRegistersData_t *pGCRegs);

//pour activer/désactiver la configuration
void FrameBuffer_Enable(t_FrameBuffer *a, const FrameBuffer_Config_t config);

//pour avoir les statuts
void FrameBuffer_GetStatus(const t_FrameBuffer *a, t_FrameBufferStatus *pStat);

#endif // __FRAME_BUFFER_H__
