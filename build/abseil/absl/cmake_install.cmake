# Install script for directory: /home/chenqh23/ser1de/protobuf/third_party/abseil-cpp/absl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/chenqh23/proto/build/abseil/absl/base/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/algorithm/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/cleanup/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/container/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/crc/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/debugging/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/flags/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/functional/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/hash/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/log/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/memory/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/meta/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/numeric/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/profiling/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/random/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/status/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/strings/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/synchronization/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/time/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/types/cmake_install.cmake")
  include("/home/chenqh23/proto/build/abseil/absl/utility/cmake_install.cmake")

endif()

