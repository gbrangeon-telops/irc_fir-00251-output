#ifndef SDI_INTF_H
#define SDI_INTF_H

#include <stdint.h>
#include "GC_Registers.h"
#include "xscaler.h"

// structure de configuration du sdi
struct s_SdiIntf
{
   uint32_t SIZE;                   // Number of config elements, excluding SIZE and ADD.
   uint32_t ADD;
   
   uint32_t InputImgWidth;
   uint32_t InputImgHeight;
   uint32_t InputImgSize;

   uint32_t OutputImgWidth;
   uint32_t OutputImgHeight;
   uint32_t OutputImgSize;
   uint32_t NbFrameValid;

   uint32_t VerticalImgStart;
   uint32_t VerticalImgStop;
   uint32_t HorizontalImgStart;
   uint32_t HorizontalImgStop;

   uint32_t XFlip;
   uint32_t YFlip;
   
   uint32_t FBBaseAddress;
   uint32_t FBMode;
   uint32_t FBHeaderSize;
   uint32_t PatternSelector;

   uint32_t ColorMapStartAddr;
   uint32_t ColorMapSize;
   uint32_t ColorMapEndAddr;
   uint32_t ColorMapXMin;
   uint32_t ColorMapXRange;

   uint32_t ScalerImgWidth;
   uint32_t ScalerImgHeight;
   uint32_t ScalerImgSize;

   uint32_t FB_Start_Pixel;
   uint32_t FB_Width_Pixel;
   uint32_t FB_Start_Line;
   uint32_t FB_Stop_Line;

   uint32_t SDI_PauseResetN;
   uint32_t ConfigValid;
   uint32_t SDI_720pN_1080p;
   };

typedef struct s_SdiIntf t_SdiIntf;

#define SDIIntf_Ctor(baseadd, fbaddr) {sizeof(t_SdiIntf)/4 - 2, baseadd, 640, 512, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, fbaddr, 4, 2, 0, 0, 1024, 1023, 0, 0xFFFF, 0 /* Reset the core*/, 0}

#define SDI_NOPAUSE_RESET_BIT      0x0
#define SDI_NOPAUSE_NORESET_BIT      0x1
#define SDI_PAUSE_RESET_BIT         0x2
#define SDI_PAUSE_NORESET_BIT      0x3

#define SDI_720p               0x0
#define SDI_1080p               0x1

#define DIGITALZOOMMINWIDTH720P       64
#define DIGITALZOOMMINHEIGHT720P      64

#define DIGITALZOOMMINWIDTH1080P       128
#define DIGITALZOOMMINHEIGHT1080P      128

#define ZOOM_x1                   1
#define ZOOM_x2                   2
#define ZOOM_x4                   4
#define ZOOM_x8                   8
#define ZOOM_x16                16
#define ZOOM_x32                32

enum SDIIntf_ZoomState {
   ZOOM_IDLE = 0,
   ZOOM_PAUSE = 1,
   ZOOM_CONFIG = 2,
   ZOOM_ENABLE = 3
};

enum SDIIntf_FlipXState {
   FLIPX_IDLE = 0,
   FLIPX_PAUSE = 1,
   FLIPX_CONFIG = 2,
   FLIPX_ENABLE = 3
};

enum SDIIntf_FlipYState {
   FLIPY_IDLE = 0,
   FLIPY_PAUSE = 1,
   FLIPY_CONFIG = 2,
   FLIPY_ENABLE = 3
};

enum SDIIntf_ChangeInputWindow {
   CHANGEINPUTWINDOW_IDLE = 0,
   CHANGEINPUTWINDOW_PAUSE = 1,
   CHANGEINPUTWINDOW_CONFIG = 2,
   CHANGEINPUTWINDOW_ENABLE = 3
};

#define SDIINTF_CTRLOFFSET         0x00000000
#define SDIINTF_TPGOFFSET         0x00010000
#define SDIINTF_SCALEROFFSET      0x00020000
#define SDIINTF_AGCOFFSET           0x00030000


// Color map define
#define COLORMAP_START_ADDR_OFFSET   0x44
#define COLORMAP_SIZE_OFFSET      0x48
#define COLORMAP_END_ADDR_OFFSET   0x4C
#define COLORMAP_XMIN_OFFSET      0x50
#define COLORMAP_XRANGE_OFFSET      0x54

//sdi system reset
#define SDI_RESET_N_OFFSET         0x74
#define SDI_CONFIG_VALID_OFFSET      0x78
#define SDI_720pN_1080P            0x7C

//#define ZOOM_RESET_US            33000   // 2 frames at 60Hz
#define ZOOM_RESET_US            250000  // 3 frames at 30Hz


//Fonction definition
void SDIIntf_SendConfigGC(t_SdiIntf *a, const gcRegistersData_t *pGCRegs);
void SDIIntf_Init(t_SdiIntf * a, const gcRegistersData_t *pGCRegs);
//void SDIIntf_ConfigureTestPattern(t_SdiIntf * pSdiIntf);
void SDIIntf_ConfigureOutput(t_SdiIntf * pSdiIntf);
void SDIIntf_UpdateVideoOutput(t_SdiIntf * pSdiIntf, const gcRegistersData_t *pGCRegs);

void SDIIntf_ZoomSM(t_SdiIntf *a, gcRegistersData_t *pGCRegs);
void SDIIntf_SetSdiPauseZoomSM(void);
void SDIIntf_FlipXSM(t_SdiIntf *a, const gcRegistersData_t *pGCRegs);
void SDIIntf_FlipYSM(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs);
void SDIIntf_SetSdiPauseFlipXSM(void);
void SDIIntf_ChangeInputWindowSM(t_SdiIntf *a, gcRegistersData_t *pGCRegs);
void SDIIntf_SetChangeInputWindowSM(void);
void SDIIntf_SetSdiPauseFlipYSM(void);

//Video Scaler
void  v_scaler_init(t_SdiIntf *pSdiCtrl);
void  XScalerSetup(XScaler *ScalerInstPtr, int ScalerInWidth, int ScalerInHeight, int ScalerOutWidth, int ScalerOutHeight);



#endif // SDI_INTF_H
