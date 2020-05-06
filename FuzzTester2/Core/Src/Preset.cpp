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


bool Preset::DecreaseIndex(Components::EType type)
{
   uint8_t previousValue;
   bool changed = false;

   switch (type)
   {
   case Components::EType::CapacitorA:
      previousValue = _capacitorA;
      _capacitorA = MAX(0, _capacitorA - 1);
      changed = (previousValue != _capacitorA);
      _isDirty |= changed;
      break;

   case Components::EType::TransistorB:
      previousValue = _transistorB;
      _transistorB = MAX(0, _transistorB - 1);
      changed = (previousValue != _transistorB);
      _isDirty |= (previousValue != _transistorB);
      break;

   case Components::EType::TransistorC:
      previousValue = _transistorC;
      _transistorC = MAX(0, _transistorC - 1);
      changed = (previousValue != _transistorC);
      _isDirty |= changed;
      break;

   case Components::EType::CapacitorD:
      previousValue = _capacitorD;
      _capacitorD = MAX(0, _capacitorD - 1);
      changed = (previousValue != _capacitorD);
      _isDirty |= changed;
      break;

   default:
      assert(false);
   }

   return changed;
}


bool Preset::IncreaseIndex(Components::EType type)
{
   uint8_t previousValue = _capacitorA;
   bool changed = false;

   switch (type)
   {
   case Components::EType::CapacitorA :
      previousValue = _capacitorA;
      _capacitorA = MIN(Components::NrOfCapacitors - 1, _capacitorA + 1);
      changed = (previousValue != _capacitorA);
      _isDirty |= changed;
      break;

   case Components::EType::TransistorB:
      previousValue = _transistorB;
      _transistorB = MIN(Components::NrOfTransistors - 1, _transistorB + 1);
      changed = (previousValue != _transistorB);
      _isDirty |= changed;
      break;

   case Components::EType::TransistorC:
      previousValue = _transistorC;
      _transistorC = MIN(Components::NrOfTransistors - 1, _transistorC + 1);
      changed = (previousValue != _transistorC);
      _isDirty |= changed;
      break;

   case Components::EType::CapacitorD :
      previousValue = _capacitorD;
      _capacitorD = MIN(Components::NrOfCapacitors - 1, _capacitorD + 1);
      changed = (previousValue != _capacitorD);
      _isDirty |= changed;
      break;

   default:
      assert(false);
   }

   return changed;
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
