/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
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
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "queue.h"
#include "can.h"
#include "spi.h"
#include "tim.h"
#include "adc.h"
#include "can.h"
#include <string.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define TXMGR_NOTIFICATION_BIT_STARTSWEEP 1 // LSB

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

/* USER CODE END Variables */
/* Definitions for CanTask */
osThreadId_t CanTaskHandle;
const osThreadAttr_t CanTask_attributes = {
  .name = "CanTask",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityBelowNormal,
};
/* Definitions for TxMgr */
osThreadId_t TxMgrHandle;
const osThreadAttr_t TxMgr_attributes = {
  .name = "TxMgr",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityAboveNormal,
};
/* Definitions for Blink */
osThreadId_t BlinkHandle;
const osThreadAttr_t Blink_attributes = {
  .name = "Blink",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for CANRxQueue */
osMessageQueueId_t CANRxQueueHandle;
const osMessageQueueAttr_t CANRxQueue_attributes = {
  .name = "CANRxQueue"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartCanTask(void *argument);
void StartTxMgr(void *argument);
void StartBlink(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* Hook prototypes */
void vApplicationStackOverflowHook(xTaskHandle xTask, signed char *pcTaskName);

/* USER CODE BEGIN 4 */
void vApplicationStackOverflowHook(xTaskHandle xTask, signed char *pcTaskName)
{
   /* Run time stack overflow checking is performed if
   configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2. This hook function is
   called if a stack overflow is detected. */
	while(1) {}
}
/* USER CODE END 4 */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* creation of CANRxQueue */
  CANRxQueueHandle = osMessageQueueNew (6, 8, &CANRxQueue_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of CanTask */
  CanTaskHandle = osThreadNew(StartCanTask, NULL, &CanTask_attributes);

  /* creation of TxMgr */
  TxMgrHandle = osThreadNew(StartTxMgr, NULL, &TxMgr_attributes);

  /* creation of Blink */
  BlinkHandle = osThreadNew(StartBlink, NULL, &Blink_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartCanTask */
/**
  * @brief  Function implementing the CanTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartCanTask */
void StartCanTask(void *argument)
{
  /* USER CODE BEGIN StartCanTask */

	RFBCANMessage qm;

    HAL_CAN_Start(&hcan1);

  /* Infinite loop */
  for(;;) {
	if(xQueueReceive(CANRxQueueHandle, &qm, portMAX_DELAY)) {
		switch(qm.h) {
		case RFBCANMessage_SetPllPwr: {
			uint8_t p = SPISetTiPllOutAPwr(qm.d.b[3], qm.d.b[2]);
			memset((void*)canTxData, 0u, 7);
			canTxData[7] = p;
	        HAL_CAN_AddTxMessage(&hcan1, &canTxHeader, canTxData, &TxMailBox);
		}; break;
		case RFBCANMessage_SetPllContFreq: {
			float rf = SPISetTiPllFreq(qm.d.f);
			memcpy((void*)canTxData + 4, (const void*)&rf, 4);
			memset((void*)canTxData, 0u, 4);
	        HAL_CAN_AddTxMessage(&hcan1, &canTxHeader, canTxData, &TxMailBox);
		}; break;
		case RFBCANMessage_StartPllSweep: {
            xTaskNotify(TxMgrHandle, 1u << TXMGR_NOTIFICATION_BIT_STARTSWEEP, eSetBits);
		}; break;
		case RFBCANMessage_PushPllData: {
			RFBPllData[qm.a].u4 = qm.d.u4;
		}; break;
		case RFBCANMessage_SetPllSweepData: {
			SPISetTiPllRampFreqFromBuf();
		}; break;
		case RFBCANMessage_SetPaEn: {
			if(qm.d.i4 < 0) {
				LL_GPIO_SetOutputPin(PA_EN_GPIO_Port, PA_EN_Pin);
			} else {
				LL_GPIO_ResetOutputPin(PA_EN_GPIO_Port, PA_EN_Pin);
			}
		}; break;
		case RFBCANMessage_GetPllLocked: {
			canTxData[0] = SPIGetTiPllLocked();
			canTxData[1] = 0;
			canTxData[2] = 0;
			canTxData[3] = 0;
			canTxData[4] = 0;
			canTxData[5] = 0;
			canTxData[6] = 0;
			canTxData[7] = 0;
	        HAL_CAN_AddTxMessage(&hcan1, &canTxHeader, canTxData, &TxMailBox);
		}; break;
		case RFBCANMessage_GetPaPwr: {
			HAL_ADC_Start_DMA(&hadc1, ADCSample_values, ADCSAMPLE_SIZE);
			HAL_ADC_PollForConversion(&hadc1, 50);

			float uk = ADCSample_values[ADCSAMPLE_PAPWR];
			float op = SE5004LmV2dB(COMPUTATION_DIGITAL_12BITS_TO_mV(uk));
			memcpy((void*)canTxData + 4, (const void*)&op, 4);
			memcpy((void*)canTxData, (const void*)&uk, 4);
	        HAL_CAN_AddTxMessage(&hcan1, &canTxHeader, canTxData, &TxMailBox);
		}; break;
		case RFBCANMessage_SetAntennaState: {
			if(qm.d.b[3] & 0x1) {
				LL_GPIO_ResetOutputPin(ANT1_EN_GPIO_Port, ANT1_EN_Pin);
			} else {
				LL_GPIO_SetOutputPin(ANT1_EN_GPIO_Port, ANT1_EN_Pin);
			}
			if(qm.d.b[3] & 0x2) {
				LL_GPIO_ResetOutputPin(ANT2_EN_GPIO_Port, ANT2_EN_Pin);
			} else {
				LL_GPIO_SetOutputPin(ANT2_EN_GPIO_Port, ANT2_EN_Pin);
			}
		}; break;
		case RFBCANMessage_GetPllRegister: {
			uint16_t c = SPIReadTiPll(qm.a);
			canTxData[0] = 0;
			canTxData[1] = 0;
			canTxData[2] = 0;
			canTxData[3] = 0;
			canTxData[4] = 0;
			canTxData[5] = 0;
			canTxData[6] = (uint8_t)(c >> 8);
			canTxData[7] = (uint8_t)c;
	        HAL_CAN_AddTxMessage(&hcan1, &canTxHeader, canTxData, &TxMailBox);
		}; break;
		case RFBCANMessage_SetPllRegister: {
			SPIWriteTiPll(qm.a, qm.d.h[1]);
		}; break;
		default:
			break;
		}
	}
  }
  /* USER CODE END StartCanTask */
}

/* USER CODE BEGIN Header_StartTxMgr */
/**
* @brief Function implementing the TxMgr thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTxMgr */
void StartTxMgr(void *argument)
{
  /* USER CODE BEGIN StartTxMgr */
    LL_GPIO_SetOutputPin(ADC_RESET_GPIO_Port, ADC_RESET_Pin);
    osDelay(1);
    LL_GPIO_ResetOutputPin(ADC_RESET_GPIO_Port, ADC_RESET_Pin);
    SPIInitTiAdc();
    osDelay(1);

	LL_GPIO_SetOutputPin(PLL_CE_GPIO_Port, PLL_CE_Pin);
    osDelay(4);
    SPIInitTiPll();
    osDelay(1);

	HAL_ADC_Start_DMA(&hadc1, ADCSample_values, ADCSAMPLE_SIZE);

    uint32_t ulNotifiedValue;
    /* Infinite loop */
    for(;;) {
    	xTaskNotifyWait(0, 1u << TXMGR_NOTIFICATION_BIT_STARTSWEEP, &ulNotifiedValue, portMAX_DELAY);
    	if(ulNotifiedValue & (1u << TXMGR_NOTIFICATION_BIT_STARTSWEEP)) {
    		taskENTER_CRITICAL();
    		SPIWriteTiPll(  0, 0b1010000010011000);
    		LL_GPIO_TogglePin(FGPB13_GPIO_Port, FGPB13_Pin);
    		//LL_GPIO_TogglePin(PLL_RAMPCLK_GPIO_Port, PLL_RAMPCLK_Pin);
    		taskEXIT_CRITICAL();
    		//HAL_TIM_Base_Start(&htim15);
    		/*LL_TIM_SetAutoReload(TIM15, RFBPllData[RFBPllData_SweepN].u4);
    		LL_TIM_EnableCounter(TIM15);
    		while(!LL_TIM_IsActiveFlag_UPDATE(TIM15)) {
    			osDelay(0);
    			float op = SE5004LmV2dB(COMPUTATION_DIGITAL_12BITS_TO_mV(ADCSample_values[ADCSAMPLE_PAPWR]));
    		}
    		LL_TIM_ClearFlag_UPDATE(TIM15);*/
    	}
    }

  /* USER CODE END StartTxMgr */
}

/* USER CODE BEGIN Header_StartBlink */
/**
* @brief Function implementing the Blink thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartBlink */
void StartBlink(void *argument)
{
  /* USER CODE BEGIN StartBlink */
  /* Infinite loop */
  for(;;)
  {
      LL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
      osDelay(pdMS_TO_TICKS(1000));
  }
  /* USER CODE END StartBlink */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

