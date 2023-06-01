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
extern CAN_FilterTypeDef can1Filter0;
extern CAN_RxHeaderTypeDef canRxHeader;
extern CAN_TxHeaderTypeDef canTxHeader;
extern uint8_t canRx0Data[8];
extern uint32_t TxMailBox;
extern uint8_t canTx0Data[8];

#define CAN_DLC_0B 0x0
#define CAN_DLC_1B 0x1
#define CAN_DLC_2B 0x2
#define CAN_DLC_3B 0x3
#define CAN_DLC_4B 0x4
#define CAN_DLC_5B 0x5
#define CAN_DLC_6B 0x6
#define CAN_DLC_7B 0x7
#define CAN_DLC_8B 0x8
#define CAN_DLC_12B 0x9
#define CAN_DLC_16B 0xa
#define CAN_DLC_20B 0xb
#define CAN_DLC_24B 0xc
#define CAN_DLC_32B 0xd
#define CAN_DLC_48B 0xe
#define CAN_DLC_64B 0xf

/* USER CODE END Private defines */

void MX_CAN1_Init(void);

/* USER CODE BEGIN Prototypes */

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __CAN_H__ */

