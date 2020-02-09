/*
 * ToggleSwitch_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef SRC_SWITCH_INT_H_
#define SRC_SWITCH_INT_H_

#include <Framework/Gpio.h>
#include <Framework/SysTickSubscribers.h>
#include <Framework/BaseSwitch.h>

typedef void (*SWITCH_CALLBACK_FUNCTION_PTR)(void);

class Switch_INT : BaseSwitch
{
public:
    Switch_INT(Gpio pin, SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
     uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~Switch_INT();

	/* override */ void CheckTrigger(uint16_t pin);

private:
	SWITCH_CALLBACK_FUNCTION_PTR        _callbackFunction;
};

#endif /* SRC_SWITCH_INT_H_ */
