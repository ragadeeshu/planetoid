# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/src/glfw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/simple.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/simple.dir/flags.make

examples/CMakeFiles/simple.dir/simple.c.o: examples/CMakeFiles/simple.dir/flags.make
examples/CMakeFiles/simple.dir/simple.c.o: /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/src/glfw/examples/simple.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/simple.dir/simple.c.o"
	cd /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/simple.dir/simple.c.o   -c /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/src/glfw/examples/simple.c

examples/CMakeFiles/simple.dir/simple.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple.dir/simple.c.i"
	cd /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/src/glfw/examples/simple.c > CMakeFiles/simple.dir/simple.c.i

examples/CMakeFiles/simple.dir/simple.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple.dir/simple.c.s"
	cd /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/src/glfw/examples/simple.c -o CMakeFiles/simple.dir/simple.c.s

examples/CMakeFiles/simple.dir/simple.c.o.requires:
.PHONY : examples/CMakeFiles/simple.dir/simple.c.o.requires

examples/CMakeFiles/simple.dir/simple.c.o.provides: examples/CMakeFiles/simple.dir/simple.c.o.requires
	$(MAKE) -f examples/CMakeFiles/simple.dir/build.make examples/CMakeFiles/simple.dir/simple.c.o.provides.build
.PHONY : examples/CMakeFiles/simple.dir/simple.c.o.provides

examples/CMakeFiles/simple.dir/simple.c.o.provides.build: examples/CMakeFiles/simple.dir/simple.c.o

# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/simple.c.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

examples/simple: examples/CMakeFiles/simple.dir/simple.c.o
examples/simple: examples/CMakeFiles/simple.dir/build.make
examples/simple: src/libglfw.so.3.1
examples/simple: /usr/lib/x86_64-linux-gnu/libGL.so
examples/simple: /usr/lib/x86_64-linux-gnu/libm.so
examples/simple: /usr/lib/x86_64-linux-gnu/librt.so
examples/simple: /usr/lib/x86_64-linux-gnu/libm.so
examples/simple: /usr/lib/x86_64-linux-gnu/libX11.so
examples/simple: /usr/lib/x86_64-linux-gnu/libXrandr.so
examples/simple: /usr/lib/x86_64-linux-gnu/libXinerama.so
examples/simple: /usr/lib/x86_64-linux-gnu/libXi.so
examples/simple: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
examples/simple: /usr/lib/x86_64-linux-gnu/libXcursor.so
examples/simple: /usr/lib/x86_64-linux-gnu/libGL.so
examples/simple: examples/CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable simple"
	cd /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/simple.dir/build: examples/simple
.PHONY : examples/CMakeFiles/simple.dir/build

examples/CMakeFiles/simple.dir/requires: examples/CMakeFiles/simple.dir/simple.c.o.requires
.PHONY : examples/CMakeFiles/simple.dir/requires

examples/CMakeFiles/simple.dir/clean:
	cd /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/simple.dir/clean

examples/CMakeFiles/simple.dir/depend:
	cd /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/src/glfw /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/src/glfw/examples /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/examples /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/glfw/build/examples/CMakeFiles/simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/simple.dir/depend

