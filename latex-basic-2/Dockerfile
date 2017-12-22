FROM michae1t/latex-basic

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/latex-basic-2

RUN    dnf install -y \
                      texlive-collection-fontsrecommended \
                      texlive-tikz-cd texlive-opensans \
    && dnf clean all

