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

# TODO(compnerd) we should fix the lld.exe spelling
# NOTE: The following values both get unset for aarch64
set(SWIFT_ENABLE_LLD_LINKER FALSE CACHE BOOL "")
set(SWIFT_ENABLE_GOLD_LINKER TRUE CACHE BOOL "")
