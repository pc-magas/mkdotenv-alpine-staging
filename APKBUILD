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
	make compile  VERSION="$pkgver" COMPILED_BIN_PATH="$srcdir"/$pkgname-$pkgver
}

package() {
	install -Dm755 "$srcdir"/$pkgname-$pkgver "$pkgdir/usr/bin/mkdotenv"
}

sha512sums="
5c0b89ad1c45cb22d5134d3be9f3f9105ab8aedc5d96fcb85e0fe1b7197ea6ff314b698cabd2abda1ee8f6323ee386328cf0b32db6a80e814dbc85195cae78f9  mkdotenv-0.3.0.tar.gz
"
