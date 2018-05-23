from traefik:1.6.2-alpine

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

ENV RSYSLOG_VERSION=8.26.0-r0 \
    SUPERVISER_VERSION=3.2.4-r0

RUN apk update \
  && apk add --no-cache supervisor=$SUPERVISER_VERSION rsyslog=$RSYSLOG_VERSION \
  && rm -rf /var/cache/apk/*
