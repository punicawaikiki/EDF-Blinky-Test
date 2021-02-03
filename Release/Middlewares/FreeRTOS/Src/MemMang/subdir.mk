################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FreeRTOS/Src/MemMang/heap_4.c 

OBJS += \
./Middlewares/FreeRTOS/Src/MemMang/heap_4.o 

C_DEPS += \
./Middlewares/FreeRTOS/Src/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/Src/MemMang/heap_4.o: ../Middlewares/FreeRTOS/Src/MemMang/heap_4.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/FreeRTOS/Src/MemMang/heap_4.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

