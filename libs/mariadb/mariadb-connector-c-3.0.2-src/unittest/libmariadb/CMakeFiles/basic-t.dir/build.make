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
include unittest/libmariadb/CMakeFiles/basic-t.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/basic-t.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/basic-t.dir/flags.make

unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o: unittest/libmariadb/CMakeFiles/basic-t.dir/flags.make
unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o: unittest/libmariadb/basic-t.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/basic-t.dir/basic-t.c.o   -c /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/basic-t.c

unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/basic-t.dir/basic-t.c.i"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/basic-t.c > CMakeFiles/basic-t.dir/basic-t.c.i

unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/basic-t.dir/basic-t.c.s"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/basic-t.c -o CMakeFiles/basic-t.dir/basic-t.c.s

unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.requires:

.PHONY : unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.requires

unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.provides: unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.requires
	$(MAKE) -f unittest/libmariadb/CMakeFiles/basic-t.dir/build.make unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.provides.build
.PHONY : unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.provides

unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.provides.build: unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o


# Object files for target basic-t
basic__t_OBJECTS = \
"CMakeFiles/basic-t.dir/basic-t.c.o"

# External object files for target basic-t
basic__t_EXTERNAL_OBJECTS =

unittest/libmariadb/basic-t: unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o
unittest/libmariadb/basic-t: unittest/libmariadb/CMakeFiles/basic-t.dir/build.make
unittest/libmariadb/basic-t: unittest/mytap/libcctap.a
unittest/libmariadb/basic-t: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/basic-t: libmariadb/libmariadbclient.a
unittest/libmariadb/basic-t: /usr/lib/x86_64-linux-gnu/libssl.so
unittest/libmariadb/basic-t: /usr/lib/x86_64-linux-gnu/libcrypto.so
unittest/libmariadb/basic-t: unittest/libmariadb/CMakeFiles/basic-t.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable basic-t"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/basic-t.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/basic-t.dir/build: unittest/libmariadb/basic-t

.PHONY : unittest/libmariadb/CMakeFiles/basic-t.dir/build

unittest/libmariadb/CMakeFiles/basic-t.dir/requires: unittest/libmariadb/CMakeFiles/basic-t.dir/basic-t.c.o.requires

.PHONY : unittest/libmariadb/CMakeFiles/basic-t.dir/requires

unittest/libmariadb/CMakeFiles/basic-t.dir/clean:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/basic-t.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/basic-t.dir/clean

unittest/libmariadb/CMakeFiles/basic-t.dir/depend:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/CMakeFiles/basic-t.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/basic-t.dir/depend

