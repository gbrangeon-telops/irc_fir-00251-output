/* $Id: */
/******************************************************************************
* (c) Copyright 2009 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information
* of Xilinx, Inc. and is protected under U.S. and
* international copyright and other intellectual property
* laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any
* rights to the materials distributed herewith. Except as
* otherwise provided in a valid license issued to you by
* Xilinx, and to the maximum extent permitted by applicable
* law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
* WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
* AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
* BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
* INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
* (2) Xilinx shall not be liable (whether in contract or tort,
* including negligence, or under any other theory of
* liability) for any loss or damage of any kind or nature
* related to, arising under or in connection with these
* materials, including for any direct, or any indirect,
* special, incidental, or consequential loss or damage
* (including loss of data, profits, goodwill, or any type of
* loss or damage suffered as a result of any action brought
* by a third party) even if such damage or loss was
* reasonably foreseeable or Xilinx had been advised of the
* possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-
* safe, or for use in any application requiring fail-safe
* performance, such as life-support or safety devices or
* systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any
* other applications that could lead to death, personal
* injury, or severe property or environmental damage
* (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and
* liability of any use of Xilinx products in Critical
* Applications, subject only to applicable laws and
* regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
* PART OF THIS FILE AT ALL TIMES.
*
* All rights reserved.
*
******************************************************************************/
/**
*
* @file xscaler.h
*
* This is the main header file of the Xilinx MVI Video Scaler device driver.
* The Scaler device converts a specified rectangular area of an input digital
* video image from one original sampling grid to a desired target sampling
* grid.
*
* Video Scaler Device v3.00a features are as follows:
*
* - Target Clock Frequencies:
*	- S3ADSP(-4), S6(-2) Families: 150MHz
*	- V5(-1), V6(-1) Families: 225MHz
* - 8, 10 or 12-bit video data supported
* - YC (4:2:2), YC (4:2:0), RGB (4:4:4) chroma formats supported
* - 1080P/60 supported for 4:2:2 and 4:4:4 (RGB formats (not 4:2:0)
* - Serial or parallel options (single or multiple filter engines) available to
*   suit high or low bandwidth requirements
* - Supports spatial resolutions up to 4096x4096
* - 2-12 taps per dimension
* - Up to 16 user-loadable sets of 16-bit coefficients
* - Up to 64 phases per coefficient set
* - 16-bit intermediate bitwidth
* - Programmable (dynamic) scaling factor in both H and V dimensions
*	- Max 12x resolution change either up or down ~V allows for conversion
*	  between QCIF and 1080p
*	- 24-bit input fixed point scaling factors: 4 bits integer, 20-bit
*	  fraction
* - Independent H and V scaling factors
* - Optional coefficient sharing between Y and C filter operations (where
*   appropriate)
* - Optional coefficient sharing between H and V filter operations (where
*   appropriate)
* - Programmable (dynamic) start phase (independent H, V start-phase values),
*   range -0.99 to +0.99
* - Programmable (dynamic) subject area size
* - Programmable (dynamic) target area size
* - Coefficient set selectable during operation (eg on V-sync)
* - Coefficient range -2.0 to +1.99
* - 3 Control interface options
*	- pCore, with drivers
*	- General Purpose Processor GPP
*	- Constant
* - Coefficient preload (via .coe file) functionality for all above modes.
* - Full EDK GUI for scaler customization under XPS
* - 2 Video interface options
*	- Live video source
*	- Memory source
* - Interrupts
*
*
* For a full description of Scaler features, please see the hardware spec.
*
* An example is shipped with the driver to demonstrate how to use the APIs
* this driver provides to access and control the Video Scaler device.
*
*
* <b>Limitation</b>
*
* - Function XScaler_CalcCoeffs() only calculates coefficient values if this
*   driver is *NOT* used on Linux platform. In Linux case, the math library is
*   not available in the kernel and this function only clears the coefficient
*   buffer passed in.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver	Who  Date     Changes
* -----	---- -------- -------------------------------------------------------
* 1.00a	xd   05/14/09 First release
* 2.00a	xd   12/14/09 Updated doxygen document tags
* 3.00a	xd   07/29/10 Added device version & sharable coefficient bank support
* </pre>
*
******************************************************************************/

