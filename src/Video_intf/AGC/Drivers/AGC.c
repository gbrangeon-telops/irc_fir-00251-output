/**
 * @file AGC.c
 * AGC module source file.
 *
 * This driver controls the AGC module via AXIL.
 *
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 */
#include "stdbool.h"
#include "AGC.h"
#include "utils.h"
#include "Genicam.h"
#include "xintc.h"
#include "mb_axi4l_bridge.h"
#include "math.h"


// Global variables
static volatile bool gAGC_dataReady = false;


// Private function prototypes
static void AGC_ClearMem(t_AGC *pAGC_CTRL);
static float AGC_getAlphaFactor(uint32_t timestamp, float responseTime_msec);
static float AGC_getActualWellFilling(uint32_t imgFraction, uint32_t completeBins, uint32_t cumsum, uint32_t cumsumPrev);
static uint32_t AGC_getProposedWellFilling(float AWF, float alpha, uint32_t PWF_prev);


/**
 * Initialize the AGC module.
 *
 * @param pInterruptController Pointer to the interrupt controller instance.
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pAGC_CTRL Pointer to the AGC controller instance.
 *
 * @return IRC_SUCCESS if successfully initialized.
 * @return IRC_FAILURE if failed to initialize.
 */
IRC_Status_t AGC_Init(XIntc *pInterruptController, gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL)
{
    const uint32_t imageSize = pGCRegs->Height * pGCRegs->Width;
    int status;

    // Init controller
    pAGC_CTRL->AGC_LoImageFraction = (uint32_t)((float)imageSize * pGCRegs->VideoAGCFractionMin / 100.0);
    pAGC_CTRL->AGC_HiImageFraction = (uint32_t)((float)imageSize * pGCRegs->VideoAGCFractionMax / 100.0);
    pAGC_CTRL->AGC_Mode = (pGCRegs->VideoAGC == VAGC_Off) ? AGC_OFF : AGC_ON;
    pAGC_CTRL->AGC_NB_Bin = AGC_NB_BIN;
    pAGC_CTRL->AGC_MSB_Pos = AGC_16B;
    pAGC_CTRL->AGC_Clearmem = 0;        // Histogram is cleared by default during init

    // Write controller values to AGC
    WriteStruct(pAGC_CTRL);

    // Register interrupt and start intc process
    status = XIntc_Connect(pInterruptController,
                           XPAR_MCU_MICROBLAZE_0_AXI_INTC_SYSTEM_AGC_INTR_0_INTR,
                           (XInterruptHandler)XAGC_InterruptHandler,
                           pInterruptController);

    return (status == XST_SUCCESS) ? IRC_SUCCESS : IRC_FAILURE;
}


/**
 * Update image fraction (low and high).
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pAGC_CTRL Pointer to the AGC controller instance.
 * @param pSDI_CTRL Pointer to the SDI controller instance.
 *
 * @return void.
 */
void AGC_UpdateImageFraction(gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL, t_SdiIntf* pSDI_CTRL)
{
    const uint32_t imageSize = pSDI_CTRL->ScalerImgSize;

    // Verify image fractions are valid
    if (pGCRegs->VideoAGCFractionMax > pGCRegs->VideoAGCFractionMin)
    {
        // Update low image fraction
        pAGC_CTRL->AGC_LoImageFraction = (uint32_t)((float)imageSize * pGCRegs->VideoAGCFractionMin / 100.0);
        AXI4L_write32(pAGC_CTRL->AGC_LoImageFraction, pAGC_CTRL->ADD + AGC_LO_IMAGEFRACTION_OFFSET);

        // Update high image fraction
        pAGC_CTRL->AGC_HiImageFraction = (uint32_t)((float)imageSize * pGCRegs->VideoAGCFractionMax / 100.0);
        AXI4L_write32(pAGC_CTRL->AGC_HiImageFraction, pAGC_CTRL->ADD + AGC_HI_IMAGEFRACTION_OFFSET);
    }
}


