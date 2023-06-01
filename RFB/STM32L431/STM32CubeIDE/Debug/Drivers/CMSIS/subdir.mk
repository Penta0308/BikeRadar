################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/penta/Documents/BikeRadar/RFB/STM32L431/Core/Src/system_stm32l4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32l4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32l4xx.o: C:/Users/penta/Documents/BikeRadar/RFB/STM32L431/Core/Src/system_stm32l4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../../Core/Inc -IC:/Users/penta/STM32Cube/Repository/STM32Cube_FW_L4_V1.17.2/Drivers/STM32L4xx_HAL_Driver/Inc -IC:/Users/penta/STM32Cube/Repository/STM32Cube_FW_L4_V1.17.2/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -IC:/Users/penta/STM32Cube/Repository/STM32Cube_FW_L4_V1.17.2/Drivers/CMSIS/Device/ST/STM32L4xx/Include -IC:/Users/penta/STM32Cube/Repository/STM32Cube_FW_L4_V1.17.2/Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32l4xx.cyclo ./Drivers/CMSIS/system_stm32l4xx.d ./Drivers/CMSIS/system_stm32l4xx.o ./Drivers/CMSIS/system_stm32l4xx.su

.PHONY: clean-Drivers-2f-CMSIS

