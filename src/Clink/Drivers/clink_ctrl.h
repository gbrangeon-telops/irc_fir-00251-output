/*-----------------------------------------------------------------------------
--
-- Title       : exposure_time_ctrl header
-- Author      : Edem Nofodjie
-- Company     : Telops inc.
--
-------------------------------------------------------------------------------
--
-- SVN modified fields:
-- $Revision$
-- $Author$
-- $LastChangedDate$
--
-------------------------------------------------------------------------------
--
-- Description :
--
------------------------------------------------------------------------------*/
#ifndef __CLINK_CTRL_H__
#define __CLINK_CTRL_H__

#include "GC_Registers.h"
#include <stdint.h>
#include "xbasic_types.h"

#define HDR_VERSION 1

#define CL_FULL_BIT 0x1
#define CL_DUAL_BIT 0x8

#define CL_LVAL_PAUSE               2
#define CL_FG_INTERRUPT_RATE_MAX    1200.0F	// Frame grabber maximum interrupts per sec
#define CL_PIXEL_COUNT_MIN          (192 * (128 + 2))

#define CLINKADDR_FRAMERESET        0x18
// structure de configuration de exposure_time_ctrl
struct s_Clink_conf
{
   uint32_t SIZE;                   // Number of config elements, excluding SIZE and ADD.
   uint32_t ADD;

   uint32_t CLinkMode;             // Base or full -- Later Dual
   uint32_t HeaderVersion;         // La version du Header
   uint32_t Img_Width;             // Image width
   uint32_t Img_Height;            // Image heigth without the header
   uint32_t FValSize;              // Frame Size (in line)
   uint32_t LValPause;             // Pause at every line end (including last frame line, No FValPause implemented)
  };
typedef struct s_Clink_conf t_ClinkConfig;

//enum pour les mode cameralink


// Function prototypes

#define ClinkConf_Ctor(add) {sizeof(t_ClinkConfig)/4 - 2, add, 0, 0}

void Clink_Init(t_ClinkConfig *a, const gcRegistersData_t *GCRegs);
void Clink_SendConfigGC(t_ClinkConfig *a, const gcRegistersData_t *GCRegs);
void Clink_ResetFrame(t_ClinkConfig *a);

#endif // __CLINK_CTRL__
