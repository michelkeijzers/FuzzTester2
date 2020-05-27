/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

void MyInit();
int MyMain();


/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define GPIO_TRANSISTOR_C_SELECTION_1_Pin GPIO_PIN_1
#define GPIO_TRANSISTOR_C_SELECTION_1_GPIO_Port GPIOA
#define GPIO_BYPASS_SWITCH_Pin GPIO_PIN_2
#define GPIO_BYPASS_SWITCH_GPIO_Port GPIOA
#define GPIO_BYPASS_SWITCH_EXTI_IRQn EXTI2_IRQn
#define GPIO_BYPASS_MODE_Pin GPIO_PIN_3
#define GPIO_BYPASS_MODE_GPIO_Port GPIOA
#define GPIO_TRANSISTOR_C_SELECTION_2_Pin GPIO_PIN_4
#define GPIO_TRANSISTOR_C_SELECTION_2_GPIO_Port GPIOA
#define GPIO_TRANSISTOR_C_SELECTION_3_Pin GPIO_PIN_5
#define GPIO_TRANSISTOR_C_SELECTION_3_GPIO_Port GPIOA
#define GPIO_CAPACITOR_D_SELECTION_0_Pin GPIO_PIN_7
#define GPIO_CAPACITOR_D_SELECTION_0_GPIO_Port GPIOA
#define GPIO_TRANSISTOR_B_SELECTION_0_Pin GPIO_PIN_0
#define GPIO_TRANSISTOR_B_SELECTION_0_GPIO_Port GPIOB
#define GPIO_TRANSISTOR_B_SELECTION_1_Pin GPIO_PIN_1
#define GPIO_TRANSISTOR_B_SELECTION_1_GPIO_Port GPIOB
#define GPIO_PB2_Pin GPIO_PIN_2
#define GPIO_PB2_GPIO_Port GPIOB
#define GPIO_CAPACITOR_A_SELECTION_0_Pin GPIO_PIN_10
#define GPIO_CAPACITOR_A_SELECTION_0_GPIO_Port GPIOB
#define GPIO_CAPACITOR_A_SELECTION_1_Pin GPIO_PIN_11
#define GPIO_CAPACITOR_A_SELECTION_1_GPIO_Port GPIOB
#define GPIO_CAPACITOR_A_SELECTION_2_Pin GPIO_PIN_12
#define GPIO_CAPACITOR_A_SELECTION_2_GPIO_Port GPIOB
#define GPIO_CAPACITOR_D_SELECTION_1_Pin GPIO_PIN_14
#define GPIO_CAPACITOR_D_SELECTION_1_GPIO_Port GPIOB
#define GPIO_CAPACITOR_D_SELECTION_2_Pin GPIO_PIN_15
#define GPIO_CAPACITOR_D_SELECTION_2_GPIO_Port GPIOB
#define GPIO_TRANSISTOR_C_SELECTION_0_Pin GPIO_PIN_8
#define GPIO_TRANSISTOR_C_SELECTION_0_GPIO_Port GPIOA
#define GPIO_BUTTON_DECREASE_Pin GPIO_PIN_3
#define GPIO_BUTTON_DECREASE_GPIO_Port GPIOB
#define GPIO_BUTTON_DECREASE_EXTI_IRQn EXTI3_IRQn
#define GPIO_BUTTON_ENTER_Pin GPIO_PIN_4
#define GPIO_BUTTON_ENTER_GPIO_Port GPIOB
#define GPIO_BUTTON_ENTER_EXTI_IRQn EXTI4_IRQn
#define GPIO_BUTTON_INCREASE_Pin GPIO_PIN_5
#define GPIO_BUTTON_INCREASE_GPIO_Port GPIOB
#define GPIO_BUTTON_INCREASE_EXTI_IRQn EXTI9_5_IRQn
#define GPIO_TRANSISTOR_B_SELECTION_2_Pin GPIO_PIN_8
#define GPIO_TRANSISTOR_B_SELECTION_2_GPIO_Port GPIOB
#define GPIO_TRANSISTOR_B_SELECTION_3_Pin GPIO_PIN_9
#define GPIO_TRANSISTOR_B_SELECTION_3_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
