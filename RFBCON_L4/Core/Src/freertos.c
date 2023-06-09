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

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
typedef StaticTask_t osStaticThreadDef_t;
typedef StaticQueue_t osStaticMessageQDef_t;
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

/* USER CODE END Variables */
/* Definitions for CanTask */
osThreadId_t CanTaskHandle;
uint32_t CanTaskBuffer[ 512 ];
osStaticThreadDef_t CanTaskControlBlock;
const osThreadAttr_t CanTask_attributes = {
  .name = "CanTask",
  .cb_mem = &CanTaskControlBlock,
  .cb_size = sizeof(CanTaskControlBlock),
  .stack_mem = &CanTaskBuffer[0],
  .stack_size = sizeof(CanTaskBuffer),
  .priority = (osPriority_t) osPriorityBelowNormal,
};
/* Definitions for TxMgr */
osThreadId_t TxMgrHandle;
const osThreadAttr_t TxMgr_attributes = {
  .name = "TxMgr",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityAboveNormal,
};
/* Definitions for CANRxQueue */
osMessageQueueId_t CANRxQueueHandle;
uint8_t CANRxQueueBuffer[ 6 * sizeof( uint64_t ) ];
osStaticMessageQDef_t CANRxQueueControlBlock;
const osMessageQueueAttr_t CANRxQueue_attributes = {
  .name = "CANRxQueue",
  .cb_mem = &CANRxQueueControlBlock,
  .cb_size = sizeof(CANRxQueueControlBlock),
  .mq_mem = &CANRxQueueBuffer,
  .mq_size = sizeof(CANRxQueueBuffer)
};
/* Definitions for TxMgrEvent */
osEventFlagsId_t TxMgrEventHandle;
const osEventFlagsAttr_t TxMgrEvent_attributes = {
  .name = "TxMgrEvent"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartCanTask(void *argument);
void StartTxMgr(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

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
  CANRxQueueHandle = osMessageQueueNew (6, sizeof(uint64_t), &CANRxQueue_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of CanTask */
  CanTaskHandle = osThreadNew(StartCanTask, NULL, &CanTask_attributes);

  /* creation of TxMgr */
  TxMgrHandle = osThreadNew(StartTxMgr, NULL, &TxMgr_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* Create the event(s) */
  /* creation of TxMgrEvent */
  TxMgrEventHandle = osEventFlagsNew(&TxMgrEvent_attributes);

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

  /* Infinite loop */
  for(;;) {
	if(xQueueReceive(CANRxQueueHandle, &qm, 0)) {
		switch(qm.h) {
		case RFBCANMessage_SetPllPwr: {
			SPISetTiPllOutAPwr((uint8_t)(qm.u4), (uint8_t)(qm.u4 >> 31));
		}; break;
		case RFBCANMessage_SetPllContFreq: {
			SPISetTiPllFreq((float)qm.u4);
		}; break;
		case RFBCANMessage_StartPllSweep: {
			TIM15TiPllRampStart();
		}; break;
		case RFBCANMessage_PushPllData: {
			RFBPllData[qm.a] = qm.u4;
		}; break;
		case RFBCANMessage_SetPllSweepData: {
			SPISetTiPllRampFreqFromBuf();
		}; break;
		}
	}

    osDelay(1);
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
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END StartTxMgr */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

