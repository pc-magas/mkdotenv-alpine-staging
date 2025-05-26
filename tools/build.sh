#!/usr/bin/env bash

CURRENT_DIR=${PWD}
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/..

VOLUME_DIR="./volume"

sudo rm -rf ${VOLUME_DIR}

docker run \
    -v ${PWD}/APKBUILD:/usr/src/apkbuild/APKBUILD  \
    -v ${VOLUME_DIR}/.abuild:/home/packager/.abuild \
    -v ${VOLUME_DIR}/keys:/etc/apk/keys \
    -v ${VOLUME_DIR}/release:/home/packager/release \
    pcmagas/alpinebuild

cp ${VOLUME_DIR}/release/APKBUILD APKBUILD
cd ${CURRENT_DIR}