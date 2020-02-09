/*
 * ToggleButton_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef BUTTON_INT_H_
#define BUTTON_INT_H_

#include <Framework/BaseButton.h>
#include <Framework/Gpio.h>
#include <Framework/SysTickSubscribers.h>

typedef void (*BUTTON_CALLBACK_FUNCTION_PTR)(void);

class DefaultButton_INT : public BaseButton
{
public:
   DefaultButton_INT(Gpio pin, BUTTON_CALLBACK_FUNCTION_PTR callbackFunction,
     uint16_t holdDelayTime, uint16_t holdStepTime, BUTTON_CALLBACK_FUNCTION_PTR holdCallbackFunction,
     uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~DefaultButton_INT();

private:
	 /* override */ void OnButtonPressed();

	 /* override */ void OnButtonHold();

private:
	BUTTON_CALLBACK_FUNCTION_PTR        _callbackFunction;

	BUTTON_CALLBACK_FUNCTION_PTR        _holdCallbackFunction;
};

#endif /* BUTTON_INT_H_ */
