#include "sdi_intf.h"
#include <string.h>
#include "xil_assert.h"
#include "xscaler_hw.h"
#include "tpg.h"
#include "utils.h"
#include "mb_axi4l_bridge.h"
#include "colormap.h"
#include "xparameters.h"

// Private functions
static void v_scaler_init(t_SdiIntf *pSdiCtrl);
static void XScalerSetup(XScaler *ScalerInstPtr, int ScalerInWidth, int ScalerInHeight, int ScalerOutWidth, int ScalerOutHeight);

// Global variables
static XScaler gScaler;
static uint32_t gScalerImgHeight;
static uint32_t gOutputImgWidth;
static uint32_t gOutputImgHeight;

static uint32_t gInputImgWidth;
static uint32_t gInputImgHeight;

// les differents modes d'operation du controleur
static SDIIntf_ZoomState_t gZoomCurrentState = ZOOM_IDLE;
static SDIIntf_FlipXState_t gFlipxCurrentState = FLIPX_IDLE;
static SDIIntf_FlipYState_t gFlipyCurrentState = FLIPY_IDLE;
static SDIIntf_ChangeInputWindow_t gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_IDLE;


/**
 * Get error values.
 *
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return error values.
 */
void SDIIntf_GetStatus(const t_SdiIntf *pSdiIntf, t_SdiStatus *pStat)
{
   pStat->FB_in_FR_min  = AXI4L_read32(pSdiIntf->ADD + SDI_AR_FB_IN_FR_MIN);
   pStat->FB_in_FR      = AXI4L_read32(pSdiIntf->ADD + SDI_AR_FB_IN_FR);
   pStat->FB_in_FR_max  = AXI4L_read32(pSdiIntf->ADD + SDI_AR_FB_IN_FR_MAX);
   pStat->FB_out_FR_min = AXI4L_read32(pSdiIntf->ADD + SDI_AR_FB_OUT_FR_MIN);
   pStat->FB_out_FR     = AXI4L_read32(pSdiIntf->ADD + SDI_AR_FB_OUT_FR);
   pStat->FB_out_FR_max = AXI4L_read32(pSdiIntf->ADD + SDI_AR_FB_OUT_FR_MAX);
   pStat->error         = AXI4L_read32(pSdiIntf->ADD + SDI_AR_ERR_LATCH);
}

