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
#include "fan_ctrl.h"
#include <string.h>
#include <stdbool.h>

static IRC_Status_t DebugTerminalParseHLP(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseTOB(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseSFS(circByteBuffer_t *cbuf);
static IRC_Status_t DebugTerminalParseVRB(circByteBuffer_t *cbuf);

extern debugTerminal_t gDebugTerminal;
extern t_fan gFan;


debugTerminalCommand_t gDebugTerminalCommands[] =
{
   {"RDM", DebugTerminalParseRDM},
   {"WRM", DebugTerminalParseWRM},
   {"NET", DebugTerminalParseNET},
   {"STACK", DebugTerminalParseSTACK},
   {"TOB", DebugTerminalParseTOB},
   {"SFS", DebugTerminalParseSFS},
   {"VRB", DebugTerminalParseVRB},
   {"HLP", DebugTerminalParseHLP}
};

uint32_t gDebugTerminalCommandsCount = NUM_OF(gDebugTerminalCommands);

/**
 * Debug terminal Help command parser parser.
 * This parser is used to print debug terminal help.
 *
 * @return IRC_SUCCESS always.
 */
IRC_Status_t DebugTerminalParseHLP(circByteBuffer_t *cbuf)
{
   extern debugTerminal_t gDebugTerminal;

   // There is supposed to be no remaining bytes in the buffer
   if (!CBB_Empty(cbuf))
   {
      DT_ERR("Unsupported command arguments");
      return IRC_FAILURE;
   }

   DT_PRINTF("Output FPGA debug terminal commands: (%d/%d)",
         gDebugTerminal.txCircBuffer->maxLength, gDebugTerminal.txCircBuffer->size);
   DT_PRINTF("  Read memory:        RDM address [c|u8|u16|u32|s8|s16|s32 length]");
   DT_PRINTF("  Write memory:       WRM address value");
   DT_PRINTF("  Network status:     NET [0|1 [port]]");
   DT_PRINTF("  Get Stack Level:    STACK");
   DT_PRINTF("  Test Output Buffer: TOB");
   DT_PRINTF("  Set Fan Speed:      SFS value");
   DT_PRINTF("  Set verbose:        VRB 0|1");
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

   if (!DebugTerminal_CommandIsEmpty(cbuf))
   {
      DT_ERR("Unsupported command arguments");
      return IRC_NOT_DONE;
   }

   if (gDebugTerminal.port.netIntf->currentState != NIS_READY) {
      FPGA_PRINTF("Received Test Command while Network Interface was Not Ready.");
   }

   return AutoTest_OBufMem();
}

IRC_Status_t DebugTerminalParseSFS(circByteBuffer_t *cbuf) {

   uint32_t value;
   uint8_t argStr[11];
   uint32_t arglen;

   arglen = GetNextArg(cbuf, argStr, 10);
   if ((ParseNumArg((char *)argStr, arglen, &value) != IRC_SUCCESS) ||
         (value > 100))
   {
      DT_ERR("Invalid value");
      return IRC_FAILURE;
   }

   if (!DebugTerminal_CommandIsEmpty(cbuf)) {
      DT_ERR("Unsupported command arguments");
      return IRC_FAILURE;
   }

   FAN_SET_PWM1(&gFan, (float)value);

   return IRC_SUCCESS;
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
