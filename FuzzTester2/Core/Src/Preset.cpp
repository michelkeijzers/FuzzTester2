/*
 * Preset.cpp
 *
 *  Created on: Apr 26, 2020
 *      Author: miche
 */

#include "Preset.h"
#include "Components.h"

#include <assert.h>
#include <sys/param.h>

Preset::Preset()
:
   _capacitorA (0),
   _transistorB(0),
   _transistorC(0),
   _capacitorD (0),
   _isDirty    (false)
{
}


Preset::~Preset()
{
}


bool Preset::DecreaseParameterIndex(uint8_t* parameter)
{
   bool isChanged = false;

   if (*parameter > 0)
   {
      isChanged = true;
      _isDirty = true;
      (*parameter)--;
   }

   return isChanged;
}


bool Preset::DecreaseIndex(Components::EType type)
{
   bool isChanged = false;

   switch (type)
   {
   case Components::EType::CapacitorA:
      isChanged = DecreaseParameterIndex(&_capacitorA);
      break;

   case Components::EType::TransistorB:
      isChanged = DecreaseParameterIndex(&_transistorB);
      break;

   case Components::EType::TransistorC:
      isChanged = DecreaseParameterIndex(&_transistorC);
      break;

   case Components::EType::CapacitorD:
      isChanged = DecreaseParameterIndex(&_capacitorD);
      break;

   default:
      assert(false);
   }

   return isChanged;
}


bool Preset::IncreaseParameterIndex(uint8_t* parameter, uint8_t nrOfItems)
{
   bool isChanged = false;

   if (*parameter < nrOfItems - 1)
   {
      isChanged = true;
      _isDirty = true;
      (*parameter)++;
   }

   return isChanged;
}


bool Preset::IncreaseIndex(Components::EType type)
{
   bool isChanged = false;

   switch (type)
   {
   case Components::EType::CapacitorA :
      isChanged = IncreaseParameterIndex(&_capacitorA, Components::NrOfCapacitors);
      break;

   case Components::EType::TransistorB:
      isChanged = IncreaseParameterIndex(&_transistorB, Components::NrOfTransistors);
      break;

   case Components::EType::TransistorC:
      isChanged = IncreaseParameterIndex(&_transistorC, Components::NrOfTransistors);
      break;

   case Components::EType::CapacitorD :
      isChanged = IncreaseParameterIndex(&_capacitorD, Components::NrOfCapacitors);
      break;

   default:
      assert(false);
   }

   return isChanged;
}


uint8_t Preset::GetIndex(Components::EType type)
{
   uint8_t index = 0;

   switch (type)
   {
   case Components::EType::CapacitorA :
      index =  _capacitorA;
      break;

   case Components::EType::TransistorB:
      index =  _transistorB;
      break;

   case Components::EType::TransistorC:
      index =  _transistorC;
      break;

   case Components::EType::CapacitorD :
      index =  _capacitorD;
      break;

   default: assert(false);
   }

   return index;
}


bool Preset::CheckDirty()
{
   bool isDirty = _isDirty;
   _isDirty = false;
   return isDirty;
}


/**
 * Debug only
 */
void Preset::SetIndex(Components::EType type, uint8_t index)
{
   switch (type)
   {
   case Components::EType::CapacitorA :  _capacitorA = index; break;
   case Components::EType::TransistorB:  _transistorB = index; break;
   case Components::EType::TransistorC:  _transistorC = index; break;
   case Components::EType::CapacitorD :  _capacitorD = index; break;
   default: assert(false);
   }
}


void Preset::LimitBoundaries()
{
   _capacitorA  = MAX(0, MIN(Components::NrOfCapacitors  - 1, _capacitorA ));
   _transistorB = MAX(0, MIN(Components::NrOfTransistors - 1, _transistorB));
   _transistorC = MAX(0, MIN(Components::NrOfTransistors - 1, _transistorC));
   _capacitorD  = MAX(0, MIN(Components::NrOfCapacitors  - 1, _capacitorD ));
}
