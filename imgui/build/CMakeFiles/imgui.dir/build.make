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
CMAKE_SOURCE_DIR = /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/build

# Include any dependencies generated for this target.
include CMakeFiles/imgui.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/imgui.dir/flags.make

CMakeFiles/imgui.dir/imgui.cpp.o: CMakeFiles/imgui.dir/flags.make
CMakeFiles/imgui.dir/imgui.cpp.o: /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/imgui.dir/imgui.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui.cpp.o -c /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui.cpp

CMakeFiles/imgui.dir/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui.cpp > CMakeFiles/imgui.dir/imgui.cpp.i

CMakeFiles/imgui.dir/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui.cpp -o CMakeFiles/imgui.dir/imgui.cpp.s

CMakeFiles/imgui.dir/imgui.cpp.o.requires:
.PHONY : CMakeFiles/imgui.dir/imgui.cpp.o.requires

CMakeFiles/imgui.dir/imgui.cpp.o.provides: CMakeFiles/imgui.dir/imgui.cpp.o.requires
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/imgui.cpp.o.provides.build
.PHONY : CMakeFiles/imgui.dir/imgui.cpp.o.provides

CMakeFiles/imgui.dir/imgui.cpp.o.provides.build: CMakeFiles/imgui.dir/imgui.cpp.o

CMakeFiles/imgui.dir/imgui_draw.cpp.o: CMakeFiles/imgui.dir/flags.make
CMakeFiles/imgui.dir/imgui_draw.cpp.o: /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui_draw.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/imgui.dir/imgui_draw.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui_draw.cpp.o -c /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui_draw.cpp

CMakeFiles/imgui.dir/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_draw.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui_draw.cpp > CMakeFiles/imgui.dir/imgui_draw.cpp.i

CMakeFiles/imgui.dir/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_draw.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui/imgui_draw.cpp -o CMakeFiles/imgui.dir/imgui_draw.cpp.s

CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires:
.PHONY : CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires

CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides: CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides.build
.PHONY : CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides

CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides.build: CMakeFiles/imgui.dir/imgui_draw.cpp.o

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui.cpp.o" \
"CMakeFiles/imgui.dir/imgui_draw.cpp.o"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

libimgui.so: CMakeFiles/imgui.dir/imgui.cpp.o
libimgui.so: CMakeFiles/imgui.dir/imgui_draw.cpp.o
libimgui.so: CMakeFiles/imgui.dir/build.make
libimgui.so: CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libimgui.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/imgui.dir/build: libimgui.so
.PHONY : CMakeFiles/imgui.dir/build

CMakeFiles/imgui.dir/requires: CMakeFiles/imgui.dir/imgui.cpp.o.requires
CMakeFiles/imgui.dir/requires: CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires
.PHONY : CMakeFiles/imgui.dir/requires

CMakeFiles/imgui.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : CMakeFiles/imgui.dir/clean

CMakeFiles/imgui.dir/depend:
	cd /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/src/imgui /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/build /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/build /home/ragnar/Dropbox/datorgrafik/EDAN35_Assignment2/imgui/build/CMakeFiles/imgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/imgui.dir/depend
