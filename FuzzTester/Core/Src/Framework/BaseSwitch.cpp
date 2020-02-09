/*
 * BaseSwitch.cpp
 *
 *  Created on: Feb 9, 2020
 *      Author: miche
 */

#include <Framework/BaseSwitch.h>
#include <Framework/SysTickSubscribers.h>

BaseSwitch::BaseSwitch(Gpio gpio, uint8_t debounceTime, uint8_t sysTickSubscriberIndex)
: _gpio(gpio),
  _buttonState(false),
  _buttonInDebounceMode(false),
  _debounceTime(debounceTime),
  _sysTickSubscriberIndex(sysTickSubscriberIndex)
{
   SysTickSubscribers::SetSubscriber(_sysTickSubscriberIndex, this);
}


BaseSwitch::~BaseSwitch()
{
   // TODO Auto-generated destructor stub
}


void BaseSwitch::OnTick()
{
   _buttonInDebounceMode = false;
   SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);
   _buttonState = HAL_GPIO_ReadPin(_gpio.port, _gpio.pin);
}