/**
 * Reset error values.
 *
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_ResetErr(const t_SdiIntf *pSdiIntf)
{
   AXI4L_write32(1, pSdiIntf->ADD + SDI_AW_RESET_ERR);           //activate
   AXI4L_write32(0, pSdiIntf->ADD + SDI_AW_RESET_ERR);           //deactivate
}

void SDIIntf_Init(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs)
{
   pSdiCtrl->SDI_720pN_1080p = SDI_720p;         //Select SDI output mode

   if (pSdiCtrl->SDI_720pN_1080p == SDI_720p)
   {
      pSdiCtrl->FB_ImgWidth = 640;
      pSdiCtrl->FB_ImgHeight = 512;

      pSdiCtrl->ScalerImgWidth = 640;
      gScalerImgHeight = 512;

      pSdiCtrl->FB_ReadStartPix = 0;
      pSdiCtrl->FB_ReadWidth = 640;
      pSdiCtrl->FB_ReadStartLine = 1;
      pSdiCtrl->FB_ReadStopLine = 512;
   }
   else
   {
      pSdiCtrl->FB_ImgWidth = 1280;
      pSdiCtrl->FB_ImgHeight = 1024;

      pSdiCtrl->ScalerImgWidth = 1280;
      gScalerImgHeight = 1024;

      pSdiCtrl->FB_ReadStartPix = 0;
      pSdiCtrl->FB_ReadWidth = 1280;
      pSdiCtrl->FB_ReadStartLine = 1;
      pSdiCtrl->FB_ReadStopLine = 1024;
   }

   if(pGCRegs->Width != 0 && pGCRegs->Height != 0)
   {
      SDIIntf_ComputeInputWidowSize(pSdiCtrl, pGCRegs);
      pSdiCtrl->FB_ImgWidth = gInputImgWidth;
      pSdiCtrl->FB_ImgHeight = gInputImgHeight;

      pSdiCtrl->ScalerImgWidth = gInputImgWidth;
      gScalerImgHeight = gInputImgHeight;

      pSdiCtrl->FB_ReadStartPix = 0;
      pSdiCtrl->FB_ReadWidth = gInputImgWidth;
      pSdiCtrl->FB_ReadStartLine = 1;
      pSdiCtrl->FB_ReadStopLine = gInputImgHeight;
   }

   pSdiCtrl->FB_ImgSize = pSdiCtrl->FB_ImgWidth * pSdiCtrl->FB_ImgHeight;
   pSdiCtrl->ScalerImgSize = pSdiCtrl->ScalerImgWidth * gScalerImgHeight;

   pSdiCtrl->XFlip = 1;
   pSdiCtrl->YFlip = 1;

   SDIIntf_ConfigureOutput(pSdiCtrl);

   pSdiCtrl->FB_BaseAddress = XPAR_FB_MEMORY_MIG_7SERIES_0_BASEADDR + 0x10000000;
   pSdiCtrl->FB_Mode = 4;     //FBMODE_SDI_STD_c

   Cmap_init(pSdiCtrl);

   pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_RESETN_BIT;
   pSdiCtrl->FB_ConfigValid = 0;
   pSdiCtrl->DecimatorValid = 0;

   WriteStruct(pSdiCtrl);

   //xscaler init
   v_scaler_init(pSdiCtrl);

   pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESETN_BIT;
   pSdiCtrl->FB_ConfigValid = 1;
   pSdiCtrl->DecimatorValid = 1;

   //Activate the sdi interface
   AXI4L_write32( pSdiCtrl->SDI_PauseResetN , pSdiCtrl->ADD + SDI_PAUSE_RESET_N_OFFSET );
   AXI4L_write32( pSdiCtrl->FB_ConfigValid, pSdiCtrl->ADD + SDI_FB_CONFIG_VALID_OFFSET );
   AXI4L_write32( pSdiCtrl->DecimatorValid, pSdiCtrl->ADD + SDI_DECIMATOR_CONFIG_VALID_OFFSET );

   ///// Video data handler initialization
   AXI4L_write32(VIDEO_EHDRI_INDEX_DEFAULT, pSdiCtrl->ADD + AW_VIDEO_EHDRIINDEX );
   AXI4L_write32(0, pSdiCtrl->ADD + AW_VIDEO_FWPOSITION );
   AXI4L_write32(0, pSdiCtrl->ADD + AW_VIDEO_SELECTOR_ENABLE );
   AXI4L_write32(FALSE, pSdiCtrl->ADD + AW_VIDEO_FREEZE);
}

void SDIIntf_UpdateVideoDataHandler(t_SdiIntf *pSdiCtrl,  const gcRegistersData_t *pGCRegs)
{
   uint32_t video_selector = 0;
   uint32_t video_freeze;

   // Video selector
   if (pGCRegs->FWMode == FWM_SynchronouslyRotating)
   {
      video_selector |= SDI_VIDEOSELECTOR_FWPOSITION;
      AXI4L_write32(pGCRegs->VideoFWPosition, pSdiCtrl->ADD + AW_VIDEO_FWPOSITION );
   }

   if (pGCRegs->EHDRINumberOfExposures != 1)
   {
      video_selector |= SDI_VIDEOSELECTOR_EHDRI;
      AXI4L_write32(pGCRegs->VideoEHDRIExposureIndex, pSdiCtrl->ADD + AW_VIDEO_EHDRIINDEX );
   }

   // Video freeze
   if (pGCRegs->VideoFreeze || (pGCRegs->CalibrationMode == CM_Raw0) ||
         ((pGCRegs->MemoryBufferMode == MBM_On) && (pGCRegs->MemoryBufferSequenceDownloadMode != MBSDM_Off)))
      video_freeze = 1;
   else
      video_freeze = 0;

   AXI4L_write32(video_selector, pSdiCtrl->ADD + AW_VIDEO_SELECTOR_ENABLE );
   AXI4L_write32(video_freeze, pSdiCtrl->ADD + AW_VIDEO_FREEZE);
}


static void v_scaler_init(t_SdiIntf *pSdiCtrl)
{
   // Config actuelle
   XScaler_Config ScalerCfg;
   ScalerCfg.DeviceId = 0;
   ScalerCfg.HoriTapNum = 2;
   ScalerCfg.VertTapNum = 2;
   ScalerCfg.MaxPhaseNum = 4;
   ScalerCfg.CoeffSetNum = 1;
   ScalerCfg.ChromaFormat = XSCL_CHROMA_FORMAT_422;
   ScalerCfg.SeparateYcCoef = 0; // false
   ScalerCfg.SeparateHvCoef = 0; // false

   XScaler_CfgInitialize(&gScaler, &ScalerCfg, pSdiCtrl->ADD + SDIINTF_SCALEROFFSET);

   XScalerSetup(&gScaler, pSdiCtrl->ScalerImgWidth, gScalerImgHeight, gOutputImgWidth, gOutputImgHeight);
}

/*****************************************************************************/
/**
*
* This function sets up the scaler core for the feature demonstrations below.
* After the execution of this function, a set of coefficient value (containing
* 2 vertical and 2 horizontal coefficient banks) are loaded; aperture is set
* up and the scaling operation is started. This function is utilized by
* DownScale() and UpScale().
*
* @param   ScalerInstPtr is the pointer to the instance of the Scaler
*      device.
*
* @param   ScalerInWidth is the width of the input aperture.
*
* @param   ScalerInHeight is the height of the input aperture.
*
* @param   ScalerOutWidth is the width of the output aperture.
*
* @param   ScalerOutHeight is the height of the output aperture.
*
* @return   None.
*
* @note      None.
*
******************************************************************************/
static void XScalerSetup(XScaler *ScalerInstPtr,
         int ScalerInWidth, int ScalerInHeight,
         int ScalerOutWidth, int ScalerOutHeight)
{
   u8 ChromaFormat;
   u8 ChromaLumaShareCoeffBank;
   u8 HoriVertShareCoeffBank;
   XScalerAperture Aperture;
   XScalerStartFraction StartFraction;
   XScalerCoeffBank CoeffBank;

   /*
    * Disable the scaler before setup and tell the device not to pick up
    * the register updates until all are done
    */
   XScaler_Disable(ScalerInstPtr);
   XScaler_DisableRegUpdate(ScalerInstPtr);

   /*
    * Load a set of Coefficient values
    */

   /* Fetch Chroma Format and Coefficient sharing info */
   XScaler_GetCoeffBankSharingInfo(ScalerInstPtr,
               &ChromaFormat,
               &ChromaLumaShareCoeffBank,
               &HoriVertShareCoeffBank);

   CoeffBank.SetIndex = 0;
   CoeffBank.PhaseNum = ScalerInstPtr->Config.MaxPhaseNum;
   CoeffBank.TapNum = ScalerInstPtr->Config.VertTapNum;

   /* Locate coefficients for Horizontal scaling */
   CoeffBank.CoeffValueBuf = (s16 *)
      XScaler_CoefValueLookup(ScalerInWidth,
               ScalerOutWidth,
               CoeffBank.TapNum,
               CoeffBank.PhaseNum);

   /* Load coefficient bank for Horizontal Luma */
   XScaler_LoadCoeffBank(ScalerInstPtr, &CoeffBank);

   /* Horizontal Chroma bank is loaded only if chroma/luma sharing flag
    * is not set */
   if (!ChromaLumaShareCoeffBank)
      XScaler_LoadCoeffBank(ScalerInstPtr, &CoeffBank);

   /* Vertical coeff banks are loaded only if horizontal/vertical sharing
    * flag is not set
    */
   if (!HoriVertShareCoeffBank) {

      /* Locate coefficients for Vertical scaling */
      CoeffBank.CoeffValueBuf = (s16 *)
         XScaler_CoefValueLookup(ScalerInHeight,
               ScalerOutHeight,
               CoeffBank.TapNum,
               CoeffBank.PhaseNum);

      /* Load coefficient bank for Vertical Luma */
      XScaler_LoadCoeffBank(ScalerInstPtr, &CoeffBank);

      /* Vertical Chroma coeff bank is loaded only if chroma/luma
       * sharing flag is not set
       */
      if (!ChromaLumaShareCoeffBank)
         XScaler_LoadCoeffBank(ScalerInstPtr, &CoeffBank);
   }

   /*
    * Load phase-offsets into scaler
    */
   StartFraction.LumaLeftHori = 0;
   StartFraction.LumaTopVert = 0;
   StartFraction.ChromaLeftHori = 0;
   StartFraction.ChromaTopVert = 0;
   XScaler_SetStartFraction(ScalerInstPtr, &StartFraction);

   /*
    * Set up Aperture.
    */
   Aperture.InFirstLine = 0;
   Aperture.InLastLine = ScalerInHeight - 1;

   Aperture.InFirstPixel = 0;
   Aperture.InLastPixel = ScalerInWidth - 1;

   Aperture.OutVertSize = ScalerOutHeight;
   Aperture.OutHoriSize = ScalerOutWidth;

   Aperture.SrcVertSize = ScalerInHeight;
   Aperture.SrcHoriSize = ScalerInWidth;

   XScaler_SetAperture(ScalerInstPtr, &Aperture);

   /*
    * Set up phases
    */
   XScaler_SetPhaseNum(ScalerInstPtr, ScalerInstPtr->Config.MaxPhaseNum,
            ScalerInstPtr->Config.MaxPhaseNum);

   /*
    * Choose active set indexes for both vertical and horizontal directions
    */
   XScaler_SetActiveCoeffSet(ScalerInstPtr, 0,   0);

   /*
    * Enable the scaling operation
    */
   XScaler_EnableRegUpdate(ScalerInstPtr);
   XScaler_Enable(ScalerInstPtr);

   return;
}

