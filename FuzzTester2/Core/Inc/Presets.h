/*
 * Presets.h
 *
 *  Created on: Apr 24, 2020
 *      Author: miche
 */

#ifndef SRC_PRESETS_H_
#define SRC_PRESETS_H_

#include <stdint.h>

#include "Preset.h"

class Presets
{
public:
   static const uint8_t NrOfPresets = 32;

   Presets();

   virtual ~Presets();

   void Load();

   void Flash();

private:
   Preset _presets[NrOfPresets];
};

#endif /* SRC_PRESETS_H_ */
