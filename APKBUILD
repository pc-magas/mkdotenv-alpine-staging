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
98a4815c79ad515bb570dd2f130db89ea173c61340c3539547b009d95d0360759a425d94cfb7526ae6335d6c9b0d978d46a9a87ddc24a8cc5af0ca5a8d2d1ca6 mkdotenv-0.4.4.tar.gz
"
