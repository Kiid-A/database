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

# Utility rule file for fix-clang-tidy-diff.

# Include any custom commands dependencies for this target.
include CMakeFiles/fix-clang-tidy-diff.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fix-clang-tidy-diff.dir/progress.make

CMakeFiles/fix-clang-tidy-diff:
	./run_clang_tidy.py -clang-tidy-binary CLANG_TIDY_BIN-NOTFOUND -p /root/CSDIY/database/build_support -clang-apply-replacements-binary CLANG_APPLY_REPLACEMENTS_BIN-NOTFOUND -fix -only-diff

fix-clang-tidy-diff: CMakeFiles/fix-clang-tidy-diff
fix-clang-tidy-diff: CMakeFiles/fix-clang-tidy-diff.dir/build.make
.PHONY : fix-clang-tidy-diff

# Rule to build all files generated by this target.
CMakeFiles/fix-clang-tidy-diff.dir/build: fix-clang-tidy-diff
.PHONY : CMakeFiles/fix-clang-tidy-diff.dir/build

CMakeFiles/fix-clang-tidy-diff.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fix-clang-tidy-diff.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fix-clang-tidy-diff.dir/clean

CMakeFiles/fix-clang-tidy-diff.dir/depend:
	cd /root/CSDIY/database/build_support && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/CSDIY/database /root/CSDIY/database /root/CSDIY/database/build_support /root/CSDIY/database/build_support /root/CSDIY/database/build_support/CMakeFiles/fix-clang-tidy-diff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fix-clang-tidy-diff.dir/depend

