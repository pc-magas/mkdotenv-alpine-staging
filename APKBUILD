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
a32272de0beb0e6c4f5daec074689158a32f4f02cc88858afa368f0edf8e271aa272d712479e7d458d6139662043831b1f923a3b0dc014ad2742e4a196108e30 mkdotenv-1.0.0.tar.gz
"
