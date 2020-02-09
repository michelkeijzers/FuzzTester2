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

   void CheckTrigger(uint16_t pin);

   virtual void OnButtonPressed();

   virtual void OnButtonReleased();

   void OnTick();

private:
   void StartDebounce(bool newButtonState);

protected:
   Gpio     _gpio;
   bool     _buttonState;
   bool     _buttonInDebounceMode;
   uint16_t _debounceTime;
   uint8_t  _sysTickSubscriberIndex;
};

#endif /* BASE_BUTTON_H_ */
