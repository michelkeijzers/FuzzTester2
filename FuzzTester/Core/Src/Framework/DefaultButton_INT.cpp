/*
 * Button_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/DefaultButton_INT.h>
#include <Framework/ISysTickSubscriber.h>
#include <Framework/SysTickSubscribers.h>


DefaultButton_INT::DefaultButton_INT(
   Gpio gpio,          BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
   uint16_t holdDelayTime, uint16_t holdStepTime, BUTTON_CALLBACK_FUNCTION_PTR holdCallbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseButton(gpio, holdDelayTime, holdStepTime, debounceTime, sysTickSubscriberIndex),
  _callbackFunction(callbackFunction),
  _holdCallbackFunction(holdCallbackFunction)
{
}


DefaultButton_INT::~DefaultButton_INT()
{
}


/* override */ void DefaultButton_INT::OnButtonPressed()
{
   (*_callbackFunction)();
}


/* override */ void DefaultButton_INT::OnButtonHold()
{
   (*_holdCallbackFunction)();
}
