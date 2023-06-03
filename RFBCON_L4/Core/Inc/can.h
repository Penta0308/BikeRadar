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

/* USER CODE END Includes */

extern CAN_HandleTypeDef hcan1;

/* USER CODE BEGIN Private defines */

#define RFBCANMessage_SetTxPwr  		(uint8_t)0x01
#define RFBCANMessage_SetTxContFreq		(uint8_t)0x02
#define RFBCANMessage_StartTxSweep  	(uint8_t)0x03
#define RFBCANMessage_SetTxSweepFrom	(uint8_t)0x04
#define RFBCANMessage_SetTxSweepTo		(uint8_t)0x05
#define RFBCANMessage_SetTxSweepDur		(uint8_t)0x06


typedef struct __attribute__((aligned(4))) _RFBCANMessage {
	uint8_t h;
	// 3B padding
	union v {
		uint32_t u4;
		int32_t i4;
		float f;
	};
} RFBCANMessage;

/* USER CODE END Private defines */

void MX_CAN1_Init(void);

/* USER CODE BEGIN Prototypes */

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __CAN_H__ */