#ifndef XSCALER_H		/* prevent circular inclusions */
#define XSCALER_H		/* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#include "stdio.h"
#include "math.h"
#include "stdlib.h"

#include "xscaler_hw.h"
#include "xil_types.h"
#include "xstatus.h"

/************************** Constant Definitions *****************************/

/** @name Interrupt Types for setting up Callbacks
 *	@{
 */
#define XSCL_HANDLER_EVENT	1	/**< Normal Event Interrupt Type */
#define XSCL_HANDLER_ERROR	2	/**< Error Interrupt Type */
/*@}*/

/** @name Minimum and Maximum Tap Numbers
 *	@{
 */
#define XSCL_MIN_TAP_NUM	2	/**< Minimum Tap Number */
#define XSCL_MAX_TAP_NUM	12	/**< Maximum Tap Number */
/*@}*/

/** @name Minimum and Maximum Phase Numbers
 *	@{
 */
#define XSCL_MIN_PHASE_NUM	2	/**< Minimum Phase Number */
#define XSCL_MAX_PHASE_NUM	64	/**< Maximum Phase Number */

/*@}*/

/** @name Coefficient Precision
 *	@{
 */
#define XSCL_COEFF_PRECISION	16	/**< Coefficient Precision */
/*@}*/

/** @name Maximum Coefficient Set Number
 *	@{
 */
#define XSCL_MAX_COEFF_SET_NUM	16	/**< Maximum Coefficient Set Number */
/*@}*/

/** @name The number of coefficient Bins
 *	@{
 */
#define XSCL_NUM_COEF_BINS	19	/**< The number of coefficient Bins */
/*@}*/

/** @name The size of a coefficient Bin in 16-bit integers.
 *	@{
 */
#define XSCL_COEF_BIN_SIZE XScaler_CoefTapOffset(XSCL_MAX_TAP_NUM + 1)
/*@}*/

/** @name Shrink factor constants
 *	@{
 */
#define XSCL_SHRINK_FACTOR	0x100000 /**< For calculating HSF/VSF values */
/*@}*/

/**************************** Type Definitions *******************************/

/**
 * This typedef contains configuration information for a Scaler device.
 * Each Scaler device should have a configuration structure associated
 */
typedef struct {
	u16 DeviceId;	   /**< DeviceId is the unique ID  of the device */
	u32 BaseAddress;   /**< BaseAddress is the physical base address of the
			     *  device's registers */
	u16 VertTapNum;	   /**< The number of Vertical Taps */
	u16 HoriTapNum;	   /**< The number of Horizontal Taps */
	u16 MaxPhaseNum;   /**< The maximum number of Phases */
	u8 CoeffSetNum;	   /**< The number of coefficient sets implemented */
	u8 ChromaFormat;   /**< Chroma Format */
	u8 SeparateYcCoef; /**< Separate Chroma/Luma Coefficient banks */
	u8 SeparateHvCoef; /**< Separate Horizontal/Vertical Coefficient
				banks. Common only possible if num_h_taps =
				num_v_taps */

} XScaler_Config;

/**
 * Callback type for interrupts
 *
 * @param CallBackRef is a callback reference passed in by the upper layer
 *	  when setting the callback functions, and passed back to the
 *	  upper layer when the callback is invoked.
 * @param EventMask indicates which events are happening. They could be
 *	  either normal events or errors. The value is created by "OR'ing"
 *	  XSCL_IXR_* constants defined in xscaler_hw.h
 */
typedef void (*XScaler_CallBack) (void *CallBackRef, u32 EventMask);

/**
 * The XScaler driver instance data. An instance must be allocated for each
 * Scaler device in use.
 */
