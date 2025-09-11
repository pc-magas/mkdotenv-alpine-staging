# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.4.4
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="all"
license="GPL-3.0-only"
makedepends="go"
source="$pkgname-$pkgver.tar.gz"
options="!check" # No tests

build(){
    make VERSION="$pkgver" GOARCH=$CARCH
}

package(){
    make -C "$srcdir" install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin
}

sha512sums="
f2da960feb0872ec1aa70b3e1ab3b5d2d1cf3142bb603bca632967f469a2d91da308847614829426cdf11344b0d074f0fe1fc03bed0625975efd52087f4888b2 mkdotenv-0.4.4.tar.gz
"
