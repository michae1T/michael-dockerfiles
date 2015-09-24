FROM michae1t/sys:latest

MAINTAINER michae1T@live.ca

RUN cd $CONFIG_REPO   && git reset --hard HEAD~1 \
                      && git pull --rebase

RUN cd $BOOTSTRAP_DIR && rm -rf /opt/ruby-* \
                      && develop/ruby_old.sh \
                      && develop/ruby_current.sh \
                      && rm -rf /root/src/ruby


