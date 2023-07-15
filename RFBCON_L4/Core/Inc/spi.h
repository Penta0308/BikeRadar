/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    spi.h
  * @brief   This file contains all the function prototypes for
  *          the spi.c file
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
#ifndef __SPI_H__
#define __SPI_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

#include <math.h>

/* USER CODE END Includes */

extern SPI_HandleTypeDef hspi2;

/* USER CODE BEGIN Private defines */

#define TIPLL_FOSCIN 48000000.0f
extern const uint8_t TIPLL_OSC2X;
extern const uint8_t TIPLL_MULT;
extern const uint8_t TIPLL_PRER;
extern const uint8_t TIPLL_POSTR;
extern const float TIPLL_FPD;
extern uint8_t TIPLL_DENQ;

#define RFBPllDataLen			3

#define RFBPllData_SweepLow		0u
#define RFBPllData_SweepHigh	1u
#define RFBPllData_SweepN		2u

extern uint32_t RFBPllData[RFBPllDataLen];


#define SPIInitTiAdcW_GenH(addr, value) (0b01000000 | (0b00111111 & (uint8_t)((addr) >> 6)))
#define SPIInitTiAdcW_GenM(addr, value) ((uint8_t)(addr))
#define SPIInitTiAdcW_GenL(addr, value) ((uint8_t)(value))
#define SPIInitTiAdcW_GenArray(addr, value) {SPIInitTiAdcW_GenH(addr, value), SPIInitTiAdcW_GenM(addr, value), SPIInitTiAdcW_GenL(addr, value)}

#define SPIInitTiPllR_GenH(addr, value) ((0b01111111 & (uint8_t)(addr)) | 0b10000000)
#define SPIInitTiPllR_GenArray(addr) {SPIInitTiPllR_GenH(addr, 0), 0, 0}

#define SPIInitTiPllW_GenH(addr, value) (0b01111111 & (uint8_t)(addr))
#define SPIInitTiPllW_GenM(addr, value) ((uint8_t)(value >> 8))
#define SPIInitTiPllW_GenL(addr, value) ((uint8_t)(value))
#define SPIInitTiPllW_GenArray(addr, value) {SPIInitTiPllW_GenH(addr, value), SPIInitTiPllW_GenM(addr, value), SPIInitTiPllW_GenL(addr, value)}



/* USER CODE END Private defines */

void MX_SPI2_Init(void);

/* USER CODE BEGIN Prototypes */

void SPIInitTiPll(void);
uint8_t SPIGetTiPllLocked(void);
void SPISetTiPllOutAPwr(uint8_t power, uint8_t powerdown);
float SPISetTiPllFreq(float f);
void SPISetTiPllRampFreq(float start, float end, uint16_t len, float threshbw, float limithigh, float limitlow);
void SPISetTiPllRampFreqFromBuf();
void SPIInitTiAdc();

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __SPI_H__ */

