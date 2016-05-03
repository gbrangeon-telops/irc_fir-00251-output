#include "sdi_intf.h"
#include <string.h>
#include "xil_assert.h"
#include "xscaler.h"
#include "tpg.h"
#include "utils.h"
#include "GC_Registers.h"
#include "mb_axi4l_bridge.h"
#include "colormap.h"
#include "xscaler.h"

// Used for vscaler configuration
XScaler Scaler;
XScalerAperture Aperture;      /* Aperture setting */
XScalerStartFraction StartFraction;   /* Luma/Chroma Start Fraction setting*/
XScalerCoeffBank CoeffBank;      /* Coefficient bank */

/**
 * GenICam manager state data type.
 */
typedef enum SDIIntf_ZoomState SDIIntf_ZoomState_t;
typedef enum SDIIntf_FlipXState SDIIntf_FlipXState_t;
typedef enum SDIIntf_FlipYState SDIIntf_FlipYState_t;
typedef enum SDIIntf_ChangeInputWindow SDIIntf_ChangeInputWindow_t;

// les differents modes d'operation du controleur
SDIIntf_ZoomState_t gZoomCurrentState = ZOOM_IDLE;
SDIIntf_FlipXState_t gFlipxCurrentState = FLIPX_IDLE;
SDIIntf_FlipYState_t gFlipyCurrentState = FLIPY_IDLE;
SDIIntf_ChangeInputWindow_t gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_IDLE;

void SDIIntf_calculateZoom(t_SdiIntf *pSdiCtrl, gcRegistersData_t *pGCRegs);
//void XScalerIntCallBack(void *CallBackRef, u32 EventMask);

void SDIIntf_ConfigureTestPattern(t_SdiIntf * pSdiIntf)
{
   TPG_WriteReg(pSdiIntf->ADD + SDIINTF_TPGOFFSET, TPG_CONTROL, 0);
   TPG_WriteReg(pSdiIntf->ADD + SDIINTF_TPGOFFSET, TPG_ACTIVE_SIZE, (pSdiIntf->InputImgHeight << 16) | pSdiIntf->InputImgWidth);
   TPG_WriteReg(pSdiIntf->ADD + SDIINTF_TPGOFFSET, TPG_PATTERN_CONTROL, 0xB);
   TPG_WriteReg(pSdiIntf->ADD + SDIINTF_TPGOFFSET, TPG_MOTION_SPEED, 9);

   TPG_RegUpdateEnable(pSdiIntf->ADD + SDIINTF_TPGOFFSET);
}

void SDIIntf_ConfigureOutput(t_SdiIntf * pSdiIntf)
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
       if (pSdiIntf->ScalerImgHeight < 64)
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
       if (pSdiIntf->ScalerImgHeight < 128)
       {
          MaxWidth = 960;         //1080p
          MaxHeight = 540;
          offsetX  = (1920 - MaxWidth) / 2;
          offsetY  = (1080 - MaxHeight) / 2;
       }
   }

   float ScaleValueWidth = ((float) MaxWidth) / ((float) pSdiIntf->ScalerImgWidth);
   float ScaleValueHeight = ((float) MaxHeight) / ((float) pSdiIntf->ScalerImgHeight);

   if (ScaleValueWidth < ScaleValueHeight) {
      pSdiIntf->OutputImgWidth = ScaleValueWidth * pSdiIntf->ScalerImgWidth;
      pSdiIntf->OutputImgHeight = ScaleValueWidth * pSdiIntf->ScalerImgHeight;
   } else {
      pSdiIntf->OutputImgWidth = ScaleValueHeight * pSdiIntf->ScalerImgWidth;
      pSdiIntf->OutputImgHeight = ScaleValueHeight * pSdiIntf->ScalerImgHeight;
   }

   if (pSdiIntf->OutputImgHeight < 31)
      pSdiIntf->OutputImgHeight = 31;

   if (pSdiIntf->SDI_720pN_1080p == SDI_720p)
      pSdiIntf->VerticalImgStart = ((MaxHeight - pSdiIntf->OutputImgHeight) / 2) + 26 + offsetY;      //SMPTE 296M Standard, first active video line is always 26 (720p)
   else
      pSdiIntf->VerticalImgStart = ((MaxHeight - pSdiIntf->OutputImgHeight) / 2) + 42 + offsetY;      //SMPTE 274M Standard, first active video line is always 42 (1080p)

   pSdiIntf->VerticalImgStop = pSdiIntf->VerticalImgStart + pSdiIntf->OutputImgHeight - 1;

   pSdiIntf->HorizontalImgStart = ((MaxWidth - pSdiIntf->OutputImgWidth) / 2) + 1;
   pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStart + pSdiIntf->OutputImgWidth - 1;

   if (pSdiIntf->XFlip == 0){                  //Le premier pixel doit commencer à un emplacement impair si reverseX = 0 (Ycbcr est envoyé par la color map)
      if (pSdiIntf->HorizontalImgStart % 2){ //Impair
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 4 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 4 + offsetX;
      } else {
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 3 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 3 + offsetX;
      }
   }else{                              //Le premier pixel doit commencer à un emplacement pair si reverseX = 1 (Ycrcb est envoyé par la color map)
      if (pSdiIntf->HorizontalImgStop % 2){  //Impair
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 3 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 3 + offsetX;
      } else {
         pSdiIntf->HorizontalImgStart = pSdiIntf->HorizontalImgStart + 4 + offsetX;
         pSdiIntf->HorizontalImgStop = pSdiIntf->HorizontalImgStop + 4 + offsetX;
      }
   }

   pSdiIntf->OutputImgSize = pSdiIntf->OutputImgWidth * pSdiIntf->OutputImgHeight;

}

