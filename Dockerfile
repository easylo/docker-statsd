FROM mhart/alpine-node:base

MAINTAINER Laurent RICHARD <easylo@gmail.com>

ENV STATSD_VERSION 0.8.0

WORKDIR /src
ADD config.js /src/config.js

RUN apk update && \
    apk add ca-certificates && \
    update-ca-certificates && \
    apk add openssl && \
    wget http://github.com/etsy/statsd/archive/v${STATSD_VERSION}.tar.gz && \
    tar -xf v${STATSD_VERSION}.tar.gz

EXPOSE 8125/udp
EXPOSE 8125
EXPOSE 8126
CMD ["node", "statsd-${STATSD_VERSION}/stats.js", "config.js"]
