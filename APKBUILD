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
d0c69b9f714ae160d17f2e21f0a0b8908424599a647523f8a93b59df679a8f5cc32b80b62bf41b10d21084767f1bf7bca9f6d4c0c8fd06b7171db71b2b74f8aa mkdotenv-1.0.0.tar.gz
"
