FROM node:6-alpine

MAINTAINER Laurent RICHARD <easylo@gmail.com>

ENV STATSD_VERSION 0.8.0

WORKDIR /src

RUN apk update && \
    apk add ca-certificates && \
    update-ca-certificates && \
    apk add openssl && \
    wget http://github.com/etsy/statsd/archive/v${STATSD_VERSION}.tar.gz && \
    tar -xf v${STATSD_VERSION}.tar.gz && \
    mv statsd-${STATSD_VERSION} statsd

EXPOSE 8125/udp
EXPOSE 8126

WORKDIR /src/statsd
ADD config.js /src/statsd/config.js

CMD ["node", "stats.js", "config.js"]
