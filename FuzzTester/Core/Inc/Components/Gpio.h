/*
 * Gpio.h
 *
 *  Created on: Feb 2, 2020
 *      Author: miche
 */

#ifndef INC_GPIO_H_
#define INC_GPIO_H_

#include "stm32f1xx_hal.h"

typedef struct
{
   GPIO_TypeDef* port;
   uint16_t      pin;
} Gpio;

#endif /* INC_GPIO_H_ */
