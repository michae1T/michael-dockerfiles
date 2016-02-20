FROM fedora

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/pptp

RUN dnf -y update \
    && dnf -y install wget curl lynx telnet nc bind-utils \
           iputils iproute net-tools traceroute procps-ng syslog-ng \
    && dnf -y install pptpd \
    && dnf clean all

RUN    echo "localip 192.168.42.1" >> /etc/pptpd.conf \
    && echo "remoteip 192.168.42.3-100" >> /etc/pptpd.conf \
    && echo "" >> /etc/pptpd.conf \
    && echo "ms-dns 8.8.8.8" >> /etc/ppp/options.pptpd

ADD sharenet.conf /etc/sysctl.d/sharenet.conf
ADD start /opt/bin/start

CMD /opt/bin/start

