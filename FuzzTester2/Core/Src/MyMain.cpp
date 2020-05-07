
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
#include "Display.h"
#include "Mode.h"

// Constants

const uint8_t NR_OF_SYS_TICK_SUBSCRIBERS = 5;
// 0: LCD Display, 1: Decrease Button, 2: Enter BUtton, 3: Increase Button, 4: Bypass switch


// Callback functions

void Update();

void ProcessDecreaseButton(bool hold);
void ProcessEnterButton   (bool hold);
void ProcessIncreaseButton(bool hold);
void ProcessBypassSwitch  (bool onOffState);


// External variables

extern I2C_HandleTypeDef hi2c1;


// Global variables

Presets _presets;

SysTickSubscribers _sysTickSubscibers(NR_OF_SYS_TICK_SUBSCRIBERS);


// Display: Refresh every 99 ms, not 100 ms (than fractions are changing when displayed items have a period of % 100 ms == 0
LcdDisplay _lcdDisplay(&hi2c1, 0x27, &Update, 99, 0);

DefaultButton_INT _decreaseButton( { GPIO_BUTTON_DECREASE_GPIO_Port, GPIO_BUTTON_DECREASE_Pin }, &ProcessDecreaseButton , 500, 300, 1, 25);
DefaultButton_INT _enterButton   ( { GPIO_BUTTON_ENTER_GPIO_Port   , GPIO_BUTTON_ENTER_Pin    }, &ProcessEnterButton    , 500, 300, 2, 25);
DefaultButton_INT _increaseButton( { GPIO_BUTTON_INCREASE_GPIO_Port, GPIO_BUTTON_INCREASE_Pin }, &ProcessIncreaseButton , 500, 300, 3, 25);
ToggleButton_INT  _bypassSwitch  ( { GPIO_BYPASS_SWITCH_GPIO_Port  , GPIO_BYPASS_SWITCH_Pin   }, &ProcessBypassSwitch             , 4, 25);

Mode _mode;
Display _display(_lcdDisplay, _mode, _presets);


// Functions

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


void ProcessDecreaseButton(bool hold)
{
   Preset& preset = _presets.GetPreset();

   if (hold)
   {
      _display.UpdateScreenLockCounter(true);
   }

   bool isMinValueReached = false;

   switch (_mode.GetMode())
   {
   case Mode::EMode::SelectPreset:
      isMinValueReached = !_presets.DecreasePresetIndex();
      break;

   case Mode::EMode::SelectCapacitorA:
      isMinValueReached = !preset.DecreaseIndex(Components::EType::CapacitorA);
      break;

   case Mode::EMode::SelectTransistorB:
      isMinValueReached = !preset.DecreaseIndex(Components::EType::TransistorB);
      break;

   case Mode::EMode::SelectTransistorC:
      isMinValueReached = !preset.DecreaseIndex(Components::EType::TransistorC);
      break;

   case Mode::EMode::SelectCapacitorD:
      isMinValueReached = !preset.DecreaseIndex(Components::EType::CapacitorD);
      break;

   case Mode::EMode::PresetsMemory:
      _display.SetOverrideScreen(_presets.Load()
            ? Display::EOverrideScreen::PresetsLoaded
            : Display::EOverrideScreen::PresetsLoadError);
      break;

   case Mode::EMode::ScreenLock:
         // Handled above
         break;

   case Mode::EMode::Bypass:
      // Ignore
      break;

   default:
      assert(false);
   }

   if (isMinValueReached)
   {
      _display.SetOverrideScreen(Display::EOverrideScreen::MinValueReached);
   }
}


void ProcessEnterButton(bool longPress)
{
   _mode.SetNextMode();
}


void ProcessIncreaseButton(bool hold)
{
   if (hold)
   {
      _display.UpdateScreenLockCounter(false);
   }

   Preset& preset = _presets.GetPreset();

   bool isMaxValueReached = false;

   switch (_mode.GetMode())
   {
   case Mode::EMode::SelectPreset:
      isMaxValueReached = !_presets.IncreasePresetIndex();
      {
         uint8_t previousValue = _presets.GetPresetIndex();
         _presets.SetPresetIndex(MIN(Presets::NrOfPresets - 1, _presets.GetPresetIndex() + 1));
         if (previousValue == _presets.GetPresetIndex())
         {
            _display.SetOverrideScreen(Display::EOverrideScreen::MaxValueReached);
         }
      }
      break;

   case Mode::EMode::SelectCapacitorA:
      isMaxValueReached = !preset.IncreaseIndex(Components::EType::CapacitorA);
      break;

   case Mode::EMode::SelectTransistorB:
      isMaxValueReached = !preset.IncreaseIndex(Components::EType::TransistorB);
      break;

   case Mode::EMode::SelectTransistorC:
      isMaxValueReached = !preset.IncreaseIndex(Components::EType::TransistorC);
      break;

   case Mode::EMode::SelectCapacitorD:
      isMaxValueReached = !preset.IncreaseIndex(Components::EType::CapacitorD);
      break;

   case Mode::EMode::PresetsMemory:
      _display.SetOverrideScreen(_presets.IsFlashDataEqual()
        ? Display::EOverrideScreen::NoPresetsChanged
        : (_presets.Store()
          ? Display::EOverrideScreen::PresetsStored
          : Display::EOverrideScreen::PresetsStoreError));
      break;

   case Mode::EMode::ScreenLock:
         // Handled above
         break;

   case Mode::EMode::Bypass:
      // Ignore
      break;

   default:
      assert(false);
   }

   if (isMaxValueReached)
   {
      _display.SetOverrideScreen(Display::EOverrideScreen::MaxValueReached);
   }
}


void ProcessBypassSwitch(bool onOffState)
{
   _mode.SetBypass(onOffState);
   _lcdDisplay.SetBackLight(!onOffState);
}


void Update()
{
   bool updateMultiplexers = _display.Update();
   if (updateMultiplexers)
   {
      UpdateMultiplexers();
   }
}


void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
   _decreaseButton.CheckTrigger(GPIO_BUTTON_DECREASE_Pin);
   _enterButton   .CheckTrigger(GPIO_BUTTON_ENTER_Pin);
   _increaseButton.CheckTrigger(GPIO_BUTTON_INCREASE_Pin);

   _bypassSwitch.CheckTrigger(GPIO_BYPASS_SWITCH_Pin);
}
