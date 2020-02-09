/*
 * SysTickSubscribers.h
 *
 *  Created on: Feb 8, 2020
 *      Author: miche
 */

#ifndef SYSTICKSUBSCRIBERS_H_
#define SYSTICKSUBSCRIBERS_H_

#include <stdint.h>

#include "MyMain.h"

extern "C"
{
   void SysTickSubscribersOnTick(uint32_t tickValue);
}


class ISysTickSubscriber
{
public:
   ISysTickSubscriber();
   virtual ~ISysTickSubscriber();
   virtual void OnTick() = 0;
};

struct SysTickSubscriberData
{
   uint8_t             period_ms;
   ISysTickSubscriber* sysTickSubscriber;
};



class SysTickSubscribers
{
public:
   SysTickSubscribers(uint8_t nrOfSubscribers);
   virtual ~SysTickSubscribers();

   static void SetSubscriber(uint8_t subscriberIndex, ISysTickSubscriber* subscriber);
   static void SetInterval(uint8_t subscriberIndex, uint16_t period_ms);
   static void OnTick(uint32_t tickValue);

private:
   static SysTickSubscriberData* _data; // Dynamic array

   static uint8_t _nrOfSubscribers;
};

extern SysTickSubscribers sysTicksubscribers;


#endif /* SYSTICKSUBSCRIBERS_H_ */

