set(LIBRARY_NAME ...)

set(SOURCES
)

set(CMAKE_FOLDER ${DEPENDENCIES_FOLDER})
add_library(${LIBRARY_NAME} STATIC)
target_include_directories(${LIBRARY_NAME} PUBLIC ./)
target_sources(${LIBRARY_NAME} PRIVATE "${SOURCES}")