void SDIIntf_Init(t_SdiIntf *pSdiCtrl,  const gcRegistersData_t *pGCRegs)
{
      pSdiCtrl->SDI_720pN_1080p = SDI_720p;         //Select SDI output mode

      AXI4L_write32( pSdiCtrl->SDI_720pN_1080p, pSdiCtrl->ADD + SDI_720pN_1080P );

      if (pSdiCtrl->SDI_720pN_1080p == SDI_720p)
      {
         pSdiCtrl->InputImgWidth = 640;
         pSdiCtrl->InputImgHeight = 512;

         pSdiCtrl-> ScalerImgWidth = 640;
         pSdiCtrl-> ScalerImgHeight = 512;

         pSdiCtrl-> FB_Start_Pixel = 0;
         pSdiCtrl-> FB_Width_Pixel = 640;
         pSdiCtrl-> FB_Start_Line = 1;
         pSdiCtrl-> FB_Stop_Line = 512;
      }
      else
      {
         pSdiCtrl->InputImgWidth = 1280;
         pSdiCtrl->InputImgHeight = 1024;

         pSdiCtrl-> ScalerImgWidth = 1280;
         pSdiCtrl-> ScalerImgHeight = 1024;

         pSdiCtrl-> FB_Start_Pixel = 0;
         pSdiCtrl-> FB_Width_Pixel = 1280;
         pSdiCtrl-> FB_Start_Line = 1;
         pSdiCtrl-> FB_Stop_Line = 1024;
      }

      if(gcRegsData.Width != 0 && gcRegsData.Height != 0)
      {
         pSdiCtrl->InputImgWidth = pGCRegs->Width;
         pSdiCtrl->InputImgHeight = pGCRegs->Height;

         pSdiCtrl-> ScalerImgWidth = pGCRegs->Width;
         pSdiCtrl-> ScalerImgHeight = pGCRegs->Height;

         pSdiCtrl-> FB_Start_Pixel = 0;
         pSdiCtrl-> FB_Width_Pixel = pGCRegs->Width;
         pSdiCtrl-> FB_Start_Line = 1;
         pSdiCtrl-> FB_Stop_Line = pGCRegs->Height;
      }

      pSdiCtrl->InputImgSize = pSdiCtrl->InputImgWidth * pSdiCtrl->InputImgHeight;
      pSdiCtrl-> ScalerImgSize = pSdiCtrl->ScalerImgWidth * pSdiCtrl->ScalerImgHeight;

      SDIIntf_ConfigureOutput(pSdiCtrl);

      pSdiCtrl->NbFrameValid = 1;

      pSdiCtrl->XFlip = 1;
      pSdiCtrl->YFlip = 1;

      pSdiCtrl->FBBaseAddress = 0x90000000;
      pSdiCtrl->FBMode = 4;
      pSdiCtrl->FBHeaderSize = 2;
      pSdiCtrl->PatternSelector = 0;

      Cmap_init(pSdiCtrl);

      pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_RESET_BIT;
      pSdiCtrl->ConfigValid = 0;

      WriteStruct(pSdiCtrl);

      //xscaler init
      v_scaler_init(pSdiCtrl);

      pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESET_BIT;
      pSdiCtrl->ConfigValid = 1;

      //Activate the sdi interface
      AXI4L_write32( pSdiCtrl->SDI_PauseResetN , pSdiCtrl->ADD + SDI_RESET_N_OFFSET );
      AXI4L_write32( pSdiCtrl->ConfigValid, pSdiCtrl->ADD + SDI_CONFIG_VALID_OFFSET );

}

