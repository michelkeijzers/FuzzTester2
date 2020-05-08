#include <Eeprom/Eeprom.h>

#include <assert.h>

#include "stm32f1xx_hal.h"

// Unsure what this is for
#define   _EEPROM_STORE_BEFOR_ERASE___NEED_MORE_RAM     (0)


Eeprom::Eeprom(EDensity density, uint8_t flashPage)
:
_density(density),
_addressFlashPage0(0x08000000)
{
   SetFlashPage(flashPage);
   _flashPageSize = GetFlashPageSize();
}


Eeprom::~Eeprom()
{
}


uint8_t Eeprom::GetFlashPage()
{
   return _flashPage;
}


void Eeprom::SetFlashPage(uint8_t flashPage)
{
#ifdef  DEBUG
   uint8_t maxPage;

   switch (_density)
   {
   case EDensity::F030x4_F030x6_F070x6_F030x8:

   case EDensity::F1LowDensity:
      maxPage = 31;
      break;

   case EDensity::F1MediumDensity:
      maxPage = 127;
      break;

   case EDensity::F1HighDensity:
      maxPage = 255;
      break;

   default:
      assert(false);
   }

   if (flashPage > maxPage)
   {
      assert(false); // Page too high
   }
#endif

   _flashPage = flashPage;
}


bool Eeprom::Read(uint16_t virtualAddress, uint32_t* Data)
{
   if (virtualAddress >= GetMaximumVirtualAddress())
   {
      return false;
   }

   *Data = (*(__IO uint32_t*) ((virtualAddress * 4) + GetFlashPageAddress()));

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
      *data =  (*(__IO uint32_t*) ((i * 4) + GetFlashPageAddress()));
      data++;
   }

   return true;
}


bool Eeprom::Format(void)
{
   uint32_t error;
   HAL_FLASH_Unlock();
   FLASH_EraseInitTypeDef flashErase;
   flashErase.NbPages=1;

   if ((_density == EDensity::F1LowDensity) || (_density == EDensity::F1MediumDensity) || (_density == EDensity::F1HighDensity))
   {
      flashErase.Banks = FLASH_BANK_1;
   }

   flashErase.PageAddress = GetFlashPageAddress();
   flashErase.TypeErase = FLASH_TYPEERASE_PAGES;

   if(HAL_FLASHEx_Erase(&flashErase,&error) == HAL_OK)
   {
      HAL_FLASH_Lock();
      return (error == 0xFFFFFFFF);
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
   if (data != 0xFFFFFFFF)
   {
      if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, (virtualAddress * 4) + GetFlashPageAddress(), (uint64_t) data) == HAL_OK)
      {
         HAL_FLASH_Lock();
         return true;
      }
      else
      {
         HAL_FLASH_Lock();
         return false;
      }
   }

   HAL_FLASH_Lock();
   return true;
}


bool Eeprom::Writes(uint16_t startVirtualAddress, uint16_t wordsToWrite, uint32_t* data)
{
   if (startVirtualAddress + wordsToWrite > GetMaximumVirtualAddress())
   {
      return false;
   }

   // #if (_EEPROM_STORE_BEFOR_ERASE___NEED_MORE_RAM==1) // See http://www.github.com/NimaLTD
   HAL_FLASH_Unlock();

   for (uint16_t i = 0; i < wordsToWrite; i++)
   {
      if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, ((i + startVirtualAddress) * 4) + GetFlashPageAddress(), (uint64_t) data[i]) != HAL_OK)
      {
         HAL_FLASH_Lock();
         return false;
      }
   }

   HAL_FLASH_Lock();

   return true;
}


uint32_t Eeprom::GetFlashPageAddress()
{
   return _addressFlashPage0 | (_flashPageSize * _flashPage);
}


uint16_t Eeprom::GetFlashPageSize(void)
{
   return (_density == EDensity::F1HighDensity) ? 2048 : 1024;
}


uint16_t Eeprom::GetMaximumVirtualAddress(void)
{
   return GetFlashPageSize() / 4;
}
