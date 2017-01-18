FROM michae1t/fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/nextcloud

RUN    dnf -y install dnf-plugins-core fuse fuse-libs \
    && dnf -y copr enable jhogarth/NextCloud \
    && dnf -y install nextcloud-nginx nextcloud-postgresql \
    && dnf clean all

EXPOSE 443
EXPOSE 80

ADD start /opt/start
ADD target/s3fs /opt

VOLUME /etc/nextcloud
VOLUME /etc/nginx_overrides

CMD /opt/start

