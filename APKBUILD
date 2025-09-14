# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.4.8
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
	make -C "$srcdir" install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin GOARCH=$CARCH VERSION="$pkgver"
}

sha512sums="
374a567851c954ce70fac7163d25a1b280131ae062caa1a36e43e9f69a18d9bc1f28e43712ac96f3eb72f0da6e0d24fb8d8cdf1baa563775af8fdec39e308ab6 mkdotenv-0.4.8.tar.gz
"
