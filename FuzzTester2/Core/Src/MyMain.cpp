
#include "Main.h"

#include <assert.h>
#include <Components.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/param.h>

#include "stm32f1xx_hal.h"

#include <Framework/LcdDisplay.h>
#include <Framework/Buttons/DefaultButton_INT.h>
#include <Framework/Buttons/ToggleButton_INT.h>
#include <Framework/SysTickSubscribers.h>
#include <Framework/HalUtils.h>

#include "Components.h"
#include "Presets.h"

// Constants

const uint8_t NR_OF_SYS_TICK_SUBSCRIBERS = 5;
// 0: LCD Display, 1: Decrease Button, 2: Enter BUtton, 3: Increase Button, 4: Bypass switch


// Enums

enum EMode
{
   SelectPreset,
   SelectCapacitorA,
   SelectTransistorB,
   SelectTransistorC,
   SelectCapacitorD,
   PresetsMemory,
   LastMode, // Last mode to iterate through
   ScreenLock,
   Bypass
};


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


// Forward declarations

void Update();

void ProcessDecreaseButton(bool hold);
void ProcessEnterButton   (bool hold);
void ProcessIncreaseButton(bool hold);
void ProcessBypassSwitch  (bool onOffState);

void SetNextMode();
void SetMode(EMode mode);
bool CheckModeChanged();


// External variables

extern I2C_HandleTypeDef hi2c1;


// Global variables

Presets _presets;

SysTickSubscribers _sysTickSubscibers(NR_OF_SYS_TICK_SUBSCRIBERS);

// Display: Refresh every 99 ms, not 100 ms (than fractions are changing when displayed items have a period of
// % 100 ms == 0
LcdDisplay _lcdDisplay(&hi2c1, 0x27, &Update, 99, 0);
EOverrideScreen _overrideScreen = None;
uint8_t _overrideTimer;
uint8_t _screenLockCounter = 0;


DefaultButton_INT _decreaseButton( { GPIO_BUTTON_DECREASE_GPIO_Port, GPIO_BUTTON_DECREASE_Pin }, &ProcessDecreaseButton , 500, 300, 1, 25);
DefaultButton_INT _enterButton   ( { GPIO_BUTTON_ENTER_GPIO_Port   , GPIO_BUTTON_ENTER_Pin    }, &ProcessEnterButton    , 500, 300, 2, 25);
DefaultButton_INT _increaseButton( { GPIO_BUTTON_INCREASE_GPIO_Port, GPIO_BUTTON_INCREASE_Pin }, &ProcessIncreaseButton , 500, 300, 3, 25);
ToggleButton_INT  _bypassSwitch  ( { GPIO_BYPASS_SWITCH_GPIO_Port  , GPIO_BYPASS_SWITCH_Pin   }, &ProcessBypassSwitch             , 4, 25);

EMode _mode = EMode::SelectPreset;
bool _modeChanged = true;

EMode _backupMode = EMode::SelectPreset; // Backup mode to restore after screen lock or bypass.


// Functions

void UpdateMultiplexers()
{
   Preset& preset = _presets.GetPreset();

   uint8_t index = preset.GetIndex(Components::EType::CapacitorA);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_A_SELECTION_2_GPIO_Port, GPIO_CAPACITOR_A_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_A_SELECTION_1_GPIO_Port, GPIO_CAPACITOR_A_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_A_SELECTION_0_GPIO_Port, GPIO_CAPACITOR_A_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);

   index = preset.GetIndex(Components::EType::TransistorB);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_3_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_3_Pin, index & 0x08 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_2_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_1_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_0_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);

   index = preset.GetIndex(Components::EType::TransistorC);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_3_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_3_Pin, index & 0x08 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_2_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_1_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_0_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);

   index = preset.GetIndex(Components::EType::CapacitorD);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_D_SELECTION_2_GPIO_Port, GPIO_CAPACITOR_D_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_D_SELECTION_1_GPIO_Port, GPIO_CAPACITOR_D_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_D_SELECTION_0_GPIO_Port, GPIO_CAPACITOR_D_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);
};


void UpdateLcdNumbers()
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


void UpdateLcdPreset()
{
   char text[_lcdDisplay.GetMaxLineLength() + 1];
   sprintf(text, "Preset: %2d      ", _presets.GetPresetIndex());
   _lcdDisplay.SetLine(1, text);
}


