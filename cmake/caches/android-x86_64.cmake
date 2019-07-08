set(ANDROID_ABI "x86_64" CACHE STRING "")

set(ANDROID_TOOLCHAIN clang CACHE STRING "")
set(ANDROID_PLATFORM 21 CACHE STRING "")
set(ANDROID_STL c++_static CACHE STRING "")

if(EXISTS /usr/bin/sccache)
  set(CMAKE_C_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
  set(CMAKE_CXX_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
endif()
