# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_AROBO7_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED AROBO7_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(AROBO7_FOUND FALSE)
  elseif(NOT AROBO7_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(AROBO7_FOUND FALSE)
  endif()
  return()
endif()
set(_AROBO7_CONFIG_INCLUDED TRUE)

# output package information
if(NOT AROBO7_FIND_QUIETLY)
  message(STATUS "Found AROBO7: 0.0.0 (${AROBO7_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'AROBO7' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${AROBO7_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(AROBO7_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${AROBO7_DIR}/${_extra}")
endforeach()
