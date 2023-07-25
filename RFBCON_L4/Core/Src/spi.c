/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    spi.c
  * @brief   This file provides code for the configuration
  *          of the SPI instances.
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
/* Includes ------------------------------------------------------------------*/
#include "spi.h"

/* USER CODE BEGIN 0 */

const uint8_t TIPLL_OSC2X = 2;
const uint8_t TIPLL_MULT = 1;
const uint8_t TIPLL_PRER = 1;
const uint8_t TIPLL_POSTR = 1;
const float TIPLL_FPD = TIPLL_FOSCIN * TIPLL_OSC2X * TIPLL_MULT / TIPLL_PRER / TIPLL_POSTR;
//uint8_t TIPLL_DENQ = 24;
//uint32_t TIPLL_DEN = 0xFFFFFFFF;

/* USER CODE END 0 */

SPI_HandleTypeDef hspi2;

/* SPI2 init function */
void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_32;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 7;
  hspi2.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi2.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

void HAL_SPI_MspInit(SPI_HandleTypeDef* spiHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(spiHandle->Instance==SPI2)
  {
  /* USER CODE BEGIN SPI2_MspInit 0 */

  /* USER CODE END SPI2_MspInit 0 */
    /* SPI2 clock enable */
    __HAL_RCC_SPI2_CLK_ENABLE();

    __HAL_RCC_GPIOB_CLK_ENABLE();
    /**SPI2 GPIO Configuration
    PB10     ------> SPI2_SCK
    PB14     ------> SPI2_MISO
    PB15     ------> SPI2_MOSI
    */
    GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_14|GPIO_PIN_15;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_MEDIUM;
    GPIO_InitStruct.Alternate = GPIO_AF5_SPI2;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* USER CODE BEGIN SPI2_MspInit 1 */

  /* USER CODE END SPI2_MspInit 1 */
  }
}

void HAL_SPI_MspDeInit(SPI_HandleTypeDef* spiHandle)
{

  if(spiHandle->Instance==SPI2)
  {
  /* USER CODE BEGIN SPI2_MspDeInit 0 */

  /* USER CODE END SPI2_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_SPI2_CLK_DISABLE();

    /**SPI2 GPIO Configuration
    PB10     ------> SPI2_SCK
    PB14     ------> SPI2_MISO
    PB15     ------> SPI2_MOSI
    */
    HAL_GPIO_DeInit(GPIOB, GPIO_PIN_10|GPIO_PIN_14|GPIO_PIN_15);

  /* USER CODE BEGIN SPI2_MspDeInit 1 */

  /* USER CODE END SPI2_MspDeInit 1 */
  }
}

/* USER CODE BEGIN 1 */

D4 RFBPllData[RFBPllDataLen];

void SPIWriteTiPll(uint8_t addr, uint16_t data) {
	uint8_t txb[3];
	txb[0] = addr & 0x7f;
	txb[1] = data >> 8;
	txb[2] = (uint8_t)data;

	taskENTER_CRITICAL();
	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	HAL_SPI_Transmit(&hspi2, txb, 3, 10);
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	taskEXIT_CRITICAL();
}


uint16_t SPIReadTiPll(uint8_t addr) {
	uint8_t txb[3];
	txb[0] = (addr & 0x7f) | 0x80;
	txb[1] = 0;
	txb[2] = 0;
	uint8_t rxb[3];

	taskENTER_CRITICAL();
	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	HAL_SPI_TransmitReceive(&hspi2, txb, rxb, 3, 10);
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	taskEXIT_CRITICAL();
	return rxb[1] * 0x100u + rxb[2];
}


