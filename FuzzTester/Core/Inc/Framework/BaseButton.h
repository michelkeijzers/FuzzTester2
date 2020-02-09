/*
 * BaseButton.h
 *
 *  Created on: Feb 9, 2020
 *      Author: miche
 */

#ifndef BASE_BUTTON_H_
#define BASE_BUTTON_H_

#include "ISysTickSubscriber.h"
#include "Gpio.h"


class BaseButton : ISysTickSubscriber
{
public:
   BaseButton(Gpio gpio, uint8_t debounceTime, uint8_t sysTickSubscriberIndex);

   virtual ~BaseButton();

   virtual void CheckTrigger(uint16_t pin) = 0;

   void OnTick();

protected:
   Gpio     _gpio;
   bool     _buttonState;
   bool     _buttonInDebounceMode;
   uint16_t _debounceTime;
   uint8_t  _sysTickSubscriberIndex;
};

#endif /* BASE_BUTTON_H_ */
