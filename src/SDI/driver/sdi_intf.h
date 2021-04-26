#ifndef SDI_INTF_H
#define SDI_INTF_H

#include <stdint.h>
#include "GC_Registers.h"
#include "xscaler.h"

// structure de configuration du sdi
struct s_SdiIntf
{
   uint32_t SIZE;                // Number of config elements, excluding SIZE and ADD.
   uint32_t ADD;
   
   uint32_t FB_BaseAddress;      //in bytes
   uint32_t FB_Mode;
   uint32_t FB_ImgWidth;         //in pixels
   uint32_t FB_ImgHeight;        //in lines
   uint32_t FB_ImgSize;          //in pixels
   uint32_t FB_ReadStartPix;     //in pixels
   uint32_t FB_ReadWidth;        //in pixels
   uint32_t FB_ReadStartLine;
   uint32_t FB_ReadStopLine;
   uint32_t FB_ConfigValid;

   uint32_t XFlip;
   uint32_t YFlip;

   uint32_t ColorMapStartAddr;
   uint32_t ColorMapSize;
   uint32_t ColorMapEndAddr;
   uint32_t ColorMapXMin;
   uint32_t ColorMapXRange;

   uint32_t ScalerImgWidth;      //in pixels
   uint32_t ScalerImgSize;       //in pixels

   uint32_t OutputImgSize;       //in pixels

   uint32_t VerticalImgStart;
   uint32_t VerticalImgStop;
   uint32_t HorizontalImgStart;
   uint32_t HorizontalImgStop;

   uint32_t SDI_720pN_1080p;

   uint32_t SDI_PauseResetN;
   uint32_t DecimatorInputWidth;
   uint32_t DecimatorEnable;
   uint32_t DecimatorValid;
};

typedef struct s_SdiIntf t_SdiIntf;

#define SDIIntf_Ctor(baseadd) {sizeof(t_SdiIntf)/4 - 2, baseadd, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

#define SDI_NOPAUSE_RESETN_BIT      0x0
#define SDI_NOPAUSE_NORESETN_BIT    0x1
#define SDI_PAUSE_RESETN_BIT        0x2
#define SDI_PAUSE_NORESETN_BIT      0x3

#define SDI_720p     0x0
#define SDI_1080p    0x1

#define DIGITALZOOMMINWIDTH720P     64
#define DIGITALZOOMMINHEIGHT720P    64

#define DIGITALZOOMMINWIDTH1080P    128
#define DIGITALZOOMMINHEIGHT1080P   128

#define ZOOM_x1         1
#define ZOOM_x2         2
#define ZOOM_x4         4
#define ZOOM_x8         8
#define ZOOM_x16        16
#define ZOOM_x32        32


/**
 * SDI interface data types.
 */
enum SDIIntf_ZoomState {
   ZOOM_IDLE = 0,
   ZOOM_PAUSE = 1,
   ZOOM_CONFIG = 2,
   ZOOM_ENABLE = 3
};
typedef enum SDIIntf_ZoomState SDIIntf_ZoomState_t;

enum SDIIntf_FlipXState {
   FLIPX_IDLE = 0,
   FLIPX_PAUSE = 1,
   FLIPX_CONFIG = 2,
   FLIPX_ENABLE = 3
};
typedef enum SDIIntf_FlipXState SDIIntf_FlipXState_t;

enum SDIIntf_FlipYState {
   FLIPY_IDLE = 0,
   FLIPY_PAUSE = 1,
   FLIPY_CONFIG = 2,
   FLIPY_ENABLE = 3
};
typedef enum SDIIntf_FlipYState SDIIntf_FlipYState_t;

enum SDIIntf_ChangeInputWindow {
   CHANGEINPUTWINDOW_IDLE = 0,
   CHANGEINPUTWINDOW_PAUSE = 1,
   CHANGEINPUTWINDOW_CONFIG = 2,
   CHANGEINPUTWINDOW_ENABLE = 3
};
typedef enum SDIIntf_ChangeInputWindow SDIIntf_ChangeInputWindow_t;


// structure de statut
struct s_SdiStatus
{
   uint32_t FB_in_FR_min;
   uint32_t FB_in_FR;
   uint32_t FB_in_FR_max;
   uint32_t FB_out_FR_min;
   uint32_t FB_out_FR;
   uint32_t FB_out_FR_max;
   uint32_t error;
};
typedef struct s_SdiStatus t_SdiStatus;


