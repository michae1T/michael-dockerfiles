#!/bin/bash

DOCKER_REGISTRY=michae1t
IMAGE_DIR=`echo $1 | sed 's/\([^\/]*\)\(\/\)*/\1/'`

IMAGE_NAME_OVERRIDE_FILE=$IMAGE_DIR/image_name_override
DEFAULT_TAG_FILE=$IMAGE_DIR/default_tag
BUILD_FLAGS_FILE=$IMAGE_DIR/build_flags

if [ -f "$IMAGE_NAME_OVERRIDE_FILE" ] ;
  then IMAGE_NAME=`cat $IMAGE_NAME_OVERRIDE_FILE`
  else IMAGE_NAME=$IMAGE_DIR
fi;

if [ -f "$BUILD_FLAGS_FILE" ] ;
  then BUILD_FLAGS=`cat $BUILD_FLAGS_FILE`
fi;
  

if [ -n "$2" ] ; then
  TAG=$2
else
  if [ -f "$DEFAULT_TAG_FILE" ] ;
    then TAG=`cat $DEFAULT_TAG_FILE`
    else TAG=latest
  fi;
fi;

IMAGE_URI=$DOCKER_REGISTRY/$IMAGE_NAME:$TAG
CONTEXT_PATH=$IMAGE_DIR

