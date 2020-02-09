/*
 * BaseButton.cpp
 *
 *  Created on: Feb 9, 2020
 *      Author: miche
 */

#include <Framework/BaseButton.h>
#include <Framework/SysTickSubscribers.h>

BaseButton::BaseButton(Gpio gpio, uint8_t debounceTime, uint8_t sysTickSubscriberIndex)
: _gpio(gpio),
  _buttonState(false),
  _buttonInDebounceMode(false),
  _debounceTime(debounceTime),
  _sysTickSubscriberIndex(sysTickSubscriberIndex)
{
   SysTickSubscribers::SetSubscriber(_sysTickSubscriberIndex, this);
}


BaseButton::~BaseButton()
{
   // TODO Auto-generated destructor stub
}


void BaseButton::OnTick()
{
   _buttonInDebounceMode = false;
   SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);
   _buttonState = HAL_GPIO_ReadPin(_gpio.port, _gpio.pin);
}
