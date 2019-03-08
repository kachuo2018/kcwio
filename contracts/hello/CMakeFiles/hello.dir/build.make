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

# Utility rule file for hello.

# Include the progress variables for this target.
include contracts/hello/CMakeFiles/hello.dir/progress.make

contracts/hello/CMakeFiles/hello: contracts/hello/hello.wast.hpp
contracts/hello/CMakeFiles/hello: contracts/hello/hello.abi.hpp
contracts/hello/CMakeFiles/hello: contracts/hello/hello.wasm


contracts/hello/hello.wast.hpp: contracts/hello/hello.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating hello.wast.hpp"
	cd /home/kcw/build/contracts/hello && echo "const char* const hello_wast = R\"=====(" > /home/kcw/build/contracts/hello/hello.wast.hpp
	cd /home/kcw/build/contracts/hello && cat /home/kcw/build/contracts/hello/hello.wast >> /home/kcw/build/contracts/hello/hello.wast.hpp
	cd /home/kcw/build/contracts/hello && echo ")=====\";" >> /home/kcw/build/contracts/hello/hello.wast.hpp

contracts/hello/hello.abi.hpp: contracts/hello/hello.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating hello.abi.hpp"
	cd /home/kcw/build/contracts/hello && echo "const char* const hello_abi = R\"=====(" > /home/kcw/build/contracts/hello/hello.abi.hpp
	cd /home/kcw/build/contracts/hello && cat /home/kcw/build/contracts/hello/hello.abi >> /home/kcw/build/contracts/hello/hello.abi.hpp
	cd /home/kcw/build/contracts/hello && echo ")=====\";" >> /home/kcw/build/contracts/hello/hello.abi.hpp

contracts/hello/hello.wasm: contracts/hello/hello.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM hello.wasm"
	cd /home/kcw/build/contracts/hello && /home/kcw/build/libraries/wasm-jit/Source/Programs/kcwio-wast2wasm /home/kcw/build/contracts/hello/hello.wast /home/kcw/build/contracts/hello/hello.wasm -n

contracts/hello/hello.wast: contracts/hello/hello.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST hello.wast"
	cd /home/kcw/build/contracts/hello && /home/kcw/build/externals/binaryen/bin/kcwio-s2wasm -o /home/kcw/build/contracts/hello/hello.wast -s 10240 hello.s

contracts/hello/hello.s: contracts/hello/hello.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly hello.s"
	cd /home/kcw/build/contracts/hello && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o hello.s hello.bc

contracts/hello/hello.bc: contracts/hello/hello.cpp.bc
contracts/hello/hello.bc: contracts/musl/libc.bc
contracts/hello/hello.bc: contracts/libc++/libc++.bc
contracts/hello/hello.bc: contracts/kcwiolib/kcwiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable hello.bc"
	cd /home/kcw/build/contracts/hello && /root/opt/wasm/bin/llvm-link -only-needed -o hello.bc hello.cpp.bc /home/kcw/build/contracts/musl/libc.bc /home/kcw/build/contracts/libc++/libc++.bc /home/kcw/build/contracts/kcwiolib/kcwiolib.bc

contracts/hello/hello.cpp.bc: ../contracts/hello/hello.cpp
contracts/hello/hello.cpp.bc: ../contracts/hello/hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode hello.cpp.bc"
	cd /home/kcw/build/contracts/hello && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/kcw/contracts/hello/hello.cpp -o hello.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/kcw/contracts -I /home/kcw/build/contracts -I /home/kcw/externals/magic_get/include -isystem /home/kcw/contracts/libc++/upstream/include -isystem /home/kcw/contracts/musl/upstream/include -isystem /root/opt/boost/include

hello: contracts/hello/CMakeFiles/hello
hello: contracts/hello/hello.wast.hpp
hello: contracts/hello/hello.abi.hpp
hello: contracts/hello/hello.wasm
hello: contracts/hello/hello.wast
hello: contracts/hello/hello.s
hello: contracts/hello/hello.bc
hello: contracts/hello/hello.cpp.bc
hello: contracts/hello/CMakeFiles/hello.dir/build.make

.PHONY : hello

# Rule to build all files generated by this target.
contracts/hello/CMakeFiles/hello.dir/build: hello

.PHONY : contracts/hello/CMakeFiles/hello.dir/build

contracts/hello/CMakeFiles/hello.dir/clean:
	cd /home/kcw/build/contracts/hello && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : contracts/hello/CMakeFiles/hello.dir/clean

contracts/hello/CMakeFiles/hello.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/hello /home/kcw/build /home/kcw/build/contracts/hello /home/kcw/build/contracts/hello/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/hello/CMakeFiles/hello.dir/depend

