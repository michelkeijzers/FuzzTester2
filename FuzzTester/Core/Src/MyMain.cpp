#include <Framework/KeyPad.h>
#include <Framework/KeyPad.h>
#include <Framework/LcdDisplay.h>
#include <Framework/ShiftRegister.h>
#include "Framework/SysTickSubscribers.h"

#include "Main.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

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

char _lcdLine0[17];
char _lcdLine1[17];

LcdDisplay       _lcdDisplay   (&hi2c1, 0x27, &UpdateLcd, 99, 5); // Refresh every 99 ms, not 100 ms (than fractions are changing when displayed items have a period of % 100 ms == 0
bool _lcdIsDirty = false;

ShiftRegister    _shiftRegister(&hspi2, GPIO_LATCH_GPIO_Port, GPIO_LATCH_Pin);

uint8_t _dataToShift[4] = { 0x00, 0xf0, 0x0f, 0xff };


void UpdateLcdLine0()
{
  // snprintf(_lcdLine0, 17, "%3d%c%3d%c%3d%c%3d%c", _values[0], _symbols[0], _values[1], _symbols[1],
  //                                                 _values[2], _symbols[2], _values[3], _symbols[3]);
   _lcdDisplay.SetLine(0, _lcdLine0);
}


void UpdateLcdLine1()
{
   //snprintf(_lcdLine1, 17, "%3d%c%3d%c%3d%c%3d%c", _values[4], _symbols[4], _values[5], _symbols[5],
   //                                                _values[6], _symbols[6], _values[7], _symbols[7]);
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
   static uint8_t item = 0;


   _lcdIsDirty = true;

   item = (item + 1) % 8;
}

void MyInit()
{
    //_lcdDisplay.I2C_Scan();
    _lcdDisplay.Init();

    // set address to 0x00
    _lcdDisplay.SetLine(0, "---Fuzz Pedal---");
    _lcdDisplay.SetLine(1, "-----v0.1-------");

    // Keypad init.
    _keyPad.Init();
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
