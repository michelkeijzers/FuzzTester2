/*
 * Button_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/Button_INT.h>
#include <Framework/ISysTickSubscriber.h>
#include <Framework/SysTickSubscribers.h>


Button_INT::Button_INT(Gpio gpio, BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseButton(gpio, debounceTime, sysTickSubscriberIndex),
  _callbackFunction(callbackFunction)
{
}


Button_INT::~Button_INT()
{
}


/* override */ void Button_INT::CheckTrigger(uint16_t pin)
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
