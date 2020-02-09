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
#include <Framework/BaseSwitch.h>

typedef void (*TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR)(bool onOffState);

class ToggleSwitch_INT : BaseSwitch
{
public:
   ToggleSwitch_INT(Gpio pin, TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction,
     uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~ToggleSwitch_INT();

	/* override */ void CheckTrigger(uint16_t pin);

private:
	bool                                _onOffState;

	TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR _callbackFunction;
};

#endif /* SRC_TOGGLESWITCH_INT_H_ */
