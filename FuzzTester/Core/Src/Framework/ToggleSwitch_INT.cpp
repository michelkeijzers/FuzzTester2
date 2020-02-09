/*
 * ToggleSwitch_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include "../../Inc/Framework/ToggleSwitch_INT.h"
#include "../../Inc/Framework/SysTickSubscribers.h"


ToggleSwitch_INT::ToggleSwitch_INT(Gpio gpio, TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  ISysTickSubscriber(),
   _gpio(gpio),
   _buttonState(false),
   _buttonInDebounceMode(false),
   _debounceTime(debounceTime),
  _callbackFunction(callbackFunction),
  _sysTickSubscriberIndex(sysTickSubscriberIndex)
{
   SysTickSubscribers::SetSubscriber(_sysTickSubscriberIndex, this);
}

ToggleSwitch_INT::~ToggleSwitch_INT()
{
}


void ToggleSwitch_INT::CheckTrigger(uint16_t pin)
{
   if ((pin == _gpio.pin) && !_buttonInDebounceMode)
   {
      if (!_buttonState && (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET))
      {
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _buttonState = true;
      }
      else if (_buttonState && (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_RESET))
      {
         (*_callbackFunction)();
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _buttonState = false;
      }
   }
}


void ToggleSwitch_INT::OnTick()
{
   _buttonInDebounceMode = false;
   SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);
   _buttonState = HAL_GPIO_ReadPin(_gpio.port, _gpio.pin);
}
