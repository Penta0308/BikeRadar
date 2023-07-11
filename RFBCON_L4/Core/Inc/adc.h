/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    adc.h
  * @brief   This file contains all the function prototypes for
  *          the adc.c file
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
#ifndef __ADC_H__
#define __ADC_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

extern ADC_HandleTypeDef hadc1;

/* USER CODE BEGIN Private defines */

#define ADCSAMPLE_SIZE (uint32_t)1
#define ADCSAMPLE_PAPWR 0
//#define ADCSAMPLE_INTTEMP 0


#define INTERNAL_TEMPSENSOR_V25        ((int32_t)741)
#define INTERNAL_TEMPSENSOR_AVGSLOPE   ((int32_t)4300)
#define INTERNAL_VREF_CALIB_VALUE   &((uint16_t*)(0x1FFF75AA))

extern const uint32_t VDD_APPLIED;

#define COMPUTATION_TEMPERATURE_STD_PARAMS(TS_ADC_DATA)                        \
  ((((int32_t)(INTERNAL_TEMPSENSOR_V25 - (((TS_ADC_DATA) * VDD_APPLIED) / 4095)   \
     ) * 1000                                                                  \
    ) / INTERNAL_TEMPSENSOR_AVGSLOPE                                           \
   ) + 25                                                                      \
  )

#define COMPUTATION_DIGITAL_12BITS_TO_VOLTAGE(ADC_DATA) ( ((ADC_DATA) * VDD_APPLIED) / 4095)


/* USER CODE END Private defines */

void MX_ADC1_Init(void);

/* USER CODE BEGIN Prototypes */

extern __IO uint16_t ADCSample_values[ADCSAMPLE_SIZE];

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __ADC_H__ */

