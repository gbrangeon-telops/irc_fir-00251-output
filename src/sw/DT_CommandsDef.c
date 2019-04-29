/**
 * @file DT_CommandsDef.c
 *  Debug terminal commands implementation.
 *  
 *  This file implements the debug terminal commands.
 * 
 * $Rev$
 * $Author$
 * $Date$
 * $Id$
 * $URL$
 *
 * (c) Copyright 2014 Telops Inc.
 */

#include "OutputStartupTests.h"
#include "DebugTerminal.h"
#include "CircularByteBuffer.h"
#include "IRC_Status.h"
#include "clink_ctrl.h"
#include "frame_buffer.h"
#include "pleora_intf.h"
#include "sdi_intf.h"
#include <string.h>
#include <stdbool.h>

static IRC_Status_t DebugTerminalParseHLP(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseTOB(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseVRB(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseCLINK(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseGIGE(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseSDI(circByteBuffer_t *cbuf);


debugTerminalCommand_t gDebugTerminalCommands[] =
{
   {"RDM", DebugTerminalParseRDM},
   {"WRM", DebugTerminalParseWRM},
   {"NET", DebugTerminalParseNET},
   {"STACK", DebugTerminalParseSTACK},
   {"TOB", DebugTerminalParseTOB},
   {"VRB", DebugTerminalParseVRB},
   {"CI", DebugTerminalParseCI},
   {"CLINK", DebugTerminalParseCLINK},
   {"GIGE", DebugTerminalParseGIGE},
   {"SDI", DebugTerminalParseSDI},
   {"HLP", DebugTerminalParseHLP}
};

uint32_t gDebugTerminalCommandsCount = NUM_OF(gDebugTerminalCommands);

extern ctrlIntf_t gCtrlIntf_ProcFPGA;
extern ctrlIntf_t gCtrlIntf_StorageFPGA;

debugTerminalCtrlIntf_t gDebugTerminalCtrlIntfs[] =
{
   {"PROC", &gCtrlIntf_ProcFPGA},
   {"STORAGE", &gCtrlIntf_StorageFPGA}
};

uint32_t gDebugTerminalCtrlIntfsCount = NUM_OF(gDebugTerminalCtrlIntfs);

/**
 * Debug terminal Help command parser parser.
 * This parser is used to print debug terminal help.
 *
 * @return IRC_SUCCESS always.
 */
IRC_Status_t DebugTerminalParseHLP(circByteBuffer_t *cbuf)
{
   // There is supposed to be no remaining bytes in the buffer
   if (!DebugTerminal_CommandIsEmpty(cbuf))
   {
      DT_ERR("Unsupported command arguments");
      return IRC_FAILURE;
   }

   DT_PRINTF("Output FPGA debug terminal commands:");
   DT_PRINTF("  Read memory:        RDM address [c|u8|u16|u32|s8|s16|s32 length]");
   DT_PRINTF("  Write memory:       WRM address value");
   DT_PRINTF("  Network status:     NET [0|1 [port]]");
   DT_PRINTF("  Get Stack Level:    STACK");
   DT_PRINTF("  Test Output Buffer: TOB");
   DT_PRINTF("  Set verbose:        VRB 0|1");
   DT_PRINTF("  Ctrl Intf status:   CI [SB|LB PROC|STORAGE 0|1]");
   DT_PRINTF("  Get CLINK status:   CLINK [LVALPAUSE|FVALPAUSE|CLOCK value]");
   DT_PRINTF("  Get GIGE status:    GIGE");
   DT_PRINTF("  Get SDI status:     SDI [RST]");
   DT_PRINTF("  Print help:         HLP");

   return IRC_SUCCESS;
}

/**
 * Debug terminal Test Output Buffer parser.
 * This parser is used to run the Output Buffer memory test.
 *
 * @return IRC_FAILURE if there were invalid command arguments
 * @return the test result otherwise.
 */
IRC_Status_t DebugTerminalParseTOB(circByteBuffer_t *cbuf) {

   extern debugTerminal_t gDebugTerminal;

   if (!DebugTerminal_CommandIsEmpty(cbuf))
   {
      DT_ERR("Unsupported command arguments");
      return IRC_NOT_DONE;
   }

   if (gDebugTerminal.port.netIntf->currentState != NIS_READY) {
      DT_ERR("Received Test Command while Network Interface was Not Ready.");
   }

   return AutoTest_OBufMem();
}

IRC_Status_t DebugTerminalParseVRB(circByteBuffer_t *cbuf) {

   uint32_t value;
   uint8_t argStr[11];
   uint32_t arglen;

   extern bool gVerbose;

   arglen = GetNextArg(cbuf, argStr, 10);
   if ( (ParseNumArg((char *)argStr, arglen, &value) != IRC_SUCCESS) ||
         ((value != 0) && (value != 1)))
   {
      DT_ERR("Invalid value");
      return IRC_FAILURE;
   }

   if (!DebugTerminal_CommandIsEmpty(cbuf)) {
      DT_ERR("Unsupported command arguments");
      return IRC_FAILURE;
   }

   gVerbose = (value == 1) ? true : false;

   return IRC_SUCCESS;
}

/**
 * Debug terminal get CLINK status command parser.
 * This parser is used to parse and validate get CLINK status command arguments and to
 * execute the command.
 *
 * @return IRC_SUCCESS when CLINK status command was successfully executed.
 * @return IRC_FAILURE otherwise.
 */
IRC_Status_t DebugTerminalParseCLINK(circByteBuffer_t *cbuf)
{
   extern t_ClinkConfig gClinkCtrl;
   extern bool gDebugClinkFlag;
   t_ClinkStatus status;
   uint8_t cmdStr[10], argStr[4];
   uint32_t arglen;
   uint32_t value;

   // Check for command argument presence
   if (!DebugTerminal_CommandIsEmpty(cbuf))
   {
      // Read command argument
      arglen = GetNextArg(cbuf, cmdStr, sizeof(cmdStr) - 1);
      if (arglen == 0)
      {
         DT_ERR("Invalid command");
         return IRC_FAILURE;
      }
      cmdStr[arglen++] = '\0'; // Add string terminator

      // Read value argument
      arglen = GetNextArg(cbuf, argStr, sizeof(argStr) - 1);
      if (ParseNumArg((char *)argStr, arglen, &value) != IRC_SUCCESS)
      {
         DT_ERR("Invalid value");
         return IRC_FAILURE;
      }

      // There is supposed to be no remaining bytes in the buffer
      if (!DebugTerminal_CommandIsEmpty(cbuf))
      {
         DT_ERR("Unsupported command arguments");
         return IRC_FAILURE;
      }

      // Process command
      if (strcasecmp((char *)cmdStr, "LVALPAUSE") == 0)
      {
         gClinkCtrl.LValPause = value;
         gDebugClinkFlag = true;
      }
      else if (strcasecmp((char *)cmdStr, "FVALPAUSE") == 0)
      {
         gClinkCtrl.FValPause = value;
         gDebugClinkFlag = true;
      }
      else if (strcasecmp((char *)cmdStr, "CLOCK") == 0)
      {
         gClinkCtrl.ClockMode = value;
         gDebugClinkFlag = true;
      }
      else
      {
         DT_ERR("Unknown command");
         return IRC_FAILURE;
      }

      DT_PRINTF("Value will be applied on next arm");
   }

   Clink_GetStatus(&gClinkCtrl, &status);

   DT_PRINTF("clink.LValPause = %d", gClinkCtrl.LValPause);
   DT_PRINTF("clink.FValPause = %d", gClinkCtrl.FValPause);
   DT_PRINTF("clink.ClockMode = %d", gClinkCtrl.ClockMode);
   DT_PRINTF("clink.CL_errors = 0x%08X", status.CL_errors);

   return IRC_SUCCESS;
}

/**
 * Debug terminal get GIGE status command parser.
 * This parser is used to parse and validate get GIGE status command arguments and to
 * execute the command.
 *
 * @return IRC_SUCCESS when GIGE status command was successfully executed.
 * @return IRC_FAILURE otherwise.
 */
IRC_Status_t DebugTerminalParseGIGE(circByteBuffer_t *cbuf)
{
   extern t_FrameBuffer gFrameBufferCtrl;
   t_FrameBufferStatus fb_status;
   extern t_PleoraIntf gPleoraIntfCtrl;
   t_PleoraStatus status;

   // There is supposed to be no remaining bytes in the buffer
   if (!DebugTerminal_CommandIsEmpty(cbuf))
   {
      DT_ERR("Unsupported command arguments");
      return IRC_FAILURE;
   }

   FrameBuffer_GetStatus(&gFrameBufferCtrl, &fb_status);
   PleoraIntf_GetStatus(&gPleoraIntfCtrl, &status);

   DT_PRINTF("FrameBuffer.error = 0x%08X", fb_status.error);
   DT_PRINTF("Pleora.error = 0x%08X", status.error);

   return IRC_SUCCESS;
}

/**
 * Debug terminal get SDI status command parser.
 * This parser is used to parse and validate get SDI status command arguments and to
 * execute the command.
 *
 * @return IRC_SUCCESS when SDI status command was successfully executed.
 * @return IRC_FAILURE otherwise.
 */
IRC_Status_t DebugTerminalParseSDI(circByteBuffer_t *cbuf)
{
   extern t_SdiIntf gSdiIntfCtrl;
   uint8_t argStr[4];
   uint32_t arglen;

   // Check for command argument presence
   if (!DebugTerminal_CommandIsEmpty(cbuf))
   {
      // Read command argument
      arglen = GetNextArg(cbuf, argStr, sizeof(argStr) - 1);
      if (arglen == 0)
      {
         DT_ERR("Invalid command");
         return IRC_FAILURE;
      }
      argStr[arglen++] = '\0'; // Add string terminator

      // There is supposed to be no remaining bytes in the buffer
      if (!DebugTerminal_CommandIsEmpty(cbuf))
      {
         DT_ERR("Unsupported command arguments");
         return IRC_FAILURE;
      }

      if (strcasecmp((char *)argStr, "RST") == 0)
      {
         SDIIntf_ResetErr(&gSdiIntfCtrl);
      }
      else
      {
         DT_ERR("Unknown command");
         return IRC_FAILURE;
      }
   }

   DT_PRINTF("sdi.error_latch = 0x%08X", SDIIntf_GetError(&gSdiIntfCtrl));

   return IRC_SUCCESS;
}


