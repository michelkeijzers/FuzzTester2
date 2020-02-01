/*
 * ToggleSwitch_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: michel
 */

#ifndef SRC_TOGGLESWITCH_INT_H_
#define SRC_TOGGLESWITCH_INT_H_

#include "stm32f1xx_hal.h"

typedef void (*TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR)(void);

class ToggleSwitch_INT
{
public:
    ToggleSwitch_INT(TIM_HandleTypeDef* hTim, GPIO_TypeDef* port, uint16_t pin,
     TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR callbackFunction);
	virtual ~ToggleSwitch_INT();

	void CheckPressed(uint16_t pin);
	void CheckReleased();

private:
	TIM_HandleTypeDef* _hTim;

	GPIO_TypeDef*      _port;
	uint16_t           _pin;

	bool _buttonInDebounceMode;

	TOGGLE_SWITCH_CALLBACK_FUNCTION_PTR _callbackFunction;
};

#endif /* SRC_TOGGLESWITCH_INT_H_ */
