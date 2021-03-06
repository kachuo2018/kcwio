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

# Utility rule file for test.inline.

# Include the progress variables for this target.
include contracts/test.inline/CMakeFiles/test.inline.dir/progress.make

contracts/test.inline/CMakeFiles/test.inline: contracts/test.inline/test.inline.wast.hpp
contracts/test.inline/CMakeFiles/test.inline: contracts/test.inline/test.inline.abi.hpp
contracts/test.inline/CMakeFiles/test.inline: contracts/test.inline/test.inline.wasm


contracts/test.inline/test.inline.wast.hpp: contracts/test.inline/test.inline.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test.inline.wast.hpp"
	cd /home/kcw/build/contracts/test.inline && echo "const char* const test_inline_wast = R\"=====(" > /home/kcw/build/contracts/test.inline/test.inline.wast.hpp
	cd /home/kcw/build/contracts/test.inline && cat /home/kcw/build/contracts/test.inline/test.inline.wast >> /home/kcw/build/contracts/test.inline/test.inline.wast.hpp
	cd /home/kcw/build/contracts/test.inline && echo ")=====\";" >> /home/kcw/build/contracts/test.inline/test.inline.wast.hpp

contracts/test.inline/test.inline.abi.hpp: contracts/test.inline/test.inline.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating test.inline.abi.hpp"
	cd /home/kcw/build/contracts/test.inline && echo "const char* const test_inline_abi = R\"=====(" > /home/kcw/build/contracts/test.inline/test.inline.abi.hpp
	cd /home/kcw/build/contracts/test.inline && cat /home/kcw/build/contracts/test.inline/test.inline.abi >> /home/kcw/build/contracts/test.inline/test.inline.abi.hpp
	cd /home/kcw/build/contracts/test.inline && echo ")=====\";" >> /home/kcw/build/contracts/test.inline/test.inline.abi.hpp

contracts/test.inline/test.inline.wasm: contracts/test.inline/test.inline.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM test.inline.wasm"
	cd /home/kcw/build/contracts/test.inline && /home/kcw/build/libraries/wasm-jit/Source/Programs/kcwio-wast2wasm /home/kcw/build/contracts/test.inline/test.inline.wast /home/kcw/build/contracts/test.inline/test.inline.wasm -n

contracts/test.inline/test.inline.wast: contracts/test.inline/test.inline.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST test.inline.wast"
	cd /home/kcw/build/contracts/test.inline && /home/kcw/build/externals/binaryen/bin/kcwio-s2wasm -o /home/kcw/build/contracts/test.inline/test.inline.wast -s 10240 test.inline.s

contracts/test.inline/test.inline.s: contracts/test.inline/test.inline.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly test.inline.s"
	cd /home/kcw/build/contracts/test.inline && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o test.inline.s test.inline.bc

contracts/test.inline/test.inline.bc: contracts/test.inline/test.inline.cpp.bc
contracts/test.inline/test.inline.bc: contracts/libc++/libc++.bc
contracts/test.inline/test.inline.bc: contracts/musl/libc.bc
contracts/test.inline/test.inline.bc: contracts/kcwiolib/kcwiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable test.inline.bc"
	cd /home/kcw/build/contracts/test.inline && /root/opt/wasm/bin/llvm-link -only-needed -o test.inline.bc test.inline.cpp.bc /home/kcw/build/contracts/libc++/libc++.bc /home/kcw/build/contracts/musl/libc.bc /home/kcw/build/contracts/kcwiolib/kcwiolib.bc

contracts/test.inline/test.inline.cpp.bc: ../contracts/test.inline/test.inline.cpp
contracts/test.inline/test.inline.cpp.bc: ../contracts/test.inline/test.inline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode test.inline.cpp.bc"
	cd /home/kcw/build/contracts/test.inline && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/kcw/contracts/test.inline/test.inline.cpp -o test.inline.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/kcw/contracts -I /home/kcw/build/contracts -I /home/kcw/externals/magic_get/include -isystem /home/kcw/contracts/libc++/upstream/include -isystem /home/kcw/contracts/musl/upstream/include -isystem /root/opt/boost/include

test.inline: contracts/test.inline/CMakeFiles/test.inline
test.inline: contracts/test.inline/test.inline.wast.hpp
test.inline: contracts/test.inline/test.inline.abi.hpp
test.inline: contracts/test.inline/test.inline.wasm
test.inline: contracts/test.inline/test.inline.wast
test.inline: contracts/test.inline/test.inline.s
test.inline: contracts/test.inline/test.inline.bc
test.inline: contracts/test.inline/test.inline.cpp.bc
test.inline: contracts/test.inline/CMakeFiles/test.inline.dir/build.make

.PHONY : test.inline

# Rule to build all files generated by this target.
contracts/test.inline/CMakeFiles/test.inline.dir/build: test.inline

.PHONY : contracts/test.inline/CMakeFiles/test.inline.dir/build

contracts/test.inline/CMakeFiles/test.inline.dir/clean:
	cd /home/kcw/build/contracts/test.inline && $(CMAKE_COMMAND) -P CMakeFiles/test.inline.dir/cmake_clean.cmake
.PHONY : contracts/test.inline/CMakeFiles/test.inline.dir/clean

contracts/test.inline/CMakeFiles/test.inline.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/test.inline /home/kcw/build /home/kcw/build/contracts/test.inline /home/kcw/build/contracts/test.inline/CMakeFiles/test.inline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/test.inline/CMakeFiles/test.inline.dir/depend

