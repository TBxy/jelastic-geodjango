
Installation order:

```bash
./install-cmake.sh
./install-swig.sh
./install-proj.sh
./install-geos.sh
./install-gdal.sh
```

After all installations were succesfull run:

```bash
sudo echo /usr/local/lib > /etc/ld.so.conf.d/locallib.conf
sudo ldconfig
```
