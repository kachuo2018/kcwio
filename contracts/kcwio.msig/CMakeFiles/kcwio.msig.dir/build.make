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

# Utility rule file for kcwio.msig.

# Include the progress variables for this target.
include contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/progress.make

contracts/kcwio.msig/CMakeFiles/kcwio.msig: contracts/kcwio.msig/kcwio.msig.wast.hpp
contracts/kcwio.msig/CMakeFiles/kcwio.msig: contracts/kcwio.msig/kcwio.msig.abi.hpp
contracts/kcwio.msig/CMakeFiles/kcwio.msig: contracts/kcwio.msig/kcwio.msig.wasm


contracts/kcwio.msig/kcwio.msig.wast.hpp: contracts/kcwio.msig/kcwio.msig.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating kcwio.msig.wast.hpp"
	cd /home/kcw/build/contracts/kcwio.msig && echo "const char* const kcwio_msig_wast = R\"=====(" > /home/kcw/build/contracts/kcwio.msig/kcwio.msig.wast.hpp
	cd /home/kcw/build/contracts/kcwio.msig && cat /home/kcw/build/contracts/kcwio.msig/kcwio.msig.wast >> /home/kcw/build/contracts/kcwio.msig/kcwio.msig.wast.hpp
	cd /home/kcw/build/contracts/kcwio.msig && echo ")=====\";" >> /home/kcw/build/contracts/kcwio.msig/kcwio.msig.wast.hpp

contracts/kcwio.msig/kcwio.msig.abi.hpp: contracts/kcwio.msig/kcwio.msig.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating kcwio.msig.abi.hpp"
	cd /home/kcw/build/contracts/kcwio.msig && echo "const char* const kcwio_msig_abi = R\"=====(" > /home/kcw/build/contracts/kcwio.msig/kcwio.msig.abi.hpp
	cd /home/kcw/build/contracts/kcwio.msig && cat /home/kcw/build/contracts/kcwio.msig/kcwio.msig.abi >> /home/kcw/build/contracts/kcwio.msig/kcwio.msig.abi.hpp
	cd /home/kcw/build/contracts/kcwio.msig && echo ")=====\";" >> /home/kcw/build/contracts/kcwio.msig/kcwio.msig.abi.hpp

contracts/kcwio.msig/kcwio.msig.wasm: contracts/kcwio.msig/kcwio.msig.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM kcwio.msig.wasm"
	cd /home/kcw/build/contracts/kcwio.msig && /home/kcw/build/libraries/wasm-jit/Source/Programs/kcwio-wast2wasm /home/kcw/build/contracts/kcwio.msig/kcwio.msig.wast /home/kcw/build/contracts/kcwio.msig/kcwio.msig.wasm -n

contracts/kcwio.msig/kcwio.msig.wast: contracts/kcwio.msig/kcwio.msig.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST kcwio.msig.wast"
	cd /home/kcw/build/contracts/kcwio.msig && /home/kcw/build/externals/binaryen/bin/kcwio-s2wasm -o /home/kcw/build/contracts/kcwio.msig/kcwio.msig.wast -s 10240 kcwio.msig.s

contracts/kcwio.msig/kcwio.msig.s: contracts/kcwio.msig/kcwio.msig.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly kcwio.msig.s"
	cd /home/kcw/build/contracts/kcwio.msig && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o kcwio.msig.s kcwio.msig.bc

contracts/kcwio.msig/kcwio.msig.bc: contracts/kcwio.msig/kcwio.msig.cpp.bc
contracts/kcwio.msig/kcwio.msig.bc: contracts/libc++/libc++.bc
contracts/kcwio.msig/kcwio.msig.bc: contracts/musl/libc.bc
contracts/kcwio.msig/kcwio.msig.bc: contracts/kcwiolib/kcwiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable kcwio.msig.bc"
	cd /home/kcw/build/contracts/kcwio.msig && /root/opt/wasm/bin/llvm-link -only-needed -o kcwio.msig.bc kcwio.msig.cpp.bc /home/kcw/build/contracts/libc++/libc++.bc /home/kcw/build/contracts/musl/libc.bc /home/kcw/build/contracts/kcwiolib/kcwiolib.bc

contracts/kcwio.msig/kcwio.msig.cpp.bc: ../contracts/kcwio.msig/kcwio.msig.cpp
contracts/kcwio.msig/kcwio.msig.cpp.bc: ../contracts/kcwio.msig/kcwio.msig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode kcwio.msig.cpp.bc"
	cd /home/kcw/build/contracts/kcwio.msig && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/kcw/contracts/kcwio.msig/kcwio.msig.cpp -o kcwio.msig.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/kcw/contracts -I /home/kcw/build/contracts -I /home/kcw/externals/magic_get/include -isystem /home/kcw/contracts/libc++/upstream/include -isystem /home/kcw/contracts/musl/upstream/include -isystem /root/opt/boost/include

kcwio.msig: contracts/kcwio.msig/CMakeFiles/kcwio.msig
kcwio.msig: contracts/kcwio.msig/kcwio.msig.wast.hpp
kcwio.msig: contracts/kcwio.msig/kcwio.msig.abi.hpp
kcwio.msig: contracts/kcwio.msig/kcwio.msig.wasm
kcwio.msig: contracts/kcwio.msig/kcwio.msig.wast
kcwio.msig: contracts/kcwio.msig/kcwio.msig.s
kcwio.msig: contracts/kcwio.msig/kcwio.msig.bc
kcwio.msig: contracts/kcwio.msig/kcwio.msig.cpp.bc
kcwio.msig: contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/build.make

.PHONY : kcwio.msig

# Rule to build all files generated by this target.
contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/build: kcwio.msig

.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/build

contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/clean:
	cd /home/kcw/build/contracts/kcwio.msig && $(CMAKE_COMMAND) -P CMakeFiles/kcwio.msig.dir/cmake_clean.cmake
.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/clean

contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/kcwio.msig /home/kcw/build /home/kcw/build/contracts/kcwio.msig /home/kcw/build/contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/kcwio.msig/CMakeFiles/kcwio.msig.dir/depend
