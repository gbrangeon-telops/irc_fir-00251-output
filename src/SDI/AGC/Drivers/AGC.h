/**
 * @file AGC.h
 * AGC module header file.
 *
 * This driver controls the AGC module via AXIL.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 */
#ifndef __AGC_H__
#define __AGC_H__

/***************************** Include Files ********************************/
#include "Genicam.h"
#include "GC_Registers.h"
#include "tel2000_param.h"
#include "xintc.h"
#include "sdi_intf.h"
#include "irc_status.h"


/************************** Constant Definitions ****************************/
#define AGC_NB_BIN                          1024
#define AGC_MAX_PIX_VAL                     0xFFFF
#define AGC_BIN_WIDTH                       ((AGC_MAX_PIX_VAL + 1) / AGC_NB_BIN)
#define AGC_BASE_CLOCK_FREQ_HZ              CLK_DATA_FREQ_HZ

// Set registers address offset
#define AGC_LO_IMAGEFRACTION_OFFSET         0x00
#define AGC_HI_IMAGEFRACTION_OFFSET         0x04
#define AGC_MODE_OFFSET                     0x08
#define AGC_NB_BIN_OFFSET                   0x0C
#define AGC_MSB_POS_OFFSET                  0x10
#define AGC_CLEARMEM_OFFSET                 0x14
#define AGC_NEW_CONFIG_FLAG_OFFSET          0x18

// Get registers address offset
#define AGC_LO_BINID_PREV_OFFSET            0x1C
#define AGC_LO_CUMSUM_OFFSET                0x20
#define AGC_LO_CUMSUM_PREV_OFFSET           0x24
#define AGC_HI_BINID_PREV_OFFSET            0x28
#define AGC_HI_CUMSUM_OFFSET                0x2C
#define AGC_HI_CUMSUM_PREV_OFFSET           0x30
#define AGC_TIMESTAMP_OFFSET                0x34
#define AGC_NB_PIXEL_OFFSET                 0x38
#define AGC_LO_IMAGEFRACTION_FBCK_OFFSET    0x3C
#define AGC_HI_IMAGEFRACTION_FBCK_OFFSET    0x40


/**************************** Type Definitions ******************************/
/**
 * AGC controller structure.
 */
struct s_AGC
{
   uint32_t SIZE;                   /**< Number of config elements, excluding SIZE and ADD. */
   uint32_t ADD;                    /**< Base address. */

   uint32_t AGC_LoImageFraction;    /**< le 1er nombre de pixel a trouver. */
   uint32_t AGC_HiImageFraction;    /**< le 2e nombre de pixel a trouver. */
   uint32_t AGC_Mode;               /**< le mode de fonctionnement. */
   uint32_t AGC_NB_Bin;             /**< NB bin de l'histogram. */
   uint32_t AGC_MSB_Pos;            /**< Nb de bit des pixels. */
   uint32_t AGC_Clearmem;           /**< Histogram Clear mem signal. */
   uint32_t AGC_NewConfigFlag;        /**< Config. valid control signal. */
};
typedef struct s_AGC t_AGC;

/**
 * MSB_POS enumeration values data type.
 */
enum AGC_MsbPos_Enum
{
   AGC_13B = 0,     /**< 13 bits per pixel. */
   AGC_14B = 1,     /**< 14 bits per pixel. */
   AGC_15B = 2,     /**< 15 bits per pixel. */
   AGC_16B = 3      /**< 16 bits per pixel. */
};
typedef enum AGC_MsbPos_Enum AGC_MSBPOS_t;

/**
 * AGC Mode enumeration values data type.
 */
enum AGC_Mode_Enum
{
   AGC_OFF = 0,
   AGC_ON = 1
};
typedef enum AGC_Mode_Enum AGC_Mode_t;


/***************** Macros (Inline Functions) Definitions ********************/
#define AGC_Intf_Ctor(add) {sizeof(t_AGC)/4 - 2, add, 0, 0, 0, 0, 0, 0}


/************************** Function Prototypes *****************************/
IRC_Status_t AGC_Init(XIntc *pInterruptController, gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL);
void AGC_UpdateImageFraction(gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL, t_SdiIntf* pSDI_CTRL);
void AGC_UpdateMode(gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL);
void XAGC_InterruptHandler(XIntc *pInterruptController);
void AGC_SM(gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL, t_SdiIntf* pSDI_CTRL);


#endif // __AGC_H__
