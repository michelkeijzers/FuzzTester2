/*
 * ToggleSwitch_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/Switch_INT.h>
#include "../../Inc/Framework/ISysTickSubscriber.h"
#include "../../Inc/Framework/SysTickSubscribers.h"


Switch_INT::Switch_INT(Gpio gpio, SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseSwitch(gpio, debounceTime, sysTickSubscriberIndex),
  _callbackFunction(callbackFunction)
{
}


Switch_INT::~Switch_INT()
{
}


/* override */ void Switch_INT::CheckTrigger(uint16_t pin)
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
