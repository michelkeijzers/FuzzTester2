/*
 * BaseButton.cpp
 *
 *  Created on: Feb 9, 2020
 *      Author: miche
 */

#include <Framework/Buttons/BaseButton.h>
#include <Framework/SysTickSubscribers.h>

BaseButton::BaseButton(Gpio gpio, uint16_t holdDelayTime, uint16_t holdStepTime, uint8_t debounceTime, uint8_t sysTickSubscriberIndex)
: _gpio(gpio),
  _buttonState(false),
  _holdDelayTime(holdDelayTime),
  _holdStepTime(holdStepTime),
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


void BaseButton::CheckTrigger(uint16_t pin)
{
   if ((pin == _gpio.pin) && !_buttonInDebounceMode)
   {
      if (!_buttonState && (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET))
      {
         OnButtonPressed();
         StartDebounceAndSetButtonState(true);
      }
      else if (_buttonState && (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_RESET))
      {
         OnButtonReleased();
         StartDebounceAndSetButtonState(false);
      }
   }
}


/* virtual */  void BaseButton::OnButtonPressed()
{
}


/* virtual */ void BaseButton::OnButtonReleased()
{
}



/* virtual */ void BaseButton::OnButtonHold()
{
}


void BaseButton::StartDebounceAndSetButtonState(bool newButtonState)
{
   _buttonInDebounceMode = true;
   SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
   _buttonState = newButtonState;

}


void BaseButton::OnTick()
{
   if (_buttonInDebounceMode)
   {
      _buttonInDebounceMode = false;
      bool pinState = HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) ? true : false;
      if (pinState != _buttonState)
      {
        _buttonState = pinState;
        if (_buttonState)
        {
           OnButtonPressed();
        }
        else
        {
           OnButtonReleased();
        }
      }

      SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, (_buttonState && _holdDelayTime > 0) ? _holdDelayTime : 0);
   }
   else
   {
      // Hold tick
      OnButtonHold();

      SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, (_buttonState && _holdStepTime > 0) ? _holdStepTime : 0);
   }
}
