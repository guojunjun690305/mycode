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
CMAKE_SOURCE_DIR = /home/guo/my_bag/readtxt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/guo/my_bag/readtxt/build

# Include any dependencies generated for this target.
include CMakeFiles/readtxt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/readtxt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/readtxt.dir/flags.make

CMakeFiles/readtxt.dir/src/main.cpp.o: CMakeFiles/readtxt.dir/flags.make
CMakeFiles/readtxt.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guo/my_bag/readtxt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/readtxt.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/readtxt.dir/src/main.cpp.o -c /home/guo/my_bag/readtxt/src/main.cpp

CMakeFiles/readtxt.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/readtxt.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guo/my_bag/readtxt/src/main.cpp > CMakeFiles/readtxt.dir/src/main.cpp.i

CMakeFiles/readtxt.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/readtxt.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guo/my_bag/readtxt/src/main.cpp -o CMakeFiles/readtxt.dir/src/main.cpp.s

CMakeFiles/readtxt.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/readtxt.dir/src/main.cpp.o.requires

CMakeFiles/readtxt.dir/src/main.cpp.o.provides: CMakeFiles/readtxt.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/readtxt.dir/build.make CMakeFiles/readtxt.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/readtxt.dir/src/main.cpp.o.provides

CMakeFiles/readtxt.dir/src/main.cpp.o.provides.build: CMakeFiles/readtxt.dir/src/main.cpp.o


# Object files for target readtxt
readtxt_OBJECTS = \
"CMakeFiles/readtxt.dir/src/main.cpp.o"

# External object files for target readtxt
readtxt_EXTERNAL_OBJECTS =

../bin/readtxt: CMakeFiles/readtxt.dir/src/main.cpp.o
../bin/readtxt: CMakeFiles/readtxt.dir/build.make
../bin/readtxt: CMakeFiles/readtxt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/guo/my_bag/readtxt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/readtxt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/readtxt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/readtxt.dir/build: ../bin/readtxt

.PHONY : CMakeFiles/readtxt.dir/build

CMakeFiles/readtxt.dir/requires: CMakeFiles/readtxt.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/readtxt.dir/requires

CMakeFiles/readtxt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/readtxt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/readtxt.dir/clean

CMakeFiles/readtxt.dir/depend:
	cd /home/guo/my_bag/readtxt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guo/my_bag/readtxt /home/guo/my_bag/readtxt /home/guo/my_bag/readtxt/build /home/guo/my_bag/readtxt/build /home/guo/my_bag/readtxt/build/CMakeFiles/readtxt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/readtxt.dir/depend

