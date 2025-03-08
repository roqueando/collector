project(collector)

zephyr_syscall_include_directories(include)

zephyr_include_directories(include)

set(ESP_IDF_PATH ${ZEPHYR_BASE}/modules/esp-idf)
add_subdirectory(drivers)
add_subdirectory(lib)
