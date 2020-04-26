/*
 * Preset.cpp
 *
 *  Created on: Apr 26, 2020
 *      Author: miche
 */

#include "Preset.h"
#include "components.h"

#include <assert.h>
#include <sys/param.h>

Preset::Preset()
{
   _capacitorA   = 0;
   _transistorB  = 0;
   _transistorC  = 0;
   _capacitorD   = 0;


}

Preset::~Preset()
{
}


void Preset::DecreaseIndex(EType type)
{
   switch (type)
   {
      case EType::CapacitorA : _capacitorA = MAX(0, _capacitorA - 1); break;
      case EType::TransistorB: _transistorB = MAX(0, _transistorB - 1); break;
      case EType::TransistorC: _transistorC = MAX(0, _transistorC - 1); break;
      case EType::CapacitorD : _capacitorD = MAX(0, _capacitorD - 1); break;
      default: assert(false);
   }
}


void Preset::IncreaseIndex(EType type)
{
   switch (type)
      {
      case EType::CapacitorA : _capacitorA = MIN(Components::NrOfCapacitors - 1, _capacitorA + 1); break;
      case EType::TransistorB: _transistorB = MIN(Components::NrOfTransistors - 1, _transistorB + 1); break;
      case EType::TransistorC: _transistorC = MIN(Components::NrOfTransistors - 1, _transistorC + 1); break;
      case EType::CapacitorD : _capacitorD = MIN(Components::NrOfCapacitors - 1, _capacitorD + 1); break;
      default: assert(false);
      }
}


uint8_t Preset::GetIndex(EType type)
{
   switch (type)
   {
   case EType::CapacitorA : return _capacitorA; break;
   case EType::TransistorB: return _transistorB; break;
   case EType::TransistorC: return _transistorC; break;
   case EType::CapacitorD : return _capacitorD; break;
   default: assert(false);
   }
}
