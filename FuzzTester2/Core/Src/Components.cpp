/*
 * Menu.cpp
 *
 *  Created on: Apr 26, 2020
 *      Author: miche
 */

#include <Components.h>

#include <assert.h>
#include <string.h>


const char* capacitorInfos[] =
{
   //1234567890123456              TH   0805
    "Cap A1: 10nF Cer", // 1      Ceramic  Yes
    "Cap A2: 33nF Cer", // 2      Ceramic  Yes
    "Cap A3: 47nF Cer", // 3      Ceramic  Yes
    "Cap A4:100nF Cer", // 4      Ceramic  Yes
    "Cap A5:0.47uF El", // 5      Elec     Yes
    "Cap A6:   1uF El", // 6      Elec     Yes
    "Cap A7: 4.7uF El", // 7      Elec    Ordered
    "Cap A8:  10uF El", // 8      Elec    Ordered
};

const char* transistorInfos[] =
{

  //1234567890123456
   "Trans ?01:2N2222", //  1    MMBT222A SMD
   "Trans ?02:2N3904", //  2    MMBT3904 SMD
   "Trans ?03:2N5088", //  3    2N5088 (TH)               Ebay: MMBT5088 E 5/10
   "Trans ?04:2N5551", //  4    MMBT5551 SMD
   "Trans ?05:A42   ", //  5                   A42
   "Trans ?06:BC337 ", //  6                     BC807
   "Trans ?07:BC547B", //  7                     BC846B
   "Trans ?08:BC548B", //  8                    BC847B
   "Trans ?09:BC639 ", //  9                   BC847C
   "Trans ?10:C945  ", // 10                   C945
   "Trans ?11:C1815 ", // 11                 2SC1815
   "Trans ?12:MPSA18", // 12     MPSA18 (TH)
   "Trans ?13:S8050 ", // 13    (S)S8050  SMD
   "Trans ?14:S9013 ", // 14       S9013  SMD
   "Trans ?15:S9014 ", // 15       S9014  SMD
   "Trans ?16:S9018 ", // 16                   S9018
   "Trans B17:TODO  ", // 17                   BC848B
   "Trans B18:TODO  ", // 18
   "Trans B19:TODO  ", // 19                 2SC1623
   "Trans B20:TODO  ", // 20
};

   // SMDs BCxxxx:  PNP 807-40   NPN 817-40   NPN 846B   847B 847C   NPN 848B   PNP 856B    PNP 857B


Components::Components()
{
   _lastSelectedType = Preset::EType::CapacitorA;

}


Components::~Components()
{
}



Preset& Components::GetCurrentPatch()
{
   return _currentPatch;
}


void Components::SetLastSelectedType(Preset::EType type)
{
   _lastSelectedType = type;
}


void Components::GetInfoString(char* textBuffer)
{

}
