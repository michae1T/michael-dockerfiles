FROM fedora

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/latex-basic-2

RUN    dnf install -y texlive-scheme-basic \
                      texlive-xwatermark texlive-graphicx-psmin texlive-pdfpages \
                      texlive-eurosym texlive-framed texlive-charter \
                      gettext findutils \
                      texlive-collection-fontsrecommended \
                      texlive-tikz-cd texlive-opensans \
    && dnf clean all

