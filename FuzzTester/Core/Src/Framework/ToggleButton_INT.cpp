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


/* override */ void ToggleButton_INT::OnButtonPressed()
{
   _onOffState = !_onOffState;
   (*_callbackFunction)(_onOffState);
}