void SPIInitTiPll(void) {
	SPIWriteTiPll(  0, 0b0010001000011010); // Reset
	osDelay(4);
	SPIWriteTiPll(106, 0b0000000000000011); // RAMP_TRIG_CAL Off, RAMP_SCALE_COUNT 3
	osDelay(1);
	SPIWriteTiPll(105, 0b0111111111000000); // Automatic Ramping, RAMP1 End -> RAMP0, RAMP_DLY_CNT 1023
	osDelay(1);
	SPIWriteTiPll(101, 0b0000000000010000); // RAMP1 RST Off, RAMP0 End -> RAMP1
	//SPIWriteTiPll(101, 0b0000000000100000); // RAMP1 RST En, RAMP0 End -> RAMP0
	osDelay(1);
	SPIWriteTiPll( 97, 0b0000010010001000); // RAMP0 RST Off, TrigA:ClkR, TrigB:ClkF, Burst:RT
	osDelay(1);
	//SPIWriteTiPll( 96, 0b0000000000001000); // Burst Off, CNT:2
	SPIWriteTiPll( 96, 0b1000000000001000); // Burst On, CNT:2
	osDelay(1);
	SPIWriteTiPll( 78, 0b0000000100011011); // QUICK_RECAL_EN 0, VCO_CAPCTRL_STRT 141
	osDelay(1);
	SPIWriteTiPll( 71, 0b0000000010000001); // ?
	osDelay(1);
	//SPIWriteTiPll( 75, 0b0000101110000000); // CHDIV 14 (by 256)
	//osDelay(1);
	//SPIWriteTiPll( 46, 0b0000011111110000); // OutB:CHDIV
	//osDelay(1);
	//SPIWriteTiPll( 45, 0b1100011000001100); // OutA:CHDIV, OutBPWR: 12 (0b1100)
	//osDelay(1);
	SPIWriteTiPll( 60, 0b0000000000000000); // LD_DLY = 0
	osDelay(1);
	SPIWriteTiPll( 57, 0b0000000000010100); // ?
	osDelay(1);
	SPIWriteTiPll( 52, 0b0000010000100001); // ?
	osDelay(1);
	SPIWriteTiPll( 46, 0b0000011111110001); // OutB:VCO
	osDelay(1);
	SPIWriteTiPll( 45, 0b1100111000011000); // OutA:VCO, OutBPWR: 18h
	osDelay(1);
	SPIWriteTiPll( 44, 0b0000000001100010); // OutAPWR: 0, OutAEn: Off, OutBEn: On
	osDelay(1);
	SPIWriteTiPll( 37, 0b1000001000000101); // MASH_SEED_EN Off, PFD_DLY_SEL 2

	uint32_t den = 1u << 24;
	uint64_t ns = llroundf(5820000000.0f * den / TIPLL_FPD);
	uint32_t sq = ns % den;
	uint32_t sp = (ns - sq) / den;
	osDelay(1);
	SPIWriteTiPll( 43, (uint16_t)(sq));
	osDelay(1);
	SPIWriteTiPll( 42, (uint16_t)(sq >> 16));
	osDelay(1);
	SPIWriteTiPll( 39, (uint16_t)(den));
	osDelay(1);
	SPIWriteTiPll( 38, (uint16_t)(den >> 16));
	osDelay(1);
	SPIWriteTiPll( 36, (uint16_t)(sp));
	osDelay(1);
	SPIWriteTiPll( 34, (uint16_t)(((sp >> 16) & 0b111) | 0b0000000000010000));

	osDelay(1);
	SPIWriteTiPll( 30, 0b0001100010100110); // ?
	osDelay(1);
	SPIWriteTiPll( 29, 0b0000000000000000); // ?
	osDelay(1);
	SPIWriteTiPll( 20, 0b0111010001001000); // VCO_SEL 6, VCO_SEL_FORCE 1
	osDelay(1);
	SPIWriteTiPll( 17, 0b0000000011111100); // VCO_DACISET_STRT
	osDelay(1);
	SPIWriteTiPll( 14, 0b0001100001000000); // CPG 8 (2500 uA)
	osDelay(1);
	SPIWriteTiPll(  9, 0b0001000000000100); // OSC_2X On
	osDelay(1);
	SPIWriteTiPll(  8, 0b0010000000000000); // VCO_DACISET_FORCE Off, VCO_CAPCTRL_FORCE Off
	osDelay(1);
	SPIWriteTiPll(  7, 0b0100000010110010); // OUT_FORCE to ramp
	osDelay(3);
	SPIWriteTiPll(  6, 0b0001000000000010); // LDO_DLY = 2
	osDelay(1);
	SPIWriteTiPll(  5, 0b0010100011001000); // OSCin diff, internal term
	osDelay(1);
	SPIWriteTiPll(  0, 0b0010000010011000); // RAMP Disable, Fpd Range set, MUXOUT to Readback, OUT_MUTE Disable, FCAL_EN
	osDelay(1);
}

