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

# Utility rule file for commodity.

# Include the progress variables for this target.
include contracts/commodity/CMakeFiles/commodity.dir/progress.make

contracts/commodity/CMakeFiles/commodity: contracts/commodity/commodity.wast.hpp
contracts/commodity/CMakeFiles/commodity: contracts/commodity/commodity.abi.hpp
contracts/commodity/CMakeFiles/commodity: contracts/commodity/commodity.wasm


contracts/commodity/commodity.wast.hpp: contracts/commodity/commodity.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating commodity.wast.hpp"
	cd /home/kcw/build/contracts/commodity && echo "const char* const commodity_wast = R\"=====(" > /home/kcw/build/contracts/commodity/commodity.wast.hpp
	cd /home/kcw/build/contracts/commodity && cat /home/kcw/build/contracts/commodity/commodity.wast >> /home/kcw/build/contracts/commodity/commodity.wast.hpp
	cd /home/kcw/build/contracts/commodity && echo ")=====\";" >> /home/kcw/build/contracts/commodity/commodity.wast.hpp

contracts/commodity/commodity.abi.hpp: contracts/commodity/commodity.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating commodity.abi.hpp"
	cd /home/kcw/build/contracts/commodity && echo "const char* const commodity_abi = R\"=====(" > /home/kcw/build/contracts/commodity/commodity.abi.hpp
	cd /home/kcw/build/contracts/commodity && cat /home/kcw/build/contracts/commodity/commodity.abi >> /home/kcw/build/contracts/commodity/commodity.abi.hpp
	cd /home/kcw/build/contracts/commodity && echo ")=====\";" >> /home/kcw/build/contracts/commodity/commodity.abi.hpp

contracts/commodity/commodity.wasm: contracts/commodity/commodity.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM commodity.wasm"
	cd /home/kcw/build/contracts/commodity && /home/kcw/build/libraries/wasm-jit/Source/Programs/kcwio-wast2wasm /home/kcw/build/contracts/commodity/commodity.wast /home/kcw/build/contracts/commodity/commodity.wasm -n

contracts/commodity/commodity.wast: contracts/commodity/commodity.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST commodity.wast"
	cd /home/kcw/build/contracts/commodity && /home/kcw/build/externals/binaryen/bin/kcwio-s2wasm -o /home/kcw/build/contracts/commodity/commodity.wast -s 10240 commodity.s

contracts/commodity/commodity.s: contracts/commodity/commodity.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly commodity.s"
	cd /home/kcw/build/contracts/commodity && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o commodity.s commodity.bc

contracts/commodity/commodity.bc: contracts/commodity/commodity.cpp.bc
contracts/commodity/commodity.bc: contracts/musl/libc.bc
contracts/commodity/commodity.bc: contracts/libc++/libc++.bc
contracts/commodity/commodity.bc: contracts/kcwiolib/kcwiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable commodity.bc"
	cd /home/kcw/build/contracts/commodity && /root/opt/wasm/bin/llvm-link -only-needed -o commodity.bc commodity.cpp.bc /home/kcw/build/contracts/musl/libc.bc /home/kcw/build/contracts/libc++/libc++.bc /home/kcw/build/contracts/kcwiolib/kcwiolib.bc

contracts/commodity/commodity.cpp.bc: ../contracts/commodity/commodity.cpp
contracts/commodity/commodity.cpp.bc: ../contracts/commodity/commodity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode commodity.cpp.bc"
	cd /home/kcw/build/contracts/commodity && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/kcw/contracts/commodity/commodity.cpp -o commodity.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/kcw/contracts -I /home/kcw/build/contracts -I /home/kcw/externals/magic_get/include -isystem /home/kcw/contracts/libc++/upstream/include -isystem /home/kcw/contracts/musl/upstream/include -isystem /root/opt/boost/include

commodity: contracts/commodity/CMakeFiles/commodity
commodity: contracts/commodity/commodity.wast.hpp
commodity: contracts/commodity/commodity.abi.hpp
commodity: contracts/commodity/commodity.wasm
commodity: contracts/commodity/commodity.wast
commodity: contracts/commodity/commodity.s
commodity: contracts/commodity/commodity.bc
commodity: contracts/commodity/commodity.cpp.bc
commodity: contracts/commodity/CMakeFiles/commodity.dir/build.make

.PHONY : commodity

# Rule to build all files generated by this target.
contracts/commodity/CMakeFiles/commodity.dir/build: commodity

.PHONY : contracts/commodity/CMakeFiles/commodity.dir/build

contracts/commodity/CMakeFiles/commodity.dir/clean:
	cd /home/kcw/build/contracts/commodity && $(CMAKE_COMMAND) -P CMakeFiles/commodity.dir/cmake_clean.cmake
.PHONY : contracts/commodity/CMakeFiles/commodity.dir/clean

contracts/commodity/CMakeFiles/commodity.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/commodity /home/kcw/build /home/kcw/build/contracts/commodity /home/kcw/build/contracts/commodity/CMakeFiles/commodity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/commodity/CMakeFiles/commodity.dir/depend

