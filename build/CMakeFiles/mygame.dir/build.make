# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anrichtait/Projects/raylib_engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anrichtait/Projects/raylib_engine/build

# Include any dependencies generated for this target.
include CMakeFiles/mygame.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mygame.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mygame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mygame.dir/flags.make

CMakeFiles/mygame.dir/codegen:
.PHONY : CMakeFiles/mygame.dir/codegen

CMakeFiles/mygame.dir/main.cpp.o: CMakeFiles/mygame.dir/flags.make
CMakeFiles/mygame.dir/main.cpp.o: /home/anrichtait/Projects/raylib_engine/main.cpp
CMakeFiles/mygame.dir/main.cpp.o: CMakeFiles/mygame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/anrichtait/Projects/raylib_engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mygame.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mygame.dir/main.cpp.o -MF CMakeFiles/mygame.dir/main.cpp.o.d -o CMakeFiles/mygame.dir/main.cpp.o -c /home/anrichtait/Projects/raylib_engine/main.cpp

CMakeFiles/mygame.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/mygame.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anrichtait/Projects/raylib_engine/main.cpp > CMakeFiles/mygame.dir/main.cpp.i

CMakeFiles/mygame.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/mygame.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anrichtait/Projects/raylib_engine/main.cpp -o CMakeFiles/mygame.dir/main.cpp.s

CMakeFiles/mygame.dir/GameEngine.cpp.o: CMakeFiles/mygame.dir/flags.make
CMakeFiles/mygame.dir/GameEngine.cpp.o: /home/anrichtait/Projects/raylib_engine/GameEngine.cpp
CMakeFiles/mygame.dir/GameEngine.cpp.o: CMakeFiles/mygame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/anrichtait/Projects/raylib_engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mygame.dir/GameEngine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mygame.dir/GameEngine.cpp.o -MF CMakeFiles/mygame.dir/GameEngine.cpp.o.d -o CMakeFiles/mygame.dir/GameEngine.cpp.o -c /home/anrichtait/Projects/raylib_engine/GameEngine.cpp

CMakeFiles/mygame.dir/GameEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/mygame.dir/GameEngine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anrichtait/Projects/raylib_engine/GameEngine.cpp > CMakeFiles/mygame.dir/GameEngine.cpp.i

CMakeFiles/mygame.dir/GameEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/mygame.dir/GameEngine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anrichtait/Projects/raylib_engine/GameEngine.cpp -o CMakeFiles/mygame.dir/GameEngine.cpp.s

# Object files for target mygame
mygame_OBJECTS = \
"CMakeFiles/mygame.dir/main.cpp.o" \
"CMakeFiles/mygame.dir/GameEngine.cpp.o"

# External object files for target mygame
mygame_EXTERNAL_OBJECTS =

mygame: CMakeFiles/mygame.dir/main.cpp.o
mygame: CMakeFiles/mygame.dir/GameEngine.cpp.o
mygame: CMakeFiles/mygame.dir/build.make
mygame: CMakeFiles/mygame.dir/compiler_depend.ts
mygame: /usr/lib/libraylib.so
mygame: CMakeFiles/mygame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/anrichtait/Projects/raylib_engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable mygame"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mygame.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mygame.dir/build: mygame
.PHONY : CMakeFiles/mygame.dir/build

CMakeFiles/mygame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mygame.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mygame.dir/clean

CMakeFiles/mygame.dir/depend:
	cd /home/anrichtait/Projects/raylib_engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anrichtait/Projects/raylib_engine /home/anrichtait/Projects/raylib_engine /home/anrichtait/Projects/raylib_engine/build /home/anrichtait/Projects/raylib_engine/build /home/anrichtait/Projects/raylib_engine/build/CMakeFiles/mygame.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/mygame.dir/depend

