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
include src/optimizer/CMakeFiles/bustub_optimizer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.make

# Include the progress variables for this target.
include src/optimizer/CMakeFiles/bustub_optimizer.dir/progress.make

# Include the compile flags for this target's objects.
include src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make

src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o: /root/CSDIY/database/src/optimizer/eliminate_true_filter.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o -MF CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o -c /root/CSDIY/database/src/optimizer/eliminate_true_filter.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/eliminate_true_filter.cpp > CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/eliminate_true_filter.cpp -o CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o: /root/CSDIY/database/src/optimizer/merge_projection.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o -MF CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o -c /root/CSDIY/database/src/optimizer/merge_projection.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/merge_projection.cpp > CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/merge_projection.cpp -o CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o: /root/CSDIY/database/src/optimizer/merge_filter_nlj.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o -MF CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o -c /root/CSDIY/database/src/optimizer/merge_filter_nlj.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/merge_filter_nlj.cpp > CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/merge_filter_nlj.cpp -o CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o: /root/CSDIY/database/src/optimizer/merge_filter_scan.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o -MF CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o -c /root/CSDIY/database/src/optimizer/merge_filter_scan.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/merge_filter_scan.cpp > CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/merge_filter_scan.cpp -o CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o: /root/CSDIY/database/src/optimizer/nlj_as_hash_join.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o -MF CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o -c /root/CSDIY/database/src/optimizer/nlj_as_hash_join.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/nlj_as_hash_join.cpp > CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/nlj_as_hash_join.cpp -o CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o: /root/CSDIY/database/src/optimizer/nlj_as_index_join.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o -MF CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o -c /root/CSDIY/database/src/optimizer/nlj_as_index_join.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/nlj_as_index_join.cpp > CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/nlj_as_index_join.cpp -o CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o: /root/CSDIY/database/src/optimizer/optimizer.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o -MF CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o -c /root/CSDIY/database/src/optimizer/optimizer.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/optimizer.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/optimizer.cpp > CMakeFiles/bustub_optimizer.dir/optimizer.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/optimizer.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/optimizer.cpp -o CMakeFiles/bustub_optimizer.dir/optimizer.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o: /root/CSDIY/database/src/optimizer/optimizer_custom_rules.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o -MF CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o -c /root/CSDIY/database/src/optimizer/optimizer_custom_rules.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/optimizer_custom_rules.cpp > CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/optimizer_custom_rules.cpp -o CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o: /root/CSDIY/database/src/optimizer/optimizer_internal.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o -MF CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o -c /root/CSDIY/database/src/optimizer/optimizer_internal.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/optimizer_internal.cpp > CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/optimizer_internal.cpp -o CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o: /root/CSDIY/database/src/optimizer/order_by_index_scan.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o -MF CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o -c /root/CSDIY/database/src/optimizer/order_by_index_scan.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/order_by_index_scan.cpp > CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/order_by_index_scan.cpp -o CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o: /root/CSDIY/database/src/optimizer/sort_limit_as_topn.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o -MF CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o -c /root/CSDIY/database/src/optimizer/sort_limit_as_topn.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/sort_limit_as_topn.cpp > CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/sort_limit_as_topn.cpp -o CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o: /root/CSDIY/database/src/optimizer/seqscan_as_indexscan.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o -MF CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o -c /root/CSDIY/database/src/optimizer/seqscan_as_indexscan.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/seqscan_as_indexscan.cpp > CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/seqscan_as_indexscan.cpp -o CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.s

src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/flags.make
src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o: /root/CSDIY/database/src/optimizer/column_pruning.cpp
src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o: src/optimizer/CMakeFiles/bustub_optimizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CSDIY/database/build_support/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o -MF CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o.d -o CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o -c /root/CSDIY/database/src/optimizer/column_pruning.cpp

src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.i"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CSDIY/database/src/optimizer/column_pruning.cpp > CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.i

src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.s"
	cd /root/CSDIY/database/build_support/src/optimizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CSDIY/database/src/optimizer/column_pruning.cpp -o CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.s

bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/eliminate_true_filter.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_projection.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_nlj.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/merge_filter_scan.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_hash_join.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/nlj_as_index_join.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_custom_rules.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/optimizer_internal.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/order_by_index_scan.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/sort_limit_as_topn.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/seqscan_as_indexscan.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/column_pruning.cpp.o
bustub_optimizer: src/optimizer/CMakeFiles/bustub_optimizer.dir/build.make
.PHONY : bustub_optimizer

# Rule to build all files generated by this target.
src/optimizer/CMakeFiles/bustub_optimizer.dir/build: bustub_optimizer
.PHONY : src/optimizer/CMakeFiles/bustub_optimizer.dir/build

src/optimizer/CMakeFiles/bustub_optimizer.dir/clean:
	cd /root/CSDIY/database/build_support/src/optimizer && $(CMAKE_COMMAND) -P CMakeFiles/bustub_optimizer.dir/cmake_clean.cmake
.PHONY : src/optimizer/CMakeFiles/bustub_optimizer.dir/clean

src/optimizer/CMakeFiles/bustub_optimizer.dir/depend:
	cd /root/CSDIY/database/build_support && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/CSDIY/database /root/CSDIY/database/src/optimizer /root/CSDIY/database/build_support /root/CSDIY/database/build_support/src/optimizer /root/CSDIY/database/build_support/src/optimizer/CMakeFiles/bustub_optimizer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/optimizer/CMakeFiles/bustub_optimizer.dir/depend

