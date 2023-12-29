#/!bin/sh

SWIG_VERSION=4.1.1

echo "Install GDAL version $GDAL_VERSION"

sudo yum remove swig -y

git clone https://github.com/swig/swig.git swig_git
cd swig_git
git checkout v$SWIG_VERSION


./autogen.sh
./configure --prefix=/usr/local
make
sudo make install
sudo ln -s /usr/local/bin/swig /usr/bin/

