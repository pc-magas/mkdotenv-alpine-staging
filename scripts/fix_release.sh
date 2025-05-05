#!/usr/bin/env bash

CURRENT_DIR=${PWD}
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/..

VERSION=$(cat VERSION)

APKFILE="https://github.com/pc-magas/mkdotenv/releases/download/${VERSION}/APKFILE"

wget -O APKBUILD $APKFILE


cd ${CURRENT_DIR}
