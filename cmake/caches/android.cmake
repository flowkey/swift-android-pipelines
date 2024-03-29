if(NOT "$ENV{ANDROID_NDK}" STREQUAL "")
  set(SWIFT_ANDROID_NDK_PATH "$ENV{ANDROID_NDK}" CACHE STRING "")
elseif(CMAKE_HOST_SYSTEM_NAME STREQUAL Windows)
  if(EXISTS C:/Microsoft/AndroidNDK64/android-ndk-r16b)
    set(SWIFT_ANDROID_NDK_PATH "C:/Microsoft/AndroidNDK64/android-ndk-r16b" CACHE STRING "")
  endif()
endif()

if(NOT DEFINED SWIFT_ANDROID_NDK_PATH)
  message(FATAL_ERROR "Unable to find android NDK")
endif()

set(ANDROID_NDK ${SWIFT_ANDROID_NDK_PATH} CACHE STRING "")
set(ANDROID_PLATFORM android-21 CACHE STRING "")
set(ANDROID_PLATFORM_LEVEL 21 CACHE STRING "")
set(ANDROID_TOOLCHAIN clang CACHE STRING "")
set(ANDROID_STL c++_static CACHE STRING "")
