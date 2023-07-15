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

const uint8_t TIPLL_OSC2X = 1;
const uint8_t TIPLL_MULT = 1;
const uint8_t TIPLL_PRER = 1;
const uint8_t TIPLL_POSTR = 1;
const float TIPLL_FPD = TIPLL_FOSCIN * TIPLL_OSC2X * TIPLL_MULT / TIPLL_PRER / TIPLL_POSTR;
uint8_t TIPLL_DENQ = 24;
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

uint32_t RFBPllData[RFBPllDataLen];

void SPIInitTiPll(void) {
	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	__NOP();

	const uint8_t aTxBufferResetSeq[] = SPIInitTiPllW_GenArray(0, 0b0010001000011010); // Reset

	if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBufferResetSeq, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	__NOP();

	const uint8_t aTxBuffers[][3] = {
			SPIInitTiPllW_GenArray(105, 0b0000000000100000), // Manual Ramping
			SPIInitTiPllW_GenArray( 97, 0b1000000000001001), // RAMP0 RST, TrigA:ClkR, TrigB:Disable, Burst:TrigA
			SPIInitTiPllW_GenArray( 96, 0b0000000000000001), // Burst Off, CNT:1
			//SPIInitTiPllW_GenArray( 96, 0b1000000000000001), // Burst EN, CNT:1
			//SPIInitTiPllW_GenArray( 75, 0b0000101110000000), // CHDIV 14 (by 256)
			//SPIInitTiPllW_GenArray( 46, 0b0000011111110000), // OutB:CHDIV
			//SPIInitTiPllW_GenArray( 45, 0b1100011000001100), // OutA:CHDIV, OutBPWR: 12 (0b1100)
			SPIInitTiPllW_GenArray( 46, 0b0000011111110001), // OutB:VCO
			SPIInitTiPllW_GenArray( 45, 0b1100111000001100), // OutA:VCO, OutBPWR: 12 (0b1100)
			SPIInitTiPllW_GenArray( 44, 0b0000000001100010), // OutAPWR: 0, OutAEn: Off
			SPIInitTiPllW_GenArray( 14, 0b0100000010110010), // OUT_FORCE to ramp
			SPIInitTiPllW_GenArray(  6, 0b0001000000000010), // LDO_DLY = 2
			SPIInitTiPllW_GenArray(  5, 0b0010100011001000), // OSCin diff, internal term
			SPIInitTiPllW_GenArray(  0, 0b0010001010011100), // Fpd Range set, MUXOUT to LD
	};

	for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
		__NOP();
		LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
		HAL_Delay(1);

		if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
		    Error_Handler();
		}

		__NOP();
		LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
		HAL_Delay(1);
	}
}

/**
  * @param  power: 0 .. 63 (highest)
  * @param  powerdown: 0 (on) 1 (off)
  */
void SPISetTiPllOutAPwr(uint8_t power, uint8_t powerdown) {
	const uint8_t aTxBuffer[] = SPIInitTiPllW_GenArray( 44, 0b0000000000100010 | (((uint32_t)power & 0x3F) << 8) | ((powerdown & 0b1) << 6)); // OutAPWR: 63

	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);

	if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffer, 3, 10) != HAL_OK) {
		Error_Handler();
	}

	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
}

void SPISetTiPllMUX2Readback() {
	const uint8_t aTxBuffer[3] = SPIInitTiPllW_GenArray(  0, 0b0010001010011000);

	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);

	if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffer, 3, 10) != HAL_OK) {
		Error_Handler();
	}

	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
}

void SPISetTiPllMUX2LD() {
	const uint8_t aTxBuffer[3] = SPIInitTiPllW_GenArray(  0, 0b0010001010011100);

	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);

	if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffer, 3, 10) != HAL_OK) {
		Error_Handler();
	}

	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
}

