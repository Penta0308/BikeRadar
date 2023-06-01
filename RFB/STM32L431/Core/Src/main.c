/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
#include "main.h"
#include "cmsis_os.h"
#include "adc.h"
#include "can.h"
#include "dma.h"
#include "rng.h"
#include "spi.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <math.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define INTERNAL_TEMPSENSOR_V25        ((int32_t)741)
#define INTERNAL_TEMPSENSOR_AVGSLOPE   ((int32_t)4300)
#define INTERNAL_VREF_CALIB_VALUE   &((uint16_t*)(0x1FFF75AA))

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

#define COMPUTATION_TEMPERATURE_STD_PARAMS(TS_ADC_DATA)                        \
  ((((int32_t)(INTERNAL_TEMPSENSOR_V25 - (((TS_ADC_DATA) * VDD_APPLIED) / 4095)   \
     ) * 1000                                                                  \
    ) / INTERNAL_TEMPSENSOR_AVGSLOPE                                           \
   ) + 25                                                                      \
  )

#define COMPUTATION_DIGITAL_12BITS_TO_VOLTAGE(ADC_DATA) ( ((ADC_DATA) * VDD_APPLIED) / 4095)

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

uint8_t doactivetimer = 0;

#define TIPLL_FOSCIN 48000000.0f
const uint8_t TIPLL_OSC2X = 1;
const uint8_t TIPLL_MULT = 1;
const uint8_t TIPLL_PRER = 1;
const uint8_t TIPLL_POSTR = 1;
const float TIPLL_FPD = TIPLL_FOSCIN * TIPLL_OSC2X * TIPLL_MULT / TIPLL_PRER / TIPLL_POSTR;
uint8_t TIPLL_DENQ = 32;
//uint32_t TIPLL_DEN = 0xFFFFFFFF;

#define ADCSAMPLE_SIZE (uint32_t)2
#define ADCSAMPLE_PAPWR 0
#define ADCSAMPLE_INTTEMP 1

const uint32_t VDD_APPLIED = 2500; // mV
uint16_t PAPWR_mV = 0;
float	 PAPWR_dB = -40;
 int32_t INTTEMP = 0;

__IO uint16_t adcSampleValues[ADCSAMPLE_SIZE];

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_FREERTOS_Init(void);
/* USER CODE BEGIN PFP */
void SPIInitTiAdc(void);
void SPIInitTiPll(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

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
  MX_DMA_Init();
  MX_CAN1_Init();
  MX_SPI2_Init();
  MX_TIM15_Init();
  MX_ADC1_Init();
  MX_TIM2_Init();
  MX_RNG_Init();
  /* USER CODE BEGIN 2 */

  HAL_ADCEx_Calibration_Start(&hadc1, ADC_SINGLE_ENDED);
  HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adcSampleValues, ADCSAMPLE_SIZE);


  HAL_CAN_Start(&hcan1);


  SPIInitTiAdc();
  SPIInitTiPll();


  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();  /* Call init function for freertos objects (in freertos.c) */
  MX_FREERTOS_Init();

  /* Start scheduler */
  osKernelStart();
  /* We should never get here as control is now taken by the scheduler */
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  if (doactivetimer && !LL_TIM_IsEnabledCounter(TIM15)) {
		  LL_TIM_EnableCounter(TIM15);

		  canTxHeader.StdId = 0x102;
		  canTxHeader.RTR = CAN_RTR_DATA;
		  canTxHeader.IDE = CAN_ID_STD;
		  canTxHeader.DLC = CAN_DLC_1B;
		  canTx0Data[0] = 0x01;
		  TxMailBox = HAL_CAN_GetTxMailboxesFreeLevel(&hcan1);
		  HAL_CAN_AddTxMessage(&hcan1, &canTxHeader, canTx0Data, &TxMailBox);

	  }
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
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

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI48|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.HSI48State = RCC_HSI48_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSE;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/**
  * @brief  Rx Fifo 0 message pending callback
  * @param  hcan: pointer to a CAN_HandleTypeDef structure that contains
  *         the configuration information for the specified CAN.
  * @retval None
  */
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
	if(hcan->Instance == CAN1) {
	  /* Get RX message */
	  if (HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &canRxHeader, canRx0Data) != HAL_OK)
	  {
		/* Reception Error */
		Error_Handler();
	  }

	  /* Display LEDx */
	  if ((canRxHeader.StdId == 0x106) && (canRxHeader.IDE == CAN_ID_STD)) {
		  LL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
		  if(canRxHeader.DLC == CAN_DLC_1B && canRx0Data[0] == 0x01) {
			  doactivetimer = 1;
		  }
	  }
	}
}

