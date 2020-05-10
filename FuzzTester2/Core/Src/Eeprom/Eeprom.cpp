#include <Eeprom/Eeprom.h>

#ifdef DEBUG
#include <assert.h>
#endif

#include "stm32f1xx_hal.h"


// Last used address
extern uint32_t __fini_array_end;


// Unsure what this is for
#define   _EEPROM_STORE_BEFOR_ERASE___NEED_MORE_RAM     (0)


Eeprom::Eeprom(EDensity density, uint8_t page)
:
_density(density),
_addressPage0(0x08000000),
_sequenceNumber(0)
{
   SetCurrentPage(page);
}


Eeprom::~Eeprom()
{
}

uint8_t Eeprom::GetFirstPage() const
{
   return (((uint32_t) &__fini_array_end) + GetPageSize() - 1) / GetPageSize();
}


uint8_t Eeprom::GetLastPage() const
{
   uint8_t lastPage = 0;

   switch (_density)
   {
   case EDensity::F101x6_F102x6_F103x6:
      lastPage = 31;
      break;

   case EDensity::F103X8:
      lastPage = 63;
      break;

   case EDensity::F100xB_F101xB_F102xB_F103xB:
      lastPage = 127;
      break;

   case EDensity::F100xE_F101xE_F103xE:
      lastPage = 255;
      break;

#ifdef DEBUG
   default:
      assert(false);
#endif
   }

   return lastPage;
}


uint8_t Eeprom::GetNrOfPages() const
{
   return GetLastPage() - GetFirstPage() + 1;
}


uint8_t Eeprom::GetCurrentPage() const
{
   return _currentPage;
}


void Eeprom::SetCurrentPage(uint8_t page)
{
#ifdef DEBUG
    if ((page < 0) || (page > GetLastPage()))
    {
       assert(false);
    }
#endif

   _currentPage = page;
}


uint16_t Eeprom::GetPageSize(void) const
{
   return (_density == EDensity::F100xE_F101xE_F103xE) ? 2048 : 1024;
}


uint16_t Eeprom::GetMaximumVirtualAddress(void) const
{
   return GetPageSize() / 4;
}


bool Eeprom::Read(uint16_t virtualAddress, uint32_t* data)
{
   if (virtualAddress >= GetMaximumVirtualAddress())
   {
      return false;
   }

   *data = ReadVirtualAddress(_currentPage, virtualAddress);
   return true;
}


bool Eeprom::Reads(uint16_t startVirtualAddress, uint16_t wordsToRead, uint32_t* data)
{
   if (startVirtualAddress + wordsToRead > GetMaximumVirtualAddress())
   {
      return false;
   }

   for (uint16_t i = startVirtualAddress ; i < wordsToRead + startVirtualAddress; i++)
   {
      *data =  ReadVirtualAddress(_currentPage, i * 4);
      data++;
   }

   return true;
}


bool Eeprom::FormatNextPage(void)
{
   SelectNextRecentPage();

   uint32_t error;
   HAL_FLASH_Unlock();
   FLASH_EraseInitTypeDef flashErase;
   flashErase.NbPages=1;
   flashErase.Banks = FLASH_BANK_1; // F1 series, skip for F0 (removed from implementation)
   flashErase.PageAddress = GetPageAddress(_currentPage);
   flashErase.TypeErase = FLASH_TYPEERASE_PAGES;

   if(HAL_FLASHEx_Erase(&flashErase, &error) == HAL_OK)
   {
      if (error == 0xFFFFFFFF)
      {
         bool writeOk = WriteVersionAndSequenceNumber();
         HAL_FLASH_Lock();
         return writeOk;
      }
   }

   HAL_FLASH_Lock();
   return false;
}


bool Eeprom::Write(uint16_t virtualAddress, uint32_t data)
{
   if (virtualAddress >= GetMaximumVirtualAddress())
   {
      return false;
   }

   // #if (_EEPROM_STORE_BEFOR_ERASE___NEED_MORE_RAM==1) http://www.github.com/NimaLTD
   HAL_FLASH_Unlock();

   bool writeOk = true;
   if (data != EMPTY)
   {
      writeOk &= WriteVirtualAddress(_currentPage, virtualAddress, data);
   }

   HAL_FLASH_Lock();
   return writeOk;
}


bool Eeprom::Writes(uint16_t startVirtualAddress, uint16_t wordsToWrite, uint32_t* data)
{
   if (startVirtualAddress + wordsToWrite > GetMaximumVirtualAddress())
   {
      return false;
   }

   HAL_FLASH_Unlock();
   bool writeOk = true;
   for (uint16_t i = 0; i < wordsToWrite; i++)
   {
      if (!WriteVirtualAddress(_currentPage,  startVirtualAddress + i,  data[i]))
      {
         writeOk = false;
         break;
      }
   }

   HAL_FLASH_Lock();
   return writeOk;
}


uint32_t Eeprom::ReadSequenceNumber(uint8_t page)
{
   uint32_t value = ReadVirtualAddress(page, GetVersionVirtualAddress());
   if (value == VERSION)
   {
      value = ReadVirtualAddress(page, GetSequenceNumberVirtualAddress());
      return value;
   }

   return EMPTY;
}


bool Eeprom::WriteVersionAndSequenceNumber()
{
   _sequenceNumber++;

   bool writeOk = WriteVirtualAddress(_currentPage, GetVersionVirtualAddress(), VERSION);
   writeOk     &= WriteVirtualAddress(_currentPage, GetSequenceNumberVirtualAddress(), _sequenceNumber);
   return writeOk;
}



void Eeprom::FindMostRecentPage()
{
   uint8_t mostRecentPage = GetFirstPage();
   uint8_t page = mostRecentPage;
   _sequenceNumber = 0;

   do
   {
      uint32_t sequenceNumber = ReadSequenceNumber(page);
      if ((sequenceNumber != EMPTY) && (_sequenceNumber <= sequenceNumber))
      {
         _sequenceNumber = sequenceNumber;
         mostRecentPage = page;
      }

      page++;
   }
   while (page <= GetLastPage());

   _currentPage = mostRecentPage;
}


void Eeprom::SelectNextRecentPage()
{
    FindMostRecentPage();

   _currentPage++;

   if (_currentPage > GetLastPage())
   {
      _currentPage = GetFirstPage();
   }
}


uint32_t Eeprom::GetVersionVirtualAddress() const
{
   return GetMaximumVirtualAddress() - 2;
}


uint32_t Eeprom::GetSequenceNumberVirtualAddress() const
{
   return GetMaximumVirtualAddress() - 1;
}


uint32_t Eeprom::ReadVirtualAddress(uint8_t page, uint16_t address)
{
   return *((__IO uint32_t*) (GetVirtualAddress(page, address)));
}


bool Eeprom::WriteVirtualAddress(uint8_t page, uint16_t address, uint32_t data)
{
   return (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, GetVirtualAddress(page, address), (uint64_t) data) == HAL_OK);
}



uint32_t Eeprom::GetVirtualAddress(uint8_t page, uint16_t address)
{
   return GetPageAddress(page) + address * 4;
}


uint32_t Eeprom::GetPageAddress(uint8_t page) const
{
   return _addressPage0 | (page * GetPageSize());
}

