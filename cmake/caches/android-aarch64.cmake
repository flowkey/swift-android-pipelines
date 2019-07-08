set(ANDROID_ABI arm64-v8a CACHE STRING "")

set(ANDROID_PLATFORM_LEVEL 21 CACHE STRING "")
set(ANDROID_TOOLCHAIN clang CACHE STRING "")
set(ANDROID_STL c++_static CACHE STRING "")

if(EXISTS /usr/bin/sccache)
  set(CMAKE_C_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
  set(CMAKE_CXX_COMPILER_LAUNCHER /usr/bin/sccache CACHE STRING "")
endif()

if (EXISTS $ENV:{toolchain.directory})
  set(CMAKE_C_COMPILER "$ENV:{toolchain.directory}/usr/bin/clang")
  set(CMAKE_CXX_COMPILER "$ENV:{toolchain.directory}/usr/bin/clang++")
  set(CMAKE_SWIFT_COMPILER "$ENV:{toolchain.directory}/usr/bin/swiftc")
endif()
