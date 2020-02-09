/*
 * ToggleSwitch_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef SRC_TOGGLESWITCH_INT_H_
#define SRC_TOGGLESWITCH_INT_H_

#include <Framework/Gpio.h>
#include <Framework/SysTickSubscribers.h>

#include "stm32f1xx_hal.h"


typedef void (*SWITCH_CALLBACK_FUNCTION_PTR)(void);

class Switch_INT : ISysTickSubscriber
{
public:
    Switch_INT(Gpio pin, SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
     uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~Switch_INT();

	void CheckTrigger(uint16_t pin);

	/* override */ void OnTick();

private:
	Gpio                                _gpio;

	bool                                _buttonState;

	bool                                _buttonInDebounceMode;
    uint16_t                            _debounceTime;

	SWITCH_CALLBACK_FUNCTION_PTR        _callbackFunction;

	uint8_t                             _sysTickSubscriberIndex;
};

#endif /* SRC_TOGGLESWITCH_INT_H_ */
