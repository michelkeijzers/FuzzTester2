#ifndef __EEPROM_H
#define __EEPROM_H

/*
  Original Author:     Nima Askari
  WebSite:    http://www.github.com/NimaLTD
  Instagram:  http://instagram.com/github.NimaLTD
  Youtube:    https://www.youtube.com/channel/UCUhY7qY1klJm1d2kulr9ckw

  Adapter Author: Michel Keijzers

  Changes compared to original:
  - Converted to class
  - Config file to member variables/methods
  - Removed backup function (not used by F1)
  - Added STM32F103C8
  - Removed STM32F0
  - Added wear leveling (write as 2x32 bits: ID/version: 10 00 00 00, followed by seq nr; when writing, search highest seq, use next page)
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

   Eeprom(EDensity density, uint8_t page);
   ~Eeprom();

   uint8_t GetFirstPage() const;
   uint8_t GetLastPage() const;
   uint8_t GetNrOfPages() const;

   uint8_t GetCurrentPage() const;
   void SetCurrentPage(uint8_t page);

   uint16_t GetPageSize(void) const;
   uint16_t GetMaximumVirtualAddress(void) const;

   void FindMostRecentPage();
   bool Read(uint16_t VirtualAddress, uint32_t* data);
   // A word is 32 bits
   bool Reads(uint16_t StartVirtualAddress, uint16_t wordsToRead, uint32_t* Data);

   bool FormatNextPage(void);

   bool Write(uint16_t VirtualAddress, uint32_t data);
   // A word is 32 bits
   bool Writes(uint16_t StartVirtualAddress, uint16_t wordsToWrite, uint32_t* Data);


private:
   uint32_t ReadSequenceNumber(uint8_t page);
   bool WriteVersionAndSequenceNumber();

   void SelectNextRecentPage();

   uint32_t GetVersionVirtualAddress() const;
   uint32_t GetSequenceNumberVirtualAddress() const;

   uint32_t ReadVirtualAddress(uint8_t page, uint16_t address);
   bool WriteVirtualAddress(uint8_t page, uint16_t address, uint32_t data);

   uint32_t GetPageAddress(uint8_t page) const;
   uint32_t GetVirtualAddress(uint8_t page, uint16_t address);

   static const uint32_t VERSION = 0x10000000;
   static const uint32_t EMPTY   = 0xFFFFFFFF;

   EDensity _density;
   uint32_t _addressPage0;
   uint8_t _currentPage;
   uint32_t _sequenceNumber;
};

#endif
