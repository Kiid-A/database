# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/CSDIY/database

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/CSDIY/database/build_support

# Include any dependencies generated for this target.
include third_party/backward-cpp/CMakeFiles/backward.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include third_party/backward-cpp/CMakeFiles/backward.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/backward-cpp/CMakeFiles/backward.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/backward-cpp/CMakeFiles/backward.dir/flags.make

third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.o: third_party/backward-cpp/CMakeFiles/backward.dir/flags.make
third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.o: /root/CSDIY/database/third_party/backward-cpp/backward.cpp
third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.o: third_party/backward-cpp/CMakeFiles/backward.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.o"
	cd /root/CSDIY/database/build_support/third_party/backward-cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.o -MF CMakeFiles/backward.dir/backward.cpp.o.d -o CMakeFiles/backward.dir/backward.cpp.o -c /root/CSDIY/database/third_party/backward-cpp/backward.cpp

third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backward.dir/backward.cpp.i"
	cd /root/CSDIY/database/build_support/third_party/backward-cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/third_party/backward-cpp/backward.cpp > CMakeFiles/backward.dir/backward.cpp.i

third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backward.dir/backward.cpp.s"
	cd /root/CSDIY/database/build_support/third_party/backward-cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/third_party/backward-cpp/backward.cpp -o CMakeFiles/backward.dir/backward.cpp.s

# Object files for target backward
backward_OBJECTS = \
"CMakeFiles/backward.dir/backward.cpp.o"

# External object files for target backward
backward_EXTERNAL_OBJECTS =

lib/libbackward.a: third_party/backward-cpp/CMakeFiles/backward.dir/backward.cpp.o
lib/libbackward.a: third_party/backward-cpp/CMakeFiles/backward.dir/build.make
lib/libbackward.a: third_party/backward-cpp/CMakeFiles/backward.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../lib/libbackward.a"
	cd /root/CSDIY/database/build_support/third_party/backward-cpp && $(CMAKE_COMMAND) -P CMakeFiles/backward.dir/cmake_clean_target.cmake
	cd /root/CSDIY/database/build_support/third_party/backward-cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/backward.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/backward-cpp/CMakeFiles/backward.dir/build: lib/libbackward.a
.PHONY : third_party/backward-cpp/CMakeFiles/backward.dir/build

third_party/backward-cpp/CMakeFiles/backward.dir/clean:
	cd /root/CSDIY/database/build_support/third_party/backward-cpp && $(CMAKE_COMMAND) -P CMakeFiles/backward.dir/cmake_clean.cmake
.PHONY : third_party/backward-cpp/CMakeFiles/backward.dir/clean

third_party/backward-cpp/CMakeFiles/backward.dir/depend:
	cd /root/CSDIY/database/build_support && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/CSDIY/database /root/CSDIY/database/third_party/backward-cpp /root/CSDIY/database/build_support /root/CSDIY/database/build_support/third_party/backward-cpp /root/CSDIY/database/build_support/third_party/backward-cpp/CMakeFiles/backward.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/backward-cpp/CMakeFiles/backward.dir/depend

