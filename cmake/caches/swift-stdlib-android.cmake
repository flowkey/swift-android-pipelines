set(SWIFT_HOST_VARIANT_SDK ANDROID CACHE STRING "")

# Build just the standard library
set(SWIFT_INCLUDE_TOOLS NO CACHE BOOL "")
set(SWIFT_INCLUDE_TESTS NO CACHE BOOL "")
set(SWIFT_INCLUDE_DOCS NO CACHE BOOL "")

# Build with the host compiler
set(SWIFT_BUILD_RUNTIME_WITH_HOST_COMPILER YES CACHE BOOL "")

# Android configuration
set(SWIFT_ANDROID_API_LEVEL 21 CACHE STRING "")
set(SWIFT_ANDROID_NDK_GCC_VERSION 4.9 CACHE STRING "")

if($ENV{SWIFT_ANDROID_NDK_PATH})
  set(SWIFT_ANDROID_NDK_PATH $ENV{SWIFT_ANDROID_NDK_PATH} CACHE STRING "")
elseif(CMAKE_HOST_SYSTEM_NAME STREQUAL Windows)
  if(EXISTS C:/Microsoft/AndroidNDK64/android-ndk-r16b)
    set(SWIFT_ANDROID_NDK_PATH "C:/Microsoft/AndroidNDK64/android-ndk-r16b" CACHE STRING "")
  endif()
endif()

if(NOT DEFINED SWIFT_ANDROID_NDK_PATH)
  message(FATAL_ERROR "Unable to find android NDK")
endif()


# TODO(compnerd) we should fix the lld.exe spelling
# NOTE: The following values both get unset for aarch64
set(SWIFT_ENABLE_LLD_LINKER FALSE CACHE BOOL "")
set(SWIFT_ENABLE_GOLD_LINKER TRUE CACHE BOOL "")
