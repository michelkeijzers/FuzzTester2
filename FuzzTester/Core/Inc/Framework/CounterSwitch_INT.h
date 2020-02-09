/*
 * CounterSwitch_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef SRC_COUNTERSWITCH_INT_H_
#define SRC_COUNTERSWITCH_INT_H_

#include <Framework/Gpio.h>
#include <Framework/SysTickSubscribers.h>

#include "stm32f1xx_hal.h"


typedef void (*COUNTER_SWITCH_CALLBACK_FUNCTION_PTR)(uint8_t value);

class CounterSwitch_INT : ISysTickSubscriber
{
public:
   CounterSwitch_INT(uint8_t startValue, int8_t stepValue, uint8_t endValue,
         Gpio pin, COUNTER_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
         uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~CounterSwitch_INT();

	void CheckTrigger(uint16_t pin);

	/* override */ void OnTick();

private:
	Gpio                                _gpio;

	bool                                _buttonState;

	uint8_t                             _startValue;
	int8_t                              _stepValue;
	uint8_t                             _endValue;
	uint8_t                             _currentValue;

	bool                                _buttonInDebounceMode;
    uint16_t                            _debounceTime;

	COUNTER_SWITCH_CALLBACK_FUNCTION_PTR _callbackFunction;

	uint8_t                             _sysTickSubscriberIndex;
};

#endif /* SRC_COUNTERSWITCH_INT_H_ */
