/*
 * Mode.h
 *
 *  Created on: May 8, 2020
 *      Author: miche
 */

#ifndef MODE_H_
#define MODE_H_

class Mode
{
public:
   enum EMode
   {
      SelectPreset,
      SelectCapacitorA,
      SelectTransistorB,
      SelectTransistorC,
      SelectCapacitorD,
      PresetsMemory,
      LastMode, // Last mode to iterate through
      ScreenLock,
      Bypass
   };

   Mode();
   virtual ~Mode();

   EMode GetMode();
   void SetNextMode();
   void SetMode(EMode mode);
   bool CheckModeChanged();
   void SetModeChanged(bool modeChanged);
   void Unlock();
   void SetBypass(bool onOffState);

private:
   EMode _mode;
   bool _modeChanged;
   EMode _backupMode;
};

#endif /* MODE_H_ */
