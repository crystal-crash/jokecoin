#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-clowncrew/jokecoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/jokecoind docker/bin/
cp $BUILD_DIR/src/jokecoin-cli docker/bin/
cp $BUILD_DIR/src/jokecoin-tx docker/bin/
strip docker/bin/jokecoind
strip docker/bin/jokecoin-cli
strip docker/bin/jokecoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
