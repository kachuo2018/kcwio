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
include contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/flags.make

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o: contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/flags.make
contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o: ../contracts/kcwio.msig/kcwio.msig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o"
	cd /home/kcw/build/contracts/kcwio.msig && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o -c /home/kcw/contracts/kcwio.msig/kcwio.msig.cpp

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.i"
	cd /home/kcw/build/contracts/kcwio.msig && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kcw/contracts/kcwio.msig/kcwio.msig.cpp > CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.i

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.s"
	cd /home/kcw/build/contracts/kcwio.msig && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kcw/contracts/kcwio.msig/kcwio.msig.cpp -o CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.s

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.requires:

.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.requires

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.provides: contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.requires
	$(MAKE) -f contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/build.make contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.provides.build
.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.provides

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.provides.build: contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o


# Object files for target kcwio.msig.tmp
kcwio_msig_tmp_OBJECTS = \
"CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o"

# External object files for target kcwio.msig.tmp
kcwio_msig_tmp_EXTERNAL_OBJECTS =

contracts/kcwio.msig/kcwio.msig.tmp: contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o
contracts/kcwio.msig/kcwio.msig.tmp: contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/build.make
contracts/kcwio.msig/kcwio.msig.tmp: contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kcwio.msig.tmp"
	cd /home/kcw/build/contracts/kcwio.msig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kcwio.msig.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/build: contracts/kcwio.msig/kcwio.msig.tmp

.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/build

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/requires: contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/kcwio.msig.cpp.o.requires

.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/requires

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/clean:
	cd /home/kcw/build/contracts/kcwio.msig && $(CMAKE_COMMAND) -P CMakeFiles/kcwio.msig.tmp.dir/cmake_clean.cmake
.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/clean

contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/kcwio.msig /home/kcw/build /home/kcw/build/contracts/kcwio.msig /home/kcw/build/contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.tmp.dir/depend

