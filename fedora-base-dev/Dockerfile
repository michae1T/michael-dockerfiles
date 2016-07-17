FROM fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/fedora-base-dev

RUN    dnf -y install wget curl lynx telnet nc bind-utils \
              iputils iproute net-tools traceroute procps-ng syslog-ng \
    && dnf clean all

