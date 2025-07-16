cmake_minimum_required(VERSION 3.26.4)

project(conda_build_test)

add_executable(print-test main.cpp)

install(TARGETS print-test DESTINATION bin)

CONFIGURE_FILE(
"${CMAKE_SOURCE_DIR}/cmake/cmake_uninstall.cmake"
"${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
IMMEDIATE @ONLY
)
ADD_CUSTOM_TARGET(uninstall
"${CMAKE_COMMAND}" -P "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
)