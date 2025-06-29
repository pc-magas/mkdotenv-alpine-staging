# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.3.3
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="x86_64"
license="GPL-3.0-only"
makedepends="go"

source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v$pkgver/mkdotenv-$pkgver.tar.gz"

options="!check" # No tests

build() {
	make compile  VERSION="${pkgver}" COMPILED_BIN_PATH=$srcdir/${pkgname}-$pkgver
}

package() {
	install -Dm755 ${srcdir}/${pkgname}-$pkgver "$pkgdir/usr/bin/mkdotenv"
}

sha512sums="
d95f4081f956e7f991c0589ef774073922b500673847ebc66a6980870de261b97d4605bd8ac411783df4adc2de9debf5043f60f1d1957ffc4d6322f8a93a40cc  mkdotenv-0.3.2.tar.gz
"
