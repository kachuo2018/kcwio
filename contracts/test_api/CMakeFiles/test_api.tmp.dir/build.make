# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kcw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kcw/build

# Include any dependencies generated for this target.
include contracts/test_api/CMakeFiles/test_api.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/test_api/CMakeFiles/test_api.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/test_api/CMakeFiles/test_api.tmp.dir/flags.make

contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o: contracts/test_api/CMakeFiles/test_api.tmp.dir/flags.make
contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o: ../contracts/test_api/test_api.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o"
	cd /home/kcw/build/contracts/test_api && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_api.tmp.dir/test_api.cpp.o -c /home/kcw/contracts/test_api/test_api.cpp

contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_api.tmp.dir/test_api.cpp.i"
	cd /home/kcw/build/contracts/test_api && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kcw/contracts/test_api/test_api.cpp > CMakeFiles/test_api.tmp.dir/test_api.cpp.i

contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_api.tmp.dir/test_api.cpp.s"
	cd /home/kcw/build/contracts/test_api && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kcw/contracts/test_api/test_api.cpp -o CMakeFiles/test_api.tmp.dir/test_api.cpp.s

contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.requires:

.PHONY : contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.requires

contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.provides: contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.requires
	$(MAKE) -f contracts/test_api/CMakeFiles/test_api.tmp.dir/build.make contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.provides.build
.PHONY : contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.provides

contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.provides.build: contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o


# Object files for target test_api.tmp
test_api_tmp_OBJECTS = \
"CMakeFiles/test_api.tmp.dir/test_api.cpp.o"

# External object files for target test_api.tmp
test_api_tmp_EXTERNAL_OBJECTS =

contracts/test_api/test_api.tmp: contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o
contracts/test_api/test_api.tmp: contracts/test_api/CMakeFiles/test_api.tmp.dir/build.make
contracts/test_api/test_api.tmp: contracts/test_api/CMakeFiles/test_api.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_api.tmp"
	cd /home/kcw/build/contracts/test_api && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_api.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/test_api/CMakeFiles/test_api.tmp.dir/build: contracts/test_api/test_api.tmp

.PHONY : contracts/test_api/CMakeFiles/test_api.tmp.dir/build

contracts/test_api/CMakeFiles/test_api.tmp.dir/requires: contracts/test_api/CMakeFiles/test_api.tmp.dir/test_api.cpp.o.requires

.PHONY : contracts/test_api/CMakeFiles/test_api.tmp.dir/requires

contracts/test_api/CMakeFiles/test_api.tmp.dir/clean:
	cd /home/kcw/build/contracts/test_api && $(CMAKE_COMMAND) -P CMakeFiles/test_api.tmp.dir/cmake_clean.cmake
.PHONY : contracts/test_api/CMakeFiles/test_api.tmp.dir/clean

contracts/test_api/CMakeFiles/test_api.tmp.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/test_api /home/kcw/build /home/kcw/build/contracts/test_api /home/kcw/build/contracts/test_api/CMakeFiles/test_api.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/test_api/CMakeFiles/test_api.tmp.dir/depend

