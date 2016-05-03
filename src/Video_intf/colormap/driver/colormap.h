/**
 * @file ColorMap.h
 * 
 * The colormap driver set the range and scale of the color map block. It also select the Color map to apply.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL: $
 *
 * (c) Copyright 2015 Telops Inc.
 */

#ifndef COLORMAP_H
#define COLORMAP_H

#include "GC_Registers.h"
#include "genicam.h"
#include "IRC_Status.h"
#include "sdi_intf.h"
#include <stdint.h>

// DEFINE CONSTANT PARAMTER HERE
#define CMAP_SIZE			1024

#define CMAP_GREY_OFFSET	CMAP_SIZE*0
#define CMAP_GREYINV_OFFSET	CMAP_SIZE*1
#define CMAP_RAINBOW_OFFSET	CMAP_SIZE*2
#define CMAP_HOT_OFFSET		CMAP_SIZE*3
#define CMAP_COLD_OFFSET	CMAP_SIZE*4

// CMAP CTRL ADDRESS MAP


// Struct Definition


// Fonction defition

void Cmap_init(t_SdiIntf *pSdiCtrl);
void Cmap_UpdateMap(t_SdiIntf *pSdiCtrl, VideoColorMap_t cmap);
void Cmap_UpdateRange(t_SdiIntf *pSdiCtrl, uint32_t min, uint32_t max);

#endif // COLORMAP_H
