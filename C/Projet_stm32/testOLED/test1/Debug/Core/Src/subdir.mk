################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/gpio.c \
../Core/Src/i2c.c \
../Core/Src/main.c \
../Core/Src/retarget.c \
../Core/Src/stm32l4xx_hal_msp.c \
../Core/Src/stm32l4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l4xx.c \
../Core/Src/tim.c \
../Core/Src/u8g2_bitmap.c \
../Core/Src/u8g2_box.c \
../Core/Src/u8g2_buffer.c \
../Core/Src/u8g2_circle.c \
../Core/Src/u8g2_d_memory.c \
../Core/Src/u8g2_d_setup.c \
../Core/Src/u8g2_font.c \
../Core/Src/u8g2_fonts.c \
../Core/Src/u8g2_hvline.c \
../Core/Src/u8g2_intersection.c \
../Core/Src/u8g2_line.c \
../Core/Src/u8g2_ll_hvline.c \
../Core/Src/u8g2_setup.c \
../Core/Src/u8x8_8x8.c \
../Core/Src/u8x8_byte.c \
../Core/Src/u8x8_cad.c \
../Core/Src/u8x8_d_ssd1306_128x64_noname.c \
../Core/Src/u8x8_display.c \
../Core/Src/u8x8_gpio.c \
../Core/Src/u8x8_setup.c \
../Core/Src/u8x8_stm32_HAL.c \
../Core/Src/usart.c 

OBJS += \
./Core/Src/gpio.o \
./Core/Src/i2c.o \
./Core/Src/main.o \
./Core/Src/retarget.o \
./Core/Src/stm32l4xx_hal_msp.o \
./Core/Src/stm32l4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l4xx.o \
./Core/Src/tim.o \
./Core/Src/u8g2_bitmap.o \
./Core/Src/u8g2_box.o \
./Core/Src/u8g2_buffer.o \
./Core/Src/u8g2_circle.o \
./Core/Src/u8g2_d_memory.o \
./Core/Src/u8g2_d_setup.o \
./Core/Src/u8g2_font.o \
./Core/Src/u8g2_fonts.o \
./Core/Src/u8g2_hvline.o \
./Core/Src/u8g2_intersection.o \
./Core/Src/u8g2_line.o \
./Core/Src/u8g2_ll_hvline.o \
./Core/Src/u8g2_setup.o \
./Core/Src/u8x8_8x8.o \
./Core/Src/u8x8_byte.o \
./Core/Src/u8x8_cad.o \
./Core/Src/u8x8_d_ssd1306_128x64_noname.o \
./Core/Src/u8x8_display.o \
./Core/Src/u8x8_gpio.o \
./Core/Src/u8x8_setup.o \
./Core/Src/u8x8_stm32_HAL.o \
./Core/Src/usart.o 

