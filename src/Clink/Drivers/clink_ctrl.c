/*-----------------------------------------------------------------------------
--
-- Title       : clink_ctrl
-- Author      : Jean-Alexis Boulet
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
-- Description : This file implement fonction to control the Clink interface in the output processor
--
------------------------------------------------------------------------------*/

#include "GeniCam.h"
#include "clink_ctrl.h"
#include "utils.h"
#include "IRC_status.h"
#include "mb_axi4l_bridge.h"


bool gDebugClinkFlag = false;


//--------------------------------------------------------------------------
//  Initialisation
//--------------------------------------------------------------------------
void Clink_Init(t_ClinkConfig *a, const gcRegistersData_t *GCRegs)
{
   Clink_SendConfigGC(a, GCRegs);
}

//--------------------------------------------------------------------------
//  Envoi de la configuration
//--------------------------------------------------------------------------
void Clink_SendConfigGC(t_ClinkConfig *a, const gcRegistersData_t *GCRegs)
{
   if (GCRegs->ClConfiguration == CC_Base)
   {
      a->CLinkMode = CL_BASE;
   }
   else if (GCRegs->ClConfiguration == CC_DualBase)
   {
      a->CLinkMode = CL_DUAL;
   }
   else
   {
      a->CLinkMode = CL_FULL;
   }

   // Use parameters from debug terminal if present
   if (gDebugClinkFlag == false)
   {
      if (DeviceClockFrequencyAry[DCS_CameraLink] == CLINK_OUT_CLK_SLOW)
      {
         a->ClockMode = CLK_50MHZ;
         a->LValPause = CL_LVAL_PAUSE_SLOW;
         a->FValPause = CL_FVAL_PAUSE_SLOW;
      }
      else
      {
         a->ClockMode = CLK_85MHZ;
         a->LValPause = CL_LVAL_PAUSE_FAST;
         a->FValPause = CL_FVAL_PAUSE_FAST;
      }
   }

   a->Width = GCRegs->Width;
   a->Height = GCRegs->Height + 2;
   a->LValSize = GCRegs->LValSize;
   a->FValSize = GCRegs->FValSize;

   WriteStruct(a);

   Clink_ResetFrame(a);
}

void Clink_ResetFrame(t_ClinkConfig *a)
{
   AXI4L_write32( 1, a->ADD + CLINKADDR_FRAMERESET );
}

//----------------------------------------------------------------
// pour avoir le statut du bloc
//----------------------------------------------------------------
void Clink_GetStatus(const t_ClinkConfig *a, t_ClinkStatus *pStat)
{
   pStat->CL_errors = AXI4L_read32(a->ADD + CLINKADDR_CLERROR);
}
