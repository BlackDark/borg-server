FROM lscr.io/linuxserver/openssh-server:latest
LABEL maintainer="b3vis"

RUN \
  echo "**** install runtime packages ****" && \
  apk add --no-cache --upgrade \
    #sshfs \
    borgbackup && \
  echo "**** setup borg ****" && \
    mkdir -m 0700 /backups && \
    chown 1000.1000 /backups && \
  rm -rf \
    /tmp/*
