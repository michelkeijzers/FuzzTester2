/*
 * Preset.h
 *
 *  Created on: Apr 26, 2020
 *      Author: miche
 */

#ifndef INC_PRESET_H_
#define INC_PRESET_H_

#include <stdint.h>

class Preset
{
public:
   enum EType
   {
      CapacitorA,
      TransistorB,
      TransistorC,
      CapacitorD
   };

   Preset();
   virtual ~Preset();

   uint8_t GetIndex  (EType type);
   void DecreaseIndex(EType type);
   void IncreaseIndex(EType type);
   void SetIndex     (EType type, int index);

private:
   uint8_t _capacitorA;
   uint8_t _transistorB;
   uint8_t _transistorC;
   uint8_t _capacitorD;
};

#endif /* INC_PRESET_H_ */
