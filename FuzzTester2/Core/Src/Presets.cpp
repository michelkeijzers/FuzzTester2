/*
 * Presets.cpp
 *
 *  Created on: Apr 24, 2020
 *      Author: miche
 */

#include "Presets.h"

#include "stm32f1xx_hal.h"
#include "Eeprom/eeprom.h"


Presets::Presets()
{
}


Presets::~Presets()
{
}


void Presets::Load()
{
    // Load presets.
    // EEPROM test

    uint32_t n = 0;
    if (EE_Write(0, 0x12345678))
    {
       EE_Read(0, &n);
    }
}