typedef struct {
	XScaler_Config Config;		/**< Hardware configuration */
	u32 IsReady;			/**< Device and the driver instance are
					     initialized */

	XScaler_CallBack EventCallBack;	/**< Call back for Normal Event
					     interrupt */
	void *EventRef;			/**< To be passed to the Normal Event
					     interrupt callback */

	XScaler_CallBack ErrorCallBack;	/**< Call back for Error interrupt */
	void *ErrorRef;			/**< To be passed to the Error
					     interrupt callback */

} XScaler;

/**
 * The XScalerAperture data structure for Aperture and scale factor control.
 * The scale factor values are calculated using the field in this structure
 */
typedef struct {
	u32 InFirstLine;	/**< The first line index in the input video */
	u32 InLastLine;		/**< The last line index in the input video */
	u32 InFirstPixel;	/**< The first pixel index in the input video*/
	u32 InLastPixel;	/**< The last pixel index in the input video */
	u32 OutVertSize;	/**< Vertical size of the output video */
	u32 OutHoriSize;	/**< Horizontal size of the output video */
	u32 SrcVertSize;	/**< Vertical size of the source video */
	u32 SrcHoriSize;	/**< Horizontal size of the source video */
} XScalerAperture;

/**
 * The XScalerCoeffBank data structure for loading a Bank in a Coefficient Set,
 * which contains 4 banks.
 */
typedef struct {
	u16 SetIndex;		/**< Coefficient Set Index (0 based). */
	s16 *CoeffValueBuf;	/**< Pointer to a coefficient value data buffer
				  */
	u16 PhaseNum;		/**< The number of the phases associated w/
				  *  the bank */
	u16 TapNum;		/**< The number of the Tap associated w/ the
				  *  bank */
} XScalerCoeffBank;

/**
 * The XScalerStartFraction data structure for Luma and Chroma Start Fraction
 * setting
 */
typedef struct {
	s32 LumaLeftHori;  /**< Horizontal accumulator at rectangle left edge
				for Luma */
	s32 LumaTopVert;   /**< Vertical accumulator at rectangle top edge for
				Luma */
	s32 ChromaLeftHori;/**< Horizontal accumulator at rectangle left edge
				for Chroma */
	s32 ChromaTopVert; /**< Vertical accumulator at rectangle top edge for
				Chroma */
} XScalerStartFraction;

/***************** Macros (Inline Functions) Definitions *********************/

/** @name Macros for operating a Scaler device
 *	@{
 */

