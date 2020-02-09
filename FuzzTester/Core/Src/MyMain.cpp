#include <Framework/CounterButton_INT.h>
#include <Framework/KeyPad.h>
#include <Framework/LcdDisplay.h>
#include <Framework/ShiftRegister.h>
#include <Framework/Button_INT.h>
#include <Framework/MomentaryButton_INT.h>
#include <Framework/ToggleButton_INT.h>
#include "Framework/SysTickSubscribers.h"

#include "Main.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "stm32f1xx_hal.h"

extern I2C_HandleTypeDef hi2c1;
extern SPI_HandleTypeDef hspi2;

void ProcessButton();
void ProcessMomentaryButton(bool onOffState);
void ProcessToggleButton(bool onOffState);
void ProcessCounterButton(uint8_t currentValue);
void ProcessCounterDiceButton(uint8_t currentValue);

const uint8_t NR_OF_SYS_TICK_SUBSCRIBERS = 4;

SysTickSubscribers _sysTickSubscibers(NR_OF_SYS_TICK_SUBSCRIBERS);

Button_INT          _button            (           { GPIO_PUSH_BUTTON_1_GPIO_Port, GPIO_PUSH_BUTTON_1_Pin }, &ProcessButton           , 0, 50);
MomentaryButton_INT _momentaryButton   (           { GPIO_PUSH_BUTTON_4_GPIO_Port, GPIO_PUSH_BUTTON_4_Pin }, &ProcessMomentaryButton  , 3, 50);
ToggleButton_INT    _toggleButton      (           { GPIO_PUSH_BUTTON_2_GPIO_Port, GPIO_PUSH_BUTTON_2_Pin }, &ProcessToggleButton     , 1, 50);
CounterButton_INT   _counterButton     (0, 10, 50, { GPIO_PUSH_BUTTON_3_GPIO_Port, GPIO_PUSH_BUTTON_3_Pin }, &ProcessCounterButton    , 2, 50);
//CounterButton_INT _counterDiceButton (6, -1, 1 , { GPIO_PUSH_BUTTON_4_GPIO_Port, GPIO_PUSH_BUTTON_4_Pin }, &ProcessCounterDiceButton, 3, 50);

const Gpio _keyPadRows[]    = { { GPIO_KEYPAD_ROW_1_GPIO_Port, GPIO_KEYPAD_ROW_1_Pin },
                                { GPIO_KEYPAD_ROW_2_GPIO_Port, GPIO_KEYPAD_ROW_2_Pin },
                                { GPIO_KEYPAD_ROW_3_GPIO_Port, GPIO_KEYPAD_ROW_3_Pin },
                                { GPIO_KEYPAD_ROW_4_GPIO_Port, GPIO_KEYPAD_ROW_4_Pin } };
const Gpio _keyPadColumns[] = { { GPIO_KEYPAD_COLUMN_1_GPIO_Port, GPIO_KEYPAD_COLUMN_1_Pin },
                                { GPIO_KEYPAD_COLUMN_2_GPIO_Port, GPIO_KEYPAD_COLUMN_2_Pin },
                                { GPIO_KEYPAD_COLUMN_3_GPIO_Port, GPIO_KEYPAD_COLUMN_3_Pin },
                                { GPIO_KEYPAD_COLUMN_4_GPIO_Port, GPIO_KEYPAD_COLUMN_4_Pin } };
KeyPad           _keyPad       (4, 4, _keyPadRows, _keyPadColumns);


uint16_t _values[8] = { 0, 0, 0, 0, 0, 0, 0, 0 }; // button 1 + hold, button 2 + hold etc.
bool _toggleButtonOnOffState = false;
bool _momentaryButtonOnOffState = false;


//012345678901235
// 123-126 126-126   button 1 value + hold . button 2 + hold
// 163-164 613-164   button 3 value + hold . button 4 + hold

char _lcdLine0[17];
char _lcdLine1[17];


LcdDisplay       _lcdDisplay   (&hi2c1, 0x27);

ShiftRegister    _shiftRegister(&hspi2, GPIO_LATCH_GPIO_Port, GPIO_LATCH_Pin);

uint8_t _dataToShift[4] = { 0x00, 0xf0, 0x0f, 0xff };



void UpdateLcd()
{
   snprintf(_lcdLine0, 17, "%3d-%3d %3d%c%3d", _values[0], _values[1], _values[2], _toggleButtonOnOffState    ? 'X' : '-', _values[3]);
   snprintf(_lcdLine1, 17, "%3d-%3d %3d%c%3d", _values[4], _values[5], _values[6], _momentaryButtonOnOffState ? 'X' : '-', _values[7]);
   _lcdDisplay.SetLine(0, _lcdLine0);
   _lcdDisplay.SetLine(1, _lcdLine1);
}

void ProcessButton()
{
   _values[0] = (_values[0] + 1) % 1000;
   UpdateLcd();
}


void ProcessMomentaryButton(bool onOffState)
{
   _momentaryButtonOnOffState = onOffState;
   _values[6] = (_values[6] + 1) % 1000;
   UpdateLcd();
}


void ProcessToggleButton(bool onOffState)
{
   _toggleButtonOnOffState = onOffState;
   _values[2] = (_values[2] + 1) % 1000;
   UpdateLcd();
}


void ProcessCounterButton(uint8_t currentValue)
{
   _values[4] = currentValue;
   UpdateLcd();
}


void ProcessCounterDiceButton(uint8_t currentValue)
{
   _values[6] = currentValue;
   UpdateLcd();
}



void MyInit()
{

   //HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000U);
   //HAL_NVIC_SetPriority(SysTick_IRQn, TICK_INT_PRIORITY, 0U);

    //_lcdDisplay.I2C_Scan();
    _lcdDisplay.Init();

    // set address to 0x00
    _lcdDisplay.SetLine(0, "Using 1602 LCD");
    _lcdDisplay.SetLine(1, "I2C Mode  v09");

    _lcdDisplay.SetLine(0, "Using 1602 LCD");
    _lcdDisplay.SetLine(1, "I2C Mode  v10");
}


int MyMain(void)
{
   uint16_t key = _keyPad.Scan();
   if (key != 0)
   {
      char line2[17];
      sprintf(line2, "Key pressed: %c  ", _keyPad.GetChar(key));
      _lcdDisplay.SetLine(1, line2);
   }

   for (uint8_t n = 0; n < sizeof(_dataToShift); n++)
   {
	  //LCD_SendCommand(LCD_ADDR, 0b10000000); // Line 1, address to 0
	  //LCD_SendString(LCD_ADDR, "Cx Txx Txx Cx");
	  //LCD_SendCommand(LCD_ADDR, 0b11000000); // Line 2, address to 40
	  //LCD_SendString(LCD_ADDR, "Cap 1: 10 uF");

	  _shiftRegister.ShiftOut(_dataToShift + n, 1);
	  HAL_Delay(100);
   }

   return 0;
}


void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  _button.CheckTrigger(GPIO_Pin);
  _momentaryButton.CheckTrigger(GPIO_Pin);
  _toggleButton.CheckTrigger(GPIO_Pin);
  _counterButton.CheckTrigger(GPIO_Pin);
  //_counterDiceButton.CheckTrigger(GPIO_Pin);
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
