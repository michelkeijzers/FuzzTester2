/*
 * SysTickSubscribers.cpp
 *
 *  Created on: Feb 8, 2020
 *      Author: miche
 */

#include "Framework/SysTickSubscribers.h"

#include "stdlib.h"

SysTickSubscriberData*  SysTickSubscribers::_data = 0;

uint8_t                 SysTickSubscribers::_nrOfSubscribers = 0;


SysTickSubscribers::SysTickSubscribers(uint8_t nrOfSubscribers)
{
   _nrOfSubscribers = nrOfSubscribers;

   _data = (SysTickSubscriberData*) malloc(_nrOfSubscribers * sizeof(SysTickSubscriberData));
}


SysTickSubscribers::~SysTickSubscribers()
{
}


/* static */ void SysTickSubscribers::SetSubscriber(uint8_t subscriberIndex, ISysTickSubscriber* subscriber)
{
   _data[subscriberIndex].sysTickSubscriber = subscriber;
   SetInterval(subscriberIndex, 0);
}


/* static */ void SysTickSubscribers::SetInterval(uint8_t subscriberIndex, uint16_t period_ms)
{
   _data[subscriberIndex].period_ms = period_ms;
}


/* static */ void SysTickSubscribers::OnTick(uint32_t tickValue)
{
   for (uint8_t subscriber = 0; subscriber < _nrOfSubscribers; subscriber++)
   {
      if ((_data[subscriber].period_ms != 0) &&
          ((tickValue % _data[subscriber].period_ms) == 0))
      {
         _data[subscriber].sysTickSubscriber->OnTick();
      }
   }
}


void SysTickSubscribersOnTick(uint32_t tickValue)
{
   SysTickSubscribers::OnTick(tickValue);
}
