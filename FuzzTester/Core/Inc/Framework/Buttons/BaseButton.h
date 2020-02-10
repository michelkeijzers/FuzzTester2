/*
 * BaseButton.h
 *
 *  Created on: Feb 9, 2020
 *      Author: miche
 */

#ifndef BASE_BUTTON_H_
#define BASE_BUTTON_H_

#include "../ISysTickSubscriber.h"
#include "../Gpio.h"


class BaseButton : ISysTickSubscriber
{
public:
   BaseButton(Gpio gpio, uint16_t holdDelayTime, uint16_t holdStepTime, uint8_t debounceTime, uint8_t sysTickSubscriberIndex);

   virtual ~BaseButton();

   void CheckTrigger(uint16_t pin);

   virtual void OnButtonPressed();

   virtual void OnButtonReleased();

   virtual void OnButtonHold();

   void OnTick();

private:
   void StartDebounceAndSetButtonState(bool newButtonState);

protected:
   Gpio     _gpio;
   bool     _buttonState;
   uint16_t _holdDelayTime; // Time before hold functionality starts
   uint16_t _holdStepTime; // Time between each hold trigger
   bool     _buttonInDebounceMode;
   uint16_t _debounceTime;
   uint8_t  _sysTickSubscriberIndex;
};

#endif /* BASE_BUTTON_H_ */