/**
 * Update the AGC mode.
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pAGC_CTRL Pointer to the AGC controller instance.
 *
 * @return void.
 */
void AGC_UpdateMode(gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL)
{
    pAGC_CTRL->AGC_Mode = (pGCRegs->VideoAGC == VAGC_Off) ? AGC_OFF : AGC_ON;
    AXI4L_write32(pAGC_CTRL->AGC_Mode, pAGC_CTRL->ADD + AGC_MODE_OFFSET);
}


/**
 * Interrupt routine of the AGC module.
 *
 * @param pInterruptController Pointer to the interrupt controller instance.
 *
 * @return void.
 */
void XAGC_InterruptHandler(XIntc *pInterruptController)
{
    // Set flag for processing
    gAGC_dataReady = true;

    // Clear interrupt flag
    XIntc_Acknowledge(pInterruptController, XPAR_MCU_MICROBLAZE_0_AXI_INTC_SYSTEM_AGC_INTR_0_INTR);
}


/**
 * AGC state machine.
 * When data is available, the state machine reads and processes the data
 * to update the corresponding settings.
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pAGC_CTRL Pointer to the AGC controller instance.
 *
 * @return void.
 */
void AGC_SM(gcRegistersData_t *pGCRegs, t_AGC *pAGC_CTRL, t_SdiIntf* pSDI_CTRL)
{
    uint32_t AGC_loBinIdPrev = 0;
    uint32_t AGC_loCumsum = 0;
    uint32_t AGC_loCumsumPrev = 0;
    uint32_t AGC_loImageFractionFbck = 0;
    uint32_t AGC_hiBinIdPrev = 0;
    uint32_t AGC_hiCumsum = 0;
    uint32_t AGC_hiCumsumPrev = 0;
    uint32_t AGC_hiImageFractionFbck = 0;
    uint32_t AGC_timestamp = 0;
    uint32_t AGC_nbPixel = 0;

    float alpha = 0.0;
    float AWF = 0.0;        /**< Actual Well Filling. */

    // Execute only if there is data to process
    if (gAGC_dataReady == false)
        return;

    // Reset flag
    gAGC_dataReady = false;

    // Read data
    AGC_loBinIdPrev         = AXI4L_read32(pAGC_CTRL->ADD + AGC_LO_BINID_PREV_OFFSET);
    AGC_loCumsum            = AXI4L_read32(pAGC_CTRL->ADD + AGC_LO_CUMSUM_OFFSET);
    AGC_loCumsumPrev        = AXI4L_read32(pAGC_CTRL->ADD + AGC_LO_CUMSUM_PREV_OFFSET);
    AGC_loImageFractionFbck = AXI4L_read32(pAGC_CTRL->ADD + AGC_LO_IMAGEFRACTION_FBCK_OFFSET);
    AGC_hiBinIdPrev         = AXI4L_read32(pAGC_CTRL->ADD + AGC_HI_BINID_PREV_OFFSET);
    AGC_hiCumsum            = AXI4L_read32(pAGC_CTRL->ADD + AGC_HI_CUMSUM_OFFSET);
    AGC_hiCumsumPrev        = AXI4L_read32(pAGC_CTRL->ADD + AGC_HI_CUMSUM_PREV_OFFSET);
    AGC_hiImageFractionFbck = AXI4L_read32(pAGC_CTRL->ADD + AGC_HI_IMAGEFRACTION_FBCK_OFFSET);
    AGC_timestamp           = AXI4L_read32(pAGC_CTRL->ADD + AGC_TIMESTAMP_OFFSET);
    AGC_nbPixel             = AXI4L_read32(pAGC_CTRL->ADD + AGC_NB_PIXEL_OFFSET);

    // Clear histogram
    AGC_ClearMem(pAGC_CTRL);

    // Verify histogram validity
    if (AGC_nbPixel != pSDI_CTRL->ScalerImgSize)
            return;

    // Get alpha factor for IIR filter
    alpha = AGC_getAlphaFactor(AGC_timestamp, pGCRegs->VideoAGCResponseTime);

    //---- LOW IMAGE FRACTION ----//
    // Get actual well filling at low image fraction
    AWF = AGC_getActualWellFilling(AGC_loImageFractionFbck, AGC_loBinIdPrev, AGC_loCumsum, AGC_loCumsumPrev);
    // Update color map min with proposed well filling at low image fraction
    pGCRegs->VideoColorMapMin = AGC_getProposedWellFilling(AWF, alpha, pGCRegs->VideoColorMapMin);

    //---- HIGH IMAGE FRACTION ----//
    // Get actual well filling at high image fraction
    AWF = AGC_getActualWellFilling(AGC_hiImageFractionFbck, AGC_hiBinIdPrev, AGC_hiCumsum, AGC_hiCumsumPrev);
    // Update color map with proposed well filling at high image fraction
    pGCRegs->VideoColorMapMax = AGC_getProposedWellFilling(AWF, alpha, pGCRegs->VideoColorMapMax);

    // Apply changes to color map
    GC_UpdateVideoColorRange();
}


