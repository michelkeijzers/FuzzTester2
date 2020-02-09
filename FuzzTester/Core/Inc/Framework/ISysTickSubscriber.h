/*
 * SysTickSubscribers.h
 *
 *  Created on: Feb 8, 2020
 *      Author: miche
 */


#ifndef ISYSTICKSUBSCRIBER_H_
#define ISYSTICKSUBSCRIBER_H_

class ISysTickSubscriber
{
public:
   ISysTickSubscriber() {}
   virtual ~ISysTickSubscriber() {}
   virtual void OnTick() = 0;
};

#endif /* ISYSTICKSUBSCRIBER_H_ */
