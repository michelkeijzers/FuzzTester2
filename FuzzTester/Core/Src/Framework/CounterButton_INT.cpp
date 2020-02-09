/*
 * CounterButton_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/CounterButton_INT.h>
#include <Framework/ISysTickSubscriber.h>
#include <Framework/SysTickSubscribers.h>


CounterButton_INT::CounterButton_INT(uint8_t startValue, int8_t stepValue, uint8_t endValue,
      Gpio gpio, COUNTER_BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
      uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseButton(gpio, debounceTime, sysTickSubscriberIndex),
   _startValue(startValue),
   _stepValue(stepValue),
   _endValue(endValue),
   _currentValue(startValue),
  _callbackFunction(callbackFunction)
{
}

CounterButton_INT::~CounterButton_INT()
{
}


/* override */ void CounterButton_INT::OnButtonPressed()
{
   _currentValue += _stepValue;
   if (((_stepValue >= 0) && (_currentValue > _endValue)) ||
       ((_stepValue <  0) && (_currentValue < _endValue)))
   {
      _currentValue = _startValue;
   }

   (*_callbackFunction)(_currentValue);
}
