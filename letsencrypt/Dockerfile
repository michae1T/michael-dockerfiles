FROM michae1t/fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/letsencrypt

RUN    dnf install -y letsencrypt \
    && dnf clean all


EXPOSE 80
EXPOSE 443
VOLUME /etc/letsencrypt/

CMD letsencrypt --text --renew-by-default --email $EMAIL \
                --domains $DOMAINS \
                --agree-tos --standalone --standalone-supported-challenges http-01 certonly


