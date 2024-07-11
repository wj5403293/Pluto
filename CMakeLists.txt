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
set(CMAKE_SYSTEM_NAME Android)

# 对整个项目取消特定警告
add_compile_options(-Wno-unused-but-set-variable)
add_subdirectory(llvm)
