

#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/param.h>

#include <Framework/KeyPad.h>
#include <Framework/KeyPad.h>
#include <Framework/LcdDisplay.h>
#include <Framework/ShiftRegister.h>
#include "Framework/SysTickSubscribers.h"

#include "Main.h"

#include "stm32f1xx_hal.h"

extern I2C_HandleTypeDef hi2c1;
extern SPI_HandleTypeDef hspi2;

void ProcessKeyPad(char key);
void Update();

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

// Menu

const char* _capacitorInfos[] =
{
   //1234567890123456
    "Cap A1: 10nF Cer", // 1
    "Cap A2: 33nF Cer", // 2
    "Cap A3: 47nF Cer", // 3
    "Cap A4:100nF Cer", // 4
    "Cap A5:0.47uF El", // 5
    "Cap A6:   1uF El", // 6
    "Cap A7: 4.7uF El", // 7
    "Cap A8:  10uF El", // 8
};

const char* _transistorInfos[] =
{

  //1234567890123456
   "Trans B01:2N2222", //  1
   "Trans B02:2N3904", //  2
   "Trans B03:2N5088", //  3
   "Trans B04:2N5551", //  4
   "Trans B05:A42   ", //  5
   "Trans B06:BC337 ", //  6
   "Trans B07:BC547B", //  7
   "Trans B08:BC548B", //  8
   "Trans B09:BC639 ", //  9
   "Trans B10:C945  ", // 10
   "Trans B11:C1815 ", // 11
   "Trans B12:MPSA18", // 12
   "Trans B13:S8050 ", // 13
   "Trans B14:S9013 ", // 14
   "Trans B15:S9014 ", // 15
   "Trans B16:S9018 ", // 16
   "Trans B17:TODO  ", // 17
   "Trans B18:TODO  ", // 18
   "Trans B19:TODO  ", // 19
   "Trans B20:TODO  ", // 20
};

const uint8_t NR_OF_CAPACITORS = 8;
const uint8_t NR_OF_TRANSISTORS = 20;

enum ESelected
{
   Capacitor1,
   Transistor1,
   Transistor2,
   Capacitor2
};


struct SelectionsStruct
{
   uint8_t debugNumber; // max 2 digits
   uint8_t capacitorA;
   uint8_t transistorB;
   uint8_t transistorC;
   uint8_t capacitorD;
   ESelected lastSelected;
};

SelectionsStruct _selections;

// Shift registers

ShiftRegister    _shiftRegister(&hspi2, GPIO_LATCH_GPIO_Port, GPIO_LATCH_Pin);


uint32_t CapacitorAMapping[NR_OF_CAPACITORS] =
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
};


uint32_t TransistorBMapping[NR_OF_TRANSISTORS] =
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
   0x0000C004, // Trans B17                         11            100
   0x00008004, // Trans B18                         10            100
   0x00004004, // Trans B19                         01            100
   0x00000004, // Trans B20                         00            100
};


uint32_t TransistorCMapping[NR_OF_TRANSISTORS] =
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
   0xC0040000, // Trans C17       11            100
   0x80040000, // Trans C18       10            100
   0x40040000, // Trans C19       01            100
   0x00040000, // Trans C20       00            100
};


uint32_t CapacitorDMapping[NR_OF_CAPACITORS] =
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
};


void UpdateMultiplexers()
{
   uint32_t data = CapacitorAMapping [_selections.capacitorA ] |
                   TransistorBMapping[_selections.transistorB] |
                   TransistorCMapping[_selections.transistorC] |
                   CapacitorDMapping [_selections.capacitorD ];

   _shiftRegister.ShiftOut((uint8_t*) (&data),  sizeof(data));
}


void UpdateLcdLine0()
{
   //                       1 2 34 56 78910 11121314
   snprintf(_lcdLine0, 17, "A%1d B%02d C%02d D%1d %2d",
    _selections.capacitorA  + 1,
    _selections.transistorB + 1,
    _selections.transistorC + 1,
    _selections.capacitorD  + 1,
   _selections.debugNumber);
   _lcdDisplay.SetLine(0, _lcdLine0);
}


void UpdateLcdLine1()
{
   switch(_selections.lastSelected)
   {
   case Capacitor1:
      snprintf(_lcdLine1, 17, "%s", _capacitorInfos[_selections.capacitorA]);
      break;

   case Transistor1:
      snprintf(_lcdLine1, 17, "%s", _transistorInfos[_selections.transistorB]);
      break;

   case Transistor2:
      snprintf(_lcdLine1, 17, "%s", _transistorInfos[_selections.transistorC]);
      _lcdLine1[6] = 'C';
      break;

   case Capacitor2:
      snprintf(_lcdLine1, 17, "%s", _capacitorInfos[_selections.capacitorD]);
      _lcdLine1[4] = 'D';
      break;

   default:
      assert(false);
   }

   _lcdDisplay.SetLine(1, _lcdLine1);
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
   switch (key)
   {
   case '1':
      _selections.capacitorA = MAX(0, _selections.capacitorA - 1);
      _selections.lastSelected = Capacitor1;
      break;

   case '4':
      _selections.capacitorA = MIN(NR_OF_CAPACITORS - 1, _selections.capacitorA + 1);
      _selections.lastSelected = Capacitor1;
      break;

   case '7':
      _selections.lastSelected = Capacitor1;
      break;

   case '2':
      _selections.transistorB = MAX(0, _selections.transistorB - 1);
      _selections.lastSelected = Transistor1;
      break;

   case '5':
      _selections.transistorB = MIN(NR_OF_TRANSISTORS - 1, _selections.transistorB + 1);
      _selections.lastSelected = Transistor1;
      break;

   case '8':
      _selections.lastSelected = Transistor1;
      break;

   case '3':
      _selections.transistorC = MAX(0, _selections.transistorC - 1);
      _selections.lastSelected = Transistor2;
      break;

   case '6':
      _selections.transistorC = MIN(NR_OF_TRANSISTORS - 1, _selections.transistorC + 1);
      _selections.lastSelected = Transistor2;
      break;

   case '9':
      _selections.lastSelected = Transistor2;
      break;

   case 'A':
      _selections.capacitorD = MAX(0, _selections.capacitorD - 1);
      _selections.lastSelected = Capacitor2;
      break;

   case 'B':
      _selections.capacitorD = MIN(NR_OF_CAPACITORS - 1, _selections.capacitorD + 1);
      _selections.lastSelected = Capacitor2;
      break;

   case 'C':
      _selections.lastSelected = Capacitor2;
      break;

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

    // set address to 0x00

    // Keypad init.
    _keyPad.Init();

    // Selections
    _selections.capacitorA   = 0;
    _selections.transistorB  = 0;
    _selections.transistorC  = 0;
    _selections.capacitorD   = 0;
    _selections.lastSelected = Capacitor1;

    _updateNeeded = true;
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
