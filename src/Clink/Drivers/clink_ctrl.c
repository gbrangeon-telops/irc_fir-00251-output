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


#ifdef SIM
   #include "proc_ctrl.h" // Contains the class SC_MODULE for SystemC simulation
   #include "mb_transactor.h" // Contains virtual functions that emulates microblaze functions
   #include "mb_axi4l_bridge_SC.h" // Used to bridge Microblaze AXI4-Lite transaction in SystemC transaction
#else                  
   //#include "dosfs.h"
   //#include "xtime_l.h"
   //#include "xcache_l.h"   
#endif

// adresse des registres


// les differents modes d'operation du controleur


//--------------------------------------------------------------------------
//  Initialisation
//--------------------------------------------------------------------------
void Clink_Init(t_ClinkConfig *a, const gcRegistersData_t *GCRegs)
{

   a->CLinkMode = 1;  // apr default mode full
   a->HeaderVersion = 1; // plus tard, ce sera
   a->Img_Width = 0;
   a->Img_Height = 0;
   a->FValSize = 0;
   a->LValPause = CL_LVAL_PAUSE;

   WriteStruct(a);  
}

//--------------------------------------------------------------------------
//  Envoi de la configuration
//--------------------------------------------------------------------------
void Clink_SendConfigGC(t_ClinkConfig *a, const gcRegistersData_t *GCRegs)
{     
   if (GCRegs->ClConfiguration == CC_Full)
   {
      //a->CLinkMode = 1;
      a->CLinkMode = CL_FULL_BIT | CL_DUAL_BIT;
   }
   else if (GCRegs->ClConfiguration == CC_Base)
   {
      a->CLinkMode = 0;
   }
   else
   {
      a->CLinkMode = 0;
   }
   
   a->HeaderVersion = HDR_VERSION; // plus tard, ce sera
   a->Img_Width = GCRegs->Width;
   a->Img_Height = GCRegs->Height;
   a->FValSize = GCRegs->FValSize;
   a->LValPause = CL_LVAL_PAUSE;

   WriteStruct(a);  
}

void Clink_ResetFrame(t_ClinkConfig *a)
{
   AXI4L_write32( 1, a->ADD + CLINKADDR_FRAMERESET );
}
