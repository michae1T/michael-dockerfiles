FROM fedora

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/latex-basic

RUN    dnf install -y texlive-scheme-basic \
                      texlive-xwatermark texlive-graphicx-psmin texlive-pdfpages \
                      texlive-eurosym texlive-framed texlive-charter \
                      gettext findutils \
    && dnf clean all

