set(ANDROID_ABI "x86_64" CACHE STRING "")

set(ANDROID_TOOLCHAIN clang CACHE STRING "")
set(ANDROID_PLATFORM android-21 CACHE STRING "")
set(ANDROID_PLATFORM_LEVEL 21 CACHE STRING "")
set(ANDROID_STL c++_static CACHE STRING "")

if(EXISTS /usr/bin/sccache)
  set(CMAKE_C_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
  set(CMAKE_CXX_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
endif()

if (TOOLCHAIN)
  set(CMAKE_C_COMPILER "${TOOLCHAIN}/usr/bin/clang")
  set(CMAKE_CXX_COMPILER "${TOOLCHAIN}/usr/bin/clang++")
  set(CMAKE_SWIFT_COMPILER "${TOOLCHAIN}/usr/bin/swiftc")
endif()
