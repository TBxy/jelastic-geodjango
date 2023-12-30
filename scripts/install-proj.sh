#/!bin/sh

PROJ_VERSION=9.3.1
PROJ_DATA_VERSION=1.9

echo "Install GDAL version $PROJ_VERSION"
base=$(pwd)
mkdir proj_src
cd proj_src
wget https://download.osgeo.org/proj/proj-$PROJ_VERSION.tar.gz
wget https://download.osgeo.org/proj/proj-data-$PROJ_DATA_VERSION.tar.gz
tar xzf proj-$PROJ_VERSION.tar.gz
cd proj-$PROJ_VERSION/data
tar xzf ../../proj-data-$PROJ_DATA_VERSION.tar.gz
cd ../
mkdir -p build
cd build
cmake -DBUILD_TESTING=OFF \
      -DCMAKE_BUILD_TYPE=Release \
      ..
cmake --build .
sudo cmake --build . --target install
sudo ldconfig

cd $base
rm proj-$PROJ_VERSION.tar.gz
rm proj-data-$PROJ_DATA_VERSION.tar.gz

