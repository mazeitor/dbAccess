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
include unittest/libmariadb/CMakeFiles/sp.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/sp.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/sp.dir/flags.make

unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o: unittest/libmariadb/CMakeFiles/sp.dir/flags.make
unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o: unittest/libmariadb/sp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sp.dir/sp.c.o   -c /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/sp.c

unittest/libmariadb/CMakeFiles/sp.dir/sp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sp.dir/sp.c.i"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/sp.c > CMakeFiles/sp.dir/sp.c.i

unittest/libmariadb/CMakeFiles/sp.dir/sp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sp.dir/sp.c.s"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/sp.c -o CMakeFiles/sp.dir/sp.c.s

unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.requires:

.PHONY : unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.requires

unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.provides: unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.requires
	$(MAKE) -f unittest/libmariadb/CMakeFiles/sp.dir/build.make unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.provides.build
.PHONY : unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.provides

unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.provides.build: unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o


# Object files for target sp
sp_OBJECTS = \
"CMakeFiles/sp.dir/sp.c.o"

# External object files for target sp
sp_EXTERNAL_OBJECTS =

unittest/libmariadb/sp: unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o
unittest/libmariadb/sp: unittest/libmariadb/CMakeFiles/sp.dir/build.make
unittest/libmariadb/sp: unittest/mytap/libcctap.a
unittest/libmariadb/sp: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/sp: libmariadb/libmariadbclient.a
unittest/libmariadb/sp: /usr/lib/x86_64-linux-gnu/libssl.so
unittest/libmariadb/sp: /usr/lib/x86_64-linux-gnu/libcrypto.so
unittest/libmariadb/sp: unittest/libmariadb/CMakeFiles/sp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable sp"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/sp.dir/build: unittest/libmariadb/sp

.PHONY : unittest/libmariadb/CMakeFiles/sp.dir/build

unittest/libmariadb/CMakeFiles/sp.dir/requires: unittest/libmariadb/CMakeFiles/sp.dir/sp.c.o.requires

.PHONY : unittest/libmariadb/CMakeFiles/sp.dir/requires

unittest/libmariadb/CMakeFiles/sp.dir/clean:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/sp.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/sp.dir/clean

unittest/libmariadb/CMakeFiles/sp.dir/depend:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/unittest/libmariadb/CMakeFiles/sp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/sp.dir/depend
