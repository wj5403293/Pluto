cmake_minimum_required(VERSION 3.20)
project(Xingkong)

# 设置要生成的项目
set(LLVM_ENABLE_PROJECTS "clang;lld" CACHE STRING "")
# 设置生成的平台
set(LLVM_TARGETS_TO_BUILD "ARM;AArch64" CACHE STRING "")
# 关闭 llvm 的头文件测试，也是为了加快编译速度
set(LLVM_INCLUDE_BENCHMARKS OFF CACHE BOOL "")
set(LLVM_INCLUDE_TESTS OFF CACHE BOOL "")

# 设置 CLANG_VENDOR 版本名
set(CLANG_VENDOR "Xingkong" CACHE STRING "")
# 设置 LLD_VENDOR 版本名
set(LLD_VENDOR "Xingkong" CACHE STRING "")
set(CMAKE_BUILD_TYPE release)      # 打包成正式版
set(CMAKE_SYSTEM_NAME ANDROID) # 设置目标编译平台参数 Android
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSTEM_VERSION 21)     # 系统版本
set(ANDROID_PLATFORM 21)          # 平台版本
set(ANDROID_ABI arm64-v8a)          # 设置目标构架 armeabi-v7a arm64-v8a x86 x86_64

# 对整个项目取消特定警告
add_compile_options(-Wno-unused-but-set-variable)
add_subdirectory(llvm)
