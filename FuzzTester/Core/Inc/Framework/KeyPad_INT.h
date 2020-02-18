/*
 * KeyPad_INT.h
 *
 *  Created on: Feb 1, 2020
 *      Author: miche
 */

#ifndef SRC_KEYPAD_INT_H_
#define SRC_KEYPAD_INT_H_

#include <stdint.h>

#include <Framework/SysTickSubscribers.h>

#include "Gpio.h"


typedef void (*KEY_PAD_CALLBACK_FUNCTION_PTR)(char key);

/**
 * According https://github.com/nimaltd/KeyPad/blob/master/KeyPad.c
 * but rows and columns swapped
 */

class KeyPad_INT : ISysTickSubscriber
{
public:
   static const uint8_t MAX_NR_OF_KEY_PAD_ROWS = 4;
   static const uint8_t MAX_NR_OF_KEY_PAD_COLUMNS = 4;

   KeyPad_INT(uint8_t nrOfRows, uint8_t nrOfColumns, const char* keys, const Gpio rows[], const Gpio columns[],
         KEY_PAD_CALLBACK_FUNCTION_PTR _callbackFunction, uint8_t sysTickSubscriberIndex, uint8_t debounceTime);

   virtual ~KeyPad_INT();

   void Init();

   void OnKeyPressed(uint16_t pin);

   /* override */ void OnTick();

private:
   int8_t GetLowColumn();

   uint8_t     _nrOfRows;
   uint8_t     _nrOfColumns;

   char* _keys;

   Gpio _rows[MAX_NR_OF_KEY_PAD_ROWS];
   Gpio _columns[MAX_NR_OF_KEY_PAD_COLUMNS];

   KEY_PAD_CALLBACK_FUNCTION_PTR _callbackFunction;

   uint8_t  _sysTickSubscriberIndex;
   uint16_t _debounceTime;

   // DEBUG
   void UpdateTS();
   char TS[8];
};

#endif /* SRC_KEYPAD_INT_H_ */
