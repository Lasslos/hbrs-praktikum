# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Laslo\Development\cpp\hbrs-praktikum\OpenRoboticBoard\UserApp\_Project\MyFirstProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Laslo\Development\cpp\hbrs-praktikum\OpenRoboticBoard\UserApp\_Project\MyFirstProject

# Utility rule file for MyFirstProject.bin.

# Include any custom commands dependencies for this target.
include CMakeFiles/MyFirstProject.bin.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyFirstProject.bin.dir/progress.make

CMakeFiles/MyFirstProject.bin: /MyFirstProject.elf
	arm-none-eabi-objcopy -Obinary /MyFirstProject.elf /MyFirstProject.bin

MyFirstProject.bin: CMakeFiles/MyFirstProject.bin
MyFirstProject.bin: CMakeFiles/MyFirstProject.bin.dir/build.make
.PHONY : MyFirstProject.bin

# Rule to build all files generated by this target.
CMakeFiles/MyFirstProject.bin.dir/build: MyFirstProject.bin
.PHONY : CMakeFiles/MyFirstProject.bin.dir/build

CMakeFiles/MyFirstProject.bin.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MyFirstProject.bin.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MyFirstProject.bin.dir/clean

CMakeFiles/MyFirstProject.bin.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Laslo\Development\cpp\hbrs-praktikum\OpenRoboticBoard\UserApp\_Project\MyFirstProject C:\Users\Laslo\Development\cpp\hbrs-praktikum\OpenRoboticBoard\UserApp\_Project\MyFirstProject C:\Users\Laslo\Development\cpp\hbrs-praktikum\OpenRoboticBoard\UserApp\_Project\MyFirstProject C:\Users\Laslo\Development\cpp\hbrs-praktikum\OpenRoboticBoard\UserApp\_Project\MyFirstProject C:\Users\Laslo\Development\cpp\hbrs-praktikum\OpenRoboticBoard\UserApp\_Project\MyFirstProject\CMakeFiles\MyFirstProject.bin.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyFirstProject.bin.dir/depend

