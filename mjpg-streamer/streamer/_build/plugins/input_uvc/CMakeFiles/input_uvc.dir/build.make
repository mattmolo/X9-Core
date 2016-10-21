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
include plugins/input_uvc/CMakeFiles/input_uvc.dir/depend.make

# Include the progress variables for this target.
include plugins/input_uvc/CMakeFiles/input_uvc.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/input_uvc/CMakeFiles/input_uvc.dir/flags.make

plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o: plugins/input_uvc/CMakeFiles/input_uvc.dir/flags.make
plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o: ../plugins/input_uvc/dynctrl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/input_uvc.dir/dynctrl.c.o   -c /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/dynctrl.c

plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/input_uvc.dir/dynctrl.c.i"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/dynctrl.c > CMakeFiles/input_uvc.dir/dynctrl.c.i

plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/input_uvc.dir/dynctrl.c.s"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/dynctrl.c -o CMakeFiles/input_uvc.dir/dynctrl.c.s

plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.requires:
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.requires

plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.provides: plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.requires
	$(MAKE) -f plugins/input_uvc/CMakeFiles/input_uvc.dir/build.make plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.provides.build
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.provides

plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.provides.build: plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o

plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o: plugins/input_uvc/CMakeFiles/input_uvc.dir/flags.make
plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o: ../plugins/input_uvc/input_uvc.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/input_uvc.dir/input_uvc.c.o   -c /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/input_uvc.c

plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/input_uvc.dir/input_uvc.c.i"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/input_uvc.c > CMakeFiles/input_uvc.dir/input_uvc.c.i

plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/input_uvc.dir/input_uvc.c.s"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/input_uvc.c -o CMakeFiles/input_uvc.dir/input_uvc.c.s

plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.requires:
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.requires

plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.provides: plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.requires
	$(MAKE) -f plugins/input_uvc/CMakeFiles/input_uvc.dir/build.make plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.provides.build
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.provides

plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.provides.build: plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o

plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o: plugins/input_uvc/CMakeFiles/input_uvc.dir/flags.make
plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o: ../plugins/input_uvc/jpeg_utils.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/input_uvc.dir/jpeg_utils.c.o   -c /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/jpeg_utils.c

plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/input_uvc.dir/jpeg_utils.c.i"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/jpeg_utils.c > CMakeFiles/input_uvc.dir/jpeg_utils.c.i

plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/input_uvc.dir/jpeg_utils.c.s"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/jpeg_utils.c -o CMakeFiles/input_uvc.dir/jpeg_utils.c.s

plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.requires:
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.requires

plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.provides: plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.requires
	$(MAKE) -f plugins/input_uvc/CMakeFiles/input_uvc.dir/build.make plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.provides.build
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.provides

plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.provides.build: plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o

plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o: plugins/input_uvc/CMakeFiles/input_uvc.dir/flags.make
plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o: ../plugins/input_uvc/v4l2uvc.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/input_uvc.dir/v4l2uvc.c.o   -c /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/v4l2uvc.c

plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/input_uvc.dir/v4l2uvc.c.i"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/v4l2uvc.c > CMakeFiles/input_uvc.dir/v4l2uvc.c.i

plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/input_uvc.dir/v4l2uvc.c.s"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc/v4l2uvc.c -o CMakeFiles/input_uvc.dir/v4l2uvc.c.s

plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.requires:
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.requires

plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.provides: plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.requires
	$(MAKE) -f plugins/input_uvc/CMakeFiles/input_uvc.dir/build.make plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.provides.build
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.provides

plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.provides.build: plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o

# Object files for target input_uvc
input_uvc_OBJECTS = \
"CMakeFiles/input_uvc.dir/dynctrl.c.o" \
"CMakeFiles/input_uvc.dir/input_uvc.c.o" \
"CMakeFiles/input_uvc.dir/jpeg_utils.c.o" \
"CMakeFiles/input_uvc.dir/v4l2uvc.c.o"

# External object files for target input_uvc
input_uvc_EXTERNAL_OBJECTS =

plugins/input_uvc/input_uvc.so: plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o
plugins/input_uvc/input_uvc.so: plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o
plugins/input_uvc/input_uvc.so: plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o
plugins/input_uvc/input_uvc.so: plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o
plugins/input_uvc/input_uvc.so: plugins/input_uvc/CMakeFiles/input_uvc.dir/build.make
plugins/input_uvc/input_uvc.so: /usr/lib/arm-linux-gnueabihf/libv4l2.so
plugins/input_uvc/input_uvc.so: /usr/lib/arm-linux-gnueabihf/libjpeg.so
plugins/input_uvc/input_uvc.so: plugins/input_uvc/CMakeFiles/input_uvc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library input_uvc.so"
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/input_uvc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/input_uvc/CMakeFiles/input_uvc.dir/build: plugins/input_uvc/input_uvc.so
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/build

plugins/input_uvc/CMakeFiles/input_uvc.dir/requires: plugins/input_uvc/CMakeFiles/input_uvc.dir/dynctrl.c.o.requires
plugins/input_uvc/CMakeFiles/input_uvc.dir/requires: plugins/input_uvc/CMakeFiles/input_uvc.dir/input_uvc.c.o.requires
plugins/input_uvc/CMakeFiles/input_uvc.dir/requires: plugins/input_uvc/CMakeFiles/input_uvc.dir/jpeg_utils.c.o.requires
plugins/input_uvc/CMakeFiles/input_uvc.dir/requires: plugins/input_uvc/CMakeFiles/input_uvc.dir/v4l2uvc.c.o.requires
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/requires

plugins/input_uvc/CMakeFiles/input_uvc.dir/clean:
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc && $(CMAKE_COMMAND) -P CMakeFiles/input_uvc.dir/cmake_clean.cmake
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/clean

plugins/input_uvc/CMakeFiles/input_uvc.dir/depend:
	cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/mjpg-streamer/mjpg-streamer-experimental /home/pi/mjpg-streamer/mjpg-streamer-experimental/plugins/input_uvc /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc /home/pi/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_uvc/CMakeFiles/input_uvc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/input_uvc/CMakeFiles/input_uvc.dir/depend