/*****************************************************************************/
/**
*
* This macro enables a Scaler device.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return None.
*
* @note
* C-style signature:
*	 void XScaler_Enable(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_Enable(InstancePtr) \
	XScaler_WriteReg((InstancePtr)->Config.BaseAddress, XSCL_CTL, \
		XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_CTL) \
			| XSCL_CTL_ENABLE)


/*****************************************************************************/
/**
*
* This macro disables a Scaler device.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return None.
*
* @note
* C-style signature:
*	 void XScaler_Disable(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_Disable(InstancePtr) \
	XScaler_WriteReg((InstancePtr)->Config.BaseAddress, XSCL_CTL, \
		XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_CTL) \
			& (~XSCL_CTL_ENABLE))

/*****************************************************************************/
/**
*
* This macro checks if a Scaler device is enabled.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return TRUE if the Scaler device is enabled; FALSE otherwise.
*
* @note
* C-style signature:
*	boolean XScaler_IsEnabled(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_IsEnabled(InstancePtr) \
	((XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_CTL) & \
		XSCL_CTL_ENABLE) ? TRUE : FALSE)

/*****************************************************************************/
/**
*
* This macro checks if a Scaler operation is finished
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return TRUE if the Scaler operation is finished; FALSE otherwise.
*
* @note
* C-style signature:
* boolean XScaler_CheckDone(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_CheckDone(InstancePtr) \
	((XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_STATUS) & \
		XSCL_STSDONE_DONE) ? TRUE : FALSE)

/*****************************************************************************/
/**
*
* This macro tells a Scaler device to pick up the register value changes made
* so far.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return None.
*
* @note
* C-style signature:
*	 void XScaler_EnableRegUpdate(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_EnableRegUpdate(InstancePtr) \
	XScaler_WriteReg((InstancePtr)->Config.BaseAddress, XSCL_CTL, \
		XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_CTL) \
			| XSCL_CTL_REGUPDATE)

/*****************************************************************************/
/**
*
* This macro tells a Scaler device not to pick up the register value changes
* until XScaler_EnableRegUpdate() is invoked again. This is very useful when
* multiple registers need to be updated. All register updates could be made
* with no tight time constraints with the help of this macro.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return None.
*
* @note
* C-style signature:
*	 void XScaler_DisableRegUpdate(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_DisableRegUpdate(InstancePtr) \
	XScaler_WriteReg((InstancePtr)->Config.BaseAddress, XSCL_CTL, \
		XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_CTL) \
			& ~XSCL_CTL_REGUPDATE)

/*****************************************************************************/
/**
*
* This macro checks if a Scaler device is ready to accept the coefficients
* the software is going to load.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return TRUE if the Scaler device is ready for the coefficient load; FALSE
	  otherwise
*
* @note
* C-style signature:
* boolean XScaler_CoeffLoadReady(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_CoeffLoadReady(InstancePtr) \
	((XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_STATUS) & \
		XSCL_STS_COEF_W_RDY_MASK) ? TRUE : FALSE)

/*****************************************************************************/
/**
*
* This macro checks the error status of a Scaler device.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return The error type, if any. Use XSCL_STSERR_* defined in xscaler_hw.h
*	  to interpret the value.
*
* @note
* C-style signature:
*	  u32 XScaler_GetError(XScaler *InstancePtr);
*
******************************************************************************/
// Known Issue AR 52664: EOL_ERROR and COEF_WR_ERROR are always set, so
// getting the errors is irrelevant.
#define XScaler_GetError(InstancePtr) \
	XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_ERROR)

/*****************************************************************************/
/**
*
* This macro resets the error status of a Scaler device.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*    on.
*
* @return None.
*
* @note
* C-style signature:
*   void XScaler_ResetError(XScaler *InstancePtr);
*
******************************************************************************/
// Known Issue AR 52289: resetting error by writing to this register
// does not work.
#define XScaler_ResetError(InstancePtr) \
   XScaler_WriteReg((InstancePtr)->Config.BaseAddress, XSCL_ERROR, \
      0xFFFFFFFF)

/*****************************************************************************/
/**
*
* This macro resets a Scaler device.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return None.
*
* @note
* C-style signature:
*	 void XScaler_Reset(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_Reset(InstancePtr) \
	XScaler_WriteReg((InstancePtr)->Config.BaseAddress, XSCL_CTL, \
		XSCL_RESET_RESET_MASK)

/*****************************************************************************/
/**
*
* This macro checks if the reset on a Scaler device is done.
*
* @param  InstancePtr is a pointer to the Scaler device instance to be worked
*	  on.
*
* @return TRUE if the reset is done; FALSE otherwise.
*
* @note
* C-style signature:
* boolean XScaler_IsResetDone(XScaler *InstancePtr);
*
******************************************************************************/
#define XScaler_IsResetDone(InstancePtr) \
	((XScaler_ReadReg((InstancePtr)->Config.BaseAddress, XSCL_CTL) & \
		XSCL_RESET_RESET_MASK) ? FALSE : TRUE)

/*****************************************************************************/
/**
 * This macro calculates the N-th Triangular number: 1 + 2 + ... + N
 *
 * @param  N indicates the positive integer number to calculate the N-th
 *	   Triangular number.
 * @return The N-th triangular number.
 *
 * @note
 * C-style signature:
 *	   u32 XScaler_TriangularNumber(u32 N);
 *
 *****************************************************************************/
#define XScaler_TriangularNumber(N) ((N) * ((N) + 1) / 2)

