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
include libmariadb/CMakeFiles/mariadbclient.dir/depend.make

# Include the progress variables for this target.
include libmariadb/CMakeFiles/mariadbclient.dir/progress.make

# Include the compile flags for this target's objects.
include libmariadb/CMakeFiles/mariadbclient.dir/flags.make

# Object files for target mariadbclient
mariadbclient_OBJECTS =

# External object files for target mariadbclient
mariadbclient_EXTERNAL_OBJECTS = \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/pvio/pvio_socket.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/my_auth.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/old_password.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_array.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_charset.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_hash.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_net.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_charset.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_time.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_default.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_errmsg.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_lib.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_list.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_pvio.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_tls.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_alloc.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_compress.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_init.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_password.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_ll2str.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_sha1.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_stmt.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_loaddata.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_stmt_codec.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_string.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_dtoa.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_client_plugin.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_io.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/secure/openssl.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/adler32.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/compress.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/crc32.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/deflate.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzclose.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzlib.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzread.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzwrite.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/infback.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inffast.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inflate.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inftrees.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/trees.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/uncompr.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/zutil.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_dyncol.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_async.c.o" \
"/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadb_obj.dir/ma_context.c.o"

libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/pvio/pvio_socket.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/my_auth.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/old_password.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_array.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_charset.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_hash.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_net.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_charset.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_time.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_default.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_errmsg.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_lib.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_list.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_pvio.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_tls.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_alloc.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_compress.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_init.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_password.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_ll2str.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_sha1.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_stmt.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_loaddata.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_stmt_codec.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_string.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_dtoa.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_client_plugin.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_io.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/secure/openssl.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/adler32.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/compress.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/crc32.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/deflate.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzclose.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzlib.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzread.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzwrite.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/infback.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inffast.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inflate.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inftrees.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/trees.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/uncompr.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/zutil.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_dyncol.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_async.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadb_obj.dir/ma_context.c.o
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadbclient.dir/build.make
libmariadb/libmariadbclient.a: libmariadb/CMakeFiles/mariadbclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking C static library libmariadbclient.a"
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/mariadbclient.dir/cmake_clean_target.cmake
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mariadbclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libmariadb/CMakeFiles/mariadbclient.dir/build: libmariadb/libmariadbclient.a

.PHONY : libmariadb/CMakeFiles/mariadbclient.dir/build

libmariadb/CMakeFiles/mariadbclient.dir/requires:

.PHONY : libmariadb/CMakeFiles/mariadbclient.dir/requires

libmariadb/CMakeFiles/mariadbclient.dir/clean:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/mariadbclient.dir/cmake_clean.cmake
.PHONY : libmariadb/CMakeFiles/mariadbclient.dir/clean

libmariadb/CMakeFiles/mariadbclient.dir/depend:
	cd /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb/CMakeFiles/mariadbclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libmariadb/CMakeFiles/mariadbclient.dir/depend

