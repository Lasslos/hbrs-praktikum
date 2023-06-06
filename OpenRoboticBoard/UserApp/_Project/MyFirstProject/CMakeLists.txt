# CMake minimum version
cmake_minimum_required (VERSION 3.1)

# Compiler Location
# TODO: Change the compiler location to your own path
set(CMAKE_CXX_COMPILER "C:/msys64/ucrt64/bin/g++.exe")
set(CMAKE_C_COMPILER "C:/msys64/ucrt64/bin/gcc.exe")                                                                                                                           

# Project Infomation
project( MyFirstProject )
enable_language(ASM)
enable_language(C)

# Reset output path
set (EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
set (LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)

# STDLIB
set (CMAKE_SHARED_LIBRARY_LINK_C_FLAGS)

# Set include path
include_directories (./Src)
include_directories (C:/Users/Laslo/Development/cpp/hbrs-praktikum/OpenRoboticBoard/UserApp/_Project/MyFirstProject/../../Firmware)
include_directories (C:/Users/Laslo/Development/cpp/hbrs-praktikum/OpenRoboticBoard/UserApp/_Project/MyFirstProject/../../Middleware/Src)

# The need build source path and build all files
set (SRC_FILE0 ./Lib/entry.cpp)
set (SRC_FILE1 ./Lib/main.cpp)
set (SRC_FILE2 ./Src/Application.h)


set(CROSS_TARGET_TRIPLET "arm-none-eabi-")

# CC AR LD AS
set(CMAKE_C_COMPILER "${CROSS_TARGET_TRIPLET}gcc")
set(CMAKE_ASM_COMPILER "${CROSS_TARGET_TRIPLET}gcc")

# CFLAGS
set (CMAKE_C_FLAGS "-g -Wextra -Wshadow -Wimplicit-function-declaration -Wredundant-decls -Wmissing-prototypes -Wstrict-prototypes -fno-common -ffunction-sections -fdata-sections -MD -Wall -Wundef -mthumb -mcpu=cortex-m4 " CACHE INTERNAL "c compiler flags")
set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS}  -D USE_UART  -D STM32F405xx  -D  __ARM_STM32F405__  -D  _HSE_CLK=8000  -D  _HSE_BYPASS_OFF  -D  HSE_VALUE=8000000  -D HSI_VALUE=8000000  -D _KEIL ")

# CXXFLAGS
set (CMAKE_CXX_FLAGS "-Wextra -Wshadow -Wredundant-decls  -Weffc++ -fno-common -ffunction-sections -fdata-sections -MD -Wall -Wundef -mthumb -mcpu=cortex-m4 " CACHE INTERNAL "cxx compiler flags")

# ASMFLAGS
set (CMAKE_ASM_FLAGS "-g -mthumb -mcpu=cortex-m4 " CACHE INTERNAL "asm compiler flags")

# LDFLAGS
set (CMAKE_EXE_LINKER_FLAGS "-g -Wl,--gc-sections -Wl,-Map=Target.map -mthumb -mcpu=cortex-m4 " CACHE INTERNAL "executable linker flags")
set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${CMAKE_SOURCE_DIR}/STM32FLASH.ld -L ")


# Generate the target
add_executable (${CMAKE_PROJECT_NAME}.elf  ${SRC_FILE0}  ${SRC_FILE1}  ${SRC_FILE2} )

# Link the library to the target
target_link_libraries (${CMAKE_PROJECT_NAME}.elf )

# Generate the binary file
add_custom_target (${CMAKE_PROJECT_NAME}.bin ALL arm-none-eabi-objcopy -Obinary "${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.elf" "${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.bin" DEPENDS ${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.elf)

# Generate the hex file
add_custom_target (${CMAKE_PROJECT_NAME}.hex ALL arm-none-eabi-objcopy -Oihex "${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.elf" "${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.hex" DEPENDS ${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.elf)

# Echo the size Infomation
add_custom_target (size ALL arm-none-eabi-size "${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.elf" DEPENDS ${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.elf)

# Make flash to the board by st-link
add_custom_target (flash COMMAND st-flash write ${EXECUTABLE_OUTPUT_PATH}/${CMAKE_PROJECT_NAME}.bin 0x8000000)

# Make clean-all
add_custom_target (clean-all COMMAND rm -rf ${CMAKE_BINARY_DIR}/*)