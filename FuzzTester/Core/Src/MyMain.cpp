#include <Framework/KeyPad.h>
#include <Framework/LcdDisplay.h>
#include <Framework/ShiftRegister.h>
#include <Framework/ToggleSwitch_INT.h>
#include "Framework/SysTickSubscribers.h"

#include "Main.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "stm32f1xx_hal.h"

extern I2C_HandleTypeDef hi2c1;
extern SPI_HandleTypeDef hspi2;

void ProcessToggleButtonReleased();

const uint8_t NR_OF_SYS_TICK_SUBSCRIBERS = 1;

SysTickSubscribers _sysTickSubscibers(NR_OF_SYS_TICK_SUBSCRIBERS);

ToggleSwitch_INT _toggleSwitch ({ GPIO_PUSH_BUTTON_1_GPIO_Port, GPIO_PUSH_BUTTON_1_Pin }, &ProcessToggleButtonReleased, 0, 50);

const Gpio _keyPadRows[]    = { { GPIO_KEYPAD_ROW_1_GPIO_Port, GPIO_KEYPAD_ROW_1_Pin },
                                { GPIO_KEYPAD_ROW_2_GPIO_Port, GPIO_KEYPAD_ROW_2_Pin },
                                { GPIO_KEYPAD_ROW_3_GPIO_Port, GPIO_KEYPAD_ROW_3_Pin },
                                { GPIO_KEYPAD_ROW_4_GPIO_Port, GPIO_KEYPAD_ROW_4_Pin } };
const Gpio _keyPadColumns[] = { { GPIO_KEYPAD_COLUMN_1_GPIO_Port, GPIO_KEYPAD_COLUMN_1_Pin },
                                { GPIO_KEYPAD_COLUMN_2_GPIO_Port, GPIO_KEYPAD_COLUMN_2_Pin },
                                { GPIO_KEYPAD_COLUMN_3_GPIO_Port, GPIO_KEYPAD_COLUMN_3_Pin },
                                { GPIO_KEYPAD_COLUMN_4_GPIO_Port, GPIO_KEYPAD_COLUMN_4_Pin } };
KeyPad           _keyPad       (4, 4, _keyPadRows, _keyPadColumns);

LcdDisplay       _lcdDisplay   (&hi2c1, 0x27);

ShiftRegister    _shiftRegister(&hspi2, GPIO_LATCH_GPIO_Port, GPIO_LATCH_Pin);

uint8_t _dataToShift[4] = { 0x00, 0xf0, 0x0f, 0xff };



void ProcessToggleButtonReleased()
{
  HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_12);
}


void MyInit()
{

   //HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000U);
   //HAL_NVIC_SetPriority(SysTick_IRQn, TICK_INT_PRIORITY, 0U);

    //_lcdDisplay.I2C_Scan();
    _lcdDisplay.Init();

    // set address to 0x00
    _lcdDisplay.SetLine(0, "Using 1602 LCD");
    _lcdDisplay.SetLine(1, "I2C Mode  v08");
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
  _toggleSwitch.CheckTrigger(GPIO_Pin);
}
