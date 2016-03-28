FROM michae1t/fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/pptp

RUN    dnf -y install pptpd \
    && dnf clean all

RUN    echo "localip 192.168.42.1" >> /etc/pptpd.conf \
    && echo "remoteip 192.168.42.3-100" >> /etc/pptpd.conf \
    && echo "" >> /etc/pptpd.conf \
    && echo "ms-dns 8.8.8.8" >> /etc/ppp/options.pptpd

ADD sharenet.conf /etc/sysctl.d/sharenet.conf
ADD start /opt/bin/start

CMD /opt/bin/start

