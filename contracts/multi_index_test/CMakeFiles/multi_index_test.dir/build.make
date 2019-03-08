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

# Utility rule file for multi_index_test.

# Include the progress variables for this target.
include contracts/multi_index_test/CMakeFiles/multi_index_test.dir/progress.make

contracts/multi_index_test/CMakeFiles/multi_index_test: contracts/multi_index_test/multi_index_test.wast.hpp
contracts/multi_index_test/CMakeFiles/multi_index_test: contracts/multi_index_test/multi_index_test.abi.hpp
contracts/multi_index_test/CMakeFiles/multi_index_test: contracts/multi_index_test/multi_index_test.wasm


contracts/multi_index_test/multi_index_test.wast.hpp: contracts/multi_index_test/multi_index_test.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating multi_index_test.wast.hpp"
	cd /home/kcw/build/contracts/multi_index_test && echo "const char* const multi_index_test_wast = R\"=====(" > /home/kcw/build/contracts/multi_index_test/multi_index_test.wast.hpp
	cd /home/kcw/build/contracts/multi_index_test && cat /home/kcw/build/contracts/multi_index_test/multi_index_test.wast >> /home/kcw/build/contracts/multi_index_test/multi_index_test.wast.hpp
	cd /home/kcw/build/contracts/multi_index_test && echo ")=====\";" >> /home/kcw/build/contracts/multi_index_test/multi_index_test.wast.hpp

contracts/multi_index_test/multi_index_test.abi.hpp: contracts/multi_index_test/multi_index_test.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating multi_index_test.abi.hpp"
	cd /home/kcw/build/contracts/multi_index_test && echo "const char* const multi_index_test_abi = R\"=====(" > /home/kcw/build/contracts/multi_index_test/multi_index_test.abi.hpp
	cd /home/kcw/build/contracts/multi_index_test && cat /home/kcw/build/contracts/multi_index_test/multi_index_test.abi >> /home/kcw/build/contracts/multi_index_test/multi_index_test.abi.hpp
	cd /home/kcw/build/contracts/multi_index_test && echo ")=====\";" >> /home/kcw/build/contracts/multi_index_test/multi_index_test.abi.hpp

contracts/multi_index_test/multi_index_test.wasm: contracts/multi_index_test/multi_index_test.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM multi_index_test.wasm"
	cd /home/kcw/build/contracts/multi_index_test && /home/kcw/build/libraries/wasm-jit/Source/Programs/kcwio-wast2wasm /home/kcw/build/contracts/multi_index_test/multi_index_test.wast /home/kcw/build/contracts/multi_index_test/multi_index_test.wasm -n

contracts/multi_index_test/multi_index_test.wast: contracts/multi_index_test/multi_index_test.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST multi_index_test.wast"
	cd /home/kcw/build/contracts/multi_index_test && /home/kcw/build/externals/binaryen/bin/kcwio-s2wasm -o /home/kcw/build/contracts/multi_index_test/multi_index_test.wast -s 10240 multi_index_test.s

contracts/multi_index_test/multi_index_test.s: contracts/multi_index_test/multi_index_test.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly multi_index_test.s"
	cd /home/kcw/build/contracts/multi_index_test && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o multi_index_test.s multi_index_test.bc

contracts/multi_index_test/multi_index_test.bc: contracts/multi_index_test/multi_index_test.cpp.bc
contracts/multi_index_test/multi_index_test.bc: contracts/libc++/libc++.bc
contracts/multi_index_test/multi_index_test.bc: contracts/musl/libc.bc
contracts/multi_index_test/multi_index_test.bc: contracts/kcwiolib/kcwiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable multi_index_test.bc"
	cd /home/kcw/build/contracts/multi_index_test && /root/opt/wasm/bin/llvm-link -only-needed -o multi_index_test.bc multi_index_test.cpp.bc /home/kcw/build/contracts/libc++/libc++.bc /home/kcw/build/contracts/musl/libc.bc /home/kcw/build/contracts/kcwiolib/kcwiolib.bc

contracts/multi_index_test/multi_index_test.cpp.bc: ../contracts/multi_index_test/multi_index_test.cpp
contracts/multi_index_test/multi_index_test.cpp.bc: ../contracts/multi_index_test/multi_index_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kcw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode multi_index_test.cpp.bc"
	cd /home/kcw/build/contracts/multi_index_test && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/kcw/contracts/multi_index_test/multi_index_test.cpp -o multi_index_test.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/kcw/contracts -I /home/kcw/build/contracts -I /home/kcw/externals/magic_get/include -isystem /home/kcw/contracts/libc++/upstream/include -isystem /home/kcw/contracts/musl/upstream/include -isystem /root/opt/boost/include

multi_index_test: contracts/multi_index_test/CMakeFiles/multi_index_test
multi_index_test: contracts/multi_index_test/multi_index_test.wast.hpp
multi_index_test: contracts/multi_index_test/multi_index_test.abi.hpp
multi_index_test: contracts/multi_index_test/multi_index_test.wasm
multi_index_test: contracts/multi_index_test/multi_index_test.wast
multi_index_test: contracts/multi_index_test/multi_index_test.s
multi_index_test: contracts/multi_index_test/multi_index_test.bc
multi_index_test: contracts/multi_index_test/multi_index_test.cpp.bc
multi_index_test: contracts/multi_index_test/CMakeFiles/multi_index_test.dir/build.make

.PHONY : multi_index_test

# Rule to build all files generated by this target.
contracts/multi_index_test/CMakeFiles/multi_index_test.dir/build: multi_index_test

.PHONY : contracts/multi_index_test/CMakeFiles/multi_index_test.dir/build

contracts/multi_index_test/CMakeFiles/multi_index_test.dir/clean:
	cd /home/kcw/build/contracts/multi_index_test && $(CMAKE_COMMAND) -P CMakeFiles/multi_index_test.dir/cmake_clean.cmake
.PHONY : contracts/multi_index_test/CMakeFiles/multi_index_test.dir/clean

contracts/multi_index_test/CMakeFiles/multi_index_test.dir/depend:
	cd /home/kcw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kcw /home/kcw/contracts/multi_index_test /home/kcw/build /home/kcw/build/contracts/multi_index_test /home/kcw/build/contracts/multi_index_test/CMakeFiles/multi_index_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/multi_index_test/CMakeFiles/multi_index_test.dir/depend

