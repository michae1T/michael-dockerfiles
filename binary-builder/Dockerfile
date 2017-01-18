FROM michae1t/fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/binary-builder

RUN    dnf install -y gcc libstdc++-devel gcc-c++ fuse fuse-devel curl-devel libxml2-devel mailcap \
                      openssl-devel make automake tar \
    && dnf clean all

ENV S3FS_VERSION 1.80
ENV SRC /src
ENV HOME $SRC
ENV TARGET /build

WORKDIR $SRC
VOLUME [ "/build" ]
ADD build_root $SRC