void UpdateLcdComponent(EMode mode)
{
   char text[_lcdDisplay.GetMaxLineLength() + 1];

   Components::EType type = Components::EType::CapacitorA;

   switch (mode)
   {
   case EMode::SelectCapacitorA :
      type = Components::EType::CapacitorA;
      break;

   case EMode::SelectTransistorB:
      type = Components::EType::TransistorB;
      break;

   case EMode::SelectTransistorC:
      type = Components::EType::TransistorC;
      break;

   case EMode::SelectCapacitorD :
      type = Components::EType::CapacitorD;
      break;

   default: // Ignore
      break;
   }

   Components::GetInfoString(text, _presets.GetPreset(), type);

   _lcdDisplay.SetLine(1, text);
}


void ShowOverrideScreen()
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


uint8_t GetOverrideScreenTicks()
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


void Update()
{
   if (!_lcdDisplay.IsInitialized())
   {
      return;
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
         _modeChanged = true;
      }
   }
   else if (CheckModeChanged() || _presets.CheckDirty() || _presets.GetPreset().CheckDirty())
   {
      switch (_mode)
      {
      case EMode::SelectPreset:
         UpdateMultiplexers();
         UpdateLcdNumbers();
         UpdateLcdPreset();
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(2, 0);
         break;

      case EMode::SelectCapacitorA:
         UpdateMultiplexers();
         UpdateLcdNumbers();
         UpdateLcdComponent(_mode);
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(3, 0);
         break;

      case EMode::SelectTransistorB:
         UpdateMultiplexers();
         UpdateLcdNumbers();
         UpdateLcdComponent(_mode);
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(6, 0);
         break;

      case EMode::SelectTransistorC:
         UpdateMultiplexers();
         UpdateLcdNumbers();
         UpdateLcdComponent(_mode);
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(10, 0);
         break;

      case EMode::SelectCapacitorD:
         UpdateMultiplexers();
         UpdateLcdNumbers();
         UpdateLcdComponent(_mode);
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::Block);
         _lcdDisplay.SetCursorPosition(14, 0);
         break;

      case EMode::PresetsMemory:
         _lcdDisplay.SetLine(0, " PRESETS MEMORY ");
         _lcdDisplay.SetLine(1, "LOAD       STORE");
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::None);
         break;

      case EMode::ScreenLock:
         _lcdDisplay.SetLine(0, " SCREEEN LOCKED ");
         _lcdDisplay.SetLine(1, "HOLD  ----  HOLD");
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::None);
         break;

      case EMode::Bypass:
         _lcdDisplay.SetLine(0, "BYPASSED. PRESS ");
         _lcdDisplay.SetLine(1, "  FOOT SWITCH   ");
         _lcdDisplay.SetCursorType(LcdDisplay::ECursorType::None);
         break;

      default:
         assert(false);
      }

      _modeChanged = false;
   }
}


void UpdateScreenLockCounter(bool fromDecreaseButton)
{
   if (((_screenLockCounter % 2 == 0) &&  fromDecreaseButton) ||
       ((_screenLockCounter % 2 == 1) && !fromDecreaseButton))
   {
      _screenLockCounter++;
      if (_screenLockCounter >= 10)
      {
         SetMode(_mode == EMode::ScreenLock ? _backupMode : EMode::ScreenLock);
         _screenLockCounter = 0;
      }
   }
}


void StopScreenLock()
{

}


void ProcessDecreaseButton(bool hold)
{
   Preset& preset = _presets.GetPreset();

   if (hold)
   {
      UpdateScreenLockCounter(true);
   }

   switch (_mode)
   {
   case EMode::SelectPreset:
      {
         uint8_t previousValue = _presets.GetPresetIndex();
         _presets.SetPresetIndex(MAX(0, _presets.GetPresetIndex() - 1));
         if (previousValue == _presets.GetPresetIndex())
         {
            _overrideScreen = EOverrideScreen::MinValueReached;
         }
      }
      break;

   case EMode::SelectCapacitorA:
      if (!preset.DecreaseIndex(Components::EType::CapacitorA))
      {
         _overrideScreen = EOverrideScreen::MinValueReached;
      }
      break;

   case EMode::SelectTransistorB:
      if (!preset.DecreaseIndex(Components::EType::TransistorB))
      {
         _overrideScreen = EOverrideScreen::MinValueReached;
      }
      break;

   case EMode::SelectTransistorC:
      if (!preset.DecreaseIndex(Components::EType::TransistorC))
      {
         _overrideScreen = EOverrideScreen::MinValueReached;
      }
      break;

   case EMode::SelectCapacitorD:
      if (!preset.DecreaseIndex(Components::EType::CapacitorD))
      {
         _overrideScreen = EOverrideScreen::MinValueReached;
      }
      break;

   case EMode::PresetsMemory:
      _overrideScreen = _presets.Load() ? EOverrideScreen::PresetsLoaded : EOverrideScreen::PresetsLoadError;
      break;

   case EMode::ScreenLock:
         // Handled above
         break;

   case EMode::Bypass:
      // Ignore
      break;

   default:
      assert(false);
   }
}


