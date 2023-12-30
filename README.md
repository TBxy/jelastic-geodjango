

Run this in your jelastic python shell:

```bash
SCRIPTS=https://raw.githubusercontent.com/TBxy/jelastic-geodjango/main/scripts
sudo bash -c "echo /usr/local/lib > /etc/ld.so.conf.d/locallib.conf"
curl -s $SCRIPTS/install-cmake.sh | bash -s
curl -s $SCRIPTS/install-swig.sh | bash -s
curl -s $SCRIPTS/install-proj.sh | bash -s
curl -s $SCRIPTS/install-geos.sh | bash -s
curl -s $SCRIPTS/install-gdal.sh | bash -s
```
