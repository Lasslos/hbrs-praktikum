# CMake minimum version
cmake_minimum_required (VERSION 3.1)

# Project Infomation
project( Target )
enable_language(ASM)
enable_language(C)

# Reset output path
set (EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
set (LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)

# STDLIB
set (CMAKE_SHARED_LIBRARY_LINK_C_FLAGS)

# Set include path
include_directories (./Src)
include_directories (C:/Users/Laslo/Development/cpp/hbrs-praktikum/OpenRoboticBoard/Firmware)
include_directories (C:/Users/Laslo/Development/cpp/hbrs-praktikum/OpenRoboticBoard/Middleware/Src)

# The need build source path and build all files
set (SRC_FILE0 ./Lib/entry.cpp)
set (SRC_FILE1 ./Lib/main.cpp)
set (SRC_FILE2 ./Src/Application.h)

# CFLAGS
set (CMAKE_C_FLAGS "-g -Wextra -Wshadow -Wimplicit-function-declaration -Wredundant-decls -Wmissing-prototypes -Wstrict-prototypes -fno-common -ffunction-sections -fdata-sections -MD -Wall -Wundef -mthumb -mcpu=cortex-m4 " CACHE INTERNAL "c compiler flags")
set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS}  -D USE_UART  -D STM32F405xx  -D  __ARM_STM32F405__  -D  _HSE_CLK=8000  -D  _HSE_BYPASS_OFF  -D  HSE_VALUE=8000000  -D HSI_VALUE=8000000  -D _KEIL ")

# CXXFLAGS
set (CMAKE_CXX_FLAGS "-Wextra -Wshadow -Wredundant-decls  -Weffc++ -fno-common -ffunction-sections -fdata-sections -MD -Wall -Wundef -mthumb -mcpu=cortex-m4 " CACHE INTERNAL "cxx compiler flags")

# ASMFLAGS
set (CMAKE_ASM_FLAGS "-g -mthumb -mcpu=cortex-m4 " CACHE INTERNAL "asm compiler flags")

# LDFLAGS
set (CMAKE_EXE_LINKER_FLAGS "-g -Wl,--gc-sections -Wl,-Map=Target.map -mthumb -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard" CACHE INTERNAL "executable linker flags")
set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${CMAKE_SOURCE_DIR}/stm32f4xx_gcc.ld -L ")

#Set these variables:
#-mcpu=cortex-m4 -mthumb -specs=nano.specs -specs=nosys.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard")

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

# Some commands from a tutorial, maybe useful
#target_link_options(${CMAKE_PROJECT_NAME}.elf PRIVATE "LINKER:-Map=${CMAKE_PROJECT_NAME}/${CONFIG}/${CMAKE_PROJECT_NAME}.map")
#add_custom_command(TARGET ${CMAKE_PROJECT_NAME}.elf POST_BUILD
#    COMMAND ${CMAKE_OBJCOPY} -Oihex ${CMAKE_PROJECT_NAME}.elf ${CMAKE_PROJECT_NAME}.hex
#    COMMAND ${CMAKE_OBJCOPY} -Obinary ${CMAKE_PROJECT_NAME}.elf ${CMAKE_PROJECT_NAME}.bin
#    COMMAND ${CMAKE_SIZE} ${CMAKE_PROJECT_NAME}.elf
#    COMMENT "Building ${CMAKE_PROJECT_NAME}.hex
#             Building ${CMAKE_PROJECT_NAME}.bin
#             Building ${CMAKE_PROJECT_NAME}.elf"
#    VERBATIM)