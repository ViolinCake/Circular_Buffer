# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kenjhin/Desktop/workspace/Circular_Buffer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kenjhin/Desktop/workspace/Circular_Buffer/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/CircularBuffer_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/CircularBuffer_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/CircularBuffer_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/CircularBuffer_test.dir/flags.make

tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o: tests/CMakeFiles/CircularBuffer_test.dir/flags.make
tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o: ../tests/CircularBuffer_test.cpp
tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o: tests/CMakeFiles/CircularBuffer_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kenjhin/Desktop/workspace/Circular_Buffer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o"
	cd /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o -MF CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o.d -o CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o -c /home/kenjhin/Desktop/workspace/Circular_Buffer/tests/CircularBuffer_test.cpp

tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.i"
	cd /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kenjhin/Desktop/workspace/Circular_Buffer/tests/CircularBuffer_test.cpp > CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.i

tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.s"
	cd /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kenjhin/Desktop/workspace/Circular_Buffer/tests/CircularBuffer_test.cpp -o CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.s

# Object files for target CircularBuffer_test
CircularBuffer_test_OBJECTS = \
"CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o"

# External object files for target CircularBuffer_test
CircularBuffer_test_EXTERNAL_OBJECTS =

tests/CircularBuffer_test: tests/CMakeFiles/CircularBuffer_test.dir/CircularBuffer_test.cpp.o
tests/CircularBuffer_test: tests/CMakeFiles/CircularBuffer_test.dir/build.make
tests/CircularBuffer_test: /usr/lib/x86_64-linux-gnu/libgtest.a
tests/CircularBuffer_test: /usr/lib/x86_64-linux-gnu/libgtest_main.a
tests/CircularBuffer_test: /usr/lib/x86_64-linux-gnu/libgtest.a
tests/CircularBuffer_test: tests/CMakeFiles/CircularBuffer_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kenjhin/Desktop/workspace/Circular_Buffer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CircularBuffer_test"
	cd /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CircularBuffer_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests && /usr/bin/cmake -D TEST_TARGET=CircularBuffer_test -D TEST_EXECUTABLE=/home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests/CircularBuffer_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=CircularBuffer_test_TESTS -D CTEST_FILE=/home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests/CircularBuffer_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/CircularBuffer_test.dir/build: tests/CircularBuffer_test
.PHONY : tests/CMakeFiles/CircularBuffer_test.dir/build

tests/CMakeFiles/CircularBuffer_test.dir/clean:
	cd /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/CircularBuffer_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/CircularBuffer_test.dir/clean

tests/CMakeFiles/CircularBuffer_test.dir/depend:
	cd /home/kenjhin/Desktop/workspace/Circular_Buffer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kenjhin/Desktop/workspace/Circular_Buffer /home/kenjhin/Desktop/workspace/Circular_Buffer/tests /home/kenjhin/Desktop/workspace/Circular_Buffer/build /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests/CMakeFiles/CircularBuffer_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/CircularBuffer_test.dir/depend

