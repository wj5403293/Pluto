mkdir -p build
cmake -G Ninja -S . -B build \
      -DCMAKE_C_COMPILER="clang" \
      -DCMAKE_CXX_COMPILER="clang" \
      -DCMAKE_INSTALL_PREFIX="install" \
      -DCMAKE_BUILD_TYPE=Release
ninja -j`nproc` -C build install