/**
  * @param  power: 0 .. 63 (highest)
  * @param  powerdown: 0 (on) 1 (off)
  */
uint8_t SPISetTiPllOutAPwr(uint8_t power, uint8_t powerdown) {
	SPIWriteTiPll( 44, 0b0000000000100010 | (((uint16_t)power & 0x3F) << 8) | ((powerdown & 0b1) << 6));
	osDelay(1);

	uint16_t r44 = SPIReadTiPll(44);

	return (r44 & 0b1000000)? 0xFF : ((r44 >> 8) & 0x3F);
}

float SPISetTiPllFreq(float f) {
	uint32_t den = 1u << 24;
	uint64_t ns = llroundf(f * den / TIPLL_FPD);

	uint32_t sq = ns % den;
	uint32_t sp = (ns - sq) / den;
	if(sp & 0xFFFF0000) { Error_Handler(); } // OVF.

	SPIWriteTiPll( 43, (uint16_t)(sq));
	osDelay(1);
	SPIWriteTiPll( 42, (uint16_t)(sq >> 16));
	osDelay(1);
	SPIWriteTiPll( 39, (uint16_t)(den));
	osDelay(1);
	SPIWriteTiPll( 38, (uint16_t)(den >> 16));
	osDelay(1);
	SPIWriteTiPll( 36, (uint16_t)(sp));
	osDelay(1);
	SPIWriteTiPll( 34, (uint16_t)(((sp >> 16) & 0b111) | 0b0000000000010000));
	osDelay(1);
	SPIWriteTiPll(  0, 0b0010000010011000);
	osDelay(1);

	uint32_t rsq, rden, rsp;
	rsq = SPIReadTiPll(43);
	osDelay(1);
	rsq |= (uint32_t)SPIReadTiPll(42) << 16;
	osDelay(1);
	rden = SPIReadTiPll(39);
	osDelay(1);
	rden |= (uint32_t)SPIReadTiPll(38) << 16;
	osDelay(1);
	rsp = SPIReadTiPll(36);
	osDelay(1);
	rsp |= ((uint32_t)SPIReadTiPll(34) & 0b111) << 16;
	osDelay(1);

	uint64_t rns = (uint64_t)rden * rsp + rsq;
	float rf = (float)rns * TIPLL_FPD / (float)rden;
	return rf;
}

void SPISetTiPllRampFreqFromBuf() {
	float p = RFBPllData[RFBPllData_SweepLow].f;
	float q = RFBPllData[RFBPllData_SweepHigh].f;

	SPISetTiPllRampFreq(p, q, RFBPllData[RFBPllData_SweepN].h[1], fabs(q - p) + 400000000.0f, q + 200000000.0f, p - 200000000.0f);
}

uint8_t SPIGetTiPllLocked() {
	uint8_t b;
	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	osDelay(1);
	b = LL_GPIO_IsInputPinSet(GPIOB, LL_GPIO_PIN_14);
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	return (uint8_t)(b & 1);
}