/**
 * Clear the histogram.
 *
 * @param pAGC_CTRL Pointer to the AGC controller instance.
 *
 * @return void.
 */
static void AGC_ClearMem(t_AGC *pAGC_CTRL)
{
    // Set clearmem signal
    AXI4L_write32(1, pAGC_CTRL->ADD + AGC_CLEARMEM_OFFSET);

    // Reset clearmem signal
    AXI4L_write32(0, pAGC_CTRL->ADD + AGC_CLEARMEM_OFFSET);
}


/**
 * Calculate the alpha factor.
 *
 * @param timestamp Value of the timestamp.
 * @param responseTime_sec Value of the response time in sec.
 *
 * @return Alpha factor.
 */
static float AGC_getAlphaFactor(uint32_t timestamp, float responseTime_sec)
{
    static uint32_t timestamp_prev = 0;
    float deltaT_sec = 0.0;

    // Calculate time between 2 timestamps
    // Check for overflow
    if (timestamp <= timestamp_prev)
        deltaT_sec = (float)(0x100000000 - timestamp_prev + timestamp) * AGC_TIMESTAMP_TO_SEC;  // 2^32 - LastValue + NewValue
    else
        deltaT_sec = (float)(timestamp - timestamp_prev) * AGC_TIMESTAMP_TO_SEC;

    // Update previous timestamp
    timestamp_prev = timestamp;

    // Return alpha factor for response time of 95%
    return pow(1.0 - 0.95, deltaT_sec / responseTime_sec);
}


/**
 * Calculate the actual well filling.
 *
 * @param imgFraction Value of the image fraction.
 * @param completeBins Complete bins before the image fraction.
 * @param cumsum Value of the cumsum after the image fraction.
 * @param cumsumPrev Value of the cumsum before the image fraction.
 *
 * @return Actual well filling.
 */
static float AGC_getActualWellFilling(uint32_t imgFraction, uint32_t completeBins, uint32_t cumsum, uint32_t cumsumPrev)
{
    // Interpolation for the bin fraction
    float binFraction = (float)(imgFraction - cumsumPrev) / (float)(cumsum - cumsumPrev);

    // Return pixel value corresponding to image fraction
    return (binFraction + (float)completeBins) * (float)AGC_BIN_WIDTH;
}


/**
 * Calculate the proposed well filling.
 *
 * @param AWF Value of actual well filling.
 * @param alpha Value of alpha factor.
 * @param PWF_prev Value of previous proposed well filling.
 *
 * @return Proposed well filling.
 */
static uint32_t AGC_getProposedWellFilling(float AWF, float alpha, uint32_t PWF_prev)
{
    // IIR Filter
    float PWF = (1.0 - alpha) * AWF + alpha * (float)PWF_prev;

    // Make sure PWF is between limits
    if (PWF < 0.0)
       PWF = 0.0;
    else if (PWF > (float)AGC_MAX_PIX_VAL)
       PWF = (float)AGC_MAX_PIX_VAL;

    return (uint32_t)PWF;
}
