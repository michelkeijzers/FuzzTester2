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
     uint8_t sysTickSubscriberIndex, uint8_t period);

	virtual ~DefaultButton_INT();

	 /* override */ void OnButtonPressed();

private:
	BUTTON_CALLBACK_FUNCTION_PTR        _callbackFunction;
};

#endif /* BUTTON_INT_H_ */
