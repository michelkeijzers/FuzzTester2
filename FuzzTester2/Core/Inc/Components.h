/*
 * Components.h
 *
 *  Created on: Apr 26, 2020
 *      Author: miche
 */

#ifndef INC_COMPONENTS_H_
#define INC_COMPONENTS_H_

#include <stdint.h>

#include "Preset.h"


class Components

{
public:
   Components();
   virtual ~Components();

   static const uint8_t MaxComponentNameLength = 17;
   static const uint8_t NrOfCapacitors = 8;
   static const uint8_t NrOfTransistors = 16;


   Preset& GetCurrentPatch();

   void GetInfoString(char* textBuffer);

   void SetLastSelectedType(Preset::EType type);

private:
   Preset _currentPatch;

   Preset::EType _lastSelectedType;
};

#endif /* INC_COMPONENTS_H_ */
