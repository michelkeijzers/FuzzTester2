/*
 * ShiftRegister.h
 *
 *  Created on: Jan 30, 2020
 *      Author: Michel Keijzers
 *
 *  Datasheet: https://www.ti.com/lit/ds/symlink/cd74hc595.pdf
 *
 *  SPI Only SPI2 is 5V tolerant, SPI1 is not!
 *
 *  STM32F103 SPI2 PB13   SCK   <-> 11 SH_CP, SRCLK
 *  STM32F103 Latch GPIO (GPIO)) <-> 12 ST_CP, RCLK
 *  STM32F103 SPI2 PB15   MOSI  <-> 14 DS   , SER
 *  5V                          <-> 10 MR   , not SRCLR
 *  GND                         <-> 13 OE   , not OE
 *
 *  Daisy chain:
 *  1st, 2nd, 3th 74HC595 QH 9  <-> 14 DS, SER 2nd, 3th, 4th 74HC595
 *  Connect all SRCLKs together
 *  COnnect all RCLKs together
 */

#ifndef SHIFT_REGISTER_H_
#define SHIFT_REGISTER_H_

#include "stm32f1xx_hal.h"


// In case SPI is not used.
#ifndef SPI_HandleTypeDef
#define SPI_HandleTypeDef void*
#endif


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

#endif /* SHIFT_REGISTER_H_ */
