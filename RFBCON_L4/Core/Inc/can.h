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

#define RFBCAN_FILTER0_MaskIdHigh 	 	(uint16_t)(0x106 << 5)
#define RFBCAN_FILTER0_IdHigh 			(uint16_t)(0x107 << 5)
#define RFBCAN_FILTER0_MaskIdLow 	 	(uint16_t)(0x108 << 5)
#define RFBCAN_FILTER0_IdLow 			(uint16_t)(0x109 << 5)
#define RFBCAN_FILTER0_FilterMode 		CAN_FILTERMODE_IDLIST
#define RFBCAN_FILTER0_FilterScale 		CAN_FILTERSCALE_16BIT

#define RFBCANMessage_SetPllPwr  		(uint8_t)0x01	// f = data (sign neg: Off, [5:0]: data)
#define RFBCANMessage_SetPllContFreq	(uint8_t)0x02	// f = data
#define RFBCANMessage_StartPllSweep  	(uint8_t)0x03
#define RFBCANMessage_PushPllData		(uint8_t)0x04	// a = addr, f = data
#define RFBCANMessage_SetPllSweepData	(uint8_t)0x05
#define RFBCANMessage_SetPaEn			(uint8_t)0x06	// f = data (sign neg: Off, pos: On)
#define RFBCANMessage_GetPllLocked		(uint8_t)0x07
#define RFBCANMessage_GetPaPwr			(uint8_t)0x08
#define RFBCANMessage_SetAntennaState	(uint8_t)0x09   // f = data lsb 0, 1
#define RFBCANMessage_GetPllRegister	(uint8_t)0x0A   // a = addr
#define RFBCANMessage_SetPllRegister	(uint8_t)0x0B   // a = addr, f = data

typedef union __attribute__((packed())) _D4 {
	uint32_t u4;
	float f;
	int32_t i4;
	uint8_t b[4];
	int8_t c[4];
	uint16_t h[2];
} D4;

typedef struct __attribute__((packed())) _RFBCANMessage {
	uint8_t h;
	uint8_t a;
	uint8_t b;
	uint8_t c;
	D4 d;
} RFBCANMessage;

/* USER CODE END Private defines */

void MX_CAN1_Init(void);

/* USER CODE BEGIN Prototypes */

extern CAN_FilterTypeDef can1Filter0;
extern CAN_RxHeaderTypeDef canRxHeader;
extern CAN_TxHeaderTypeDef canTxHeader;
extern uint8_t canRxData[64];
extern uint32_t TxMailBox;
extern uint8_t canTxData[64];
extern osMessageQueueId_t CANRxQueueHandle;

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __CAN_H__ */

