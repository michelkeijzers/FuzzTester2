/*
 * Display.cpp
 *
 *  Created on: May 8, 2020
 *      Author: Michel Keijzers
 */

#include "Display.h"

#include "assert.h"

#include <Framework/LcdDisplay.h>

#include "Mode.h"
#include "Presets.h"


Display::Display(LcdDisplay& lcdDisplay, Mode& mode, Presets& presets)
:
   _lcdDisplay(lcdDisplay),
   _mode(mode),
   _presets(presets),
   _overrideScreen(EOverrideScreen::None),
   _overrideTimer(0),
   _screenLockCounter(0)
{
}

Display::~Display()
{
}


bool Display::Update()
{
   bool updateMultiplexers = false;
   if (!_lcdDisplay.IsInitialized())
   {
      return false;
   }

   if (_overrideScreen != EOverrideScreen::None)
   {
      _overrideTimer++;
      if (_overrideTimer <= GetOverrideScreenTicks())
      {
         _lcdDisplay.SetCursorPosition(0, 0);
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::None);
         ShowOverrideScreen();
      }
      else
      {
         _overrideScreen = EOverrideScreen::None;
         _overrideTimer = 0;
         _mode.SetModeChanged(true);
      }
   }
   else if (_mode.CheckModeChanged() || _presets.CheckDirty() || _presets.GetPreset().CheckDirty())
   {
      switch (_mode.GetMode())
      {
      case Mode::EMode::SelectPreset:
         updateMultiplexers = true;
         UpdateLcdNumbers();
         UpdateLcdPreset();
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(2, 0);
         break;

      case Mode::EMode::SelectCapacitorA:
         updateMultiplexers = true;
         UpdateLcdNumbers();
         UpdateLcdComponent();
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(3, 0);
         break;

      case Mode::EMode::SelectTransistorB:
         updateMultiplexers = true;
         UpdateLcdNumbers();
         UpdateLcdComponent();
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(6, 0);
         break;

      case Mode::EMode::SelectTransistorC:
         updateMultiplexers = true;
         UpdateLcdNumbers();
         UpdateLcdComponent();
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(10, 0);
         break;

      case Mode::EMode::SelectCapacitorD:
         updateMultiplexers = true;
         UpdateLcdNumbers();
         UpdateLcdComponent();
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(14, 0);
         break;

      case Mode::EMode::PresetsMemory:
         _lcdDisplay.SetLine(0, " PRESETS MEMORY ");
         _lcdDisplay.SetLine(1, "LOAD       STORE");
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::None);
         break;

      case Mode::EMode::ScreenLock:
         _lcdDisplay.SetLine(0, " SCREEN LOCKED  ");
         _lcdDisplay.SetLine(1, "HOLD  ----  HOLD");
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::None);
         break;

      case Mode::EMode::Bypass:
         _lcdDisplay.SetLine(0, "BYPASSED. PRESS ");
         _lcdDisplay.SetLine(1, "  FOOT SWITCH   ");
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::None);
         break;

      default:
         assert(false);
      }

      _mode.SetModeChanged(false);
   }

   return updateMultiplexers;
}


void Display::UpdateScreenLockCounter(bool fromDecreaseButton)
{
   if (((_screenLockCounter % 2 == 0) &&  fromDecreaseButton) ||
       ((_screenLockCounter % 2 == 1) && !fromDecreaseButton))
   {
      _screenLockCounter++;
      if (_screenLockCounter >= 10)
      {
         _mode.Unlock();
         _screenLockCounter = 0;
      }
   }
}


void Display::SetOverrideScreen(EOverrideScreen overrideScreen)
{
   _overrideScreen = overrideScreen;
}


void Display::UpdateLcdNumbers()
{
   Preset& preset = _presets.GetPreset();

   char line[17];

   //                       1 2 34 56 78910 11121314
   snprintf(line, 17, "%02d:A%1d B%02d C%02d D%1d",
      _presets.GetPresetIndex() % 100,
      (preset.GetIndex(Components::EType::CapacitorA ) + 1) % 10,
      (preset.GetIndex(Components::EType::TransistorB) + 1) % 100,
      (preset.GetIndex(Components::EType::TransistorC) + 1) % 100,
      (preset.GetIndex(Components::EType::CapacitorD ) + 1) % 10);
   _lcdDisplay.SetLine(0, line);
}


void Display::UpdateLcdPreset()
{
   char text[_lcdDisplay.GetMaxLineLength() + 1];
   sprintf(text, "Preset: %2d      ", _presets.GetPresetIndex());
   _lcdDisplay.SetLine(1, text);
}


void Display::UpdateLcdComponent()
{
   char text[_lcdDisplay.GetMaxLineLength() + 1];

   Components::EType type = Components::EType::CapacitorA;

   switch (_mode.GetMode())
   {
   case Mode::EMode::SelectCapacitorA :
      type = Components::EType::CapacitorA;
      break;

   case Mode::EMode::SelectTransistorB:
      type = Components::EType::TransistorB;
      break;

   case Mode::EMode::SelectTransistorC:
      type = Components::EType::TransistorC;
      break;

   case Mode::EMode::SelectCapacitorD :
      type = Components::EType::CapacitorD;
      break;

   default: // Ignore
      break;
   }

   Components::GetInfoString(text, _presets.GetPreset(), type);

   _lcdDisplay.SetLine(1, text);
}


void Display::ShowOverrideScreen()
{
   switch (_overrideScreen)
   {
   case EOverrideScreen::MinValueReached:
      _lcdDisplay.SetLine(0, " Minimum value  ");
      _lcdDisplay.SetLine(1, "    reached     ");
      break;

   case EOverrideScreen::MaxValueReached:
      _lcdDisplay.SetLine(0, " Maximum value  ");
      _lcdDisplay.SetLine(1, "    reached     ");
      break;

   case EOverrideScreen::PresetsLoaded:
      _lcdDisplay.SetLine(0, " Presets loaded ");
      _lcdDisplay.SetLine(1, "  into memory   ");
      break;

   case EOverrideScreen::PresetsLoadError:
      _lcdDisplay.SetLine(0, "  Error while   ");
      _lcdDisplay.SetLine(1, "loading presets!");
      break;

   case EOverrideScreen::PresetsStored:
      _lcdDisplay.SetLine(0, " Presets stored ");
      _lcdDisplay.SetLine(1, "  into memory   ");
      break;

   case EOverrideScreen::PresetsStoreError:
      _lcdDisplay.SetLine(0, "  Error while   ");
      _lcdDisplay.SetLine(1, "storing presets!");
      break;

   case EOverrideScreen::NoPresetsChanged:
      _lcdDisplay.SetLine(0, "   No presets   ");
      _lcdDisplay.SetLine(1, "    changed     ");
       break;

   default:
      assert(false);
   }
}


uint8_t Display::GetOverrideScreenTicks()
{
   uint8_t ticks = 0;

   switch (_overrideScreen)
   {
   case MinValueReached: // Fall through
   case MaxValueReached:
      ticks = 5;
      break;

   case PresetsLoaded:      // Fall through
   case PresetsLoadError:   // Fall through
   case PresetsStored:      // Fall through
   case PresetsStoreError:  // Fall through
   case NoPresetsChanged:   // Fall through
   case LastOverrideScreen:
      ticks = 10;
      break;

   default:
      assert(false);
   }

   return ticks;
}
