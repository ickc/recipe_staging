#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

luarocks --tree ${PREFIX} build --lua-dir ${BUILD_PREFIX} --deps-mode=one --no-manifest lpeg-${PKG_VERSION}-1.rockspec CC=${CC} LD=${CC}
