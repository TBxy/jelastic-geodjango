#/!bin/sh

CMAKE_VERSION=3.28.1

echo "Install CMAKE version $GMAKE_VERSION"

rm -f cmake-$CMAKE_VERSION
mkdir cmake-$CMAKE_VERSION
cd cmake-$CMAKE_VERSION
CMAKE_PKG=cmake-$CMAKE_VERSION-linux-x86_64
CMAKE_TAR=$CMAKE_PKG.tar.gz
curl -LO https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/$CMAKE_TAR
tar -xvf $CMAKE_TAR
sudo cp -r $CMAKE_PKG/bin/* /usr/local/bin/
sudo cp -r $CMAKE_PKG/doc/* /usr/local/doc/
sudo mkdir -p /usr/local/man/
sudo cp -r $CMAKE_PKG/man/* /usr/local/man/
sudo cp -r $CMAKE_PKG/share/* /usr/local/share/
sudo ln -s /usr/local/bin/cmake /bin/cmake
sudo ldconfig
cd -
rm -f cmake-$CMAKE_VERSION


