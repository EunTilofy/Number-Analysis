# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/Programming_assignments/Chapter_5/include/eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build

# Include any dependencies generated for this target.
include test/CMakeFiles/product_trsolve_6.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/product_trsolve_6.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/product_trsolve_6.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/product_trsolve_6.dir/flags.make

test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o: test/CMakeFiles/product_trsolve_6.dir/flags.make
test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o: /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/Programming_assignments/Chapter_5/include/eigen/test/product_trsolve.cpp
test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o: test/CMakeFiles/product_trsolve_6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o"
	cd /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o -MF CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o.d -o CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o -c /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/Programming_assignments/Chapter_5/include/eigen/test/product_trsolve.cpp

test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.i"
	cd /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/Programming_assignments/Chapter_5/include/eigen/test/product_trsolve.cpp > CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.i

test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.s"
	cd /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/Programming_assignments/Chapter_5/include/eigen/test/product_trsolve.cpp -o CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.s

# Object files for target product_trsolve_6
product_trsolve_6_OBJECTS = \
"CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o"

# External object files for target product_trsolve_6
product_trsolve_6_EXTERNAL_OBJECTS =

test/product_trsolve_6: test/CMakeFiles/product_trsolve_6.dir/product_trsolve.cpp.o
test/product_trsolve_6: test/CMakeFiles/product_trsolve_6.dir/build.make
test/product_trsolve_6: test/CMakeFiles/product_trsolve_6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable product_trsolve_6"
	cd /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/product_trsolve_6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/product_trsolve_6.dir/build: test/product_trsolve_6
.PHONY : test/CMakeFiles/product_trsolve_6.dir/build

test/CMakeFiles/product_trsolve_6.dir/clean:
	cd /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/test && $(CMAKE_COMMAND) -P CMakeFiles/product_trsolve_6.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/product_trsolve_6.dir/clean

test/CMakeFiles/product_trsolve_6.dir/depend:
	cd /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/Programming_assignments/Chapter_5/include/eigen /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/Programming_assignments/Chapter_5/include/eigen/test /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/test /Users/pac/Documents/2024-sp/NumPDE/NA_and_NumPDE/build/test/CMakeFiles/product_trsolve_6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/product_trsolve_6.dir/depend
