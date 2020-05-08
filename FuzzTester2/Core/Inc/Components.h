/*
 * Components.h
 *
 *  Created on: Apr 26, 2020
 *      Author: Michel Keijzers
 */

#ifndef INC_COMPONENTS_H_
#define INC_COMPONENTS_H_

#include <stdint.h>

class Preset;


class Components
{
public:
   enum EType
   {
      CapacitorA,
      TransistorB,
      TransistorC,
      CapacitorD
   };

   Components();
   virtual ~Components();

   static const uint8_t MaxComponentNameLength = 17;
   static const uint8_t NrOfCapacitors = 8;
   static const uint8_t NrOfTransistors = 16;

   static void GetInfoString(char* textBuffer, Preset& preset, EType type);
};

#endif /* INC_COMPONENTS_H_ */
