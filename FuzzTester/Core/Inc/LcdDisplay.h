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
	LcdDisplay(I2C_HandleTypeDef* hI2c, uint8_t i2cChannel);
	virtual ~LcdDisplay();

	void I2C_Scan();
	void Init();

	void SetLine(uint8_t line, const char* text);

private:
	HAL_StatusTypeDef SendInternal(uint8_t data, uint8_t flags);
	void SendCommand(uint8_t cmd);
	void SendData(uint8_t data);
	void SendString(const char *str);

private:
	I2C_HandleTypeDef* _hI2c;
	uint8_t _i2cChannel;
};

#endif /* LCDDISPLAY_H_ */
