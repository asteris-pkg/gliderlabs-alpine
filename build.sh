#!/usr/bin/env bash
set -e

ALPINE_VERSION=${1:-"3.3"}

TMP=$(mktemp -d)

buildEnd() {
    export EXIT=$?
    rm -rf $TMP && exit $EXIT
}
trap buildEnd EXIT

DEST=$(pwd)/alpine-${ALPINE_VERSION}-linux-amd64.aci

pushd $TMP
docker2aci docker://gliderlabs/alpine:${ALPINE_VERSION}
tar -xf gliderlabs-alpine-${ALPINE_VERSION}.aci
rm gliderlabs-alpine-${ALPINE_VERSION}.aci

# set new manifest
mv manifest manifest.old
jq '.name = "pkg.aster.is/aci/alpine"' manifest.old > manifest
rm manifest.old

# repackage
tar -cf $DEST *
popd
