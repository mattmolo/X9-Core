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
CMAKE_SOURCE_DIR = /home/pi/mjpg-streamer/mjpg-streamer-experimental

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build

# Include any dependencies generated for this target.
include plugins/output_udp/CMakeFiles/output_udp.dir/depend.make

# Include the progress variables for this target.
include plugins/output_udp/CMakeFiles/output_udp.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/output_udp/CMakeFiles/output_udp.dir/flags.make

plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o: plugins/output_udp/CMakeFiles/output_udp.dir/flags.make
plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o: ../plugins/output_udp/output_udp.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_udp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/output_udp.dir/output_udp.c.o   -c /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/output_udp/output_udp.c

plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/output_udp.dir/output_udp.c.i"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_udp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/output_udp/output_udp.c > CMakeFiles/output_udp.dir/output_udp.c.i

plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/output_udp.dir/output_udp.c.s"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_udp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/output_udp/output_udp.c -o CMakeFiles/output_udp.dir/output_udp.c.s

plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.requires:
.PHONY : plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.requires

plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.provides: plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.requires
	$(MAKE) -f plugins/output_udp/CMakeFiles/output_udp.dir/build.make plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.provides.build
.PHONY : plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.provides

plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.provides.build: plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o

# Object files for target output_udp
output_udp_OBJECTS = \
"CMakeFiles/output_udp.dir/output_udp.c.o"

# External object files for target output_udp
output_udp_EXTERNAL_OBJECTS =

plugins/output_udp/output_udp.so: plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o
plugins/output_udp/output_udp.so: plugins/output_udp/CMakeFiles/output_udp.dir/build.make
plugins/output_udp/output_udp.so: plugins/output_udp/CMakeFiles/output_udp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library output_udp.so"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_udp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/output_udp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/output_udp/CMakeFiles/output_udp.dir/build: plugins/output_udp/output_udp.so
.PHONY : plugins/output_udp/CMakeFiles/output_udp.dir/build

plugins/output_udp/CMakeFiles/output_udp.dir/requires: plugins/output_udp/CMakeFiles/output_udp.dir/output_udp.c.o.requires
.PHONY : plugins/output_udp/CMakeFiles/output_udp.dir/requires

plugins/output_udp/CMakeFiles/output_udp.dir/clean:
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_udp && $(CMAKE_COMMAND) -P CMakeFiles/output_udp.dir/cmake_clean.cmake
.PHONY : plugins/output_udp/CMakeFiles/output_udp.dir/clean

plugins/output_udp/CMakeFiles/output_udp.dir/depend:
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/mjpg-streamer/mjpg-streamer-experimental /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/output_udp /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_udp /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_udp/CMakeFiles/output_udp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/output_udp/CMakeFiles/output_udp.dir/depend

