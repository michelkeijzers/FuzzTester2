/*
 * HalUtils.h
 *
 *  Created on: Apr 27, 2020
 *      Author: miche
 */

#ifndef INC_FRAMEWORK_HALUTILS_H_
#define INC_FRAMEWORK_HALUTILS_H_


#include <stdint.h>


class HalUtils
{
public:

   static void Delay(uint32_t milliseconds);

private:
   HalUtils();
   virtual ~HalUtils();
};

#endif /* INC_FRAMEWORK_HALUTILS_H_ */
