mkdir -p build
cmake -G Ninja -S . -B build \
      -DCMAKE_INSTALL_PREFIX="install" \
      -DCMAKE_BUILD_TYPE=Release
ninja -j`nproc` -C build install
