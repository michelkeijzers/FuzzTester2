/*
 * ToggleSwitch_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef SRC_TOGGLESWITCH_INT_H_
#define SRC_TOGGLESWITCH_INT_H_

#include "stm32f1xx_hal.h"

#include "Gpio.h"

typedef void (*TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR)(void);

class ToggleSwitch_INT
{
public:
    ToggleSwitch_INT(TIM_HandleTypeDef* hTim, Gpio pin,
     TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction);
	virtual ~ToggleSwitch_INT();

	void CheckPressed(uint16_t pin);
	void CheckReleased();

private:
	TIM_HandleTypeDef*                  _hTim;

	Gpio                                _gpio;

	bool                                _buttonInDebounceMode;

	TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR _callbackFunction;
};

#endif /* SRC_TOGGLESWITCH_INT_H_ */
