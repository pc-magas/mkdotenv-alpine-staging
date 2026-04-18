# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=1.0.1
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="all"
license="GPL-3.0-only"
makedepends="go"
source="$pkgname-$pkgver.tar.gz"
options="!check" # No tests

build() {
	make -C "$srcdir" bin VERSION="$pkgver" GOARCH=$CARCH
}

package() {
	make -C "$srcdir" install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin GOARCH=$CARCH
}

sha512sums="
f4f0b6790bbc0ac135730503e0215aa510652f36fbe5294ae7c6416cc0e5fb6938672c6f752443b7b78c987b9ec89b297e7db89d60fabf33d942d2be35f93832 mkdotenv-1.0.1.tar.gz
"
