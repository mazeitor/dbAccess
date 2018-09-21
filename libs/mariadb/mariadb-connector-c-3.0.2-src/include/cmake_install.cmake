# Install script for directory: /home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/mysql")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb" TYPE FILE FILES
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mariadb_com.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mysql.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mariadb_stmt.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/ma_pvio.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/ma_tls.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mariadb_version.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/ma_list.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/errmsg.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mariadb_dyncol.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mariadb_ctype.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mysqld_error.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mysql" TYPE FILE FILES
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mysql/client_plugin.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mysql/plugin_auth_common.h"
    "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mysql/plugin_auth.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mariadb" TYPE FILE FILES "/home/clme1717/Git/dbAccess/libs/mariadb/mariadb-connector-c-3.0.2-src/include/mariadb/ma_io.h")
endif()

