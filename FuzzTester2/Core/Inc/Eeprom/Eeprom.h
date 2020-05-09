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
      // See stm32f1xx_hal_flash_ex.h
      F101x6_F102x6_F103x6,
      F103X8,
      F100xB_F101xB_F102xB_F103xB,
      F100xE_F101xE_F103xE
   };

   Eeprom(EDensity density, uint8_t flashPage);
   ~Eeprom();

   uint8_t GetFlashPage() const;
   void SetFlashPage(uint8_t flashPage);

   bool Read(uint16_t VirtualAddress, uint32_t* Data) const;
   // A word is 32 bits
   bool Reads(uint16_t StartVirtualAddress, uint16_t wordsToRead, uint32_t* Data) const;

   bool Format(void);
   bool Write(uint16_t VirtualAddress, uint32_t Data);
   // A word is 32 bits
   bool Writes(uint16_t StartVirtualAddress, uint16_t wordsToWrite, uint32_t* Data);

private:
   uint16_t GetFlashPageSize(void) const;
   uint32_t GetFlashPageAddress() const;
   uint16_t GetMaximumVirtualAddress(void) const;

   EDensity _density;
   uint32_t _addressFlashPage0;
   uint16_t _flashPageSize;
   uint8_t _flashPage;
};

#endif
