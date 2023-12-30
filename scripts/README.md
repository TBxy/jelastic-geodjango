
Installation order:

```bash
sudo echo /usr/local/lib > /etc/ld.so.conf.d/locallib.conf
./install-cmake.sh
./install-swig.sh
./install-proj.sh
./install-geos.sh
./install-gdal.sh
```
