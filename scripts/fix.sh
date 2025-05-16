#!/usr/bin/env bash

CURRENT_DIR=${PWD}
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/..

# Ensuring source is correct
awk -v new_source='source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v$pkgver/mkdotenv-$pkgver.tar.gz"' '
BEGIN { found=0 }
{
    if ($0 ~ /^source=/) {
        if (!found) {
            print new_source
            found=1
        }
    } else if ($0 ~ /^options=/ && !found) {
        print new_source
        print
        found=1
        next
    } else {
        print
    }
}
' APKBUILD > APKBUILD.tmp && mv APKBUILD.tmp APKBUILD

sed -i 's/    /\t/g' APKBUILD
sed -i -E 's/\$\{([a-zA-Z_][a-zA-Z0-9_]*)\}/\$\1/g' APKBUILD
sed -i '/^\s*echo\s\+/d' APKBUILD

cd ${CURRENT_DIR}
