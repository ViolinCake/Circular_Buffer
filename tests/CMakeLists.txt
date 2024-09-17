cmake_minimum_required(VERSION 3.22)
project(CircularBuffer_test)
enable_testing()
find_package(GTest REQUIRED)
add_executable(${PROJECT_NAME} CircularBuffer_test.cpp)
#add the googletest libraries
target_link_libraries(${PROJECT_NAME} GTest::gtest GTest::gtest_main)
#here try to erase the GTEST_INCLUDE_DIRS and see what happense
target_include_directories(${PROJECT_NAME} PRIVATE
                            ${CMAKE_SOURCE_DIR}/src/ GTEST_INCLUDE_DIRS)
#making sure ctest can see our test cases
gtest_discover_tests(${PROJECT_NAME})