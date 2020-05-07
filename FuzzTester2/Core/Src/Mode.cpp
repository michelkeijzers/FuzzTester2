/*
 * Mode.cpp
 *
 *  Created on: May 8, 2020
 *      Author: miche
 */

#include "Mode.h"

Mode::Mode()
:
   _mode(EMode::SelectPreset),
   _modeChanged(true),
   _backupMode(EMode::SelectPreset) // Backup mode to restore after screen lock or bypass.

{
}


Mode::~Mode()
{
}


Mode::EMode Mode::GetMode()
{
   return _mode;
}


void Mode::SetNextMode()
{
   SetMode((EMode) ((_mode + 1) % EMode::LastMode));
   _modeChanged = true;
}


void Mode::SetMode(EMode mode)
{
   if ((mode != EMode::ScreenLock) && (mode != EMode::Bypass))
   {
      _backupMode = mode;
   }

   _mode = mode;
   _modeChanged = true;
}


bool Mode::CheckModeChanged()
{
   bool modeChanged = _modeChanged;
   _modeChanged = false;
   return modeChanged;
}


void Mode::SetModeChanged(bool modeChanged)
{
   _modeChanged = modeChanged;
}


void Mode::Unlock()
{
   _mode = _mode == EMode::ScreenLock
     ? _backupMode
     : EMode::ScreenLock;
}


void Mode::SetBypass(bool onOffState)
{
   SetMode(onOffState ? EMode::Bypass : _backupMode);
}
