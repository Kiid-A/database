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

# Utility rule file for check-clang-tidy-p0.

# Include any custom commands dependencies for this target.
include CMakeFiles/check-clang-tidy-p0.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/check-clang-tidy-p0.dir/progress.make

CMakeFiles/check-clang-tidy-p0:
	./run_clang_tidy.py -clang-tidy-binary CLANG_TIDY_BIN-NOTFOUND -p /root/CSDIY/database/build_support src/planner/plan_func_call.cpp src/include/execution/expressions/string_expression.h src/include/primer/orset.h src/primer/orset.cpp

check-clang-tidy-p0: CMakeFiles/check-clang-tidy-p0
check-clang-tidy-p0: CMakeFiles/check-clang-tidy-p0.dir/build.make
.PHONY : check-clang-tidy-p0

# Rule to build all files generated by this target.
CMakeFiles/check-clang-tidy-p0.dir/build: check-clang-tidy-p0
.PHONY : CMakeFiles/check-clang-tidy-p0.dir/build

CMakeFiles/check-clang-tidy-p0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/check-clang-tidy-p0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/check-clang-tidy-p0.dir/clean

CMakeFiles/check-clang-tidy-p0.dir/depend:
	cd /root/CSDIY/database/build_support && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/CSDIY/database /root/CSDIY/database /root/CSDIY/database/build_support /root/CSDIY/database/build_support /root/CSDIY/database/build_support/CMakeFiles/check-clang-tidy-p0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/check-clang-tidy-p0.dir/depend

