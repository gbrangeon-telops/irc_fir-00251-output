/*-----------------------------------------------------------------------------
--
-- Title       : clink_ctrl header
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


#define CL_FULL 0x2
#define CL_DUAL 0x1
#define CL_BASE 0x0

#define CLK_50MHZ 0x0
#define CLK_85MHZ 0x1


#define CL_LVAL_PAUSE_SLOW          4
#define CL_LVAL_PAUSE_FAST          1
#define CL_FVAL_PAUSE_SLOW          3
#define CL_FVAL_PAUSE_FAST          3
#define CL_FG_INTERRUPT_RATE_MAX    1200.0F	// Frame grabber maximum interrupts per sec
#define CL_PIXEL_COUNT_MIN          (192 * (128 + 2))


//CLINK CTRL ADDRESS MAP
#define CLINKADDR_FRAMERESET        0x20
#define CLINKADDR_CLERROR           0xFC


// structure de configuration
struct s_Clink_conf
{
   uint32_t SIZE;                   // Number of config elements, excluding SIZE and ADD.
   uint32_t ADD;

   uint32_t CLinkMode;             // Base, dual or full
   uint32_t ClockMode;             // 50 MHz or 85 MHz
   uint32_t Width;                 // Frame width
   uint32_t Height;                // Image height including the header
   uint32_t LValSize;              // Frame Line width
   uint32_t FValSize;              // Frame Size (in line)
   uint32_t LValPause;             // Pause at every line end (excluding last frame line)
   uint32_t FValPause;             // Pause at end of last frame line
  };
typedef struct s_Clink_conf t_ClinkConfig;


// structure de statut
struct s_ClinkStatus
{
   uint32_t CL_errors;
};
typedef struct s_ClinkStatus t_ClinkStatus;



#define ClinkConf_Ctor(add) {sizeof(t_ClinkConfig)/4 - 2, add, 0, 0, 0, 0, 0, 0, 0, 0}

// Function prototypes
void Clink_Init(t_ClinkConfig *a, const gcRegistersData_t *GCRegs);
void Clink_SendConfigGC(t_ClinkConfig *a, const gcRegistersData_t *GCRegs);
void Clink_ResetFrame(t_ClinkConfig *a);
void Clink_GetStatus(const t_ClinkConfig *a, t_ClinkStatus *pStat);

#endif // __CLINK_CTRL__
