/*
 * Display.h
 *
 *  Created on: May 8, 2020
 *      Author: Michel Keijzers
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_

#include <stdint.h>

#include "Mode.h"

class LcdDisplay;
class Presets;


class Display
{
public:
   enum EOverrideScreen
   {
      None,
      MinValueReached,
      MaxValueReached,
      PresetsLoaded,
      PresetsLoadError,
      PresetsStored,
      PresetsStoreError,
      NoPresetsChanged,
      LastOverrideScreen
   };


   Display(LcdDisplay& lcdeDisplay, Mode& mode, Presets& presets);
   virtual ~Display();

   bool Update();
   void UpdateScreenLockCounter(bool fromDecreaseButton);
   void SetOverrideScreen(EOverrideScreen overrideScreen);

private:
   void UpdateLcdNumbers() const;
   void UpdateLcdPreset() const;
   void UpdateLcdComponent() const;
   void ShowOverrideScreen() const;

   uint8_t GetOverrideScreenTicks() const;

   LcdDisplay& _lcdDisplay;
   Mode& _mode;
   Presets& _presets;
   EOverrideScreen _overrideScreen = None;
   uint8_t _overrideTimer;
   uint8_t _screenLockCounter = 0;
};

#endif /* DISPLAY_H_ */
