/*
 * Gpio.h
 *
 *  Created on: Feb 2, 2020
 *      Author: Michel Keijzers
 */

#ifndef GPIO_H_
#define GPIO_H_

#include "stm32f1xx_hal.h"

typedef struct
{
   GPIO_TypeDef* port;
   uint16_t      pin;
} Gpio;

#endif /* GPIO_H_ */