#define SDIINTF_CTRLOFFSET       0x00000000
#define SDIINTF_TPGOFFSET        0x00004000
#define SDIINTF_SCALEROFFSET     0x00008000
#define SDIINTF_AGCOFFSET        0x0000C000


// Color map define
#define COLORMAP_START_ADDR_OFFSET  0x30
#define COLORMAP_SIZE_OFFSET        0x34
#define COLORMAP_END_ADDR_OFFSET    0x38
#define COLORMAP_XMIN_OFFSET        0x3C
#define COLORMAP_XRANGE_OFFSET      0x40

//sdi system reset
#define SDI_PAUSE_RESET_N_OFFSET    0x64
#define SDI_FB_CONFIG_VALID_OFFSET  0x24
#define SDI_DECIMATOR_CONFIG_VALID_OFFSET  0x70
#define SDI_720PN_1080P_OFFSET      0x60

//#define ZOOM_RESET_US             33000   // 2 frames at 60Hz
#define ZOOM_RESET_US               250000  // 3 frames at 30Hz

//video data handler configuration
// Ctrl Video
#define AW_VIDEO_EHDRIINDEX         0x74
#define AW_VIDEO_FWPOSITION         0x78
#define AW_VIDEO_SELECTOR_ENABLE    0x7C
#define AW_VIDEO_FREEZE             0x80

#define VIDEO_EHDRI_INDEX_DEFAULT   0x5   // Valeur pour EHDRI desactiver
// CONTROLE du video selector(ehdri_index ou fwposition)
#define SDI_VIDEOSELECTOR_EHDRI       0x01
#define SDI_VIDEOSELECTOR_FWPOSITION  0x02

// Status and Errors
#define SDI_AR_FB_IN_FR_MIN         0xE4
#define SDI_AR_FB_IN_FR             0xE8
#define SDI_AR_FB_IN_FR_MAX         0xEC
#define SDI_AR_FB_OUT_FR_MIN        0xF0
#define SDI_AR_FB_OUT_FR            0xF4
#define SDI_AR_FB_OUT_FR_MAX        0xF8
#define SDI_AR_ERR_LATCH            0xFC
#define SDI_AW_RESET_ERR            0xFC

#define DECIMATOR_THRESHOLD             640*512
#define DECIMATOR_INPUT_WIDTH_MIN       64
#define DECIMATOR_INPUT_HEIGHT_MIN      4
#define DECIMATOR_DESACTIVATED_MASK     0x00000000
#define DECIMATOR_ROW_MASK              0x00000001
#define DECIMATOR_COLUMN_MASK           0x00000002
#define DECIMATOR_ACTIVATED_MASK        0x00000003

//Fonction definition
void SDIIntf_GetStatus(const t_SdiIntf *pSdiIntf, t_SdiStatus *pStat);
void SDIIntf_ResetErr(const t_SdiIntf *pSdiIntf);
void SDIIntf_Init(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs);

void SDIIntf_SetSdiPauseZoomSM(void);
void SDIIntf_ZoomSM(t_SdiIntf *pSdiCtrl, gcRegistersData_t *pGCRegs);
void SDIIntf_SetSdiPauseFlipXSM(void);
void SDIIntf_FlipXSM(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs);
void SDIIntf_SetSdiPauseFlipYSM(void);
void SDIIntf_FlipYSM(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs);
void SDIIntf_SetChangeInputWindowSM(void);
void SDIIntf_ChangeInputWindowSM(t_SdiIntf *pSdiCtrl, gcRegistersData_t *pGCRegs);

void SDIIntf_calculateZoom(t_SdiIntf *pSdiCtrl, gcRegistersData_t *pGCRegs);
void SDIIntf_ConfigureOutput(t_SdiIntf *pSdiIntf);
void SDIIntf_UpdateVideoOutput(t_SdiIntf *pSdiIntf, const gcRegistersData_t *pGCRegs);

void SDIIntf_UpdateVideoDataHandler(t_SdiIntf *pSdiCtrl,  const gcRegistersData_t *pGCRegs);
void SDIIntf_ComputeInputWidowSize(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs);



#endif // SDI_INTF_H
