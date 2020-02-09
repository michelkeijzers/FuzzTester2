/*
 * ToggleButton_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/ToggleButton_INT.h>
#include <Framework/ISysTickSubscriber.h>
#include <Framework/SysTickSubscribers.h>


ToggleButton_INT::ToggleButton_INT(Gpio gpio, TOGGLE_BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseButton(gpio, debounceTime, sysTickSubscriberIndex),
   _onOffState(false),
   _callbackFunction(callbackFunction)
{
}

ToggleButton_INT::~ToggleButton_INT()
{
}


/* override */ void ToggleButton_INT::CheckTrigger(uint16_t pin)
{
   if ((pin == _gpio.pin) && !_buttonInDebounceMode)
   {
      if (!_buttonState && (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET))
      {
         _onOffState = !_onOffState;
         (*_callbackFunction)(_onOffState);

         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _buttonState = true;
      }
      else if (_buttonState && (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_RESET))
      {
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _buttonState = false;
      }
   }
}
