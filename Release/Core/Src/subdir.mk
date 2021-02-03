################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/blinky.c \
../Core/Src/edf_tasks.c \
../Core/Src/helper_functions.c \
../Core/Src/hooks.c \
../Core/Src/main.c \
../Core/Src/stm32f7xx_hal_msp.c \
../Core/Src/stm32f7xx_hal_timebase_tim.c \
../Core/Src/stm32f7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f7xx.c 

OBJS += \
./Core/Src/blinky.o \
./Core/Src/edf_tasks.o \
./Core/Src/helper_functions.o \
./Core/Src/hooks.o \
./Core/Src/main.o \
./Core/Src/stm32f7xx_hal_msp.o \
./Core/Src/stm32f7xx_hal_timebase_tim.o \
./Core/Src/stm32f7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f7xx.o 

C_DEPS += \
./Core/Src/blinky.d \
./Core/Src/edf_tasks.d \
./Core/Src/helper_functions.d \
./Core/Src/hooks.d \
./Core/Src/main.d \
./Core/Src/stm32f7xx_hal_msp.d \
./Core/Src/stm32f7xx_hal_timebase_tim.d \
./Core/Src/stm32f7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/blinky.o: ../Core/Src/blinky.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/blinky.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/edf_tasks.o: ../Core/Src/edf_tasks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/edf_tasks.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/helper_functions.o: ../Core/Src/helper_functions.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/helper_functions.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/hooks.o: ../Core/Src/hooks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/hooks.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/main.o: ../Core/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/stm32f7xx_hal_msp.o: ../Core/Src/stm32f7xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f7xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/stm32f7xx_hal_timebase_tim.o: ../Core/Src/stm32f7xx_hal_timebase_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f7xx_hal_timebase_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/stm32f7xx_it.o: ../Core/Src/stm32f7xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f7xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/syscalls.o: ../Core/Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/sysmem.o: ../Core/Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/system_stm32f7xx.o: ../Core/Src/system_stm32f7xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F769xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc" -I"C:/Users/fabia/STM32CubeIDE/workspace_1.5.0/edf-blinky-test/Middlewares/FreeRTOS/Inc/portable" -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/system_stm32f7xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

