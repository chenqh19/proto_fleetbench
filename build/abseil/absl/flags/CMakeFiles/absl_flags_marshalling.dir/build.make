# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/chenqh23/proto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chenqh23/proto/build

# Include any dependencies generated for this target.
include abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/compiler_depend.make

# Include the progress variables for this target.
include abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/progress.make

# Include the compile flags for this target's objects.
include abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/flags.make

abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o: abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/flags.make
abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o: /home/chenqh23/ser1de/protobuf/third_party/abseil-cpp/absl/flags/marshalling.cc
abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o: abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/chenqh23/proto/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o"
	cd /home/chenqh23/proto/build/abseil/absl/flags && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o -MF CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o.d -o CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o -c /home/chenqh23/ser1de/protobuf/third_party/abseil-cpp/absl/flags/marshalling.cc

abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.i"
	cd /home/chenqh23/proto/build/abseil/absl/flags && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenqh23/ser1de/protobuf/third_party/abseil-cpp/absl/flags/marshalling.cc > CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.i

abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.s"
	cd /home/chenqh23/proto/build/abseil/absl/flags && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenqh23/ser1de/protobuf/third_party/abseil-cpp/absl/flags/marshalling.cc -o CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.s

# Object files for target absl_flags_marshalling
absl_flags_marshalling_OBJECTS = \
"CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o"

# External object files for target absl_flags_marshalling
absl_flags_marshalling_EXTERNAL_OBJECTS =

abseil/absl/flags/libabsl_flags_marshalling.a: abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/marshalling.cc.o
abseil/absl/flags/libabsl_flags_marshalling.a: abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/build.make
abseil/absl/flags/libabsl_flags_marshalling.a: abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/chenqh23/proto/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libabsl_flags_marshalling.a"
	cd /home/chenqh23/proto/build/abseil/absl/flags && $(CMAKE_COMMAND) -P CMakeFiles/absl_flags_marshalling.dir/cmake_clean_target.cmake
	cd /home/chenqh23/proto/build/abseil/absl/flags && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absl_flags_marshalling.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/build: abseil/absl/flags/libabsl_flags_marshalling.a
.PHONY : abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/build

abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/clean:
	cd /home/chenqh23/proto/build/abseil/absl/flags && $(CMAKE_COMMAND) -P CMakeFiles/absl_flags_marshalling.dir/cmake_clean.cmake
.PHONY : abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/clean

abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/depend:
	cd /home/chenqh23/proto/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chenqh23/proto /home/chenqh23/ser1de/protobuf/third_party/abseil-cpp/absl/flags /home/chenqh23/proto/build /home/chenqh23/proto/build/abseil/absl/flags /home/chenqh23/proto/build/abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : abseil/absl/flags/CMakeFiles/absl_flags_marshalling.dir/depend

