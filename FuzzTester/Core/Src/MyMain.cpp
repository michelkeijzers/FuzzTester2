

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
bool _updateNeededy = false;

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
   uint8_t capacitorA;
   uint8_t transistorB;
   uint8_t transistorC;
   uint8_t capacitorD;
   ESelected lastSelected;
};

SelectionsStruct _selections;

// Shift registers

ShiftRegister    _shiftRegister(&hspi2, GPIO_LATCH_GPIO_Port, GPIO_LATCH_Pin);

uint8_t _dataToShift[4] = { 0x00, 0xf0, 0x0f, 0xff };


/*
 * Bytes to send:
 *
 * 76543210 76543210 76543210 76543210
 *                                 XXX  part  1: Capacitor A1-8
 *                              XXX     part  2: 000: Trans B 1-B 4, 001: Trans B 5-B 8, 010: Trans B 9-B12
 *                                               011: Trans B13-B16, 100: Trans B17-B20
 *                            XX        part  3: Trans B 1-B 4
 *                         XX           part  4: Trans B 5-B 8
 *                       XX             part  5: Trans B 9-B12
 *                     XX               part  6: Trans B13-B16
 *                   XX                 part  7: Trans B17-B20
 *               XXX                    part  8: Capacitor D1-8
 *            XXX                       part  9: 000: Trans C 1-C 4, 001: Trans C 5-C 8, 010: Trans C 9-C12
 *                                      part 10: 011: Trans C13-C16, 100: Trans C17-C20
 *          XX                          part 11: Trans C 1-C 4
 *       XX                             part 12: Trans C 5-C 8
 *     XX                               part 13: Trans C 9-C12
 *   XX                                 part 14: Trans C13-C16
 * XX                                   part 15: Trans C17-C20
 */
void UpdateMultiplexers()
{
   uint32_t data = 0;
   data  =  _selections.capacitorA; // Part 1
   data |= (_selections.transistorB / 4) << 3; // Part 2
   data |= (_selections.transistorB % 4) << (6 + 2 * _selections.transistorB / 4); // Part [3..7]

   data |= (_selections.capacitorD) << 16; // Part 9
   data |= (_selections.transistorC / 4) << 19; // Part 10
   data |= (_selections.transistorC % 4) << (22 + 2 * _selections.transistorC / 4); // Part [11..15]

   _shiftRegister.ShiftOut((uint8_t*) (&data),  sizeof(data));
}


void UpdateLcdLine0()
{
   //                       1 2 3456 78 9012 3 456
   snprintf(_lcdLine0, 17, "A%1d B%02d C%02d D%1d",
    _selections.capacitorA  + 1,
    _selections.transistorB + 1,
    _selections.transistorC + 1,
    _selections.capacitorD  + 1);
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
   if (_updateNeededy)
   {
      // Update multiplexers
      UpdateMultiplexers();

      UpdateLcdLine0();
      UpdateLcdLine1();
      _updateNeededy = false;
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

   _updateNeededy = true;
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

    _updateNeededy = true;
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
