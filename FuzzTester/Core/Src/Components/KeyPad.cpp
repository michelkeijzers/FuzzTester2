/*
 * KeyPad.cpp
 *
 *  Created on: Feb 1, 2020
 *      Author: miche
 */

#include <assert.h>

#include "../../Inc/Components/KeyPad.h"

const uint8_t KEY_PAD_DEBOUNCE_TIME_MS = 10;

KeyPad::KeyPad(uint8_t nrOfRows, uint8_t nrOfColumns, const Gpio rows[], const Gpio columns[])
{
   assert (nrOfRows <= MAX_NR_OF_KEY_PAD_ROWS);
   assert (nrOfColumns <= MAX_NR_OF_KEY_PAD_COLUMNS);

   _nrOfRows = nrOfRows;
   _nrOfColumns = nrOfColumns;

   for (uint8_t row = 0; row < _nrOfRows; row++)
   {
      _rows[row] = rows[row];
   }

   for (uint8_t column = 0; column < _nrOfColumns; column++)
   {
      _columns[column] = columns[column];
   }
}


KeyPad::~KeyPad()
{

}


uint16_t KeyPad::Scan(void)
{
    uint16_t key=0;

    for (uint8_t column = 0 ; column < _nrOfColumns; column++)
    {
        for (uint8_t columnToSet = 0 ; columnToSet < _nrOfColumns ; columnToSet++)
        {
            HAL_GPIO_WritePin(_columns[columnToSet].port, _columns[columnToSet].pin, GPIO_PIN_SET);
        }

        HAL_GPIO_WritePin(_columns[column].port, _columns[column].pin, GPIO_PIN_RESET);
        HAL_Delay(5);

        for (uint8_t row = 0 ; row < _nrOfRows ; row++)
        {
            if (HAL_GPIO_ReadPin(_rows[row].port, _rows[row].pin) == GPIO_PIN_RESET)
            {
                HAL_Delay(KEY_PAD_DEBOUNCE_TIME_MS);
                if (HAL_GPIO_ReadPin(_rows[row].port, _rows[row].pin) == GPIO_PIN_RESET)
                {
                   key = ((row + 1) << 8) + (column + 1);
                   while (HAL_GPIO_ReadPin(_rows[row].port, _rows[row].pin) == GPIO_PIN_RESET)
                      HAL_Delay(5);
                   return key;
                }
            }
        }
    }

    return key;
}


char KeyPad::GetChar(uint16_t key)
{
   char keyChar;

   switch (key)
   {
   case 0x0101: keyChar = '1'; break;
   case 0x0102: keyChar = '2'; break;
   case 0x0103: keyChar = '3'; break;
   case 0x0104: keyChar = 'A'; break;
   case 0x0201: keyChar = '4'; break;
   case 0x0202: keyChar = '5'; break;
   case 0x0203: keyChar = '6'; break;
   case 0x0204: keyChar = 'B'; break;
   case 0x0301: keyChar = '7'; break;
   case 0x0302: keyChar = '8'; break;
   case 0x0303: keyChar = '9'; break;
   case 0x0304: keyChar = 'C'; break;
   case 0x0401: keyChar = '*'; break;
   case 0x0402: keyChar = '0'; break;
   case 0x0403: keyChar = '#'; break;
   case 0x0404: keyChar = 'D'; break;
   default    : keyChar = '?'; break;
   }

   return keyChar;
}
/*
//#############################################################################################
uint16_t	KeyPad_Scan(void)
{
	uint16_t key=0;
	for(uint8_t c=0 ; c<KeyPad.ColumnSize ; c++)
	{
		for(uint8_t	i=0 ; i<KeyPad.ColumnSize ; i++)
			HAL_GPIO_WritePin((GPIO_TypeDef*)_KEYPAD_COLUMN_GPIO_PORT[i],_KEYPAD_COLUMN_GPIO_PIN[i],GPIO_PIN_SET);
		HAL_GPIO_WritePin((GPIO_TypeDef*)_KEYPAD_COLUMN_GPIO_PORT[c],_KEYPAD_COLUMN_GPIO_PIN[c],GPIO_PIN_RESET);
		_KEYPAD_DELAY(5);
		for(uint8_t r=0 ; r<KeyPad.RowSize ; r++)
		{
			if(HAL_GPIO_ReadPin((GPIO_TypeDef*)_KEYPAD_ROW_GPIO_PORT[r],_KEYPAD_ROW_GPIO_PIN[r])==GPIO_PIN_RESET)
			{
				_KEYPAD_DELAY(_KEYPAD_DEBOUNCE_TIME_MS);
				if(HAL_GPIO_ReadPin((GPIO_TypeDef*)_KEYPAD_ROW_GPIO_PORT[r],_KEYPAD_ROW_GPIO_PIN[r])==GPIO_PIN_RESET)
				{
					key |= 1<<c;
					key |= 1<<(r+8);
					while(HAL_GPIO_ReadPin((GPIO_TypeDef*)_KEYPAD_ROW_GPIO_PORT[r],_KEYPAD_ROW_GPIO_PIN[r])==GPIO_PIN_RESET)
						_KEYPAD_DELAY(5);
					return key;
				}
			}
		}
	}
	return key;
}
//#############################################################################################
uint16_t	KeyPad_WaitForKey(uint32_t	Timeout_ms)
{
	uint16_t 	keyRead;
	while(Timeout_ms==0)
	{
		keyRead = KeyPad_Scan();
		if(keyRead!=0)
		{
			KeyPad.LastKey = keyRead;
			return keyRead;
		}
		_KEYPAD_DELAY(_KEYPAD_DEBOUNCE_TIME_MS);
	}
	uint32_t	StartTime = HAL_GetTick();
	while(HAL_GetTick()-StartTime < Timeout_ms)
	{
		keyRead = KeyPad_Scan();
		if(keyRead!=0)
		{
			KeyPad.LastKey = keyRead;
			return keyRead;
		}
		_KEYPAD_DELAY(_KEYPAD_DEBOUNCE_TIME_MS);
	}
	KeyPad.LastKey=0;
	return 0;
}
//#############################################################################################
char	KeyPad_WaitForKeyGetChar(uint32_t	Timeout_ms)
{
	switch(KeyPad_WaitForKey(Timeout_ms))
	{
		case 0x0000:
			return 0;
		case 0x0101:
			return '1';
		case 0x0201:
			return '2';
		case 0x0401:
			return '3';
		case 0x0801:
			return 'A';
		case 0x0102:
			return '4';
		case 0x0202:
			return '5';
		case 0x0402:
			return '6';
		case 0x0802:
			return 'B';
		case 0x0104:
			return '7';
		case 0x0204:
			return '8';
		case 0x0404:
			return '9';
		case 0x0804:
			return 'C';
		case 0x0108:
			return '*';
		case 0x0208:
			return '0';
		case 0x0408:
			return '#';
		case 0x0808:
			return 'D';

		default:
			return 0;
	}
}
*/
