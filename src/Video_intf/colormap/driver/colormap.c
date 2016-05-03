/**
 * @file BufferManager.h
 * 
 * Buffer Manager control the start stop of the buffering mode and the sequence reading and deleting command
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL: $
 *
 * (c) Copyright 2014 Telops Inc.
 */

#include "colormap.h"

#include "genicam.h"
#include "utils.h"
#include "mb_axi4l_bridge.h"


void Cmap_init(t_SdiIntf *pSdiCtrl)
{
   pSdiCtrl->ColorMapStartAddr = 0;
   pSdiCtrl->ColorMapEndAddr = CMAP_SIZE-1;
   pSdiCtrl->ColorMapSize = CMAP_SIZE;
   pSdiCtrl->ColorMapXMin = 0;
   pSdiCtrl->ColorMapXRange = 65535;

}

void Cmap_UpdateMap(t_SdiIntf *pSdiCtrl, VideoColorMap_t cmap){

   switch(cmap){
   case VCM_Gray:
      pSdiCtrl->ColorMapStartAddr = CMAP_GREY_OFFSET;
      break;
   case VCM_GrayInverted:
      pSdiCtrl->ColorMapStartAddr = CMAP_GREYINV_OFFSET;
      break;
   case VCM_Rainbow:
      pSdiCtrl->ColorMapStartAddr = CMAP_RAINBOW_OFFSET;
      break;
   case VCM_Hot:
      pSdiCtrl->ColorMapStartAddr = CMAP_HOT_OFFSET;
      break;
   case VCM_Cold:
      pSdiCtrl->ColorMapStartAddr = CMAP_COLD_OFFSET;
      break;
   default:
      pSdiCtrl->ColorMapStartAddr = CMAP_GREY_OFFSET;
      break;
   }
   
   pSdiCtrl->ColorMapEndAddr = pSdiCtrl->ColorMapStartAddr + pSdiCtrl->ColorMapSize - 1;
   
   AXI4L_write32( pSdiCtrl->ColorMapStartAddr,pSdiCtrl->ADD + COLORMAP_START_ADDR_OFFSET);
   AXI4L_write32(pSdiCtrl->ColorMapEndAddr,pSdiCtrl->ADD + COLORMAP_END_ADDR_OFFSET);
   
}

void Cmap_UpdateRange(t_SdiIntf *pSdiCtrl, uint32_t min, uint32_t max){

   if(max > min){
      pSdiCtrl->ColorMapXMin = min;
      pSdiCtrl->ColorMapXRange = (max - min);
      
      AXI4L_write32(pSdiCtrl->ColorMapXMin, pSdiCtrl->ADD + COLORMAP_XMIN_OFFSET);
      AXI4L_write32(pSdiCtrl->ColorMapXRange, pSdiCtrl->ADD + COLORMAP_XRANGE_OFFSET);
   }

}



