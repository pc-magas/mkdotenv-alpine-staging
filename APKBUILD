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
ad69e021590e081cf96cd595d1e485de9aef52409e8bce2c3aafff13e4771c907f1d5ca8deff88eb39e4d06091eacdf49780ddec5d5a5520441a367a9beef595 mkdotenv-1.0.0.tar.gz
"
