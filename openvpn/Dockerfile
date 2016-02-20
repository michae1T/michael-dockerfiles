FROM fedora

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/openvpn

RUN dnf -y update \
    && dnf -y install wget curl lynx telnet nc bind-utils \
           iputils iproute net-tools traceroute procps-ng syslog-ng \
    && dnf -y install openvpn \
    && dnf clean all

ADD server.conf /etc/openvpn/server.conf
ADD sharenet.conf /etc/sysctl.d/sharenet.conf
ADD start /opt/bin/start

CMD /opt/bin/start

