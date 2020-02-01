/*
 * ToggleSwitch_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include "ToggleSwitch_INT.h"

ToggleSwitch_INT::ToggleSwitch_INT(TIM_HandleTypeDef* hTim, GPIO_TypeDef* port, uint16_t pin,
 TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction)
: _hTim(hTim),
  _port(port),
  _pin(pin),
  _callbackFunction(callbackFunction)
{
}

ToggleSwitch_INT::~ToggleSwitch_INT()
{
}


void ToggleSwitch_INT::CheckPressed(uint16_t pin)
{
  if ((pin == _pin) && !_buttonInDebounceMode)
  {
    HAL_TIM_Base_Start_IT(_hTim);
	_buttonInDebounceMode = true;
  }
}

void ToggleSwitch_INT::CheckReleased()
{
  if(HAL_GPIO_ReadPin(_port, _pin) == GPIO_PIN_RESET)
  {
	(*_callbackFunction)();
    _buttonInDebounceMode = false;
    HAL_TIM_Base_Stop_IT(_hTim);
  }
}
