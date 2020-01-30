/*
 * ShiftRegister.h
 *
 *  Created on: Jan 30, 2020
 *      Author: miche
 */

#ifndef SHIFTREGISTER_H_
#define SHIFTREGISTER_H_

#include "stm32f1xx_hal.h"

class ShiftRegister
{
public:
	ShiftRegister(SPI_HandleTypeDef* hSpi, GPIO_TypeDef* latchPort, uint16_t latchPin);
	virtual ~ShiftRegister();

	void ShiftOut(uint8_t* data, uint16_t size);

private:
	SPI_HandleTypeDef* _hSpi;

	GPIO_TypeDef*      _latchPort;
	uint16_t           _latchPin;
};

#endif /* SHIFTREGISTER_H_ */