/*float SE5004LdB2mV(float x) {
	return +279.56f + x * ( +29.544f + x * ( -5.3845f + x * +0.572f ) );
}

float GDf(float (*F)(float), const float y, float x, float lr, float epsilon) {
	float yg;
	float xec, xoc;
	do {
		xec = F(x + epsilon) - y;
		xoc = F(x) - y;
		yg = ( xec * xec - xoc * xoc ) / epsilon;
		x -= yg * lr;
	} while(yg > epsilon || yg < -1.0f * epsilon);

	return x;
}*/

float SE5004L_mV2dB(float x) {
	return -180.1628f + x * (1.302271f + x * (-0.003422f + x * (4.4766E-06f + x * (-2.86512E-09f + x * 7.1481E-13f))));
}

void ADCGetPaPower(void) {
	HAL_ADC_Start(&hadc1);
	HAL_ADC_PollForEvent(&hadc1, ADC_EOSMP_EVENT, 10);
	PAPWR_mV = COMPUTATION_DIGITAL_12BITS_TO_VOLTAGE(adcSampleValues[ADCSAMPLE_PAPWR]);
	PAPWR_dB = SE5004L_mV2dB(PAPWR_mV);
}


#define SPIInitTiAdcW_GenH(addr, value) (0b01000000 | (0b00111111 & (uint8_t)((addr) >> 6)))
#define SPIInitTiAdcW_GenM(addr, value) ((uint8_t)(addr))
#define SPIInitTiAdcW_GenL(addr, value) ((uint8_t)(value))
#define SPIInitTiAdcW_GenArray(addr, value) {SPIInitTiAdcW_GenH(addr, value), SPIInitTiAdcW_GenM(addr, value), SPIInitTiAdcW_GenL(addr, value)}

void SPIInitTiAdc(void) {
	const uint8_t aTxBuffers[][3] = {
			SPIInitTiAdcW_GenArray(0x0001, 0b00111100),	// Disable Dither
			SPIInitTiAdcW_GenArray(0x0005, 0b00000001),	// Two-Wire
			SPIInitTiAdcW_GenArray(0x0009, 0b00000001),	// Two's Complement
			SPIInitTiAdcW_GenArray(0x0439, 0b00001000),	// CH A SP1
			SPIInitTiAdcW_GenArray(0x0539, 0b00001000),	// CH B SP1
			SPIInitTiAdcW_GenArray(0x070a, 0b00000001)	// Disable SYSREF
	};

	LL_GPIO_ResetOutputPin(ADC_RESET_GPIO_Port, ADC_RESET_Pin);

	HAL_Delay(10);

	for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
		asm("NOP");
		LL_GPIO_ResetOutputPin(SPI_CS_ADC_GPIO_Port, SPI_CS_ADC_Pin);
		asm("NOP");

		if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
		    Error_Handler();
		}

		asm("NOP");
		LL_GPIO_SetOutputPin(SPI_CS_ADC_GPIO_Port, SPI_CS_ADC_Pin);
	}

}



#define SPIInitTiPllW_GenH(addr, value) (0b01111111 & (uint8_t)(addr))
#define SPIInitTiPllW_GenM(addr, value) ((uint8_t)(value >> 8))
#define SPIInitTiPllW_GenL(addr, value) ((uint8_t)(value))
#define SPIInitTiPllW_GenArray(addr, value) {SPIInitTiAdcW_GenH(addr, value), SPIInitTiAdcW_GenM(addr, value), SPIInitTiAdcW_GenL(addr, value)}

