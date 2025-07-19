
vcpkg install \
   qt5-base \
   qt5-tools \
   eigen3\
   opencascade \
   tbb \
   cli11 \
   tinygltf \
   liblzma \
   zlib \
   tinygltf \
   draco

mkdir -p build
pushd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake \
	-DCMAKE_INSTALL_PREFIX=$PWD/../install
pushd build
make
popd
