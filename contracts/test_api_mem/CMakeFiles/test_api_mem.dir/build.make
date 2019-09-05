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

# Utility rule file for test_api_mem.

# Include the progress variables for this target.
include contracts/test_api_mem/CMakeFiles/test_api_mem.dir/progress.make

contracts/test_api_mem/CMakeFiles/test_api_mem: contracts/test_api_mem/test_api_mem.wast.hpp
contracts/test_api_mem/CMakeFiles/test_api_mem: contracts/test_api_mem/test_api_mem.wasm


contracts/test_api_mem/test_api_mem.wast.hpp: contracts/test_api_mem/test_api_mem.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_api_mem.wast.hpp"
	cd /home/kcw/build/contracts/test_api_mem && echo "const char* const test_api_mem_wast = R\"=====(" > /home/kcw/build/contracts/test_api_mem/test_api_mem.wast.hpp
	cd /home/kcw/build/contracts/test_api_mem && cat /home/kcw/build/contracts/test_api_mem/test_api_mem.wast >> /home/kcw/build/contracts/test_api_mem/test_api_mem.wast.hpp
	cd /home/kcw/build/contracts/test_api_mem && echo ")=====\";" >> /home/kcw/build/contracts/test_api_mem/test_api_mem.wast.hpp

contracts/test_api_mem/test_api_mem.wasm: contracts/test_api_mem/test_api_mem.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating WASM test_api_mem.wasm"
	cd /home/kcw/build/contracts/test_api_mem && /home/kcw/build/libraries/wasm-jit/Source/Programs/kcwio-wast2wasm /home/kcw/build/contracts/test_api_mem/test_api_mem.wast /home/kcw/build/contracts/test_api_mem/test_api_mem.wasm -n

contracts/test_api_mem/test_api_mem.wast: contracts/test_api_mem/test_api_mem.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WAST test_api_mem.wast"
	cd /home/kcw/build/contracts/test_api_mem && /home/kcw/build/externals/binaryen/bin/kcwio-s2wasm -o /home/kcw/build/contracts/test_api_mem/test_api_mem.wast -s 10240 -m 1048576 test_api_mem.s

contracts/test_api_mem/test_api_mem.s: contracts/test_api_mem/test_api_mem.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating textual assembly test_api_mem.s"
	cd /home/kcw/build/contracts/test_api_mem && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o test_api_mem.s test_api_mem.bc

contracts/test_api_mem/test_api_mem.bc: contracts/test_api_mem/test_api_mem.cpp.bc
contracts/test_api_mem/test_api_mem.bc: contracts/kcwiolib/kcwiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking LLVM bitcode executable test_api_mem.bc"
	cd /home/kcw/build/contracts/test_api_mem && /root/opt/wasm/bin/llvm-link -only-needed -o test_api_mem.bc test_api_mem.cpp.bc /home/kcw/build/contracts/kcwiolib/kcwiolib.bc

contracts/test_api_mem/test_api_mem.cpp.bc: ../contracts/test_api_mem/test_api_mem.cpp
contracts/test_api_mem/test_api_mem.cpp.bc: ../contracts/test_api_mem/test_api_mem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building LLVM bitcode test_api_mem.cpp.bc"
	cd /home/kcw/build/contracts/test_api_mem && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/kcw/contracts/test_api_mem/test_api_mem.cpp -o test_api_mem.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/kcw/contracts -I /home/kcw/build/contracts -I /home/kcw/externals/magic_get/include -isystem /home/kcw/contracts/libc++/upstream/include -isystem /home/kcw/contracts/musl/upstream/include -isystem /root/opt/boost/include

test_api_mem: contracts/test_api_mem/CMakeFiles/test_api_mem
test_api_mem: contracts/test_api_mem/test_api_mem.wast.hpp
test_api_mem: contracts/test_api_mem/test_api_mem.wasm
test_api_mem: contracts/test_api_mem/test_api_mem.wast
test_api_mem: contracts/test_api_mem/test_api_mem.s
test_api_mem: contracts/test_api_mem/test_api_mem.bc
test_api_mem: contracts/test_api_mem/test_api_mem.cpp.bc
test_api_mem: contracts/test_api_mem/CMakeFiles/test_api_mem.dir/build.make

.PHONY : test_api_mem

# Rule to build all files generated by this target.
contracts/test_api_mem/CMakeFiles/test_api_mem.dir/build: test_api_mem

.PHONY : contracts/test_api_mem/CMakeFiles/test_api_mem.dir/build

contracts/test_api_mem/CMakeFiles/test_api_mem.dir/clean:
	cd /home/kcw/build/contracts/test_api_mem && $(CMAKE_COMMAND) -P CMakeFiles/test_api_mem.dir/cmake_clean.cmake
.PHONY : contracts/test_api_mem/CMakeFiles/test_api_mem.dir/clean

contracts/test_api_mem/CMakeFiles/test_api_mem.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/test_api_mem /home/kcw/build /home/kcw/build/contracts/test_api_mem /home/kcw/build/contracts/test_api_mem/CMakeFiles/test_api_mem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/test_api_mem/CMakeFiles/test_api_mem.dir/depend
