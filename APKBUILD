# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.3.4
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="x86_64"
license="GPL-3.0-only"
makedepends="go"
source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/archive/refs/tags/v$pkgver.tar.gz"
options="!check" # No tests

build() {
    make VERSION="${pkgver}"
}

package() {
    cd "${srcdir}/mkdotenv-${pkgver}"
    make install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin
}

sha512sums="
8a8d3e9b3160affa3be5d9ba68e9222047b862dd34a21eb6b4a09bbb3dad445d2a7ecf4a0d412e0d16cbb732e8c94f542b103f94823aff34b3af8247ab45e65d  mkdotenv-0.3.4.tar.gz
"
