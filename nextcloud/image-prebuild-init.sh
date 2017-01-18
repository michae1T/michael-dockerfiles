#!/bin/bash
cd `dirname $0`

docker run --rm -v `pwd`/target:/build michae1t/binary-builder /usr/bin/bash -c "make s3fs"

