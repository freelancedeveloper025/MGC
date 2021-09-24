#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-mgcpay/mgcd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/mgcd docker/bin/
cp $BUILD_DIR/src/mgc-cli docker/bin/
cp $BUILD_DIR/src/mgc-tx docker/bin/
strip docker/bin/mgcd
strip docker/bin/mgc-cli
strip docker/bin/mgc-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
