# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.4.5
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="all"
license="GPL-3.0-only"
makedepends="go"
source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v$pkgver/mkdotenv-$pkgver.tar.gz"
options="!check" # No tests

build() {
	make VERSION="$pkgver" GOARCH=$CARCH
}

package() {
	make -C "$srcdir" install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin
}

sha512sums="
5a19d23b6afb92187105af3b8c3bd95dc816addf9d8927b0d5412e6f077d9429173f971caa71ce48a3bce23350cfe3458db7c5a8940d16feb1f6174747c3951d mkdotenv-0.4.5.tar.gz
"
