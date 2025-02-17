#!/bin/sh

tar --owner=root --group=root -czf patch.tar.gz --mode='+x' dtc dts.js dts_fs.js
tar --owner=root --group=root -czf ../releases/package.tgz --mode='+x' install_rd.sh install.sh patch.tar.gz *.dts
sha256sum ../releases/package.tgz
