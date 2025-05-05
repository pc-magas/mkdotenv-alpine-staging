#!/usr/bin/env bash

CURRENT_DIR=${PWD}
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/..

VERSION=$(cat VERSION)

APKFILE="https://github.com/pc-magas/mkdotenv/releases/download/${VERSION}/APKFILE"

wget -O APKBUILD $APKFILE


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

echo "TEST whether APKBUILD Can build an APK"

VOLUME_DIR="./volume"

docker run \
    -v ${PWD}/APKBUILD:/usr/src/apkbuild/APKBUILD  \
    -v ${VOLUME_DIR}/.abuild:/home/packager/.abuild \
    -v ${VOLUME_DIR}/keys:/etc/apk/keys \
    -v ${VOLUME_DIR}/release:/home/packager/release \
    pcmagas/alpinebuild

cp ${VOLUME_DIR}/release/APKBUILD ${PWD}/APKBUILD

cd ${CURRENT_DIR}
