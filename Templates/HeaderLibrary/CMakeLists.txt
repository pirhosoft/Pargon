set(LIBRARY_NAME ...)

add_library(${LIBRARY_NAME} INTERFACE)
target_include_directories(${LIBRARY_NAME} INTERFACE ./)
