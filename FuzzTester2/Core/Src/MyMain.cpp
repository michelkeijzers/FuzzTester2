
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

char _lcdLine0[17];
char _lcdLine1[17];

// Refresh every 99 ms, not 100 ms (than fractions are changing when displayed items have a period of
// % 100 ms == 0
LcdDisplay       _lcdDisplay   (&hi2c1, 0x27, &Update, 99, 1);
bool _updateNeeded = false;

// Shift registers

uint32_t CapacitorAMapping[Components::NrOfCapacitors] =
{
//                                 E-top       F        G    H-bottom
//                                76543210 76543210 76543210 76543210
   0x000000E0, // Cap A1                                     111
   0x000000C0, // Cap A2                                     110
   0x000000A0, // Cap A3                                     101
   0x00000080, // Cap A4                                     100
   0x00000060, // Cap A5                                     011
   0x00000040, // Cap A6                                     010
   0x00000020, // Cap A7                                     001
   0x00000000, // Cap A8                                     000
   //TODO
};


uint32_t TransistorBMapping[Components::NrOfTransistors] =
{
//                                 E-top       F        G    H-bottom
//                                76543210 76543210 76543210 76543210
   0x00000018, // Trans B01                                     11000
   0x00000010, // Trans B02                                     10000
   0x00000008, // Trans B03                                     01000
   0x00000000, // Trans B04                                     00000
   0x00000301, // Trans B05                               11      001
   0x00000201, // Trans B06                               10      001
   0x00000101, // Trans B07                               01      001
   0x00000001, // Trans B08                               00      001
   0x00000C02, // Trans B09                             11        010
   0x00000802, // Trans B10                             10        010
   0x00000402, // Trans B11                             01        010
   0x00000002, // Trans B12                             00        010
   0x00003003, // Trans B13                           11          011
   0x00002003, // Trans B14                           10          011
   0x00001003, // Trans B15                           01          011
   0x00000003, // Trans B16                           00          011
   //TODO
};


uint32_t TransistorCMapping[Components::NrOfTransistors] =
{
//                                 E-top       F        G    H-bottom
//                                76543210 76543210 76543210 76543210
   0x00180000, // Trans C01                   11000
   0x00100000, // Trans C02                   10000
   0x00080000, // Trans C03                   01000
   0x00000000, // Trans C04                   00000
   0x03010000, // Trans C05             11      001
   0x02010000, // Trans C06             10      001
   0x01010000, // Trans C07             01      001
   0x00010000, // Trans C08             00      001
   0x0C020000, // Trans C09           11        010
   0x08020000, // Trans C10           10        010
   0x04020000, // Trans C11           01        010
   0x00020000, // Trans C12           00        010
   0x30030000, // Trans C13         11          011
   0x20030000, // Trans C14         10          011
   0x10030000, // Trans C15         01          011
   0x00030000, // Trans C16         00          011
  // TODO
};


uint32_t CapacitorDMapping[Components::NrOfCapacitors] =
{
//                                 E-top       F        G    H-bottom
//                                76543210 76543210 76543210 76543210
   0x00E00000, // Cap D1                   111
   0x00C00000, // Cap D2                   110
   0x00A00000, // Cap D3                   101
   0x00800000, // Cap D4                   100
   0x00600000, // Cap D5                   011
   0x00400000, // Cap D6                   010
   0x00200000, // Cap D7                   001
   0x00000000, // Cap D8                   000
   //TODO
};


void UpdateMultiplexers()
{
   Preset& preset = _components.GetCurrentPatch();

   uint32_t data = CapacitorAMapping [preset.GetIndex(Preset::EType::CapacitorA )] |
                   TransistorBMapping[preset.GetIndex(Preset::EType::TransistorB)] |
                   TransistorBMapping[preset.GetIndex(Preset::EType::TransistorC)] |
                   CapacitorAMapping [preset.GetIndex(Preset::EType::CapacitorD )];

   //TODO
}


void UpdateLcdLine0()
{
   Preset& preset = _components.GetCurrentPatch();

   //                       1 2 34 56 78910 11121314
   snprintf(_lcdLine0, 17, "A%1d B%02d C%02d D%1d   ",
      preset.GetIndex(Preset::EType::CapacitorA ) + 1,
      preset.GetIndex(Preset::EType::TransistorB) + 1,
      preset.GetIndex(Preset::EType::TransistorC) + 1,
      preset.GetIndex(Preset::EType::CapacitorD ) + 1);
   _lcdDisplay.SetLine(0, _lcdLine0);
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
   //_lcdDisplay.I2C_Scan();
   _lcdDisplay.Init();

   HAL_Delay(2000);

   // Keypad init.
   _keyPad.Init();


   _updateNeeded = true;

   _presets.Load();
}


int MyMain(void)
{

   //uint16_t key = _keyPad.Scan();
   //if (key != 0)
   //{

   //}

   HAL_Delay(500);

   while (true)
   {
      /*
      int delayTime = 200;

      for (int capA = 0; capA < NR_OF_CAPACITORS; capA++)
      {
         _selections.capacitorA = capA;
         UpdateLcdLine0();
         UpdateMultiplexers();
         HAL_Delay(delayTime);
      }

      for (int transB = 0; transB < NR_OF_TRANSISTORS; transB++)
      {
         _selections.transistorB = transB;
         UpdateLcdLine0();
         UpdateMultiplexers();
         HAL_Delay(delayTime);
      }

      for (int transC = 0; transC < NR_OF_TRANSISTORS; transC++)
      {
         _selections.transistorC = transC;
         UpdateLcdLine0();
         UpdateMultiplexers();
         HAL_Delay(delayTime);
      }

      for (int capD = 0; capD < NR_OF_CAPACITORS; capD++)
      {
         _selections.capacitorD = capD;
         UpdateLcdLine0();
         UpdateMultiplexers();
         HAL_Delay(delayTime);
      }
      */
   }

   return 0;
}


void HAL_Delay(uint32_t milliseconds)
{
   /* Initially clear flag */
   (void) SysTick->CTRL;
   while (milliseconds != 0)
   {
      /* COUNTFLAG returns 1 if timer counted to 0 since the last flag read */
      milliseconds -= (SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) >> SysTick_CTRL_COUNTFLAG_Pos;
   }
}
