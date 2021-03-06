/*
 * Presets.h
 *
 *  Created on: Apr 24, 2020
 *      Author: Michel Keijzers
 */

#ifndef SRC_PRESETS_H_
#define SRC_PRESETS_H_

#include <stdint.h>

#include "Preset.h"


class Eeprom;


class Presets
{
public:
   static const uint8_t NrOfPresets = 100;

   Presets();

   virtual ~Presets();

   Preset& GetPreset();

   uint8_t GetPresetIndex() const;

   void SetPresetIndex(uint8_t presetIndex);
   bool DecreasePresetIndex();
   bool IncreasePresetIndex();

   bool Load();
   bool Store();
   bool IsFlashDataEqual() const;

   bool CheckDirty();

private:
   void LimitBoundaries();

   Preset _presets[NrOfPresets];

   uint8_t _presetIndex;

   bool _isDirty;
};

#endif /* SRC_PRESETS_H_ */
