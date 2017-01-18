#!/bin/bash

cd $SRC
curl -L https://github.com/s3fs-fuse/s3fs-fuse/archive/v${S3FS_VERSION}.tar.gz | tar zxv

cd s3fs-fuse-${S3FS_VERSION} && ./autogen.sh && ./configure && make && cp src/s3fs $TARGET

