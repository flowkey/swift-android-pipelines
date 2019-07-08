set(ANDROID_ABI armeabi-v7a CACHE STRING "")
set(ANDROID_ARM_MODE NO CACHE BOOL "")
set(ANDROID_ARM_NEON YES CACHE BOOL "")

set(ANDROID_TOOLCHAIN clang CACHE STRING "")
set(ANDROID_PLATFORM android-21 CACHE STRING "")
set(ANDROID_PLATFORM_LEVEL 21 CACHE STRING "")
set(ANDROID_STL c++_static CACHE STRING "")

if(EXISTS /usr/bin/sccache)
  set(CMAKE_C_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
  set(CMAKE_CXX_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
endif()
