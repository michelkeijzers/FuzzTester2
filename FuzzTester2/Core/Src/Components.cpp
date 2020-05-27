/*
 * Menu.cpp
 *
 *  Created on: Apr 26, 2020
 *      Author: Michel Keijzers
 */

#include "Components.h"

#ifdef DEBUG
#include <assert.h>
#endif

#include <string.h>

#include "Preset.h"


const char* capacitorInfos[] =
{
   //TODO update
  //1234567890123456
   "Cap ?1:  10   nF", // 1
   "Cap ?2:  33   nF", // 2
   "Cap ?3: 100   nF", // 3
   "Cap ?4: 470   nF", // 4
   "Cap ?5:   1   uF", // 5
   "Cap ?6:   2.2 uF", // 6
   "Cap ?7:  10   uF", // 7
   "Cap ?8:  22   uF", // 8
};


const char* transistorInfos[] =
{

   //TODO update
  //1234567890123456
   "Tr.?01:MMBT2222A", //  1
   "Tr.?02:MMBT3904 ", //  2
   "Tr.?03:MMBT5551L", //  3
   "Tr.?04:MMBTA42  ", //  4
   "Tr.?05:BC807-40 ", //  5
   "Tr.?06:BC846B   ", //  6
   "Tr.?07:BC847B   ", //  7
   "Tr.?08:BC847C   ", //  8
   "Tr.?09:BC848B   ", //  9
   "Tr.?10:S9013    ", // 10
   "Tr.?11:S9018    ", // 11
   "Tr.?12:C945     ", // 12
   "Tr.?13:2SC1623  ", // 13
   "Tr.?14:2SC1815  ", // 14
   "Tr.?15:MPSA18 TH", // 15
   "Tr.?16:2N5088 TH", // 16

   // SMDs BCxxxx:  PNP 807-40   NPN 817-40   NPN 846B   847B 847C   NPN 848B   PNP 856B    PNP 857B
};




Components::Components()
{
}


Components::~Components()
{
}


/* static */ void Components::GetInfoString(char* textBuffer, Preset& preset, EType type)
{
   switch (type)
   {
   case EType::CapacitorA :
      strcpy(textBuffer, capacitorInfos [preset.GetIndex(EType::CapacitorA )]);
      textBuffer[4] = 'A';
      break;

   case EType::TransistorB:
      strcpy(textBuffer, transistorInfos[preset.GetIndex(EType::TransistorB)]);
      textBuffer[3] = 'B';
      break;

   case EType::TransistorC:
      strcpy(textBuffer, transistorInfos[preset.GetIndex(EType::TransistorC)]);
      textBuffer[3] = 'C';
      break;

   case EType::CapacitorD :
      strcpy(textBuffer, capacitorInfos [preset.GetIndex(EType::CapacitorD )]);
      textBuffer[4] = 'D';
      break;

#ifdef DEBUG
   default:
      assert(false);
#endif
   }
}
