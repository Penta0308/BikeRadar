/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    can.h
  * @brief   This file contains all the function prototypes for
  *          the can.c file
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
#ifndef __CAN_H__
#define __CAN_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

#include "FreeRTOS.h"
#include "cmsis_os.h"
#include "queue.h"

/* USER CODE END Includes */

extern CAN_HandleTypeDef hcan1;

/* USER CODE BEGIN Private defines */

#define RFBCAN_FILTER0_MaskIdHigh 	 	(uint16_t)(0x7f3 << 5)
#define RFBCAN_FILTER0_IdHigh 			(uint16_t)(0x106 << 5)
#define RFBCAN_FILTER0_MaskIdLow 	 	(uint16_t)(0x7f3 << 5)
#define RFBCAN_FILTER0_IdLow 			(uint16_t)(0x106 << 5)
#define RFBCAN_FILTER0_FilterMode 		CAN_FILTERMODE_IDMASK
#define RFBCAN_FILTER0_FilterScale 		CAN_FILTERSCALE_16BIT

#define RFBCANMessage_SetPllPwr  		(uint8_t)0x01	// f = data (dBm, -inf = off)
#define RFBCANMessage_SetPllContFreq	(uint8_t)0x02	// f = data
#define RFBCANMessage_StartPllSweep  	(uint8_t)0x03
#define RFBCANMessage_PushPllData		(uint8_t)0x04	// a = addr, f = data
#define RFBCANMessage_SetPllSweepData	(uint8_t)0x05


typedef struct __attribute__((packed())) _RFBCANMessage {
	uint8_t h;
	uint8_t a;
	uint8_t b;
	uint8_t c;
	uint32_t u4;
} RFBCANMessage;

/* USER CODE END Private defines */

void MX_CAN1_Init(void);

/* USER CODE BEGIN Prototypes */

extern osMessageQueueId_t CANRxQueueHandle;

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __CAN_H__ */

