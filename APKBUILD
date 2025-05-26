# Maintainer: Dimitrios Desyllas <pcmagas@disroot.org>
pkgname=mkdotenv
pkgver=0.3.1
pkgrel=0
pkgdesc="Lightweight and efficient tool for managing your .env files."
url="https://github.com/pc-magas/mkdotenv"
arch="x86_64"
license="GPL-3.0-only"
makedepends="go"

source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v$pkgver/mkdotenv-$pkgver.tar.gz"

options="!check" # No tests

build() {
	make compile  VERSION="${pkgver}" COMPILED_BIN_PATH="${srcdir}/${pkgname}-${pkgver}"
}

package() {
	install -Dm755 "${srcdir}/${pkgname}-${pkgver}" "${pkgdir}/usr/bin/mkdotenv"
}

sha512sums="
37d6a36868c2596255804987362eae73d6affb95256f667e074dade4121a442664794feaba710d93e20e8f424c4fe22c3b2aa632a5f6a22039d01ad6415c4b1d  mkdotenv-0.3.1.tar.gz
"
