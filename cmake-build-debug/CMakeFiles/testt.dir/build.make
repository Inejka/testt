# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\cici+\testt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\cici+\testt\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/testt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testt.dir/flags.make

CMakeFiles/testt.dir/main.cpp.obj: CMakeFiles/testt.dir/flags.make
CMakeFiles/testt.dir/main.cpp.obj: CMakeFiles/testt.dir/includes_CXX.rsp
CMakeFiles/testt.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\cici+\testt\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testt.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\testt.dir\main.cpp.obj -c D:\cici+\testt\main.cpp

CMakeFiles/testt.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testt.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cici+\testt\main.cpp > CMakeFiles\testt.dir\main.cpp.i

CMakeFiles/testt.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testt.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cici+\testt\main.cpp -o CMakeFiles\testt.dir\main.cpp.s

# Object files for target testt
testt_OBJECTS = \
"CMakeFiles/testt.dir/main.cpp.obj"

# External object files for target testt
testt_EXTERNAL_OBJECTS =

testt.exe: CMakeFiles/testt.dir/main.cpp.obj
testt.exe: CMakeFiles/testt.dir/build.make
testt.exe: C:/SFML-2.5.1/lib/libsfml-graphics-d.a
testt.exe: C:/SFML-2.5.1/lib/libsfml-audio-d.a
testt.exe: C:/SFML-2.5.1/lib/libsfml-window-d.a
testt.exe: C:/SFML-2.5.1/lib/libsfml-system-d.a
testt.exe: CMakeFiles/testt.dir/linklibs.rsp
testt.exe: CMakeFiles/testt.dir/objects1.rsp
testt.exe: CMakeFiles/testt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\cici+\testt\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testt.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testt.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testt.dir/build: testt.exe

.PHONY : CMakeFiles/testt.dir/build

CMakeFiles/testt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\testt.dir\cmake_clean.cmake
.PHONY : CMakeFiles/testt.dir/clean

CMakeFiles/testt.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\cici+\testt D:\cici+\testt D:\cici+\testt\cmake-build-debug D:\cici+\testt\cmake-build-debug D:\cici+\testt\cmake-build-debug\CMakeFiles\testt.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testt.dir/depend