/**
 * Start SDIIntf_ChangeInputWindowSM.
 * This function is called when a new width or height is selected in GCRegs
 *
 * @param void
 *
 * @return void.
 */
void SDIIntf_SendConfigGC(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs)
{
   SDIIntf_SetChangeInputWindowSM();
}

void SDIIntf_SendZoomConfigGC(t_SdiIntf *pSdiCtrl, const gcRegistersData_t *pGCRegs)
{
   // Reset the Pixel flow
}

void  v_scaler_init(t_SdiIntf *pSdiCtrl)
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

   XScaler_CfgInitialize(&Scaler, &ScalerCfg, (pSdiCtrl->ADD + SDIINTF_SCALEROFFSET));

   XScalerSetup(&Scaler, pSdiCtrl->ScalerImgWidth, pSdiCtrl->ScalerImgHeight, pSdiCtrl->OutputImgWidth, pSdiCtrl->OutputImgHeight);
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
void XScalerSetup(XScaler *ScalerInstPtr,
         int ScalerInWidth, int ScalerInHeight,
         int ScalerOutWidth, int ScalerOutHeight)
{
   // RELEASE WITHOUT SCALER
    //int i;
   u8 ChromaFormat;
   u8 ChromaLumaShareCoeffBank;
   u8 HoriVertShareCoeffBank;

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
         {
         gZoomCurrentState = ZOOM_PAUSE;
         }
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
            pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESET_BIT;   //Pause Frame Buffer output at the end of image
            pSdiCtrl->XFlip = 0;
            WriteStruct(pSdiCtrl);
            break;

         case ZOOM_CONFIG:
         if (elapsed_time_us(tic) > ZOOM_RESET_US) //Wait for 2 frames
            {
               gZoomCurrentState = ZOOM_ENABLE;
              // Configure Output Frame
                 pSdiCtrl->NbFrameValid = 1;

               if (pGCRegs->VideoReverseX == 0)
                  pSdiCtrl->XFlip = 0;
               else
                  pSdiCtrl->XFlip = 1;

               SDIIntf_calculateZoom(pSdiCtrl, pGCRegs);

               SDIIntf_ConfigureOutput(pSdiCtrl);
               WriteStruct(pSdiCtrl);

               GC_UpdateVideoAGCImageFraction();

               XScalerSetup(&Scaler, pSdiCtrl->ScalerImgWidth, pSdiCtrl->ScalerImgHeight, pSdiCtrl->OutputImgWidth, pSdiCtrl->OutputImgHeight);
            }
         break;


         case ZOOM_ENABLE:
            gZoomCurrentState = ZOOM_IDLE;
            pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESET_BIT;
            WriteStruct(pSdiCtrl);
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
         {
         gFlipxCurrentState = FLIPX_PAUSE;
         }
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
            pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESET_BIT;   //Pause Frame Buffer output at the end of image
            pSdiCtrl->XFlip = 0;
            WriteStruct(pSdiCtrl);
            break;

         case FLIPX_CONFIG:
         if (elapsed_time_us(tic) > ZOOM_RESET_US) //Wait for 2 frames
            {
                  gFlipxCurrentState = FLIPX_ENABLE;

                 pSdiCtrl->PatternSelector = 0;
                 if (pGCRegs->VideoReverseX == 0)
                  pSdiCtrl->XFlip = 0;
               else
                  pSdiCtrl->XFlip = 1;

                 if (pGCRegs->VideoReverseY == 0)
                  pSdiCtrl->YFlip = 0;
               else
                  pSdiCtrl->YFlip = 1;

                 pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_RESET_BIT;
                 SDIIntf_ConfigureOutput(pSdiCtrl);      //Pour Placer le pixel au bon endroit sur le moniteur SDI
                 WriteStruct(pSdiCtrl);
            }
         break;

         case FLIPX_ENABLE:
            gFlipxCurrentState = FLIPX_IDLE;
            pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESET_BIT;
            WriteStruct(pSdiCtrl);
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
         {
         gFlipyCurrentState = FLIPY_PAUSE;
         }
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
               pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESET_BIT;   //Pause Frame Buffer output at the end of image
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

                 pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_RESET_BIT;
                 SDIIntf_ConfigureOutput(pSdiCtrl);       //Pour Placer le pixel au bon endroit sur le moniteur SDI
                 WriteStruct(pSdiCtrl);
            }
         break;

         case FLIPY_ENABLE:
            gFlipyCurrentState = FLIPY_IDLE;
            pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESET_BIT;
            WriteStruct(pSdiCtrl);
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
         {
            gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_PAUSE;
         }
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
            pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_NORESET_BIT;   //Pause Frame Buffer output at the end of image
            pSdiCtrl->XFlip = 0;
            WriteStruct(pSdiCtrl);
            break;

         case CHANGEINPUTWINDOW_CONFIG:
         if (elapsed_time_us(tic) > ZOOM_RESET_US) //Wait for 2 frames
            {
            gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_ENABLE;
              // Configure Output Frame
                 pSdiCtrl->NbFrameValid = 1;
                 pSdiCtrl->ConfigValid = 0;

                 if (pGCRegs->VideoReverseX == 0)
                  pSdiCtrl->XFlip = 0;
               else
                  pSdiCtrl->XFlip = 1;

                 if(gcRegsData.Width != 0 && gcRegsData.Height != 0)
                 {
                  imageWidth = pGCRegs->Width;
                  imageHeight = pGCRegs->Height;

                  pSdiCtrl->InputImgWidth = imageWidth;
                  pSdiCtrl->InputImgHeight = imageHeight;
                  pSdiCtrl->InputImgSize = imageWidth * imageHeight;

                  pSdiCtrl-> ScalerImgWidth = imageWidth;
                  pSdiCtrl-> ScalerImgHeight = imageHeight;
                  pSdiCtrl-> ScalerImgSize = pSdiCtrl->ScalerImgWidth * pSdiCtrl->ScalerImgHeight;

                  pSdiCtrl-> FB_Start_Pixel = 0;
                  pSdiCtrl-> FB_Width_Pixel = imageWidth;
                  pSdiCtrl-> FB_Start_Line = 1;
                  pSdiCtrl-> FB_Stop_Line = imageHeight;

                 }

                 pGCRegs->VideoDigitalZoomFactor = 0;             //Remet le ZOOM numérique à 1 lorsque l'on change la fenetre

                 SDIIntf_calculateZoom(pSdiCtrl, pGCRegs);        //calcul du ZOOM

                 pSdiCtrl->SDI_PauseResetN = SDI_PAUSE_RESET_BIT;

                 SDIIntf_ConfigureOutput(pSdiCtrl);
                 WriteStruct(pSdiCtrl);

                 GC_UpdateVideoAGCImageFraction();

                 XScalerSetup(&Scaler, pSdiCtrl->ScalerImgWidth, pSdiCtrl->ScalerImgHeight, pSdiCtrl->OutputImgWidth, pSdiCtrl->OutputImgHeight);
            }
         break;


         case CHANGEINPUTWINDOW_ENABLE:
            gChangeInputWindowCurrentState = CHANGEINPUTWINDOW_IDLE;
            pSdiCtrl->SDI_PauseResetN = SDI_NOPAUSE_NORESET_BIT;
            pSdiCtrl->ConfigValid = 1;
            WriteStruct(pSdiCtrl);
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

   uint32_t imageWidth = pGCRegs->Width;
   uint32_t imageHeight = pGCRegs->Height;

   if (pSdiCtrl->SDI_720pN_1080p == SDI_720p)
   {
       if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 32) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 32))){
          possibleZoom = ZOOM_x32;
       }
       else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 16) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 16))){
          possibleZoom = ZOOM_x16;
       }else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 8) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 8))){
          possibleZoom = ZOOM_x8;
       }else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 4) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 4))){
          possibleZoom = ZOOM_x4;
       }else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH720P * 2) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT720P * 2))){
          possibleZoom = ZOOM_x2;
       }else{
          possibleZoom = ZOOM_x1;
       }
   }
   else
   {
      if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 32) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 32))){
          possibleZoom = ZOOM_x32;
       }
       else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 16) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 16))){
          possibleZoom = ZOOM_x16;
       }else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 8) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 8))){
          possibleZoom = ZOOM_x8;
       }else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 4) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 4))){
          possibleZoom = ZOOM_x4;
       }else if ((imageWidth)  >=  (DIGITALZOOMMINWIDTH1080P * 2) && (imageHeight  >=  (DIGITALZOOMMINHEIGHT1080P * 2))){
          possibleZoom = ZOOM_x2;
       }else{
          possibleZoom = ZOOM_x1;
       }
   }

   pGCRegs->VideoDigitalZoomFactorMax = possibleZoom;

    switch(pGCRegs->VideoDigitalZoomFactor){
    case VDZF_x1:
       currentZoomFactor = ZOOM_x1;
       break;

    case VDZF_x2:
       if(possibleZoom > ZOOM_x2)
          currentZoomFactor = ZOOM_x2;
      else if(possibleZoom < ZOOM_x2)
         currentZoomFactor = possibleZoom;
      else
         currentZoomFactor = ZOOM_x2;
       break;

    case VDZF_x4:
       if(possibleZoom > ZOOM_x4)
          currentZoomFactor = ZOOM_x4;
      else if(possibleZoom < ZOOM_x4)
         currentZoomFactor = possibleZoom;
      else
         currentZoomFactor = ZOOM_x4;
       break;

    case VDZF_x8:
       if(possibleZoom > ZOOM_x8)
          currentZoomFactor = ZOOM_x8;
      else if(possibleZoom < ZOOM_x8)
         currentZoomFactor = possibleZoom;
      else
         currentZoomFactor = ZOOM_x8;
       break;

    case VDZF_x16:
       if(possibleZoom > ZOOM_x16)
          currentZoomFactor = ZOOM_x16;
      else if(possibleZoom < ZOOM_x16)
         currentZoomFactor = possibleZoom;
      else
         currentZoomFactor = ZOOM_x16;
       break;

    case VDZF_x32:
       if(possibleZoom > ZOOM_x32)
          currentZoomFactor = ZOOM_x32;
      else if(possibleZoom < ZOOM_x32)
         currentZoomFactor = possibleZoom;
      else
         currentZoomFactor = ZOOM_x32;
       break;
    }

   if (currentZoomFactor == 1)
   {
      pSdiCtrl-> ScalerImgWidth = imageWidth;
      pSdiCtrl-> ScalerImgHeight = imageHeight;
      pSdiCtrl-> ScalerImgSize = pSdiCtrl->ScalerImgWidth * pSdiCtrl->ScalerImgHeight;

      pSdiCtrl-> FB_Start_Pixel = 0;
      pSdiCtrl-> FB_Width_Pixel = imageWidth;
      pSdiCtrl-> FB_Start_Line = 1;
      pSdiCtrl-> FB_Stop_Line = imageHeight;
   }
   else
   {
      pSdiCtrl-> ScalerImgWidth =  imageWidth / currentZoomFactor;
      if(pSdiCtrl-> ScalerImgWidth % 2)//width impair, doit etre pair (YCb YCr)
         pSdiCtrl-> ScalerImgWidth = pSdiCtrl-> ScalerImgWidth + 1;
      else
         pSdiCtrl-> ScalerImgWidth = pSdiCtrl-> ScalerImgWidth;

      pSdiCtrl-> ScalerImgHeight = imageHeight / currentZoomFactor;
      pSdiCtrl-> ScalerImgSize = pSdiCtrl->ScalerImgWidth * pSdiCtrl->ScalerImgHeight;

      pSdiCtrl-> FB_Start_Pixel = ((imageWidth / 2) - ((imageWidth / currentZoomFactor) / 2) - 1);
      if(pSdiCtrl-> FB_Start_Pixel % 2) //start pixel impair, ok
         pSdiCtrl-> FB_Start_Pixel = pSdiCtrl-> FB_Start_Pixel;
      else   //start pixel pair, doit toujours partir d'un pixel impair, le suivant est le bon
         pSdiCtrl-> FB_Start_Pixel = pSdiCtrl-> FB_Start_Pixel + 1;

      pSdiCtrl-> FB_Width_Pixel = pSdiCtrl-> ScalerImgWidth;

      if (pSdiCtrl-> ScalerImgHeight % 2){ //hauteur impair, calcul different pour la hauteur
         pSdiCtrl-> FB_Start_Line = ((imageHeight / 2) - ((imageHeight / currentZoomFactor) / 2) + 1);
         pSdiCtrl-> FB_Stop_Line = ((imageHeight / 2) + ((imageHeight / currentZoomFactor) / 2) + 1);
      }else{
         pSdiCtrl-> FB_Start_Line = ((imageHeight / 2) - ((imageHeight / currentZoomFactor) / 2) + 1);
         pSdiCtrl-> FB_Stop_Line = ((imageHeight / 2) + ((imageHeight / currentZoomFactor) / 2));
      }
   }
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
   if(gcRegsData.SensorWidth == 0 || gcRegsData.SensorHeight == 0){
      return;
   }

   if(gcRegsData.SensorWidth >= 1280 && gcRegsData.SensorHeight >= 1024){
     pSdiCtrl->SDI_720pN_1080p = SDI_1080p;         //Select SDI output mode
     WriteStruct(pSdiCtrl);
   }else{
     pSdiCtrl->SDI_720pN_1080p = SDI_720p;         //Select SDI output mode
     WriteStruct(pSdiCtrl);
   }
}

