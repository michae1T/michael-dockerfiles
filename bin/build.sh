#!/bin/bash

. `dirname $0`/_shared.sh

echo "docker build $BUILD_FLAGS -t \"$IMAGE_URI\" $CONTEXT_PATH"

docker build $BUILD_FLAGS -t "$IMAGE_URI" $CONTEXT_PATH

