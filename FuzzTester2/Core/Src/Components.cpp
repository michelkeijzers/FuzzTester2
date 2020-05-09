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
  //1234567890123456              TH   0805
   "Cap ?1: 10nF Cer", // 1      Ceramic  Yes
   "Cap ?2: 33nF Cer", // 2      Ceramic  Yes
   "Cap ?3: 47nF Cer", // 3      Ceramic  Yes
   "Cap ?4:100nF Cer", // 4      Ceramic  Yes
   "Cap ?5:0.47uF El", // 5      Elec     Yes
   "Cap ?6:   1uF El", // 6      Elec     Yes
   "Cap ?7: 4.7uF El", // 7      Elec    Ordered
   "Cap ?8:  10uF El", // 8      Elec    Ordered
};


const char* transistorInfos[] =
{

   //TODO update
  //1234567890123456
   "Trans ?01:2N2222", //  1    MMBT222A SMD
   "Trans ?02:2N3904", //  2    MMBT3904 SMD
   "Trans ?03:2N5088", //  3    2N5088 (TH)               Ebay: MMBT5088 E 5/10
   "Trans ?04:2N5551", //  4    MMBT5551 SMD
   "Trans ?05:A42   ", //  5    A42
   "Trans ?06:BC337 ", //  6    BC807
   "Trans ?07:BC547B", //  7    BC846B
   "Trans ?08:BC548B", //  8    BC847B
   "Trans ?09:BC639 ", //  9    BC847C
   "Trans ?10:C945  ", // 10    C945
   "Trans ?11:C1815 ", // 11    2SC1815
   "Trans ?12:MPSA18", // 12    MPSA18 (TH)
   "Trans ?13:S8050 ", // 13    (S)S8050  SMD
   "Trans ?14:S9013 ", // 14    S9013  SMD
   "Trans ?15:S9014 ", // 15    S9014  SMD
   "Trans ?16:S9018 ", // 16    S9018

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
      textBuffer[6] = 'B';
      break;

   case EType::TransistorC:
      strcpy(textBuffer, transistorInfos[preset.GetIndex(EType::TransistorC)]);
      textBuffer[6] = 'C';
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