void ProcessEnterButton(bool longPress)
{
   StopScreenLock();
   SetNextMode();
}


void ProcessIncreaseButton(bool hold)
{
   if (hold)
   {
      UpdateScreenLockCounter(false);
   }

   Preset& preset = _presets.GetPreset();

   switch (_mode)
   {
   case EMode::SelectPreset:
      {
         uint8_t previousValue = _presets.GetPresetIndex();
         _presets.SetPresetIndex(MIN(Presets::NrOfPresets - 1, _presets.GetPresetIndex() + 1));
         if (previousValue == _presets.GetPresetIndex())
         {
            _overrideScreen = EOverrideScreen::MaxValueReached;
         }
      }
      break;

   case EMode::SelectCapacitorA:
      if (!preset.IncreaseIndex(Components::EType::CapacitorA))
      {
         _overrideScreen = EOverrideScreen::MaxValueReached;
      }
      break;

   case EMode::SelectTransistorB:
      if (!preset.IncreaseIndex(Components::EType::TransistorB))
      {
         _overrideScreen = EOverrideScreen::MaxValueReached;
      }
      break;

   case EMode::SelectTransistorC:
      if (!preset.IncreaseIndex(Components::EType::TransistorC))
      {
         _overrideScreen = EOverrideScreen::MaxValueReached;
      }
      break;

   case EMode::SelectCapacitorD:
      if (!preset.IncreaseIndex(Components::EType::CapacitorD))
      {
         _overrideScreen = EOverrideScreen::MaxValueReached;
      }
      break;

   case EMode::PresetsMemory:
      if (_presets.IsFlashDataEqual())
      {
         _overrideScreen = EOverrideScreen::NoPresetsChanged;
      }
      if (_presets.Store())
      {
         _overrideScreen = EOverrideScreen::PresetsStored;
      }
      else
      {
         _overrideScreen = EOverrideScreen::PresetsStoreError;
      }
      break;

   case EMode::ScreenLock:
         // Handled above
         break;

   case EMode::Bypass:
      // Ignore
      break;

   default:
      assert(false);
   }
}


void ProcessBypassSwitch(bool onOffState)
{
   StopScreenLock();

   SetMode(onOffState ? EMode::Bypass : _backupMode);
   _lcdDisplay.SetBackLight(!onOffState);
}


void MyInit()
{
   // LCD Display
   //_lcdDisplay.I2C_Scan();
   _lcdDisplay.Init();
   HalUtils::Delay(2000);

   _lcdDisplay.SetBackLight(true);
   HalUtils::Delay(1000);

   // Presets.
   _presets.Load();
}


int MyMain(void)
{
   while (true)
   {
   }

   return 0;
}


void SetNextMode()
{
   SetMode((EMode) ((_mode + 1) % EMode::LastMode));
   _modeChanged = true;
}


void SetMode(EMode mode)
{
   if ((mode != EMode::ScreenLock) && (mode != EMode::Bypass))
   {
      _backupMode = mode;
   }

   _mode = mode;
   _modeChanged = true;
}


bool CheckModeChanged()
{
   bool modeChanged = _modeChanged;
   _modeChanged = false;
   return modeChanged;
}


void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
   _decreaseButton.CheckTrigger(GPIO_BUTTON_DECREASE_Pin);
   _enterButton   .CheckTrigger(GPIO_BUTTON_ENTER_Pin);
   _increaseButton.CheckTrigger(GPIO_BUTTON_INCREASE_Pin);

   _bypassSwitch.CheckTrigger(GPIO_BYPASS_SWITCH_Pin);
}
