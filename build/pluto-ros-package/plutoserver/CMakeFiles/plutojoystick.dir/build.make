# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/maha/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maha/catkin_ws/build

# Include any dependencies generated for this target.
include pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/depend.make

# Include the progress variables for this target.
include pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/progress.make

# Include the compile flags for this target's objects.
include pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/flags.make

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o: pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/flags.make
pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o: /home/maha/catkin_ws/src/pluto-ros-package/plutoserver/src/plutojoystick.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maha/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o"
	cd /home/maha/catkin_ws/build/pluto-ros-package/plutoserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o -c /home/maha/catkin_ws/src/pluto-ros-package/plutoserver/src/plutojoystick.cpp

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.i"
	cd /home/maha/catkin_ws/build/pluto-ros-package/plutoserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maha/catkin_ws/src/pluto-ros-package/plutoserver/src/plutojoystick.cpp > CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.i

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.s"
	cd /home/maha/catkin_ws/build/pluto-ros-package/plutoserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maha/catkin_ws/src/pluto-ros-package/plutoserver/src/plutojoystick.cpp -o CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.s

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.requires:

.PHONY : pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.requires

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.provides: pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.requires
	$(MAKE) -f pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/build.make pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.provides.build
.PHONY : pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.provides

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.provides.build: pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o


# Object files for target plutojoystick
plutojoystick_OBJECTS = \
"CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o"

# External object files for target plutojoystick
plutojoystick_EXTERNAL_OBJECTS =

/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/build.make
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /home/maha/catkin_ws/devel/lib/libplutodrone.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/libroscpp.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/librosconsole.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/librostime.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /opt/ros/kinetic/lib/libcpp_common.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick: pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maha/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick"
	cd /home/maha/catkin_ws/build/pluto-ros-package/plutoserver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plutojoystick.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/build: /home/maha/catkin_ws/devel/lib/plutoserver/plutojoystick

.PHONY : pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/build

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/requires: pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/src/plutojoystick.cpp.o.requires

.PHONY : pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/requires

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/clean:
	cd /home/maha/catkin_ws/build/pluto-ros-package/plutoserver && $(CMAKE_COMMAND) -P CMakeFiles/plutojoystick.dir/cmake_clean.cmake
.PHONY : pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/clean

pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/depend:
	cd /home/maha/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maha/catkin_ws/src /home/maha/catkin_ws/src/pluto-ros-package/plutoserver /home/maha/catkin_ws/build /home/maha/catkin_ws/build/pluto-ros-package/plutoserver /home/maha/catkin_ws/build/pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pluto-ros-package/plutoserver/CMakeFiles/plutojoystick.dir/depend

