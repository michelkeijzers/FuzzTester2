#ifndef __EEPROM_H
#define __EEPROM_H

/*
  Original Author:     Nima Askari
  WebSite:    http://www.github.com/NimaLTD
  Instagram:  http://instagram.com/github.NimaLTD
  Youtube:    https://www.youtube.com/channel/UCUhY7qY1klJm1d2kulr9ckw

  Adapter Author: Michel Keijzers
*/

#include <stdbool.h>
#include <stdint.h>

class Eeprom
{
public:
   enum EDensity
   {
      F030x4_F030x6_F070x6_F030x8,
      F1LowDensity,
      F1MediumDensity,
      F1HighDensity
   };

   Eeprom(EDensity density, uint8_t flashPage);
   ~Eeprom();

   uint8_t GetFlashPage();
   void SetFlashPage(uint8_t flashPage);

   bool Read(uint16_t VirtualAddress, uint32_t* Data);
   // A word is 32 bits
   bool Reads(uint16_t StartVirtualAddress, uint16_t wordsToRead, uint32_t* Data);

   bool Format(void);
   bool Write(uint16_t VirtualAddress, uint32_t Data);
   // A word is 32 bits
   bool Writes(uint16_t StartVirtualAddress, uint16_t wordsToWrite, uint32_t* Data);

private:
   uint16_t GetFlashPageSize(void);
   uint32_t GetFlashPageAddress();
   uint16_t GetMaximumVirtualAddress(void);

   EDensity _density;
   uint32_t _addressFlashPage0;
   uint16_t _flashPageSize;
   uint8_t _flashPage;
};

#endif
