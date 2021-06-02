FROM alpine:3.13.5

RUN set -ex;                   \
    apk add --no-cache         \
      logrotate                \
      rsyslog                  \
      tini;

COPY rsyslog.conf /etc
COPY entrypoint /

ENTRYPOINT [ "/entrypoint" ]
