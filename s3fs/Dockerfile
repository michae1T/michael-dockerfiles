FROM michae1t/fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/s3fs

ENV S3FS_VERSION 1.80

RUN    dnf install -y gcc libstdc++-devel gcc-c++ fuse fuse-devel curl-devel libxml2-devel mailcap \
                      openssl-devel make automake tar \
    && dnf clean all

RUN curl -L https://github.com/s3fs-fuse/s3fs-fuse/archive/v${S3FS_VERSION}.tar.gz | tar zxv -C /usr/src

RUN cd /usr/src/s3fs-fuse-${S3FS_VERSION} && ./autogen.sh && ./configure --prefix=/usr && make && make install


