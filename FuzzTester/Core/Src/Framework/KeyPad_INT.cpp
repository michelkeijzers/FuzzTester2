/*
 * KeyPad_INT.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: miche
 */


#include <Framework/KeyPad_INT.h>

#include <assert.h>
#include <stdlib.h>
#include <string.h>


KeyPad_INT::KeyPad_INT(uint8_t nrOfRows, uint8_t nrOfColumns, const char* keys, const Gpio rows[], const Gpio columns[],
      KEY_PAD_CALLBACK_FUNCTION_PTR callbackFunction, uint8_t sysTickSubscriberIndex, uint8_t debounceTime)
: _nrOfRows(nrOfRows),
  _nrOfColumns(nrOfColumns),
  _callbackFunction(callbackFunction),
  _sysTickSubscriberIndex(sysTickSubscriberIndex),
  _debounceTime(debounceTime)
{
   SysTickSubscribers::SetSubscriber(_sysTickSubscriberIndex, this);
   SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);

   assert (nrOfRows <= MAX_NR_OF_KEY_PAD_ROWS);
   assert (nrOfColumns <= MAX_NR_OF_KEY_PAD_COLUMNS);

   for (uint8_t row = 0; row < _nrOfRows; row++)
   {
      _rows[row] = rows[row];
   }

   for (uint8_t column = 0; column < _nrOfColumns; column++)
   {
      _columns[column] = columns[column];
   }

   _keys = (char*) malloc(_nrOfRows * _nrOfColumns);
   if (_keys != NULL)
   {
      strncpy(_keys, keys, _nrOfRows * _nrOfColumns);
   }
   else
   {
      assert(false);
   }

   UpdateTS();
}


KeyPad_INT::~KeyPad_INT()
{
   // No functionality needed
}


void KeyPad_INT::Init()
{
   for (uint8_t row = 0; row < _nrOfRows; row++)
   {
      HAL_GPIO_WritePin(_rows[row].port, _rows[row].pin, GPIO_PIN_RESET);
      TS[row] = 1;
   }
}


void KeyPad_INT::OnKeyPressed(uint16_t pin)
{
   // Wait checking until debounce time is over.
   SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, _debounceTime);
}


/* override */ void KeyPad_INT::OnTick()
{
   // Debounce finished
   SysTickSubscribers::SetInterval(_sysTickSubscriberIndex, 0);

   char pressedChar = ' ';

   UpdateTS();

   for (uint8_t row = 0; row < _nrOfRows; row++)
   {
      HAL_GPIO_WritePin(_rows[row].port, _rows[row].pin, GPIO_PIN_SET);
      TS[row] = 1;
   }

   for (uint8_t row = 0; row < _nrOfRows; row++)
   {
      HAL_GPIO_WritePin(_rows[row].port, _rows[row].pin, GPIO_PIN_RESET);
      TS[row] = 0;
      UpdateTS();

      int8_t columnLow = GetLowColumn();
      HAL_GPIO_WritePin(_rows[row].port, _rows[row].pin, GPIO_PIN_SET);
      TS[row] = 1;

      if (columnLow != -1)
      {
         pressedChar = _keys[row * _nrOfRows + columnLow];
         break;
      }

      UpdateTS();
   }

   if (pressedChar != ' ')
   {
      (*_callbackFunction)(pressedChar);
   }


   for (uint8_t row = 0; row < _nrOfRows; row++)
   {
      HAL_GPIO_WritePin(_rows[row].port, _rows[row].pin, GPIO_PIN_RESET);
      TS[row] = 1;
   }
}


int8_t KeyPad_INT::GetLowColumn()
{
   for (uint8_t column = 0; column < _nrOfColumns; column++)
   {
      if (HAL_GPIO_ReadPin(_columns[column].port, _columns[column].pin) == GPIO_PIN_RESET)
      {
         return column;
      }
   }

   return -1;
}


void KeyPad_INT::UpdateTS()
{
   for (uint8_t column = 0; column < _nrOfColumns; column++)
   {
      TS[4 + column] = HAL_GPIO_ReadPin(_columns[column].port, _columns[column].pin);
   }
}
