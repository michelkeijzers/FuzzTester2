/*
 * Button_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/DefaultButton_INT.h>
#include <Framework/ISysTickSubscriber.h>
#include <Framework/SysTickSubscribers.h>


DefaultButton_INT::DefaultButton_INT(Gpio gpio, BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseButton(gpio, debounceTime, sysTickSubscriberIndex),
  _callbackFunction(callbackFunction)
{
}


DefaultButton_INT::~DefaultButton_INT()
{
}


/* override */ void DefaultButton_INT::OnButtonPressed()
{
   (*_callbackFunction)();
}
