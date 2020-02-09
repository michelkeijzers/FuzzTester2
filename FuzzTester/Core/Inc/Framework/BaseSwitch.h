/*
 * BaseSwitch.h
 *
 *  Created on: Feb 9, 2020
 *      Author: miche
 */

#ifndef INC_FRAMEWORK_BASESWITCH_H_
#define INC_FRAMEWORK_BASESWITCH_H_

#include "ISysTickSubscriber.h"
#include "Gpio.h"


class BaseSwitch : ISysTickSubscriber
{
public:
   BaseSwitch(Gpio gpio, uint8_t debounceTime, uint8_t sysTickSubscriberIndex);

   virtual ~BaseSwitch();

   virtual void CheckTrigger(uint16_t pin) = 0;

   void OnTick();

protected:
   Gpio     _gpio;
   bool     _buttonState;
   bool     _buttonInDebounceMode;
   uint16_t _debounceTime;
   uint8_t  _sysTickSubscriberIndex;
};

#endif /* INC_FRAMEWORK_BASESWITCH_H_ */
