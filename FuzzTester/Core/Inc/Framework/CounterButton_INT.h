/*
 * CounterButton_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef COUNTER_BUTTON_INT_H_
#define COUNTER_BUTTON_INT_H_

#include <Framework/Gpio.h>
#include <Framework/SysTickSubscribers.h>
#include <Framework/BaseButton.h>

typedef void (*COUNTER_BUTTON_CALLBACK_FUNCTION_PTR)(uint8_t value);

class CounterButton_INT : BaseButton
{
public:
   CounterButton_INT(uint8_t startValue, int8_t stepValue, uint8_t endValue,
         Gpio pin, COUNTER_BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
         uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~CounterButton_INT();

	/* override */ void CheckTrigger(uint16_t pin);

private:
	uint8_t                             _startValue;
	int8_t                              _stepValue;
	uint8_t                             _endValue;
	uint8_t                             _currentValue;

	COUNTER_BUTTON_CALLBACK_FUNCTION_PTR _callbackFunction;
};

#endif /* COUNTER_BUTTON_INT_H_ */
