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
void UpdateLcd();

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

KeyPad _keyPad(4, 4, "123A456B789C*0#D",_keyPadRows, _keyPadColumns, &ProcessKeyPad, 10, 500, 300, 20, 0);

// Display

char _lcdLine0[17];
char _lcdLine1[17];

LcdDisplay       _lcdDisplay   (&hi2c1, 0x27, &UpdateLcd, 99, 1); // Refresh every 99 ms, not 100 ms (than fractions are changing when displayed items have a period of % 100 ms == 0
bool _lcdIsDirty = false;

// Menu

const char* _capacitorInfos[] =
{
   //1234567890123456
    "Cap1:1:100nF Cer",
    "Cap1:2: 33nF Cer",
    "Cap1:3: 47nF Cer",
    "Cap1:4:100nF Cer",
    "Cap1:5:0.47uF El",
    "Cap1:6:   1uF El",
    "Cap1:7: 4.7uF El",
    "Cap1:8:  10uF El",
};

const char* _transistorInfos[] =
{

  //1234567890123456
   "Trans1: 1:2N2222",
   "Trans1: 2:2N3904",
   "Trans1: 4:2N5088",
   "Trans1: 4:2N5551",
   "Trans1: 5:A42   ",
   "Trans1: 6:BC337 ",
   "Trans1: 7:BC547B",
   "Trans1: 8:BC548B",
   "Trans1: 9:BC639 ",
   "Trans1:10:C945  ",
   "Trans1:11:C1815 ",
   "Trans1:12:MPSA18",
   "Trans1:13:S8050 ",
   "Trans1:14:S9013 ",
   "Trans1:15:S9014 ",
   "Trans1:16:S9018 "
};

const uint8_t NR_OF_CAPACITORS = 8;
const uint8_t NR_OF_TRANSISTORS = 16;

enum ESelected
{
   Capacitor1,
   Transistor1,
   Transistor2,
   Capacitor2
};

struct SelectionsStruct
{
   uint8_t capacitor1;
   uint8_t transistor1;
   uint8_t transistor2;
   uint8_t capacitor2;
   ESelected lastSelected;
};

SelectionsStruct _selections;

// Shift registers

ShiftRegister    _shiftRegister(&hspi2, GPIO_LATCH_GPIO_Port, GPIO_LATCH_Pin);

uint8_t _dataToShift[4] = { 0x00, 0xf0, 0x0f, 0xff };



void UpdateLcdLine0()
{
   snprintf(_lcdLine0, 17, "Fuzz %1d-%2d-%2d-%1d", _selections.capacitor1 + 1, _selections.transistor1 + 1,
         _selections.transistor2 + 1, _selections.capacitor2 + 1);
   _lcdDisplay.SetLine(0, _lcdLine0);
}


void UpdateLcdLine1()
{
   switch(_selections.lastSelected)
   {
   case Capacitor1:
      snprintf(_lcdLine1, 17, "%s", _capacitorInfos[_selections.capacitor1]);
      break;

   case Transistor1:
      snprintf(_lcdLine1, 17, "%s", _transistorInfos[_selections.transistor1]);
      break;

   case Transistor2:
      snprintf(_lcdLine1, 17, "%s", _transistorInfos[_selections.transistor2]);
      _lcdLine1[5] = '2';
      break;

   case Capacitor2:
      snprintf(_lcdLine1, 17, "%s", _capacitorInfos[_selections.capacitor2]);
      _lcdLine1[3] = '2';
      break;

   default:
      assert(false);
   }

   _lcdDisplay.SetLine(1, _lcdLine1);
}



void UpdateLcd()
{
   if (_lcdIsDirty)
   {
      UpdateLcdLine0();
      UpdateLcdLine1();
      _lcdIsDirty = false;
   }
}



void ProcessKeyPad(char key)
{
   switch (key)
   {
   case '1':
      _selections.capacitor1 = MAX(0, _selections.capacitor1 - 1);
      _selections.lastSelected = Capacitor1;
      break;

   case '4':
      _selections.capacitor1 = MIN(NR_OF_CAPACITORS - 1, _selections.capacitor1 + 1);
      _selections.lastSelected = Capacitor1;
      break;

   case '7':
      _selections.lastSelected = Capacitor1;
      break;

   case '2':
      _selections.transistor1 = MAX(0, _selections.transistor1 - 1);
      _selections.lastSelected = Transistor1;
      break;

   case '5':
      _selections.transistor1 = MIN(NR_OF_TRANSISTORS - 1, _selections.transistor1 + 1);
      _selections.lastSelected = Transistor1;
      break;

   case '8':
      _selections.lastSelected = Transistor1;
      break;

   case '3':
      _selections.transistor2 = MAX(0, _selections.transistor2 - 1);
      _selections.lastSelected = Transistor2;
      break;

   case '6':
      _selections.transistor2 = MIN(NR_OF_TRANSISTORS - 1, _selections.transistor2 + 1);
      _selections.lastSelected = Transistor2;
      break;

   case '9':
      _selections.lastSelected = Transistor2;
      break;

   case 'A':
      _selections.capacitor2 = MAX(0, _selections.capacitor2 - 1);
      _selections.lastSelected = Capacitor2;
      break;

   case 'B':
      _selections.capacitor2 = MIN(NR_OF_CAPACITORS - 1, _selections.capacitor2 + 1);
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

   _lcdIsDirty = true;
}

void MyInit()
{
   //_lcdDisplay.I2C_Scan();
    _lcdDisplay.Init();

    // set address to 0x00

    // Keypad init.
    _keyPad.Init();

    // Selections
    _selections.capacitor1   = 0;
    _selections.transistor1  = 0;
    _selections.transistor2  = 0;
    _selections.capacitor2   = 0;
    _selections.lastSelected = Capacitor1;

    _lcdIsDirty = true;
}


int MyMain(void)
{

   uint16_t key = _keyPad.Scan();
   if (key != 0)
   {

   }

   for (uint8_t n = 0; n < sizeof(_dataToShift); n++)
   {
	  //LCD_SendCommand(LCD_ADDR, 0b10000000); // Line 1, address to 0
	  //LCD_SendString(LCD_ADDR, "Cx Txx Txx Cx");
	  //LCD_SendCommand(LCD_ADDR, 0b11000000); // Line 2, address to 40
	  //LCD_SendString(LCD_ADDR, "Cap 1: 10 uF");

	 // _shiftRegister.ShiftOut(_dataToShift + n, 1);
	  HAL_Delay(100);
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
