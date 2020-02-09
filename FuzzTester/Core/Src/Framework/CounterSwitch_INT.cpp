/*
 * CounterSwitch_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include "../../Inc/Framework/CounterSwitch_INT.h"
#include "../../Inc/Framework/ISysTickSubscriber.h"
#include "../../Inc/Framework/SysTickSubscribers.h"


CounterSwitch_INT::CounterSwitch_INT(uint8_t startValue, int8_t stepValue, uint8_t endValue,
      Gpio gpio, COUNTER_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
      uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseSwitch(gpio, debounceTime, sysTickSubscriberIndex),
   _startValue(startValue),
   _stepValue(stepValue),
   _endValue(endValue),
   _currentValue(startValue),
  _callbackFunction(callbackFunction)
{
}

CounterSwitch_INT::~CounterSwitch_INT()
{
}


/* override */ void CounterSwitch_INT::CheckTrigger(uint16_t pin)
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
         _currentValue += _stepValue;
         if (((_stepValue >= 0) && (_currentValue > _endValue)) ||
             ((_stepValue <  0) && (_currentValue < _endValue)))
         {
            _currentValue = _startValue;
         }

         (*_callbackFunction)(_currentValue);
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _buttonState = false;
      }
   }
}
