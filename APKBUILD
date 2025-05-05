# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.2.3
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="x86_64"
license="GPL-3.0-only"
makedepends="go"

source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v0.2.3/mkdotenv-$pkgver.tar.gz"


options="!check" # No tests

prepare() {
    cd "$srcdir/mkdotenv"
}

build() {
    echo "BUILD"
    go build -ldflags "-X 'mkdotenv/msg.version=${pkgver}'" -o $srcdir/${pkgname}-$pkgver mkdotenv.go
}

package() {
    echo "INSTALL"
    install -Dm755 ${srcdir}/${pkgname}-$pkgver "$pkgdir/usr/bin/mkdotenv"
}

sha512sums="
9bc7df20b1dff74559064445ddd73f4f1b48c323e76a284135d7e6b91b9b380aeb002cb8091556d396645c6d15710d9568905e87a4d68e44cd0908fd425e03aa  mkdotenv-0.2.3.tar.gz
"
