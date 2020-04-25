/*
 * Presets.h
 *
 *  Created on: Apr 24, 2020
 *      Author: miche
 */

#ifndef SRC_PRESETS_H_
#define SRC_PRESETS_H_

#include <stdint.h>

class Presets
{
public:
   const uint8_t NR_OF_PRESETS = 64;

   Presets();

   virtual ~Presets();

   void Load();
};

#endif /* SRC_PRESETS_H_ */
