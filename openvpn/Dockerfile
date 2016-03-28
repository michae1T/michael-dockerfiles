FROM michae1t/fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/openvpn

RUN    dnf -y install openvpn \
    && dnf clean all

ADD server.conf /etc/openvpn/server.conf
ADD sharenet.conf /etc/sysctl.d/sharenet.conf
ADD start /opt/bin/start

CMD /opt/bin/start

