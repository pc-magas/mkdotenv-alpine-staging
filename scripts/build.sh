#!/usr/bin/env bash

VOLUME_DIR="./volume"

docker run \
    -v ${PWD}/APKBUILD:/usr/src/apkbuild/APKBUILD  \
    -v ${VOLUME_DIR}/.abuild:/home/packager/.abuild \
    -v ${VOLUME_DIR}/keys:/etc/apk/keys \
    -v ${VOLUME_DIR}/release:/home/packager/release \
    pcmagas/alpinebuild

cp ${VOLUME_DIR}/release/APKBUILD ${PWD}/APKBUILD
