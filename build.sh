rm -f ./build
tar czf ../sci-udev-netrules_3.0.orig.tar.gz ./README.md debian/changelog debian/compat debian/control debian/copyright debian/dirs debian/install debian/rules debian/source build.sh config
dpkg-buildpackage -rfakeroot
