/*
 * ToggleSwitch_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/ToggleSwitch_INT.h>
#include "../../Inc/Framework/ISysTickSubscriber.h"
#include "../../Inc/Framework/SysTickSubscribers.h"


ToggleSwitch_INT::ToggleSwitch_INT(Gpio gpio, TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseSwitch(gpio, debounceTime, sysTickSubscriberIndex),
   _onOffState(false),
   _callbackFunction(callbackFunction)
{
}

ToggleSwitch_INT::~ToggleSwitch_INT()
{
}


/* override */ void ToggleSwitch_INT::CheckTrigger(uint16_t pin)
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
         _onOffState = !_onOffState;
         (*_callbackFunction)(_onOffState);
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _buttonState = false;
      }
   }
}