/**
 * Start SDIIntf_ZoomSM.
 *
 * @param void
 *
 * @return void.
 */
void SDIIntf_SetSdiPauseZoomSM(void)
{
   if (gZoomCurrentState == ZOOM_IDLE)
      gZoomCurrentState = ZOOM_PAUSE;
}


/**
 * /Configure digital ZOOM according to pGCRegs values.
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_ZoomSM(t_SdiIntf *pSdiCtrl, gcRegistersData_t *pGCRegs)
{
   //static uint32_t CONSTTESTWIDTH = 1728; // doit donner un chiffre pair si division par 2, 4 ou 8

   static uint64_t tic = 0;

   switch (gZoomCurrentState)
   {
      case ZOOM_IDLE:
         break;

      case ZOOM_PAUSE:
         gZoomCurrentState = ZOOM_CONFIG;
         GETTIME(&tic);
         pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESETN_BIT;   //Pause Frame Buffer output at the end of image
         pSdiCtrl->XFlip = 0;
         WriteStruct(pSdiCtrl);
         break;

      case ZOOM_CONFIG:
         if (elapsed_time_us(tic) > ZOOM_RESET_US) //Wait for 2 frames
         {
            gZoomCurrentState = ZOOM_ENABLE;

            if (pGCRegs->VideoReverseX == 0)
               pSdiCtrl->XFlip = 0;
            else
               pSdiCtrl->XFlip = 1;

            SDIIntf_calculateZoom(pSdiCtrl, pGCRegs);

            SDIIntf_ConfigureOutput(pSdiCtrl);
            WriteStruct(pSdiCtrl);

            GC_UpdateVideoAGCImageFraction();

            XScalerSetup(&gScaler, pSdiCtrl->ScalerImgWidth, gScalerImgHeight, gOutputImgWidth, gOutputImgHeight);
         }
         break;

      case ZOOM_ENABLE:
         gZoomCurrentState = ZOOM_IDLE;
         pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESETN_BIT;
         AXI4L_write32( pSdiCtrl->SDI_PauseResetN , pSdiCtrl->ADD + SDI_PAUSE_RESET_N_OFFSET );
         break;

      default:
         break;
   }
}

/**
 * Start SDIIntf_FlipXSM.
 *
 * @param void
 *
 * @return void.
 */
