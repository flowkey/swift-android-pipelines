set(ANDROID_ABI "x86_64" CACHE STRING "")

set(ANDROID_TOOLCHAIN clang CACHE STRING "")
set(ANDROID_PLATFORM android-21 CACHE STRING "")
set(ANDROID_PLATFORM_LEVEL 21 CACHE STRING "")
set(ANDROID_STL c++_static CACHE STRING "")

set(CMAKE_ANDROID_NDK_TOOLCHAIN_VERSION "clang" CACHE STRING "")
set(CMAKE_ANDROID_STL_TYPE "c++_static" CACHE STRING "")

set(ANDROID_ABI ${CMAKE_ANDROID_ARCH_ABI} CACHE STRING "")
set(ANDROID_NDK ${CMAKE_ANDROID_NDK} CACHE STRING "")
set(ANDROID_PLATFORM android-${CMAKE_ANDROID_API} CACHE STRING "")
set(ANDROID_STL ${CMAKE_ANDROID_STL_TYPE} CACHE STRING "")

