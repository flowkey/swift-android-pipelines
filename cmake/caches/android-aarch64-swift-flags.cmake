
set(CMAKE_SWIFT_FLAGS
  -resource-dir ${SWIFT_ANDROID_SDK}/usr/lib/swift
  -Xcc --sysroot=${ANDROID_NDK}/sysroot
  CACHE STRING "")

set(CMAKE_SWIFT_LINK_FLAGS
  -resource-dir ${SWIFT_ANDROID_SDK}/usr/lib/swift
  -tools-directory ${ANDROID_TOOLCHAIN_ROOT}/bin
  -Xclang-linker --gcc-toolchain=${ANDROID_NDK}/toolchains/${ANDROID_TOOLCHAIN_NAME}-4.9/prebuilt/${ANDROID_HOST_TAG}
  -Xclang-linker --sysroot=${ANDROID_NDK}/platforms/${ANDROID_PLATFORM}/arch-${ANDROID_SYSROOT_ABI}
  -Xclang-linker -fuse-ld=gold
  CACHE STRING "")
