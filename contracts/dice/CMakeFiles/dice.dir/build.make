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

# Utility rule file for dice.

# Include the progress variables for this target.
include contracts/dice/CMakeFiles/dice.dir/progress.make

contracts/dice/CMakeFiles/dice: contracts/dice/dice.wast.hpp
contracts/dice/CMakeFiles/dice: contracts/dice/dice.abi.hpp
contracts/dice/CMakeFiles/dice: contracts/dice/dice.wasm


contracts/dice/dice.wast.hpp: contracts/dice/dice.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dice.wast.hpp"
	cd /home/kcw/build/contracts/dice && echo "const char* const dice_wast = R\"=====(" > /home/kcw/build/contracts/dice/dice.wast.hpp
	cd /home/kcw/build/contracts/dice && cat /home/kcw/build/contracts/dice/dice.wast >> /home/kcw/build/contracts/dice/dice.wast.hpp
	cd /home/kcw/build/contracts/dice && echo ")=====\";" >> /home/kcw/build/contracts/dice/dice.wast.hpp

contracts/dice/dice.abi.hpp: contracts/dice/dice.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating dice.abi.hpp"
	cd /home/kcw/build/contracts/dice && echo "const char* const dice_abi = R\"=====(" > /home/kcw/build/contracts/dice/dice.abi.hpp
	cd /home/kcw/build/contracts/dice && cat /home/kcw/build/contracts/dice/dice.abi >> /home/kcw/build/contracts/dice/dice.abi.hpp
	cd /home/kcw/build/contracts/dice && echo ")=====\";" >> /home/kcw/build/contracts/dice/dice.abi.hpp

contracts/dice/dice.wasm: contracts/dice/dice.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM dice.wasm"
	cd /home/kcw/build/contracts/dice && /home/kcw/build/libraries/wasm-jit/Source/Programs/kcwio-wast2wasm /home/kcw/build/contracts/dice/dice.wast /home/kcw/build/contracts/dice/dice.wasm -n

contracts/dice/dice.wast: contracts/dice/dice.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST dice.wast"
	cd /home/kcw/build/contracts/dice && /home/kcw/build/externals/binaryen/bin/kcwio-s2wasm -o /home/kcw/build/contracts/dice/dice.wast -s 10240 dice.s

contracts/dice/dice.s: contracts/dice/dice.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly dice.s"
	cd /home/kcw/build/contracts/dice && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o dice.s dice.bc

contracts/dice/dice.bc: contracts/dice/dice.cpp.bc
contracts/dice/dice.bc: contracts/libc++/libc++.bc
contracts/dice/dice.bc: contracts/musl/libc.bc
contracts/dice/dice.bc: contracts/kcwiolib/kcwiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable dice.bc"
	cd /home/kcw/build/contracts/dice && /root/opt/wasm/bin/llvm-link -only-needed -o dice.bc dice.cpp.bc /home/kcw/build/contracts/libc++/libc++.bc /home/kcw/build/contracts/musl/libc.bc /home/kcw/build/contracts/kcwiolib/kcwiolib.bc

contracts/dice/dice.cpp.bc: ../contracts/dice/dice.cpp
contracts/dice/dice.cpp.bc: ../contracts/dice/dice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode dice.cpp.bc"
	cd /home/kcw/build/contracts/dice && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/kcw/contracts/dice/dice.cpp -o dice.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/kcw/contracts -I /home/kcw/build/contracts -I /home/kcw/externals/magic_get/include -isystem /home/kcw/contracts/libc++/upstream/include -isystem /home/kcw/contracts/musl/upstream/include -isystem /root/opt/boost/include

dice: contracts/dice/CMakeFiles/dice
dice: contracts/dice/dice.wast.hpp
dice: contracts/dice/dice.abi.hpp
dice: contracts/dice/dice.wasm
dice: contracts/dice/dice.wast
dice: contracts/dice/dice.s
dice: contracts/dice/dice.bc
dice: contracts/dice/dice.cpp.bc
dice: contracts/dice/CMakeFiles/dice.dir/build.make

.PHONY : dice

# Rule to build all files generated by this target.
contracts/dice/CMakeFiles/dice.dir/build: dice

.PHONY : contracts/dice/CMakeFiles/dice.dir/build

contracts/dice/CMakeFiles/dice.dir/clean:
	cd /home/kcw/build/contracts/dice && $(CMAKE_COMMAND) -P CMakeFiles/dice.dir/cmake_clean.cmake
.PHONY : contracts/dice/CMakeFiles/dice.dir/clean

contracts/dice/CMakeFiles/dice.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/dice /home/kcw/build /home/kcw/build/contracts/dice /home/kcw/build/contracts/dice/CMakeFiles/dice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/dice/CMakeFiles/dice.dir/depend

