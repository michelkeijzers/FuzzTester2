/*
 * ToggleButton_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef TOGGLE_BUTTON_INT_H_
#define TOGGLE_BUTTON_INT_H_

#include <Framework/Buttons/BaseButton.h>
#include <Framework/Gpio.h>
#include <Framework/SysTickSubscribers.h>

typedef void (*TOGGLE_BUTTON_CALLBACK_FUNCTION_PTR)(bool onOffState);

class ToggleButton_INT : public BaseButton
{
public:
   ToggleButton_INT(Gpio pin, TOGGLE_BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
     uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~ToggleButton_INT();

private:
	/* override */ void OnButtonPressed();

private:
	bool                                _onOffState;

	TOGGLE_BUTTON_CALLBACK_FUNCTION_PTR _callbackFunction;
};

#endif /* TOGGLE_BUTTON_INT_H_ */
