/*
 * HalUtils.cpp
 *
 *  Created on: Apr 27, 2020
 *      Author: miche
 */

#include <Framework/HalUtils.h>

#include "stm32f1xx_hal.h"


HalUtils::HalUtils()
{
   // TODO Auto-generated constructor stub

}


HalUtils::~HalUtils()
{
   // TODO Auto-generated destructor stub
}



/* static */ void HalUtils::Delay(uint32_t milliseconds)
{
   /* Initially clear flag */
   (void) SysTick->CTRL;
   while (milliseconds != 0)
   {
      /* COUNTFLAG returns 1 if timer counted to 0 since the last flag read */
      milliseconds -= (SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) >> SysTick_CTRL_COUNTFLAG_Pos;
   }
}