void SDIIntf_SetSdiPauseFlipXSM(void)
{
   if (gFlipxCurrentState == FLIPX_IDLE)
      gFlipxCurrentState = FLIPX_PAUSE;
}

/**
 * Configure FlipX according to pcRegs values.
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_FlipXSM(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs)
{
   static uint64_t tic = 0;

   switch (gFlipxCurrentState)
   {
      case FLIPX_IDLE:
         break;

      case FLIPX_PAUSE:
         gFlipxCurrentState = FLIPX_CONFIG;
         GETTIME(&tic);
         pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESETN_BIT;   //Pause Frame Buffer output at the end of image
         pSdiCtrl->XFlip = 0;
         WriteStruct(pSdiCtrl);
         break;

      case FLIPX_CONFIG:
         if (elapsed_time_us(tic) > ZOOM_RESET_US) //Wait for 2 frames
         {
            gFlipxCurrentState = FLIPX_ENABLE;

            if (pGCRegs->VideoReverseX == 0)
               pSdiCtrl->XFlip = 0;
            else
               pSdiCtrl->XFlip = 1;

            if (pGCRegs->VideoReverseY == 0)
               pSdiCtrl->YFlip = 0;
            else
               pSdiCtrl->YFlip = 1;

            pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_RESETN_BIT;
            SDIIntf_ConfigureOutput(pSdiCtrl);      //Pour Placer le pixel au bon endroit sur le moniteur SDI
            WriteStruct(pSdiCtrl);
         }
         break;

      case FLIPX_ENABLE:
         gFlipxCurrentState = FLIPX_IDLE;
         pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESETN_BIT;
         AXI4L_write32( pSdiCtrl->SDI_PauseResetN , pSdiCtrl->ADD + SDI_PAUSE_RESET_N_OFFSET );
         break;

      default:
         break;
   }
}

/**
 * Start SDIIntf_FlipYSM.
 *
 * @param void
 *
 * @return void.
 */
