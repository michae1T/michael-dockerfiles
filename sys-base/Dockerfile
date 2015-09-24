FROM fedora

MAINTAINER michae1T@live.ca

ENV DOCKER_IMAGE_NAME michae1t/sys

ENV HOME /root
ENV SRC_DIR $HOME/src
ENV CONFIG_REPO $SRC_DIR/michael-bootstrap
ENV BOOTSTRAP_DIR $CONFIG_REPO/bootstrap

RUN dnf -y install git && dnf clean all

RUN mkdir -p $SRC_DIR && cd $SRC_DIR \
    && git clone https://github.com/michae1T/michael-bootstrap.git

RUN cd $BOOTSTRAP_DIR && ./init-public.sh

RUN cd $BOOTSTRAP_DIR && base/yum.sh

RUN cd $BOOTSTRAP_DIR && base/new_console_tools.sh

RUN cd $BOOTSTRAP_DIR && base/bash_defaults.sh

RUN cd $BOOTSTRAP_DIR && base/common_tools.sh

RUN cd $BOOTSTRAP_DIR && docker/common_tools.sh

RUN cd $BOOTSTRAP_DIR && base/user_base.sh

RUN cd $BOOTSTRAP_DIR && develop/scala_new.sh

RUN cd $BOOTSTRAP_DIR && develop/ruby_old.sh \
                      && PATH=/opt/ruby-1.8.7/bin:$PATH develop/ruby_current.sh \
                      && rm -rf /root/src/ruby

RUN pip3 install awscli

RUN echo 'source /etc/bashrc' >> /root/.bashrc

CMD [ "/bin/bash" ]



