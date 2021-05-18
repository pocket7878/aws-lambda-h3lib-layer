#!/bin/bash -x

set -e

rm -rf layer && mkdir -p layer/lib
docker build -t h3lib-builder -f Dockerfile .
CONTAINER=$(docker run -d h3lib-builder false)
docker cp \
    $CONTAINER:/h3-3.7.1/lib/libh3.so \
    layer/lib/.
docker cp \
    $CONTAINER:/h3-3.7.1/lib/libh3.so.1 \
    layer/lib/.
docker rm $CONTAINER

