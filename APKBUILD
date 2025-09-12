# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.4.4
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="all"
license="GPL-3.0-only"
makedepends="go"
source="$pkgname-$pkgver.tar.gz"
options="!check" # No tests

build(){
    make VERSION="$pkgver" GOARCH=$CARCH
}

package(){
    make -C "$srcdir" install_bin DESTDIR="$pkgdir" INSTALL_BIN_DIR=/usr/bin
}

sha512sums="
624175bca72a2e2c58474cc61d1c5fe34129114faf5de56ad7bd90120621a54030d28bd848deaa76a65826aa4105bd263abea4c3064868d87f408b017aed0365 mkdotenv-0.4.4.tar.gz
"
