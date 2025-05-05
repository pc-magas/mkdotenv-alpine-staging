#!/usr/bin/env bash


# Ensuring source is correct
awk -v new_source='source="$pkgname-$pkgver.tar.gz::https://github.com/pc-magas/mkdotenv/releases/download/v0.2.3/mkdotenv-$pkgver.tar.gz"' '
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