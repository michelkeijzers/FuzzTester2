/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */

  /*
  LCD:
  - address 39 (0x27)
  - jumper should be added (backlight)
  - make sure it has 5V (with 3.3V contrast is very low)
  - use pot on back for contrast too

             0123456789012345
    Screens: C6 T24 T25 C6     Abbreviated states of all components     (Always visible)
             Cap 1: 100 uF     Show Capacitor 1  						(Changed by keypad)
             Tra 1: 2N9400     Show Transistor 1 						(Changed by keypad)
             Tra 2: BC548A     Show Transistor 2				        (Changed by keypad)
             Cap 2: 0.01 uF    Show Capacitor 2  						(Changed by keypad)

  Keypad: Use resistor (1K)
        pin: 5 6 7 8
           +--------
     pin 1 | 1 2 3 A
     pin 2 | 4 5 6 B
     pin 3 | 7 8 9 C
     pin 4 | * 0 * D

     1: Increase Capacitor 1
     2: Increase Transistor 1
     3: Increase Transistor 2
     A: Increase Capacitor 2
     4: Decrease Capacitor 1
     5: Decrease Transistor 1
     6: Decrease Transistor 2
     B: Decrease Capacitor 2
     7: Show Capacitor 1
     8: Show Transistor 1
     9: Show Transistor 2
     C: Show Capacitor 2

74HC595N: https://www.youtube.com/watch?v=Hhag8F26Dbg (STM32 cubeMX Keil Shift Register with SPI (Part 1)
	      datasheet: https://datasheet.octopart.com/74HC595N%2C112-Philips-datasheet-7085704.pdf

  pin  RCLK/latch: Output register
       SRCLK/CLK : CLK for shift register clock
       SER/DATA  : Input data from STM32

       STM32: SPI Transmit Only Master

       74HC595/Pins	     IC              Output
       0.2, 0.1, 0.0  CD4051 1ch 8:1    Capacitor   7~ 0
       0.4, 0.3       CD4052 2ch 4:1    Transistor  3~ 0
       0.6, 0.5       CD4052 2ch 4:1    Transistor  7~ 4
       1.0, 0.7       CD4052 2ch 4:1    Transistor 11~ 8
       1.2, 1.1       CD4052 2ch 4:1    Transistor 15~12
       1.4, 1.3       CD4052 2ch 4:1    Transistor 19~16
       1.6, 1.5       CD4052 2ch 4:1    Transistor 23~20
       2.0, 1.7       CD4052 2ch 4:1    Transistor 27~21
       2.2, 2.1       CD4052 2ch 4:1    Transistor 31~28
       2.4, 2.3       CD4052 2ch 4:1    Transistor 35~31
       2.7, 2.6, 2.5  CD4051 1ch 8:1    Transistor 15~ 8

   STM32:
     Keypad   : PB5 , PB4 , PB3 , PA15   Row 1-4, output
                PA12, PA11, PA10, PA9    Column 1-4, input, pull down resistor, debounce
     LCD      : PB7 , PB6                 I2C1
     74HC595's: PA5                      SPI1 SCK, Master Transmit Only, prescaler /4, to 74HC595N: 11: SRCLK
                PA7                      SPI1 MOSI                                     to 74HC595N: 14: SER
                PA6                      GPIO_Latch (RCLK)                             to 74HC595N: 12: RCLK
*/

/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "LcdDisplay.h"
#include "ShiftRegister.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */


/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */


/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
I2C_HandleTypeDef hi2c1;

SPI_HandleTypeDef hspi1;
SPI_HandleTypeDef hspi2;

/* USER CODE BEGIN PV */

LcdDisplay    _lcdDisplay   (&hi2c1);
ShiftRegister _shiftRegister(&hspi2, GPIO_LATCH_GPIO_Port, GPIO_LATCH_Pin);

uint8_t _dataToShift[4] = { 0x00, 0xf0, 0x0f, 0xff };


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
static void MX_SPI1_Init(void);
static void MX_SPI2_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */






void init()
{
    _lcdDisplay.I2C_Scan();
    _lcdDisplay.Init();

    // set address to 0x00
    _lcdDisplay.SendCommand(0b10000000);
    _lcdDisplay.SendString((char*) " Using 1602 LCD");

    // set address to 0x40
    _lcdDisplay.SendCommand(0b11000000);
    _lcdDisplay.SendString((char*)  "over I2C bus v05");
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_SPI1_Init();
  MX_SPI2_Init();
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */
 
 

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  init();

  while (1)
  {

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

   for (uint8_t n = 0; n < sizeof(_dataToShift); n++)
   {
	  //LCD_SendCommand(LCD_ADDR, 0b10000000); // Line 1, address to 0
	  //LCD_SendString(LCD_ADDR, "Cx Txx Txx Cx");
	  //LCD_SendCommand(LCD_ADDR, 0b11000000); // Line 2, address to 40
	  //LCD_SendString(LCD_ADDR, "Cap 1: 10 uF");

	  _shiftRegister.ShiftOut(_dataToShift + n, 1);
	  HAL_Delay(100);
    }
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_256;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIO_USER_LED_GPIO_Port, GPIO_USER_LED_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_LATCH_Pin|GPIO_KEYPAD_ROW_4_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12|GPIO_KEYPAD_ROW_3_Pin|GPIO_KEYPAD_ROW_2_Pin|GPIO_KEYPAD_ROW_1_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : GPIO_USER_LED_Pin */
  GPIO_InitStruct.Pin = GPIO_USER_LED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIO_USER_LED_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : GPIO_LATCH_Pin GPIO_KEYPAD_ROW_4_Pin */
  GPIO_InitStruct.Pin = GPIO_LATCH_Pin|GPIO_KEYPAD_ROW_4_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PB12 GPIO_KEYPAD_ROW_3_Pin GPIO_KEYPAD_ROW_2_Pin GPIO_KEYPAD_ROW_1_Pin */
  GPIO_InitStruct.Pin = GPIO_PIN_12|GPIO_KEYPAD_ROW_3_Pin|GPIO_KEYPAD_ROW_2_Pin|GPIO_KEYPAD_ROW_1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : GPIO_KEYPAD_COLUMN_4_Pin GPIO_KEYPAD_COLUMN_3_Pin GPIO_KEYPAD_COLUMN_2_Pin GPIO_KEYPAD_COLUMN_1_Pin */
  GPIO_InitStruct.Pin = GPIO_KEYPAD_COLUMN_4_Pin|GPIO_KEYPAD_COLUMN_3_Pin|GPIO_KEYPAD_COLUMN_2_Pin|GPIO_KEYPAD_COLUMN_1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
