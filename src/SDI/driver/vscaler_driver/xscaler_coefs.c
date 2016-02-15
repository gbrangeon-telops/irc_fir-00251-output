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
* @file xscaler_coefs.c
*
* This file contains coefficients for use in the Xilinx Video Scaler.
*
* This code defines:
* - One coefficient Bin (#1) for all up scaling operation
* - Sixteen coefficient Bins (#2 thru #17) for down scaling operations
* - 1 coefficient Bin (#18) for unity (1:1) scaling operation.
* - 1 coefficient Bin (#19) specifically targeted at 1920x1080 to 1280x720.
*
* In each Bin, 15 coefficient Taps are defined to support Tap number = 2 thru
* 16 cases. In each coefficient Tap, 17 Coefficient Phases are defined to
* support Phase = 2 thru 16 as well as 32 and 64. In each Coefficient Phase,
* this code defines (The_Number_of_Taps * The_Number_of_Phases) coefficient
* values used for the scaling operation. Note different
* coefficient bins could be chosen for horizontal and vertical directions used
* by one scaling operation.
*
* The user is responsible for adding new coefficient Bins using the same format
* if the existing ones do not meet the application needs. Please note that
* XScaler_CoeffBinOffset() in xscaler.c needs update as well upon the adding of
* the new Bins.
*
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a xd   06/15/09 First release. Coefficients are auto-generated in
*		      Matlab using
*		      /Video_Scaler/reference_model/src/CreateCoefficients.m
* 2.00a xd   12/14/09 Updated doxygen document tags
* 5.00a mpv  12/13/13 Updated to dynamic coeff generation to reduce driver size
* </pre>
*
******************************************************************************/

#include "xscaler.h"

/************************** Constant Definitions *****************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************* Data Structure Definitions ************************/

/**
* XScaler_CoefficientsBinScalingFactors contains scaling factors calculated
* using (Output_Size * 10000 / Input_Size). This table could help find
* the index of coefficient Bin given an input size and a output size.
*/
u16 XScaler_CoefficientBinScalingFactors[XSCL_NUM_COEF_BINS] = {
	20000,
	625,
	1250,
	1875,
	2500,
	3125,
	3750,
	4375,
	5000,
	5625,
	6250,
	6875,
	7500,
	8125,
	8750,
	9375,
	10000,
	10000,
	6666
};

/**
* XScaler_Coefficients table contains the coefficient values
* for scaling operations
*/
/////////// new coef generation//////////////////////
#define pi 3.14159265358979
typedef unsigned short uint16;

//struct coef_struct SingleFrameCoefs;
struct coefs_struct{
	short int** coefficients;
}SingleFrameCoefs;

//memory allocation
// FTA: fonction alloc_coefs_buff modifier pour un tableau static au lieu d'utiliser des malloc (free() ne semble pas fonctionner correctement)
int alloc_coefs_buff(struct coefs_struct* coefs, int max_taps, int max_phases)
{
  int phase;
  static short int * coef_ptr_table[16];
  static short int coef_table[16][16];

  coefs->coefficients = coef_ptr_table;
  for (phase = 0; phase <max_phases; phase++) {
	  coefs->coefficients[phase] = coef_table[phase];
  }

  return(0);
}

////sine generation
// This Sine generation algorithm implements Taylor series decomposition of the 
// Sine function according to http://en.wikipedia.org/wiki/Taylor_series#Approximation_and_convergence

float sine(float x)
{
    int n, fac=1;
    float px, taylor=0;
	float rng = ((x-pi)/pi);
	x = x - rng*pi;
	px = x;
    for (n=0;n<6;n++)
    {
        taylor +=  (px / fac);
        px *= -(x*x);
        fac *= (2*n+2)*(2*n+3);
    }
    return taylor;
}


//coef generation
float lanczos(float x, int a)
	{
		return((x<-a) ? 0 : ((x>a) ? 0 : ((x==0) ? 1.0 : ( a*sine(pi*x)*sine(pi*x/a)/(pi*pi*x*x)))));

	}

    // This coefficient generation algorithm implements the Lanczos coefficients: http://en.wikipedia.org/wiki/Lanczos_resampling
    // For a particular scaling ratio, the coefficients can be pre-canned to memory

void get_lanczos_coeffs(float p, short int icoeffs[], int NCOEFF)
	{
	  float s=0;
	  float coeff[64];
	  int   i;

	  for (i=0; i<NCOEFF; i++) s+=(coeff[i] = lanczos( i-(NCOEFF>>1)+p, (NCOEFF>>1)));    // To implement convolution using the 2D FIR kernel, coefficient order is reversed
	  for (i=0; i<NCOEFF; i++) icoeffs[i]=(int) (0.5+coeff[i]*16384/s);              // Normalize coefficients, so sum()=1 for all phases.
	}

// FTA: fonction XScaler_GenCoefTable modifier pour un tableau static au lieu d'utiliser des malloc (free() ne semble pas fonctionner correctement)
s16 *XScaler_GenCoefTable(u32 Tap, u32 Phase)
{
	//Local variables
	int    i , j;
	short int    *current_phase_ptr;
	double dy;
	static uint16 coef_table[16];

	alloc_coefs_buff(&SingleFrameCoefs, Tap, Phase);

	s16* XScaler_coef_table;
	XScaler_coef_table = (s16 *)coef_table;

	//populate the coefficient table
	for (i=0; i<Phase; i++) {
		dy=((double) i)/Phase;
		current_phase_ptr = SingleFrameCoefs.coefficients[i];
		get_lanczos_coeffs(dy,current_phase_ptr, Tap);
		for (j=0; j<Tap; j++){
			XScaler_coef_table[((i*Tap) + j)] = SingleFrameCoefs.coefficients[i][j];
		}
	}

/*s16* XScaler_coef_table;
XScaler_coef_table = calloc(Phase*Tap, sizeof(uint16));

for (i = 0; i < Phase; i++){
	for (j = 0; j < Tap; j++)
	{
		printf ("%d \n",SingleFrameCoefs.coefficients[i][j]);
		XScaler_coef_table [i*Tap + j] = (SingleFrameCoefs.coefficients[i][j]);
	}
}*/

return (XScaler_coef_table);

}
/////////////////////////////////////////////////////


