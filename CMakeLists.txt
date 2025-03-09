cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(collector LANGUAGES C)

target_sources(app PRIVATE src/main.c)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(BOARD esp32c3_devkitm)


##zephyr_syscall_include_directories(include)
#
#zephyr_include_directories(include)
