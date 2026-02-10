# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=1.0.0
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="all"
license="GPL-3.0-only"
makedepends="go"
source="$pkgname-$pkgver.tar.gz"
options="!check" # No tests

build() {
	make bin VERSION="$pkgver" GOARCH=$CARCH
}

package() {
	make -C "$srcdir" install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin GOARCH=$CARCH
}

sha512sums="
a7fabd95270c993cb13268ae70dabebf603ebf6a4339c0fd240d5f4c05d8353a032fa68faddf09e5e773099383b6398c3775362cdb36a649ca5a5ed539da3f50 mkdotenv-1.0.0.tar.gz
"
