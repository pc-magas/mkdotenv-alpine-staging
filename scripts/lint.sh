#!/usr/bin/env bash


CURRENT_DIR=${PWD}
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

VOLUME_DIR="./volume"

docker run \
    -v ${PWD}/APKBUILD:/usr/src/apkbuild/APKBUILD  \
    -v ${VOLUME_DIR}/.abuild:/home/packager/.abuild \
    -v ${VOLUME_DIR}/keys:/etc/apk/keys \
    -v ${VOLUME_DIR}/release:/home/packager/release \
    -ti \
    pcmagas/alpinebuild apkbuild-lint APKBUILD

cd ${CURRENT_DIR}