float SPISetTiPllFreq(float f) {
	uint8_t denq = TIPLL_DENQ;
	uint32_t den = (1u << denq) - 1;
	uint64_t ns = llroundf(f * den / TIPLL_FPD);

	uint32_t sq = ns % den;
	uint32_t sp = (ns - sq) / den;
	if(sp & 0xFFFF0000) { Error_Handler(); } // OVF.


	const uint8_t aTxBuffers[][3] = {
			SPIInitTiPllW_GenArray( 43, (uint16_t)(sq)),
			SPIInitTiPllW_GenArray( 42, (uint16_t)(sq >> 16)),

			SPIInitTiPllW_GenArray( 39, (uint16_t)(den)),
			SPIInitTiPllW_GenArray( 38, (uint16_t)(den >> 16)),

			SPIInitTiPllW_GenArray( 36, (uint16_t)(sp)),
			SPIInitTiPllW_GenArray( 34, (uint16_t)(((sp >> 16) & 0b111) | 0b0000000000010000)),
			//SPIInitTiPllW_GenArray(  0, 0b0010001010011000),
	};

	for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
		LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);

		if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
		    Error_Handler();
		}

		LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	}


	uint32_t rden = 0;

	uint32_t rsq = 0;
	uint32_t rsp = 0;

	const uint8_t aR43[] = SPIInitTiPllR_GenArray(43);
	const uint8_t aR42[] = SPIInitTiPllR_GenArray(42);
	const uint8_t aR39[] = SPIInitTiPllR_GenArray(39);
	const uint8_t aR38[] = SPIInitTiPllR_GenArray(38);
	const uint8_t aR36[] = SPIInitTiPllR_GenArray(36);
	const uint8_t aR34[] = SPIInitTiPllR_GenArray(34);

	uint8_t aRxBuffer[3];

	SPISetTiPllMUX2Readback();


	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	if (HAL_SPI_TransmitReceive(&hspi2, aR43, aRxBuffer, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	rsq = (aRxBuffer[1] << 8) | aRxBuffer[2];

	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	if (HAL_SPI_TransmitReceive(&hspi2, aR42, aRxBuffer, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	rsq |= (aRxBuffer[1] << 24) | (aRxBuffer[2] << 16);



	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	if (HAL_SPI_TransmitReceive(&hspi2, aR39, aRxBuffer, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	rden = (aRxBuffer[1] << 8) | aRxBuffer[2];

	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	if (HAL_SPI_TransmitReceive(&hspi2, aR38, aRxBuffer, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	rden |= (aRxBuffer[1] << 24) | (aRxBuffer[2] << 16);



	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	if (HAL_SPI_TransmitReceive(&hspi2, aR36, aRxBuffer, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	rsp = (aRxBuffer[1] << 8) | aRxBuffer[2];

	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	if (HAL_SPI_TransmitReceive(&hspi2, aR34, aRxBuffer, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	rsp |= (aRxBuffer[2] & 0b111) << 16;

	SPISetTiPllMUX2LD();

	uint64_t rns = (uint64_t)rden * rsp + rsq;
	float rf = (float)rns * TIPLL_FPD / (float)rden;
	return rf;
}

void SPISetTiPllRampFreqFromBuf() {
	float p = (float)RFBPllData[RFBPllData_SweepLow];
	float q = (float)RFBPllData[RFBPllData_SweepHigh];

	SPISetTiPllRampFreq(p, q, 65535, q - p + 200000.0f, q + 100000.0f, p - 100000.0f);
}

uint8_t SPIGetTiPllLocked() {
	uint8_t b;
	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	HAL_Delay(1);
	b = LL_GPIO_ReadInputPort(GPIOB) << 14;
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	return (uint8_t)(b & 1);
}

void SPISetTiPllRampFreq(float start, float end, uint16_t len, float threshbw, float limithigh, float limitlow) {

	uint8_t denq = TIPLL_DENQ;
	uint32_t den = (1u << denq) - 1;
	uint64_t ns = llroundf(start * den / TIPLL_FPD);
	uint64_t ne = llroundf(end   * den / TIPLL_FPD);
	int64_t so = (int64_t)ne - (int64_t)ns;
	int64_t ss = llroundf(1.0f * so / len);

	while ((ss & 0x7FFFFFFFE0000000) != 0) {
		if(denq > 2) denq--;
		else return; // Unable to set.
		den = (1u << denq) - 1;
		ns = llroundf(start * den / TIPLL_FPD);
		ne = llroundf(end   * den / TIPLL_FPD);
		so = (int64_t)ne - (int64_t)ns;
		ss = llroundf(1.0f * so / len);
	}

	uint32_t sq = ns % den;
	uint32_t sp = (ns - sq) / den;
	if(sp & 0xFFFF0000) return; // OVF.

	uint64_t rthresh = llroundf(threshbw * 16777216.0f / TIPLL_FPD); // 32bit
	uint64_t rlhramp = llroundf(16777216.0f * (limithigh - start) / TIPLL_FPD); // 33bit
	uint64_t rllramp = 8589934592ull - llroundf(16777216.0f * (start - limitlow) / TIPLL_FPD); // 33bit

	const uint8_t aTxBuffers[][3] = {
			SPIInitTiPllW_GenArray(100, len),
			SPIInitTiPllW_GenArray( 99, ((uint16_t)(ss))),
			SPIInitTiPllW_GenArray( 98, ((uint16_t)(ss >> 48) & 0x8000) | ((uint16_t)(ss >> 14) & 0x7FFC) | 0b00),

			SPIInitTiPllW_GenArray( 86, (uint16_t)(rllramp)),
			SPIInitTiPllW_GenArray( 85, (uint16_t)(rllramp >> 16)),
			SPIInitTiPllW_GenArray( 84, (uint16_t)(rllramp >> 32) & 0x0001),
			SPIInitTiPllW_GenArray( 83, (uint16_t)(rlhramp)),

			SPIInitTiPllW_GenArray( 82, (uint16_t)(rlhramp >> 16)),
			SPIInitTiPllW_GenArray( 81, (uint16_t)(rlhramp >> 32) & 0x0001),
			SPIInitTiPllW_GenArray( 80, (uint16_t)(rthresh)),
			SPIInitTiPllW_GenArray( 79, (uint16_t)(rthresh >> 16)),

			SPIInitTiPllW_GenArray( 43, (uint16_t)(sq)),
			SPIInitTiPllW_GenArray( 42, (uint16_t)(sq >> 16)),

			SPIInitTiPllW_GenArray( 39, (uint16_t)(den)),
			SPIInitTiPllW_GenArray( 38, (uint16_t)(den >> 16)),

			SPIInitTiPllW_GenArray( 36, (uint16_t)(sp)),
	};

	for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
		__NOP();
		LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
		__NOP();

		if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
		    Error_Handler();
		}

		__NOP();
		LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	}
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

            SPIInitTiAdcW_GenArray(0x006, 0x02), // Test Pattern En
            SPIInitTiAdcW_GenArray(0x009, 0x02), // Test Pattern Sync
            SPIInitTiAdcW_GenArray(0x00A, 0x01), // ChA Test Pattern 0000
            SPIInitTiAdcW_GenArray(0x00B, 0x20), // ChB Test Pattern 1111
    };

    for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
        LL_GPIO_ResetOutputPin(SPI_CS_ADC_GPIO_Port, SPI_CS_ADC_Pin);

        if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
            Error_Handler();
        }

        __NOP();
        LL_GPIO_SetOutputPin(SPI_CS_ADC_GPIO_Port, SPI_CS_ADC_Pin);
    }
}


/* USER CODE END 1 */
