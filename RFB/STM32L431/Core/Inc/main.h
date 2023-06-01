/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
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
#include "stm32l4xx_hal.h"

#include "stm32l4xx_ll_tim.h"
#include "stm32l4xx_ll_system.h"
#include "stm32l4xx_ll_gpio.h"
#include "stm32l4xx_ll_exti.h"
#include "stm32l4xx_ll_bus.h"
#include "stm32l4xx_ll_cortex.h"
#include "stm32l4xx_ll_rcc.h"
#include "stm32l4xx_ll_utils.h"
#include "stm32l4xx_ll_pwr.h"
#include "stm32l4xx_ll_dma.h"

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
#define COUNTOF(__BUFFER__)   (sizeof(__BUFFER__) / sizeof(*(__BUFFER__)))
/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define GPA3_Pin LL_GPIO_PIN_13
#define GPA3_GPIO_Port GPIOC
#define SPI_CS_PLL_Pin LL_GPIO_PIN_14
#define SPI_CS_PLL_GPIO_Port GPIOC
#define PLL_RAMPDIR_Pin LL_GPIO_PIN_15
#define PLL_RAMPDIR_GPIO_Port GPIOC
#define LED1_Pin LL_GPIO_PIN_1
#define LED1_GPIO_Port GPIOH
#define GPA0_Pin LL_GPIO_PIN_0
#define GPA0_GPIO_Port GPIOA
#define GPA1_Pin LL_GPIO_PIN_1
#define GPA1_GPIO_Port GPIOA
#define GPA2_Pin LL_GPIO_PIN_2
#define GPA2_GPIO_Port GPIOA
#define PLL_RAMPCLK_Pin LL_GPIO_PIN_3
#define PLL_RAMPCLK_GPIO_Port GPIOA
#define GPA4_Pin LL_GPIO_PIN_4
#define GPA4_GPIO_Port GPIOA
#define GPA5_Pin LL_GPIO_PIN_5
#define GPA5_GPIO_Port GPIOA
#define PA_EN_Pin LL_GPIO_PIN_6
#define PA_EN_GPIO_Port GPIOA
#define PA_DET_Pin LL_GPIO_PIN_7
#define PA_DET_GPIO_Port GPIOA
#define SPI_CS_ADC_Pin LL_GPIO_PIN_0
#define SPI_CS_ADC_GPIO_Port GPIOB
#define ADC_RESET_Pin LL_GPIO_PIN_2
#define ADC_RESET_GPIO_Port GPIOB
#define GPB12_Pin LL_GPIO_PIN_12
#define GPB12_GPIO_Port GPIOB
#define FGPB13_Pin LL_GPIO_PIN_13
#define FGPB13_GPIO_Port GPIOB
#define GPA8_Pin LL_GPIO_PIN_8
#define GPA8_GPIO_Port GPIOA
#define LNA_S2_Pin LL_GPIO_PIN_9
#define LNA_S2_GPIO_Port GPIOA
#define LNA_S1_Pin LL_GPIO_PIN_10
#define LNA_S1_GPIO_Port GPIOA
#define GPB4_Pin LL_GPIO_PIN_4
#define GPB4_GPIO_Port GPIOB
#define GPB5_Pin LL_GPIO_PIN_5
#define GPB5_GPIO_Port GPIOB
#define SWPH3_Pin LL_GPIO_PIN_3
#define SWPH3_GPIO_Port GPIOH
#define GPB8_Pin LL_GPIO_PIN_8
#define GPB8_GPIO_Port GPIOB
#define PLL_CE_Pin LL_GPIO_PIN_9
#define PLL_CE_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
