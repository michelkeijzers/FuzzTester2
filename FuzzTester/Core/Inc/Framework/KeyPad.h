/*
 * KeyPad.h
 *
 *  Created on: Feb 1, 2020
 *      Author: miche
 */

#ifndef SRC_KEYPAD_H_
#define SRC_KEYPAD_H_

#include <stdint.h>
#include <stdbool.h>

#include "Gpio.h"

#include "stm32f1xx_hal.h"

const uint8_t MAX_NR_OF_KEY_PAD_ROWS = 4;
const uint8_t MAX_NR_OF_KEY_PAD_COLUMNS = 4;



class KeyPad {
public:
   KeyPad(uint8_t nrOfRows, uint8_t nrOfColumns, const Gpio rows[], const Gpio columns[]);

   virtual ~KeyPad();

   void     KeyPad_Init(void);

   uint16_t Scan();

   char GetChar(uint16_t key);

   uint16_t KeyPad_WaitForKey(uint32_t timeout);
   char     KeyPad_WaitForKeyGetChar(uint32_t timeout);

private:
   uint8_t     _nrOfRows;
   uint8_t     _nrOfColumns;

   Gpio _rows[MAX_NR_OF_KEY_PAD_ROWS];
   Gpio _columns[MAX_NR_OF_KEY_PAD_COLUMNS];

   uint16_t    _lastKey;
};

#endif /* SRC_KEYPAD_H_ */
