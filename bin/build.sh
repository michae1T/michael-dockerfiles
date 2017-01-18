#!/bin/bash

. `dirname $0`/_shared.sh

echo "docker build $BUILD_FLAGS -t \"$IMAGE_URI\" $CONTEXT_PATH"

if [ -f "$DOCKER_BUILD_INIT_SCRIPT" ] ;
  then bash $DOCKER_BUILD_INIT_SCRIPT
fi;

docker build $BUILD_FLAGS -t "$IMAGE_URI" $CONTEXT_PATH

