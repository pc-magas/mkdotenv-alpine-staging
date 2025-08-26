# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.4.0
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="x86_64"
license="GPL-3.0-only"
makedepends="go"
source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v$pkgver/mkdotenv-$pkgver.tar.gz"
options="!check" # No tests

build() {
	make VERSION="$pkgver"
}

package() {
	cd "$srcdir/mkdotenv-$pkgver"
	make install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin
}

sha512sums="
e6b69cefd5f46bf10361cce0085b5aca4605c1cdcb59cd8cccabdfa967469dd874f8aa61c4d4ffaad0fe213737a3f035a84400130e0d56ce4f71ba58c9257d48  mkdotenv-0.4.0.tar.gz
"