void SDIIntf_SetSdiPauseFlipYSM(void)
{
   if (gFlipyCurrentState == FLIPY_IDLE)
      gFlipyCurrentState = FLIPY_PAUSE;
}

/**
 * Configure FlipY according to pcRegs values.
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_FlipYSM(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs)
{
   static uint64_t tic = 0;

   switch (gFlipyCurrentState)
   {
      case FLIPY_IDLE:
         break;

      case FLIPY_PAUSE:
         if (gFlipxCurrentState == FLIPX_IDLE)
         {
            gFlipyCurrentState = FLIPY_CONFIG;
            GETTIME(&tic);
            pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESETN_BIT;   //Pause Frame Buffer output at the end of image
            pSdiCtrl->XFlip = 0;
            WriteStruct(pSdiCtrl);
         }
         break;

      case FLIPY_CONFIG:
         if (elapsed_time_us(tic) > ZOOM_RESET_US) //Wait for 2 frames
         {
            gFlipyCurrentState = FLIPY_ENABLE;

            if (pGCRegs->VideoReverseX == 0)
               pSdiCtrl->XFlip = 0;
            else
               pSdiCtrl->XFlip = 1;

            if (pGCRegs->VideoReverseY == 0)
               pSdiCtrl->YFlip = 0;
            else
               pSdiCtrl->YFlip = 1;

            pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_RESETN_BIT;
            SDIIntf_ConfigureOutput(pSdiCtrl);       //Pour Placer le pixel au bon endroit sur le moniteur SDI
            WriteStruct(pSdiCtrl);
         }
         break;

      case FLIPY_ENABLE:
         gFlipyCurrentState = FLIPY_IDLE;
         pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESETN_BIT;
         AXI4L_write32( pSdiCtrl->SDI_PauseResetN , pSdiCtrl->ADD + SDI_PAUSE_RESET_N_OFFSET );
         break;

      default:
         break;
   }
}

/**
 * Start SDIIntf_ChangeInputWindowSM.
 *
 * @param void
 *
 * @return void.
 */
void SDIIntf_SetChangeInputWindowSM(void)
{
   if (gChangeInputWindowCurrentState == CHANGEINPUTWINDOW_IDLE)
      gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_PAUSE;
}

