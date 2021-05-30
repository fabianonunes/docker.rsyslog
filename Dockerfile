FROM alpine:3.13.5

RUN set -ex;                   \
    apk upgrade --no-cache;    \
    apk add --no-cache rsyslog

COPY rsyslog.conf /etc

USER 1000
ENTRYPOINT [ "rsyslogd" ]
CMD [ "-n", "-f", "/etc/rsyslog.conf" ]
