#!/bin/bash

rm -rf src/
rm -rf pkg/
rm rmmagent_2.0.0_amd64.deb
rm rmmagent-dev-2.0.0-1-x86_64.pkg.tar.xz

localremove() {
    rm -rf ./etc/
    rm -rf ./usr/
    rm ./changelog
    rm ./conffiles
    rm ./control
    rm ./control.tar.gz
    rm ./data.tar.gz
    rm debian-binary
    rm _gpgrmmagent
    rm md5sums
    rm postinst
    rm postrm
    rm preinst
    rm prerm
    rm rmmagent_2.0.0_amd64.deb
    rm rmmagent-dev-2.0.0-1-x86_64.pkg.tar.xz
    clear
}