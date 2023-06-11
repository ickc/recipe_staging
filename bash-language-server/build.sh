#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

npm pack --ignore-scripts

npm install -ddd \
    --global \
    --build-from-source \
    --prefix=${PREFIX}/libexec/${PKG_NAME} \
    ${PKG_NAME}-${PKG_VERSION}.tgz

install -Dd ${PREFIX}/bin
ln -sf ${PREFIX}/libexec/${PKG_NAME}/bin/bash-language-server ${PREFIX}/bin
