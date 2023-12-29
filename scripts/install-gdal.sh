#/!bin/sh

GDAL_VERSION=3.7.3
#GDAL_VERSION=3.6.4 # worked
#GDAL_VERSION=3.8.0

echo "Install GDAL version $GDAL_VERSION"
git clone https://github.com/OSGeo/gdal.git gdal_git
cd gdal_git
git checkout v$GDAL_VERSION
pip install -r autotest/requirements.txt
pip install numpy

#rm -rf build
mkdir -p build
cd build
cmake -DGDAL_BUILD_OPTIONAL_DRIVERS=OFF \
      -DOGR_BUILD_OPTIONAL_DRIVERS=OFF \
      -DGDAL_USE_INTERNAL_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_TESTING=OFF \
      -DBUILD_JAVA_BINDINGS=OFF \
      -DBUILD_CSHARP_BINDINGS=OFF \
      ..

#cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

sudo cmake --build . --target install
