# Maintainer: Sean Snell <ssnell at cmhsol dot com>

pkgname=rmmagent-dev
pkgver=2.0.1
pkgrel=1
pkgdesc='Remote Monitoring Agent for the SolarWinds Languard RMM Dashboard'
arch=('x86_64')
url='http://languard.gfi.com/'
license=('custom')
options=('!strip')
provides=('rmmagent-dev')
depends_x86_64=(
	'ethtool'
	'smartmontools'
	'gcc-libs'
	'glibc'
	'openssl'
	'unzip')

conflicts_x86_64=(
	'rmmagent')

install=.INSTALL
source_x86_64=("https://rm-downloads.logicnow.com/rmmagent_2.0.0_amd64.deb")
source=("rmmagentd.service")
md5sums_x86_64=('0bb216f199543589d98a78be4ffd30c2')
md5sums=('28e9171b39f6eafcca88d70aea08195a')

prepare() {
	tar -xf $srcdir/data.tar.gz
	tar -xf control.tar.gz
	mv usr/local/rmmagent usr/rmmagent
	mkdir -p "$srcdir"/etc/systemd/system	
	cp rmmagentd.service "$srcdir"/etc/systemd/system/rmmagentd.service
}

package() {
	# Install
	cp -dr --no-preserve=ownership {etc,usr} "${pkgdir}"/
}
