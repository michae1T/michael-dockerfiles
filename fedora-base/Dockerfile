FROM fedora

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/fedora-base

RUN dnf -y update \
    && dnf -y install wget curl lynx telnet nc bind-utils \
           iputils iproute net-tools traceroute procps-ng syslog-ng \
    && dnf clean all

