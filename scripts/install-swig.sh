#/!bin/sh

SWIG_VERSION=4.1.1

echo "Install GDAL version $GDAL_VERSION"

# dependencies
sudo yum remove -y swig
sudo yum install -y automake
sudo yum install -y pcre2-devel
sudo yum install -y byacc

git clone https://github.com/swig/swig.git swig_git
cd swig_git
git checkout v$SWIG_VERSION


./autogen.sh
./configure --prefix=/usr/local
make
sudo make install
sudo ldconfig
sudo ln -sf /usr/local/bin/swig /usr/bin/

