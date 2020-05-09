/*
 * LcdDisplay.h
 *
 *  Created on: Jan 30, 2020
 *      Author: Michel Keijzers
 *
 * See: https://github.com/mathertel/LiquidCrystal_PCF8574/blob/master/src/LiquidCrystal_PCF8574.cpp
 */

#ifndef LCD_DISPLAY_H_
#define LCD_DISPLAY_H_

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "stm32f1xx_hal.h"

#include "Framework/ISysTickSubscriber.h"


typedef void (*UPDATE_LCD_FUNCTION_PTR)();

// In case I2C is not used.

class LcdDisplay : ISysTickSubscriber
{
public:
    enum ECursorType
    {
       None,
       Underline,
       Block
    };

	LcdDisplay(I2C_HandleTypeDef* hI2c, uint8_t i2cChannel, UPDATE_LCD_FUNCTION_PTR callbackFunction,
	 uint16_t refreshTime, uint8_t sysTickSubscriberIndex);
	virtual ~LcdDisplay();

	void I2C_Scan() const;

	bool IsInitialized() const;
	void Init();

	void SetLine(uint8_t line, const char* text) const;

	void SetBackLight(bool backLight);

	uint8_t GetMaxLineLength() const;
	uint8_t GetMaxLines() const;

	void BlankDisplay() const; // Without clearing
	void ClearScreen() const;

	void ScrollOneCharLeft() const; // All lines
	void ScrollOneCharRight() const; // All lines

	void SetCursorType(ECursorType);
	void CursorHome() const;
	void CursorLeft() const;
	void CursorRight() const;
	void SetCursorPosition(uint8_t x, uint8_t y);
	void EnableBlockCursor(bool on);

private:
	HAL_StatusTypeDef SendInternal(uint8_t data, uint8_t flags) const;
	void SendCommand(uint8_t cmd) const;
	void SendData(uint8_t data) const;
	void SendString(const char *str) const;

	void OnTick();

private:
	I2C_HandleTypeDef* _hI2c;
	uint8_t _i2cChannel;
	bool _isInitialized;
    uint8_t _backLight;
    uint8_t _displayControl;
    ECursorType _cursorType;
    uint8_t _cursorPosX;
    uint8_t _cursorPosY;

	UPDATE_LCD_FUNCTION_PTR _callbackFunction;
};

#endif /* LCD_DISPLAY_H_ */
