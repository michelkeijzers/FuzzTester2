
#include "Main.h"

#include <assert.h>
#include <Components.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/param.h>

#include "stm32f1xx_hal.h"

#include <Framework/KeyPad.h>
#include <Framework/KeyPad.h>
#include <Framework/LcdDisplay.h>
#include "Framework/SysTickSubscribers.h"
#include "Framework/HalUtils.h"

#include "Components.h"
#include "Presets.h"


extern I2C_HandleTypeDef hi2c1;


void ProcessKeyPad(char key);
void Update();

Components _components;
Presets _presets;

const uint8_t NR_OF_SYS_TICK_SUBSCRIBERS = 2;
// 0: KeyPad_INT 1: LCD Display

SysTickSubscribers _sysTickSubscibers(NR_OF_SYS_TICK_SUBSCRIBERS);

const GpioId _keyPadRows[]    = { { GPIO_KEYPAD_ROW_1_GPIO_Port, GPIO_KEYPAD_ROW_1_Pin },
                                { GPIO_KEYPAD_ROW_2_GPIO_Port, GPIO_KEYPAD_ROW_2_Pin },
                                { GPIO_KEYPAD_ROW_3_GPIO_Port, GPIO_KEYPAD_ROW_3_Pin },
                                { GPIO_KEYPAD_ROW_4_GPIO_Port, GPIO_KEYPAD_ROW_4_Pin } };
const GpioId _keyPadColumns[] = { { GPIO_KEYPAD_COLUMN_1_GPIO_Port, GPIO_KEYPAD_COLUMN_1_Pin },
                                { GPIO_KEYPAD_COLUMN_2_GPIO_Port, GPIO_KEYPAD_COLUMN_2_Pin },
                                { GPIO_KEYPAD_COLUMN_3_GPIO_Port, GPIO_KEYPAD_COLUMN_3_Pin },
                                { GPIO_KEYPAD_COLUMN_4_GPIO_Port, GPIO_KEYPAD_COLUMN_4_Pin } };

KeyPad _keyPad(4, 4, "123A456B789C*0#D",_keyPadRows, _keyPadColumns, &ProcessKeyPad,
 10, 500, 300, 20, 0);

// Display

// Refresh every 99 ms, not 100 ms (than fractions are changing when displayed items have a period of
// % 100 ms == 0
LcdDisplay       _lcdDisplay   (&hi2c1, 0x27, &Update, 99, 1);
bool _updateNeeded = false;


void UpdateMultiplexers()
{
   Preset& preset = _components.GetCurrentPatch();

   uint8_t index = preset.GetIndex(Preset::EType::CapacitorA);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_A_SELECTION_2_GPIO_Port, GPIO_CAPACITOR_A_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_A_SELECTION_1_GPIO_Port, GPIO_CAPACITOR_A_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_A_SELECTION_0_GPIO_Port, GPIO_CAPACITOR_A_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);

   index = preset.GetIndex(Preset::EType::TransistorB);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_3_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_3_Pin, index & 0x08 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_2_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_1_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_B_SELECTION_0_GPIO_Port, GPIO_TRANSISTOR_B_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);

   index = preset.GetIndex(Preset::EType::TransistorC);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_3_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_3_Pin, index & 0x08 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_2_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_1_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_TRANSISTOR_C_SELECTION_0_GPIO_Port, GPIO_TRANSISTOR_C_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);

   index = preset.GetIndex(Preset::EType::CapacitorD);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_D_SELECTION_2_GPIO_Port, GPIO_CAPACITOR_D_SELECTION_2_Pin, index & 0x04 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_D_SELECTION_1_GPIO_Port, GPIO_CAPACITOR_D_SELECTION_1_Pin, index & 0x02 ? GPIO_PIN_SET : GPIO_PIN_RESET);
   HAL_GPIO_WritePin(GPIO_CAPACITOR_D_SELECTION_0_GPIO_Port, GPIO_CAPACITOR_D_SELECTION_0_Pin, index & 0x01 ? GPIO_PIN_SET : GPIO_PIN_RESET);
};


void UpdateLcdLine0()
{
   Preset& preset = _components.GetCurrentPatch();

   char line[17];

   //                       1 2 34 56 78910 11121314
   snprintf(line, 17, "A%1d B%02d C%02d D%1d   ",
      preset.GetIndex(Preset::EType::CapacitorA ) + 1,
      preset.GetIndex(Preset::EType::TransistorB) + 1,
      preset.GetIndex(Preset::EType::TransistorC) + 1,
      preset.GetIndex(Preset::EType::CapacitorD ) + 1);
   _lcdDisplay.SetLine(0, line);
}


void UpdateLcdLine1()
{
   char componentInfo[Components::MaxComponentNameLength];

   _components.GetInfoString(componentInfo);

   _lcdDisplay.SetLine(1, componentInfo);
}


void Update()
{
   if (_updateNeeded)
   {
      // Update multiplexers
      UpdateMultiplexers();

      UpdateLcdLine0();
      UpdateLcdLine1();
      _updateNeeded = false;
   }
}


void ProcessKeyPad(char key)
{
   Preset& preset = _components.GetCurrentPatch();

   switch (key)
   {
   case '1': preset.DecreaseIndex(Preset::EType::CapacitorA ); break;
   case '4': preset.IncreaseIndex(Preset::EType::CapacitorA ); break;
   case '7': _components.SetLastSelectedType(Preset::EType::CapacitorA ); break;
   case '2': preset.DecreaseIndex(Preset::EType::TransistorB); break;
   case '5': preset.IncreaseIndex(Preset::EType::TransistorB); break;
   case '8': _components.SetLastSelectedType(Preset::EType::TransistorB); break;
   case '3': preset.DecreaseIndex(Preset::EType::TransistorC); break;
   case '6': preset.IncreaseIndex(Preset::EType::TransistorC); break;
   case '9': _components.SetLastSelectedType(Preset::EType::TransistorC); break;
   case 'A': preset.DecreaseIndex(Preset::EType::CapacitorD ); break;
   case 'B': preset.IncreaseIndex(Preset::EType::CapacitorD ); break;
   case 'C': _components.SetLastSelectedType(Preset::EType::CapacitorD ); break;
   case '*': // Fall through
   case '0': // Fall through
   case '#': // Fall through
   case 'D':
      // Ignore key
      break;

   default:
      assert(false);
   }

   _updateNeeded = true;
}


void MyInit()
{
   // LCD Display
   //_lcdDisplay.I2C_Scan();
   _lcdDisplay.Init();
   _updateNeeded = true;
   HalUtils::Delay(2000);

   // Keypad init.
   _keyPad.Init();

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
