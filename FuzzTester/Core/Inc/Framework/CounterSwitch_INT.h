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
#include <Framework/BaseSwitch.h>

typedef void (*COUNTER_SWITCH_CALLBACK_FUNCTION_PTR)(uint8_t value);

class CounterSwitch_INT : BaseSwitch
{
public:
   CounterSwitch_INT(uint8_t startValue, int8_t stepValue, uint8_t endValue,
         Gpio pin, COUNTER_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
         uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~CounterSwitch_INT();

	/* override */ void CheckTrigger(uint16_t pin);

private:
	uint8_t                             _startValue;
	int8_t                              _stepValue;
	uint8_t                             _endValue;
	uint8_t                             _currentValue;

	COUNTER_SWITCH_CALLBACK_FUNCTION_PTR _callbackFunction;
};

#endif /* SRC_COUNTERSWITCH_INT_H_ */
