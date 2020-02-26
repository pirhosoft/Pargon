cmake_minimum_required(VERSION 3.16)
project(Pargon VERSION 0.1 LANGUAGES CXX)

set(MODULES
	Containers
	Serialization
	Types
	Math
	Files
	Application
	Graphics
	Audio
	Input
)

set(SAMPLES
	Playground
)

add_definitions(-DUNICODE -D_UNICODE)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER CMake)
set_property(GLOBAL PROPERTY VS_STARTUP_PROJECT Playground)

set(MODULE_LOCATION Modules)
set(SAMPLE_LOCATION Samples)
set(MODULE_PREFIX Pargon)
set(DEPENDENCIES_FOLDER Dependencies)

set(CMAKE_FOLDER Modules)

foreach(MODULE ${MODULES})
	add_subdirectory(${MODULE_LOCATION}/${MODULE})
endforeach()

set(CMAKE_FOLDER Samples)

list(TRANSFORM MODULES PREPEND ${MODULE_PREFIX})
add_library(Pargon INTERFACE)
target_link_libraries(Pargon INTERFACE ${MODULES})

foreach(SAMPLE ${SAMPLES})
	add_subdirectory(${SAMPLE_LOCATION}/${SAMPLE})
endforeach()