void SPIInitTiPll(void) {
	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	asm("NOP");

	const uint8_t aTxBufferResetSeq[] = SPIInitTiPllW_GenArray(0, 0b0000000000000010);

	if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBufferResetSeq, 3, 10) != HAL_OK) {
	    Error_Handler();
	}
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	asm("NOP");

	const uint8_t aTxBuffers[][3] = {
			SPIInitTiPllW_GenArray( 96, 0b1000000000000001), // Burst EN, CNT:1
			SPIInitTiPllW_GenArray( 97, 0b1000000000001001), // RAMP0 RST, TrigA:ClkR, TrigB:Disable, Burst:TrigA
			SPIInitTiPllW_GenArray(105, 0b0000000000100000), // Manual Ramping
			SPIInitTiPllW_GenArray( 46, 0b0000011111110001), // OutB:VCO
			SPIInitTiPllW_GenArray( 45, 0b1100111000000000 | 12u), // OutA:VCO, OutBPWR: 12
			SPIInitTiPllW_GenArray( 44, 0b0000000100100010), // OutAPWR: 0, OutAEn: Off
	};

	for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
		asm("NOP");
		LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
		asm("NOP");

		if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
		    Error_Handler();
		}

		asm("NOP");
		LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	}
}

/**
  * @param  power: 0 .. 63 (highest)
  * @param  powerdown: 0 .. 1 (off)
  */
void SPISetTiPllOutAPwr(uint8_t power, uint8_t powerdown) {
	const uint8_t aTxBuffer[] = SPIInitTiPllW_GenArray( 44, 0b0000000000100010 | ((power & 0x3F) << 8) | ((powerdown & 0x01) << 6)); // OutAPWR: 63

	LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	asm("NOP");

	if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffer, 3, 10) != HAL_OK) {
		Error_Handler();
	}

	asm("NOP");
	LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
}

void SPISetTiPllFreq(float f) {
	uint8_t denq = TIPLL_DENQ;
	uint32_t den = (1u << denq) - 1;
	uint64_t ns = f * den / TIPLL_FPD;

	uint32_t sq = ns % den;
	uint32_t sp = (ns - sq) / den;
	if(sp & 0xFFFF0000) return; // OVF.


	const uint8_t aTxBuffers[][3] = {
			SPIInitTiPllW_GenArray( 43, (uint16_t)(sq)),
			SPIInitTiPllW_GenArray( 42, (uint16_t)(sq >> 16)),

			SPIInitTiPllW_GenArray( 39, (uint16_t)(den)),
			SPIInitTiPllW_GenArray( 38, (uint16_t)(den >> 16)),

			SPIInitTiPllW_GenArray( 36, (uint16_t)(sp)),
	};

	for (uint8_t i = 0; i < COUNTOF(aTxBuffers); i++) {
		asm("NOP");
		LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
		asm("NOP");

		if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
		    Error_Handler();
		}

		asm("NOP");
		LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	}
}

void SPISetTiPllRampFreq(float start, float end, uint16_t len, float threshbw, float limithigh, float limitlow) {

	uint8_t denq = TIPLL_DENQ;
	uint32_t den = (1u << denq) - 1;
	uint64_t ns = start * den / TIPLL_FPD;
	uint64_t ne = end   * den / TIPLL_FPD;
	int64_t so = ne - ns;
	int64_t ss = llround(1.0f * so / len);

	while ((ss & 0x7FFFFFFFE0000000) != 0) {
		if(denq > 2) denq--;
		else return; // Unable to set.
		den = (1u << denq) - 1;
		ns = start * den / TIPLL_FPD;
		ne = end   * den / TIPLL_FPD;
		so = ne - ns;
		ss = llround(1.0f * so / len);
	}

	uint32_t sq = ns % den;
	uint32_t sp = (ns - sq) / den;
	if(sp & 0xFFFF0000) return; // OVF.

	uint64_t rthresh = llround(threshbw * 16777216.0f / TIPLL_FPD); // 32bit
	uint64_t rlhramp = llround(16777216.0f * (limithigh - start) / TIPLL_FPD); // 33bit
	uint64_t rllramp = 8589934592ull - llround(16777216.0f * (start - limitlow) / TIPLL_FPD); // 33bit

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
		asm("NOP");
		LL_GPIO_ResetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
		asm("NOP");

		if (HAL_SPI_Transmit(&hspi2, (uint8_t*)aTxBuffers[i], 3, 10) != HAL_OK) {
		    Error_Handler();
		}

		asm("NOP");
		LL_GPIO_SetOutputPin(SPI_CS_PLL_GPIO_Port, SPI_CS_PLL_Pin);
	}
}


void Reset_Handler(void) {}

/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM6 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM6) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
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
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