C_DEPS += \
./Core/Src/gpio.d \
./Core/Src/i2c.d \
./Core/Src/main.d \
./Core/Src/retarget.d \
./Core/Src/stm32l4xx_hal_msp.d \
./Core/Src/stm32l4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l4xx.d \
./Core/Src/tim.d \
./Core/Src/u8g2_bitmap.d \
./Core/Src/u8g2_box.d \
./Core/Src/u8g2_buffer.d \
./Core/Src/u8g2_circle.d \
./Core/Src/u8g2_d_memory.d \
./Core/Src/u8g2_d_setup.d \
./Core/Src/u8g2_font.d \
./Core/Src/u8g2_fonts.d \
./Core/Src/u8g2_hvline.d \
./Core/Src/u8g2_intersection.d \
./Core/Src/u8g2_line.d \
./Core/Src/u8g2_ll_hvline.d \
./Core/Src/u8g2_setup.d \
./Core/Src/u8x8_8x8.d \
./Core/Src/u8x8_byte.d \
./Core/Src/u8x8_cad.d \
./Core/Src/u8x8_d_ssd1306_128x64_noname.d \
./Core/Src/u8x8_display.d \
./Core/Src/u8x8_gpio.d \
./Core/Src/u8x8_setup.d \
./Core/Src/u8x8_stm32_HAL.d \
./Core/Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/i2c.cyclo ./Core/Src/i2c.d ./Core/Src/i2c.o ./Core/Src/i2c.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/retarget.cyclo ./Core/Src/retarget.d ./Core/Src/retarget.o ./Core/Src/retarget.su ./Core/Src/stm32l4xx_hal_msp.cyclo ./Core/Src/stm32l4xx_hal_msp.d ./Core/Src/stm32l4xx_hal_msp.o ./Core/Src/stm32l4xx_hal_msp.su ./Core/Src/stm32l4xx_it.cyclo ./Core/Src/stm32l4xx_it.d ./Core/Src/stm32l4xx_it.o ./Core/Src/stm32l4xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l4xx.cyclo ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/system_stm32l4xx.su ./Core/Src/tim.cyclo ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/tim.su ./Core/Src/u8g2_bitmap.cyclo ./Core/Src/u8g2_bitmap.d ./Core/Src/u8g2_bitmap.o ./Core/Src/u8g2_bitmap.su ./Core/Src/u8g2_box.cyclo ./Core/Src/u8g2_box.d ./Core/Src/u8g2_box.o ./Core/Src/u8g2_box.su ./Core/Src/u8g2_buffer.cyclo ./Core/Src/u8g2_buffer.d ./Core/Src/u8g2_buffer.o ./Core/Src/u8g2_buffer.su ./Core/Src/u8g2_circle.cyclo ./Core/Src/u8g2_circle.d ./Core/Src/u8g2_circle.o ./Core/Src/u8g2_circle.su ./Core/Src/u8g2_d_memory.cyclo ./Core/Src/u8g2_d_memory.d ./Core/Src/u8g2_d_memory.o ./Core/Src/u8g2_d_memory.su ./Core/Src/u8g2_d_setup.cyclo ./Core/Src/u8g2_d_setup.d ./Core/Src/u8g2_d_setup.o ./Core/Src/u8g2_d_setup.su ./Core/Src/u8g2_font.cyclo ./Core/Src/u8g2_font.d ./Core/Src/u8g2_font.o ./Core/Src/u8g2_font.su ./Core/Src/u8g2_fonts.cyclo ./Core/Src/u8g2_fonts.d ./Core/Src/u8g2_fonts.o ./Core/Src/u8g2_fonts.su ./Core/Src/u8g2_hvline.cyclo ./Core/Src/u8g2_hvline.d ./Core/Src/u8g2_hvline.o ./Core/Src/u8g2_hvline.su ./Core/Src/u8g2_intersection.cyclo ./Core/Src/u8g2_intersection.d ./Core/Src/u8g2_intersection.o ./Core/Src/u8g2_intersection.su ./Core/Src/u8g2_line.cyclo ./Core/Src/u8g2_line.d ./Core/Src/u8g2_line.o ./Core/Src/u8g2_line.su ./Core/Src/u8g2_ll_hvline.cyclo ./Core/Src/u8g2_ll_hvline.d ./Core/Src/u8g2_ll_hvline.o ./Core/Src/u8g2_ll_hvline.su ./Core/Src/u8g2_setup.cyclo ./Core/Src/u8g2_setup.d ./Core/Src/u8g2_setup.o ./Core/Src/u8g2_setup.su ./Core/Src/u8x8_8x8.cyclo ./Core/Src/u8x8_8x8.d ./Core/Src/u8x8_8x8.o ./Core/Src/u8x8_8x8.su ./Core/Src/u8x8_byte.cyclo ./Core/Src/u8x8_byte.d ./Core/Src/u8x8_byte.o ./Core/Src/u8x8_byte.su ./Core/Src/u8x8_cad.cyclo ./Core/Src/u8x8_cad.d ./Core/Src/u8x8_cad.o ./Core/Src/u8x8_cad.su ./Core/Src/u8x8_d_ssd1306_128x64_noname.cyclo ./Core/Src/u8x8_d_ssd1306_128x64_noname.d ./Core/Src/u8x8_d_ssd1306_128x64_noname.o ./Core/Src/u8x8_d_ssd1306_128x64_noname.su ./Core/Src/u8x8_display.cyclo ./Core/Src/u8x8_display.d ./Core/Src/u8x8_display.o ./Core/Src/u8x8_display.su ./Core/Src/u8x8_gpio.cyclo ./Core/Src/u8x8_gpio.d ./Core/Src/u8x8_gpio.o ./Core/Src/u8x8_gpio.su ./Core/Src/u8x8_setup.cyclo ./Core/Src/u8x8_setup.d ./Core/Src/u8x8_setup.o ./Core/Src/u8x8_setup.su ./Core/Src/u8x8_stm32_HAL.cyclo ./Core/Src/u8x8_stm32_HAL.d ./Core/Src/u8x8_stm32_HAL.o ./Core/Src/u8x8_stm32_HAL.su ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su

.PHONY: clean-Core-2f-Src