/**
 * Configure Input Window according to pGCRegs values.
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_ChangeInputWindowSM(t_SdiIntf *pSdiCtrl, gcRegistersData_t *pGCRegs)
{
   uint32_t imageWidth;
   uint32_t imageHeight;

   static uint64_t tic = 0;

   switch (gChangeInputWindowCurrentState)
   {
      case CHANGEINPUTWINDOW_IDLE:
         break;

      case CHANGEINPUTWINDOW_PAUSE:
         gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_CONFIG;
         GETTIME(&tic);
         pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESETN_BIT;   //Pause Frame Buffer output at the end of image
         pSdiCtrl->XFlip = 0;
         WriteStruct(pSdiCtrl);
         break;

      case CHANGEINPUTWINDOW_CONFIG:
         if (elapsed_time_us(tic) > ZOOM_RESET_US) //Wait for 2 frames
         {
            gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_ENABLE;

            pSdiCtrl->FB_ConfigValid = 0;
            pSdiCtrl->DecimatorValid = 0;
            if (pGCRegs->VideoReverseX == 0)
               pSdiCtrl->XFlip = 0;
            else
               pSdiCtrl->XFlip = 1;

            if(pGCRegs->Width != 0 && pGCRegs->Height != 0)
            {
               SDIIntf_ComputeInputWidowSize(pSdiCtrl, &gcRegsData);
               imageWidth = gInputImgWidth;
               imageHeight = gInputImgHeight;

               pSdiCtrl->FB_ImgWidth = imageWidth;
               pSdiCtrl->FB_ImgHeight = imageHeight;
               pSdiCtrl->FB_ImgSize = imageWidth * imageHeight;

               pSdiCtrl->ScalerImgWidth = imageWidth;
               gScalerImgHeight = imageHeight;
               pSdiCtrl->ScalerImgSize = pSdiCtrl->ScalerImgWidth * gScalerImgHeight;

               pSdiCtrl->FB_ReadStartPix = 0;
               pSdiCtrl->FB_ReadWidth = imageWidth;
               pSdiCtrl->FB_ReadStartLine = 1;
               pSdiCtrl->FB_ReadStopLine = imageHeight;

            }

            pGCRegs->VideoDigitalZoomFactor = 0;             //Remet le ZOOM numérique à 1 lorsque l'on change la fenetre

            SDIIntf_calculateZoom(pSdiCtrl, pGCRegs);        //calcul du ZOOM

            pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_RESETN_BIT;

            SDIIntf_ConfigureOutput(pSdiCtrl);
            WriteStruct(pSdiCtrl);

            GC_UpdateVideoAGCImageFraction();

            XScalerSetup(&gScaler, pSdiCtrl->ScalerImgWidth, gScalerImgHeight, gOutputImgWidth, gOutputImgHeight);
         }
         break;

      case CHANGEINPUTWINDOW_ENABLE:
         gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_IDLE;
         pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESETN_BIT;
         pSdiCtrl->FB_ConfigValid = 1;
         pSdiCtrl->DecimatorValid = 1;
         AXI4L_write32( pSdiCtrl->SDI_PauseResetN , pSdiCtrl->ADD + SDI_PAUSE_RESET_N_OFFSET );
         AXI4L_write32( pSdiCtrl->FB_ConfigValid, pSdiCtrl->ADD + SDI_FB_CONFIG_VALID_OFFSET );
         AXI4L_write32( pSdiCtrl->DecimatorValid, pSdiCtrl->ADD + SDI_DECIMATOR_CONFIG_VALID_OFFSET );
         break;

      default:
         break;
   }
}

/**
 * Calculate numeric Zoom factor.
 * Caclulate possible zoom factor according to input image size and select between this factor or the user requested zoom
 * Calculate video scaler input image size and frame buffer image size (read side)
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_calculateZoom(t_SdiIntf *pSdiCtrl, gcRegistersData_t *pGCRegs)
{
   uint32_t currentZoomFactor = ZOOM_x1;
   uint32_t possibleZoom;
   uint32_t imageWidth;
   uint32_t imageHeight;;

   SDIIntf_ComputeInputWidowSize(pSdiCtrl, &gcRegsData);
   imageWidth = gInputImgWidth;
   imageHeight = gInputImgHeight;

   if (pSdiCtrl->SDI_720pN_1080p == SDI_720p)
   {
      if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 32) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 32)))
         possibleZoom = ZOOM_x32;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 16) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 16)))
         possibleZoom = ZOOM_x16;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 8) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 8)))
         possibleZoom = ZOOM_x8;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 4) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 4)))
         possibleZoom = ZOOM_x4;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 2) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 2)))
         possibleZoom = ZOOM_x2;
      else
         possibleZoom = ZOOM_x1;
   }
   else
   {
      if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 32) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 32)))
         possibleZoom = ZOOM_x32;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 16) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 16)))
         possibleZoom = ZOOM_x16;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 8) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 8)))
         possibleZoom = ZOOM_x8;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 4) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 4)))
         possibleZoom = ZOOM_x4;
      else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 2) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 2)))
         possibleZoom = ZOOM_x2;
      else
         possibleZoom = ZOOM_x1;
   }

   pGCRegs->VideoDigitalZoomFactorMax = possibleZoom;

   switch (pGCRegs->VideoDigitalZoomFactor)
   {
      case VDZF_x1:
         currentZoomFactor = ZOOM_x1;
         break;

      case VDZF_x2:
         if (possibleZoom > ZOOM_x2)
            currentZoomFactor = ZOOM_x2;
         else if (possibleZoom < ZOOM_x2)
            currentZoomFactor = possibleZoom;
         else
            currentZoomFactor = ZOOM_x2;
         break;

      case VDZF_x4:
         if (possibleZoom > ZOOM_x4)
            currentZoomFactor = ZOOM_x4;
         else if (possibleZoom < ZOOM_x4)
            currentZoomFactor = possibleZoom;
         else
            currentZoomFactor = ZOOM_x4;
         break;

      case VDZF_x8:
         if (possibleZoom > ZOOM_x8)
            currentZoomFactor = ZOOM_x8;
         else if (possibleZoom < ZOOM_x8)
            currentZoomFactor = possibleZoom;
         else
            currentZoomFactor = ZOOM_x8;
         break;

      case VDZF_x16:
         if (possibleZoom > ZOOM_x16)
            currentZoomFactor = ZOOM_x16;
         else if (possibleZoom < ZOOM_x16)
            currentZoomFactor = possibleZoom;
         else
            currentZoomFactor = ZOOM_x16;
         break;

      case VDZF_x32:
         if (possibleZoom > ZOOM_x32)
            currentZoomFactor = ZOOM_x32;
         else if (possibleZoom < ZOOM_x32)
            currentZoomFactor = possibleZoom;
         else
            currentZoomFactor = ZOOM_x32;
         break;
   }

   if (currentZoomFactor == 1)
   {
      pSdiCtrl->ScalerImgWidth = imageWidth;
      gScalerImgHeight = imageHeight;
      pSdiCtrl->ScalerImgSize = pSdiCtrl->ScalerImgWidth * gScalerImgHeight;

      pSdiCtrl->FB_ReadStartPix = 0;
      pSdiCtrl->FB_ReadWidth = imageWidth;
      pSdiCtrl->FB_ReadStartLine = 1;
      pSdiCtrl->FB_ReadStopLine = imageHeight;
   }
   else
   {
      pSdiCtrl->ScalerImgWidth =  imageWidth / currentZoomFactor;
      if (pSdiCtrl->ScalerImgWidth % 2)//width impair, doit etre pair (YCb YCr)
         pSdiCtrl->ScalerImgWidth = pSdiCtrl->ScalerImgWidth + 1;
      else
         pSdiCtrl->ScalerImgWidth = pSdiCtrl->ScalerImgWidth;

      gScalerImgHeight = imageHeight / currentZoomFactor;
      pSdiCtrl->ScalerImgSize = pSdiCtrl->ScalerImgWidth * gScalerImgHeight;

      pSdiCtrl->FB_ReadStartPix = ((imageWidth / 2) - ((imageWidth / currentZoomFactor) / 2) - 1);
      if (pSdiCtrl->FB_ReadStartPix % 2) //start pixel impair, ok
         pSdiCtrl->FB_ReadStartPix = pSdiCtrl->FB_ReadStartPix;
      else   //start pixel pair, doit toujours partir d'un pixel impair, le suivant est le bon
         pSdiCtrl->FB_ReadStartPix = pSdiCtrl->FB_ReadStartPix + 1;

      pSdiCtrl->FB_ReadWidth = pSdiCtrl->ScalerImgWidth;

      if (gScalerImgHeight % 2) //hauteur impair, calcul different pour la hauteur
      {
         pSdiCtrl->FB_ReadStartLine = ((imageHeight / 2) - ((imageHeight / currentZoomFactor) / 2) + 1);
         pSdiCtrl->FB_ReadStopLine = ((imageHeight / 2) + ((imageHeight / currentZoomFactor) / 2) + 1);
      }
      else
      {
         pSdiCtrl->FB_ReadStartLine = ((imageHeight / 2) - ((imageHeight / currentZoomFactor) / 2) + 1);
         pSdiCtrl->FB_ReadStopLine = ((imageHeight / 2) + ((imageHeight / currentZoomFactor) / 2));
      }
   }
}

void SDIIntf_ConfigureOutput(t_SdiIntf *pSdiIntf)
{
   uint16_t MaxWidth;
   uint16_t MaxHeight;

   uint16_t offsetX;
   uint16_t offsetY;

   if (pSdiIntf->SDI_720pN_1080p == SDI_720p)
   {
       MaxWidth = 1270;         //720p
       MaxHeight = 720;
       offsetX  = 0;
       offsetY  = 0;
       if (gScalerImgHeight < 64)
       {
          MaxWidth = 640;         //720p
          MaxHeight = 360;
          offsetX  = (1280 - MaxWidth) / 2;
          offsetY  = (720 - MaxHeight) / 2;
       }
   }
   else
   {
       MaxWidth = 1910;         //1080p
       MaxHeight = 1080;
       offsetX  = 0;
       offsetY  = 0;
       if (gScalerImgHeight < 128)
       {
          MaxWidth = 960;         //1080p
          MaxHeight = 540;
          offsetX  = (1920 - MaxWidth) / 2;
          offsetY  = (1080 - MaxHeight) / 2;
       }
   }

   float ScaleValueWidth = ((float)MaxWidth) / ((float)pSdiIntf->ScalerImgWidth);
   float ScaleValueHeight = ((float)MaxHeight) / ((float)gScalerImgHeight);

   if (ScaleValueWidth < ScaleValueHeight)
   {
      gOutputImgWidth = ScaleValueWidth * pSdiIntf->ScalerImgWidth;
      gOutputImgHeight = ScaleValueWidth * gScalerImgHeight;
   }
   else
   {
      gOutputImgWidth = ScaleValueHeight * pSdiIntf->ScalerImgWidth;
      gOutputImgHeight = ScaleValueHeight * gScalerImgHeight;
   }

   if (gOutputImgHeight < 31)
      gOutputImgHeight = 31;

   if (pSdiIntf->SDI_720pN_1080p == SDI_720p)
      pSdiIntf->VerticalImgStart = ((MaxHeight - gOutputImgHeight) / 2) + 26 + offsetY;      //SMPTE 296M Standard, first active video line is always 26 (720p)
   else
      pSdiIntf->VerticalImgStart = ((MaxHeight - gOutputImgHeight) / 2) + 42 + offsetY;      //SMPTE 274M Standard, first active video line is always 42 (1080p)

   pSdiIntf->VerticalImgStop = pSdiIntf->VerticalImgStart + gOutputImgHeight - 1;

   pSdiIntf->HorizontalImgStart = ((MaxWidth - gOutputImgWidth) / 2) + 1;
   pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStart + gOutputImgWidth - 1;

   if (pSdiIntf->XFlip == 0)                  //Le premier pixel doit commencer à un emplacement impair si reverseX = 0 (Ycbcr est envoyé par la color map)
   {
      if (pSdiIntf->HorizontalImgStart % 2) //Impair
      {
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 4 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 4 + offsetX;
      }
      else
      {
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 3 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 3 + offsetX;
      }
   }
   else                              //Le premier pixel doit commencer à un emplacement pair si reverseX = 1 (Ycrcb est envoyé par la color map)
   {
      if (pSdiIntf->HorizontalImgStop % 2)  //Impair
      {
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 3 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 3 + offsetX;
      }
      else
      {
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 4 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 4 + offsetX;
      }
   }

   pSdiIntf->OutputImgSize = gOutputImgWidth * gOutputImgHeight;
}

/**
 * Select output video format, 720p or 1080p.
 * Select output video format, 720p or 1080p. Detector under 1280x1024 will select 720p video output.
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_UpdateVideoOutput(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs)
{
   if (pGCRegs->WidthMax == 0 || pGCRegs->HeightMax == 0)
      return;

   if (pGCRegs->WidthMax >= 1280 && pGCRegs->HeightMax >= 1024)
      pSdiCtrl->SDI_720pN_1080p = SDI_1080p;         //Select SDI output mode
   else
      pSdiCtrl->SDI_720pN_1080p = SDI_720p;         //Select SDI output mode

   AXI4L_write32(pSdiCtrl->SDI_720pN_1080p, pSdiCtrl->ADD + SDI_720PN_1080P_OFFSET);
}

/**
 * Compute input video size
 * Over a certain threshold (nb pixels) a decimator is activated to limit
 * the frame buffer throughput with the DDR.
 * The decimator can discard one out of two line and/or one out of two column
 *
 * @param pGCRegs Pointer to the Genicam registers.
 * @param pSdiCtrl Pointer to the SDI controller instance.
 *
 * @return void.
 */
void SDIIntf_ComputeInputWidowSize(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs)
{
   pSdiCtrl->DecimatorInputWidth = pGCRegs->Width;
   gInputImgWidth  = pSdiCtrl->DecimatorInputWidth;
   gInputImgHeight = pGCRegs->Height;
   pSdiCtrl->DecimatorEnable &= DECIMATOR_DESACTIVATED_MASK;

   if(pGCRegs->Width*pGCRegs->Height > (uint32_t)DECIMATOR_THRESHOLD &&
      pGCRegs->Height > 2*DECIMATOR_INPUT_HEIGHT_MIN &&
      pGCRegs->Width > 2*DECIMATOR_INPUT_WIDTH_MIN)
   {
      gInputImgHeight  = pGCRegs->Height >> 1;  //decimate one out of two rows
      gInputImgWidth  = pGCRegs->Width >> 1;  //decimate one out of two columns
      pSdiCtrl->DecimatorEnable |= (uint32_t)DECIMATOR_ACTIVATED_MASK;
   }
}
