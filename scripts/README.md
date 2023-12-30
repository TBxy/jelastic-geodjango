
Installation order:

```bash
sudo bash -c "echo /usr/local/lib64 > /etc/ld.so.conf.d/locallib.conf"
./install-cmake.sh
./install-swig.sh
./install-proj.sh
./install-geos.sh
./install-gdal.sh
```
