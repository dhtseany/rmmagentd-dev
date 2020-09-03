# Maintainer: Sean Snell <ssnell at cmhsol dot com>
# Contributor: frealgagu <https://github.com/frealgagu>

pkgname=rmmagent-dev
pkgver=2.0.1
pkgrel=1
pkgdesc='Remote Monitoring Agent for the SolarWinds Languard RMM Dashboard'
arch=('x86_64')
url='https://www.solarwindsmsp.com/content/advanced-monitoring-agent'
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
source_x86_64=("https://rm-downloads.logicnow.com/rmmagent_2.0.1_amd64.deb")

source=("rmmagentd.service")

#.deb file
md5sums_x86_64=('366ebdb8508aef3e9676ce70e123fccc')
# rmmagentd.service
md5sums=('28e9171b39f6eafcca88d70aea08195a')
#rmmagent.patch
md5sums=('5a589a6657367146bb872d43de939af4')

prepare() {
	tar -xf $srcdir/data.tar.gz
	tar -xf control.tar.gz
	mv usr/local/rmmagent usr/rmmagent
	mkdir -p "$srcdir"/etc/systemd/system	
	cp rmmagentd.service "$srcdir"/etc/systemd/system/rmmagentd.service
	patch -Np1 -i rmmagent.patch
}

package() {
	# Install
	cp -dr --no-preserve=ownership {etc,usr} "${pkgdir}"/
}
