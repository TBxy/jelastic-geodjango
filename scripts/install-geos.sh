#/!bin/sh

GEOS_VERSION=3.9.5

echo "Install GEOS version $GEOS_VERSION"
git clone https://github.com/libgeos/geos.git geos_git
cd geos_git
git checkout $GEOS_VERSION
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

sudo cmake --build . --target install

