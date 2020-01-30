/*
 * LcdDisplay.h
 *
 *  Created on: Jan 30, 2020
 *      Author: miche
 */

#ifndef LCDDISPLAY_H_
#define LCDDISPLAY_H_

#include "stm32f1xx_hal.h"

class LcdDisplay {
public:
	LcdDisplay(I2C_HandleTypeDef* hI2c);
	virtual ~LcdDisplay();

	void I2C_Scan();
	void Init();

	HAL_StatusTypeDef SendInternal(uint8_t data, uint8_t flags);
	void SendCommand(uint8_t cmd);
	void SendData(uint8_t data);
	void SendString(char *str);

private:
	I2C_HandleTypeDef* _hI2c;
};

#endif /* LCDDISPLAY_H_ */
