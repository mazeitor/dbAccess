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
CMAKE_SOURCE_DIR = /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src

# Include any dependencies generated for this target.
include plugins/auth/CMakeFiles/dialog.dir/depend.make

# Include the progress variables for this target.
include plugins/auth/CMakeFiles/dialog.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/auth/CMakeFiles/dialog.dir/flags.make

plugins/auth/CMakeFiles/dialog.dir/dialog.c.o: plugins/auth/CMakeFiles/dialog.dir/flags.make
plugins/auth/CMakeFiles/dialog.dir/dialog.c.o: plugins/auth/dialog.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object plugins/auth/CMakeFiles/dialog.dir/dialog.c.o"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dialog.dir/dialog.c.o   -c /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth/dialog.c

plugins/auth/CMakeFiles/dialog.dir/dialog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dialog.dir/dialog.c.i"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth/dialog.c > CMakeFiles/dialog.dir/dialog.c.i

plugins/auth/CMakeFiles/dialog.dir/dialog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dialog.dir/dialog.c.s"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth/dialog.c -o CMakeFiles/dialog.dir/dialog.c.s

plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.requires:

.PHONY : plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.requires

plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.provides: plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.requires
	$(MAKE) -f plugins/auth/CMakeFiles/dialog.dir/build.make plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.provides.build
.PHONY : plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.provides

plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.provides.build: plugins/auth/CMakeFiles/dialog.dir/dialog.c.o


plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o: plugins/auth/CMakeFiles/dialog.dir/flags.make
plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o: libmariadb/get_password.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o   -c /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/get_password.c

plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.i"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/get_password.c > CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.i

plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.s"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/get_password.c -o CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.s

plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.requires:

.PHONY : plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.requires

plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.provides: plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.requires
	$(MAKE) -f plugins/auth/CMakeFiles/dialog.dir/build.make plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.provides.build
.PHONY : plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.provides

plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.provides.build: plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o


# Object files for target dialog
dialog_OBJECTS = \
"CMakeFiles/dialog.dir/dialog.c.o" \
"CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o"

# External object files for target dialog
dialog_EXTERNAL_OBJECTS =

plugins/auth/dialog.so: plugins/auth/CMakeFiles/dialog.dir/dialog.c.o
plugins/auth/dialog.so: plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o
plugins/auth/dialog.so: plugins/auth/CMakeFiles/dialog.dir/build.make
plugins/auth/dialog.so: plugins/auth/CMakeFiles/dialog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C shared module dialog.so"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dialog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/auth/CMakeFiles/dialog.dir/build: plugins/auth/dialog.so

.PHONY : plugins/auth/CMakeFiles/dialog.dir/build

plugins/auth/CMakeFiles/dialog.dir/requires: plugins/auth/CMakeFiles/dialog.dir/dialog.c.o.requires
plugins/auth/CMakeFiles/dialog.dir/requires: plugins/auth/CMakeFiles/dialog.dir/__/__/libmariadb/get_password.c.o.requires

.PHONY : plugins/auth/CMakeFiles/dialog.dir/requires

plugins/auth/CMakeFiles/dialog.dir/clean:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth && $(CMAKE_COMMAND) -P CMakeFiles/dialog.dir/cmake_clean.cmake
.PHONY : plugins/auth/CMakeFiles/dialog.dir/clean

plugins/auth/CMakeFiles/dialog.dir/depend:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/plugins/auth/CMakeFiles/dialog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/auth/CMakeFiles/dialog.dir/depend