void SPISetTiPllRampFreq(float start, float end, uint16_t len, float threshbw, float limithigh, float limitlow) {
	uint32_t den = (1ull << 32) - 1;
	uint32_t sden = 1u << 24;
	uint64_t ns = llroundf(start * sden / TIPLL_FPD);
	uint64_t ne = llroundf(end   * sden / TIPLL_FPD);
	int64_t so = (int64_t)ne - (int64_t)ns;
	int32_t ss = so / len * 4;
	uint64_t sns = llroundf(start * den / TIPLL_FPD);
	uint32_t sq = sns % den;
	uint32_t sp = (sns - sq) / den;
	if(sp & 0xFFFF0000) return; // OVF.

	uint64_t rthresh = llroundf(threshbw * 16777216.0f / TIPLL_FPD); // 32bit
	uint64_t rlhramp = llroundf(16777216.0f * (limithigh - start) / TIPLL_FPD); // 33bit
	uint64_t rllramp = 8589934592ull - llroundf(16777216.0f * (start - limitlow) / TIPLL_FPD); // 33bit

	osDelay(1);
	SPIWriteTiPll(  0, 0b0010000010011000);
	osDelay(1);
	SPIWriteTiPll(104, len); // RAMP1
	osDelay(1);
	SPIWriteTiPll(103, (uint16_t)(((uint32_t)-ss) >> 2));
	osDelay(1);
	SPIWriteTiPll(102, (uint16_t)(((uint32_t)-ss) >> 18));

	osDelay(1);
	SPIWriteTiPll(100, len); // RAMP0
	osDelay(1);
	SPIWriteTiPll( 99, (uint16_t)(((uint32_t)ss) >> 2));
	osDelay(1);
	SPIWriteTiPll( 98, (uint16_t)(((uint32_t)ss) >> 16) & 0xFFFC);

	osDelay(1);
	SPIWriteTiPll( 86, (uint16_t)(rllramp));
	osDelay(1);
	SPIWriteTiPll( 85, (uint16_t)(rllramp >> 16));
	osDelay(1);
	SPIWriteTiPll( 84, (uint16_t)(rllramp >> 32) & 0x0001);

	osDelay(1);
	SPIWriteTiPll( 83, (uint16_t)(rlhramp));
	osDelay(1);
	SPIWriteTiPll( 82, (uint16_t)(rlhramp >> 16));
	osDelay(1);
	SPIWriteTiPll( 81, (uint16_t)(rlhramp >> 32) & 0x0001);

	osDelay(1);
	SPIWriteTiPll( 80, (uint16_t)(rthresh));
	osDelay(1);
	SPIWriteTiPll( 79, (uint16_t)(rthresh >> 16));

	osDelay(1);
	SPIWriteTiPll( 43, (uint16_t)(sq));
	osDelay(1);
	SPIWriteTiPll( 42, (uint16_t)(sq >> 16));

	osDelay(1);
	SPIWriteTiPll( 39, (uint16_t)(den));
	osDelay(1);
	SPIWriteTiPll( 38, (uint16_t)(den >> 16));

	osDelay(1);
	SPIWriteTiPll( 36, (uint16_t)(sp));
	osDelay(1);
	SPIWriteTiPll( 34, (uint16_t)(((sp >> 16) & 0b111) | 0b0000000000010000));

	//osDelay(1);
	//SPIWriteTiPll(  0, 0b1010000010011000);
}

void SPIInitTiAdc() {
    const uint8_t aTxBuffers[][3] = {
            SPIInitTiAdcW_GenArray(0x70A, 0x01), // SYSREF Off
            SPIInitTiAdcW_GenArray(0x025, 0xFD), // LVDS Swing Dec 300mV
            SPIInitTiAdcW_GenArray(0x439, 0x08), // Special Mode ChA = 1
            SPIInitTiAdcW_GenArray(0x539, 0x08), // Special Mode ChB = 1
            SPIInitTiAdcW_GenArray(0x003, 0x00), // ODD EVEN 012 789..
            SPIInitTiAdcW_GenArray(0x422, 0x02), // ChA Chopper En
            SPIInitTiAdcW_GenArray(0x522, 0x02), // ChB Chopper En
            SPIInitTiAdcW_GenArray(0x003, 0x01), // ODD_EVEN 1 024 135

            //SPIInitTiAdcW_GenArray(0x006, 0x02), // Test Pattern En
            //SPIInitTiAdcW_GenArray(0x009, 0x02), // Test Pattern Sync
            //SPIInitTiAdcW_GenArray(0x00A, 0x01), // ChA Test Pattern 000000
            //SPIInitTiAdcW_GenArray(0x00B, 0x40), // ChB Test Pattern Incr
    };

    for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
    	taskENTER_CRITICAL();
        LL_GPIO_ResetOutputPin(SPI_CS_ADC_GPIO_Port, SPI_CS_ADC_Pin);
        HAL_SPI_Transmit(&hspi2, aTxBuffers[i], 3, 10);
        LL_GPIO_SetOutputPin(SPI_CS_ADC_GPIO_Port, SPI_CS_ADC_Pin);
        taskEXIT_CRITICAL();
    }
}


/* USER CODE END 1 */
