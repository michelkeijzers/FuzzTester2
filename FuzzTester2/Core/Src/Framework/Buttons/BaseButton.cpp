/*
 * BaseButton.cpp
 *
 *  Created on: Feb 9, 2020
 *      Author: Michel Keijzers
 */

#ifdef DEBUG
#include <assert.h>
#endif

#include <Framework/Buttons/BaseButton.h>
#include <Framework/SysTickSubscribers.h>


BaseButton::BaseButton(GpioId gpio, BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
      uint16_t firstHoldTime, uint16_t nextHoldTime, uint8_t debounceTime,
      uint8_t sysTickSubscriberIndex)
: _gpio(gpio),
  _state(Released),
  _callbackFunction(callbackFunction),
  _firstHoldTime(firstHoldTime),
  _nextHoldTime(nextHoldTime),
  _debounceTime(debounceTime),
  _sysTickSubscriberIndex(sysTickSubscriberIndex)
{
   SysTickSubscribers::SetSubscriber(_sysTickSubscriberIndex, this);

   if (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET)
   {
      _state = WaitForFirstHold;
      SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _firstHoldTime);
   }
}


BaseButton::~BaseButton()
{
   // No action required
}


void BaseButton::CheckTrigger(uint16_t pin)
{
   if (pin == _gpio.pin)
   {
      switch (_state)
      {
      case EState::Released:
         if (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET)
         {
            OnButtonPressed();
            SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
            _state = PressedDebouncing;
         }
         break;

      case EState::PressedDebouncing: // Fall through
      case EState::ReleasedDebouncing:
         // Ignore press/release, but reset debounce timer.
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         break;

      case EState::WaitForFirstHold: // Fall through
      case EState::WaitForNextHold:
         if (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET)
         {
            // Should not happen since button is already pressed
            OnButtonPressed();
            SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
            _state = PressedDebouncing;
         }
         else
         {
            OnButtonReleased();
            SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
            _state = ReleasedDebouncing;
         }
         break;

#ifdef DEBUG
      default:
         assert(false);
#endif
      }
   }
}


void BaseButton::OnTick()
{
   switch (_state)
   {
   case EState::Released:
#ifdef DEBUG
      assert(false);
#endif
      break;

   case EState::PressedDebouncing:
      if (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET)
      {
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _firstHoldTime);
         _state = WaitForFirstHold;;
      }
      else
      {
         // Should not happen
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _state = ReleasedDebouncing;
      }
      break;

   case EState::WaitForFirstHold:
      if (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET)
      {
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _nextHoldTime);
        _state = WaitForNextHold;
        OnButtonHold();
      }
      else
      {
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);
        _state = Released;
      }
      break;

   case EState::WaitForNextHold:
      if (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET)
      {
         OnButtonHold();
      }
      else
      {
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);
        _state = Released;
      }
      break;

   case EState::ReleasedDebouncing:
      if (HAL_GPIO_ReadPin(_gpio.port, _gpio.pin) == GPIO_PIN_SET)
      {
         // Should not happen
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
         _state = PressedDebouncing;
      }
      else
      {
         SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);
         _state = Released;
      }
      break;

#ifdef DEBUG
   default:
      assert(false);
#endif
   }
}
