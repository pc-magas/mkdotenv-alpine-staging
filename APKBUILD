# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.3.0
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="x86_64"
license="GPL-3.0-only"
makedepends="go"

source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v$pkgver/mkdotenv-$pkgver.tar.gz"

options="!check" # No tests

build() {
	make compile  VERSION="$pkgver" COMPILED_BIN_PATH=$srcdir/$pkgname-$pkgver
}

package() {
	install -Dm755 $srcdir/$pkgname-$pkgver "$pkgdir/usr/bin/mkdotenv"
}

sha512sums="
c225f5f0ca1b3a1a34ff0386144ea07be01ff79a6a9987309d1d6a249fd3c52aff3012d4149d840f9b732ca9b4f5c630d50c2766b8de3a9c99c971c0990984ad  mkdotenv-0.1.0.tar.gz
"
