#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-soldpay/soldd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/soldd docker/bin/
cp $BUILD_DIR/src/sold-cli docker/bin/
cp $BUILD_DIR/src/sold-tx docker/bin/
strip docker/bin/soldd
strip docker/bin/sold-cli
strip docker/bin/sold-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
