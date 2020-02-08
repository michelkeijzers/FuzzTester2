/*
 * ToggleSwitch_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include "../../Inc/Components/ToggleSwitch_INT.h"

ToggleSwitch_INT::ToggleSwitch_INT(TIM_HandleTypeDef* hTim, Gpio gpio,
 TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction)
: _hTim(hTim),
  _gpio(gpio),
  _callbackFunction(callbackFunction)
{
}

ToggleSwitch_INT::~ToggleSwitch_INT()
{
}


void ToggleSwitch_INT::CheckPressed(uint16_t pin)
{
  if ((pin == _gpio.pin) && (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == SET) && !_buttonInDebounceMode)
  {
    HAL_TIM_Base_Start_IT(_hTim);
	_buttonInDebounceMode = true;
  }
}

void ToggleSwitch_INT::CheckReleased()
{
  if(HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_RESET)
  {
	(*_callbackFunction)();
    _buttonInDebounceMode = false;
    HAL_TIM_Base_Stop_IT(_hTim);
  }
}
