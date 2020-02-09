/*
 * Button_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#include <Framework/MomentaryButton_INT.h>
#include <Framework/ISysTickSubscriber.h>
#include <Framework/SysTickSubscribers.h>


MomentaryButton_INT::MomentaryButton_INT(Gpio gpio, MOMENTARY_BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
   uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
:  BaseButton(gpio, 0, 0, debounceTime, sysTickSubscriberIndex),
  _callbackFunction(callbackFunction)
{
}


MomentaryButton_INT::~MomentaryButton_INT()
{
}


/* override */ void MomentaryButton_INT::OnButtonPressed()
{
   (*_callbackFunction)(true);
}


/* override */ void MomentaryButton_INT::OnButtonReleased()
{
   (*_callbackFunction)(false);
}
