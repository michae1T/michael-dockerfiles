FROM michae1t/sys:latest

MAINTAINER michae1T@live.ca

RUN cd $CONFIG_REPO   && git reset --hard HEAD~1 \
                      && git pull --rebase

RUN cd $BOOTSTRAP_DIR && base/yum.sh

RUN cd $BOOTSTRAP_DIR && base/new_console_tools.sh

RUN cd $BOOTSTRAP_DIR && base/bash_defaults.sh

RUN cd $BOOTSTRAP_DIR && base/common_tools.sh

RUN cd $BOOTSTRAP_DIR && docker/common_tools.sh

RUN cd $BOOTSTRAP_DIR && base/user_base.sh

RUN cd $BOOTSTRAP_DIR && rm -rf /opt/scala-* /opt/sbt-* \
                      && develop/scala_new.sh

RUN pip3 uninstall -y awscli && pip3 install --upgrade awscli

