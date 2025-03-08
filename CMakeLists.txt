
cmake_minimum_required(VERSION 3.20)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(collector LANGUAGES CXX)

set(ESP_IDF_PATH modules/hal/espressif)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(BOARD esp32c3_devkitm)

target_sources(collector PRIVATE src/main.cpp)

#zephyr_syscall_include_directories(include)

zephyr_include_directories(include)
