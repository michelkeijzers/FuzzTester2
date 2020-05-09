/*
 * Presets.cpp
 *
 *  Created on: Apr 24, 2020
 *      Author: Michel Keijzers
 */

#include <Eeprom/Eeprom.h>
#include "Presets.h"

#include <stdlib.h>
#include <sys/param.h>

#include "stm32f1xx_hal.h"


Eeprom _eeprom(Eeprom::EDensity::F103X8, 63);


Presets::Presets()
:
  _presetIndex(0),
  _isDirty(false)
{
}


Presets::~Presets()
{
}


uint8_t Presets::GetPresetIndex() const
{
   return _presetIndex;
}


Preset& Presets::GetPreset()
{
   return _presets[_presetIndex];
}


void Presets::SetPresetIndex(uint8_t index)
{
   _presetIndex = index;
   _isDirty = true;
}


bool Presets::DecreasePresetIndex()
{
   bool isChanged = false;

   if (_presetIndex > 0)
   {
      isChanged = true;
      _isDirty = true;
      _presetIndex--;
   }

   return isChanged;
}


bool Presets::IncreasePresetIndex()
{
   bool isChanged = false;

   if (_presetIndex < NrOfPresets - 1)
   {
      isChanged = true;
      _isDirty = true;
      _presetIndex++;
   }

   return isChanged;
}


/**
 * Returns current preset
 *
 * Order: current index (4 bytes), preset data 0..100 * 4 bytes
 */
bool Presets::Load()
{
   uint32_t value;

   bool loadOk = _eeprom.Read(0, &value);
   if (loadOk)
   {
      _presetIndex = value;
   }

   for (uint8_t presetIndex = 0; presetIndex < NrOfPresets; presetIndex++)
   {
      Preset& preset = _presets[presetIndex];

      loadOk &= _eeprom.Read(presetIndex + 1, &value);
      if (loadOk)
      {
         preset.SetIndex(Components::EType::CapacitorA ,  value             >> 24);
         preset.SetIndex(Components::EType::TransistorB, (value & 0xff0000) >> 16);
         preset.SetIndex(Components::EType::TransistorC, (value &   0xff00) >>  8);
         preset.SetIndex(Components::EType::CapacitorD,   value &     0xff       );
      }
   }

   LimitBoundaries();

   _isDirty = true;

   return loadOk;
}


bool Presets::Store()
{
   bool saveOk = _eeprom.Format();
   saveOk &= _eeprom.Write(0, _presetIndex);

   for (uint8_t presetIndex = 0; presetIndex < NrOfPresets; presetIndex++)
   {
      Preset& preset = _presets[presetIndex];

      uint32_t value =
       (preset.GetIndex(Components::EType::CapacitorA ) << 24) +
       (preset.GetIndex(Components::EType::TransistorB) << 16) +
       (preset.GetIndex(Components::EType::TransistorC) <<  8) +
        preset.GetIndex(Components::EType::CapacitorD );

      saveOk &= _eeprom.Write(presetIndex + 1, value);
   }

   _isDirty = true;

   return saveOk;
}


bool Presets::IsFlashDataEqual() const
{
   bool isFlashDataEqual = true;

   uint32_t flashValue;
   isFlashDataEqual &= _eeprom.Read(0, &flashValue);

   for (uint8_t presetIndex = 0; isFlashDataEqual && (presetIndex < NrOfPresets); presetIndex++)
   {
      isFlashDataEqual &= _eeprom.Read(presetIndex + 1, &flashValue);

      const Preset& preset = _presets[presetIndex];
      uint32_t presetValue =
         (preset.GetIndex(Components::EType::CapacitorA ) << 24) +
         (preset.GetIndex(Components::EType::TransistorB) << 16) +
         (preset.GetIndex(Components::EType::TransistorC) <<  8) +
          preset.GetIndex(Components::EType::CapacitorD );

      isFlashDataEqual &= (presetValue == flashValue);
   }

   return isFlashDataEqual;
}


bool Presets::CheckDirty()
{
   bool isDirty = _isDirty;
   _isDirty = false;
   return isDirty;
}


void Presets::LimitBoundaries()
{
   _presetIndex = MAX(0, MIN(NrOfPresets -1, _presetIndex));

   for (uint8_t presetIndex = 0; presetIndex < NrOfPresets; presetIndex++)
   {
      _presets[presetIndex].LimitBoundaries();
   }
}
