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
c8c5a0d7847f29c0fa47bddd6df31cf78ca30d5bf32f5aa73435009c82265ed75c3e06f33b1ee45353b5ee6972b4c7cb08ce5b351860831e8c7f5f621b9849bd mkdotenv-0.4.4.tar.gz
"