/*****************************************************************************/
/**
 * This macro calculates the offset of a coefficient Tap from the beginning of
 * a coefficient Bin.
 *
 * @param  Tap indicates the index of the coefficient tap in the coefficient
 *		   Bin
 * @return The offset of the coefficient TAP from the beginning of a
 *		   coefficient Bin
 * @note
 * C-style signature:
 *	   u32 XScaler_CoefTapOffset(u32 Tap);
 *
 *****************************************************************************/
#define XScaler_CoefTapOffset(Tap) \
	((XScaler_TriangularNumber((Tap) - 1) - 1) * \
		(XScaler_TriangularNumber(16) - 1 + 32 + 64))

/*****************************************************************************/
/**
 * This macro calculates the offset of the first coefficient Phase from the
 * beginning of a coefficient Tap given the currently used Phase and Tap
 * numbers for scaling operation.
 *
 * @param  Tap indicates the number of Taps used for the scaling operation
 * @param  Phase indicates the number of Phases used for the scaling operation
 * @return The offset of the first coefficient Phase from the beginning of a
 *	   coefficient Tap.
 * @note
 * C-style signature:
 *	   u32 XScaler_CoefPhaseOffset(u32 Tap, u32 Phase);
 *
 *****************************************************************************/
#define XScaler_CoefPhaseOffset(Tap, Phase) \
	(((Phase) < 32) ? \
		(Tap) * (XScaler_TriangularNumber((Phase) - 1) - 1) : \
		((Phase) == 32) ? \
			(Tap) * (XScaler_TriangularNumber(16) - 1) : \
			(Tap) * (XScaler_TriangularNumber(16) - 1 + 32))


/*
 * Initialization and control functions in xscaler.c
 */

/* Initialization */
int XScaler_CfgInitialize(XScaler *InstancePtr, XScaler_Config *CfgPtr,
				u32 EffectiveAddr);

/* Aperture & Scale */
int  XScaler_SetAperture(XScaler *InstancePtr, XScalerAperture *AperturePtr);
void XScaler_GetAperture(XScaler *InstancePtr, XScalerAperture *AperturePtr);

/* Phase */
void XScaler_SetPhaseNum(XScaler *InstancePtr, u16 VertPhaseNum,
				u16 HoriPhaseNum);
void XScaler_GetPhaseNum(XScaler *InstancePtr, u16 *VertPhaseNumPtr,
				u16 *HoriPhaseNumPtr);

/* Start Fractional value setting */
void XScaler_SetStartFraction(XScaler *InstancePtr,
				  XScalerStartFraction *StartFractionPtr);
void XScaler_GetStartFraction(XScaler *InstancePtr,
				  XScalerStartFraction *StartFractionPtr);

/* Coefficient functions */
s16 *XScaler_CoefValueLookup(u32 InSize, u32 OutSize, u32 Tap, u32 Phase);
void XScaler_LoadCoeffBank(XScaler *InstancePtr,
				XScalerCoeffBank *CoeffBankPtr);
void XScaler_SetActiveCoeffSet(XScaler *InstancePtr,
				   u8 VertSetIndex,
				   u8 HoriSetIndex);
void XScaler_GetActiveCoeffSet(XScaler *InstancePtr,
				   u8 *VertSetIndexPtr,
				   u8 *HoriSetIndexPtr);
void XScaler_GetCoeffBankSharingInfo(XScaler *InstancePtr,
					u8 *ChromaFormat,
					u8 *ChromaLumaShareCoeff,
					u8 *HoriVertShareCoeff);

/*
 * Initialization functions in xscaler_sinit.c
 */
XScaler_Config *XScaler_LookupConfig(u16 DeviceId);

/*
 * Interrupt related functions in xscaler_intr.c
 */
void XScaler_IntrHandler(void *InstancePtr);
int XScaler_SetCallBack(XScaler *InstancePtr, u32 IntrType,
				void *CallBackFunc, void *CallBackRef);

#ifdef __cplusplus
}
#endif

#endif /* end of protection macro */
