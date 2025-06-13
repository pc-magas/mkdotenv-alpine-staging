# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.3.2
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
27a428e2fca825efb7062c5ce085a99ad1fec6f2951fc59ce95b7d9df9664f6e8a1f1bfe367f58b3526a3d17964cd8c2d2f81a5b00f886a8de5fb4994eea3cb9  mkdotenv-0.3.2.tar.gz
"
