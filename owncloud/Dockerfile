FROM michae1t/fedora-base

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/owncloud

RUN    dnf install -y owncloud-nginx owncloud-postgresql \
    && dnf clean all

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

ADD start /opt/start

CMD /opt/start

