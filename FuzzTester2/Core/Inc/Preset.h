/*
 * Preset.h
 *
 *  Created on: Apr 26, 2020
 *      Author: miche
 */

#ifndef INC_PRESET_H_
#define INC_PRESET_H_

#include <stdint.h>

#include "Components.h"

class Preset
{
public:
   Preset();
   virtual ~Preset();

   bool DecreaseIndex(Components::EType type);
   bool IncreaseIndex(Components::EType type);

   uint8_t GetIndex  (Components::EType type);
   void SetIndex(Components::EType type, uint8_t index);

   bool CheckDirty();

   void LimitBoundaries();

private:
   uint8_t _capacitorA;
   uint8_t _transistorB;
   uint8_t _transistorC;
   uint8_t _capacitorD;

   bool _isDirty;
};

#endif /* INC_PRESET_H_ */
