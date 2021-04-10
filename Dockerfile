FROM ubuntu

ADD urldecode.sh .
RUN chmod u+x /urldecode.sh \
    && apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    postgresql-client-12 \
    mysql-client \
    dnsutils \
    telnet \
    netcat-traditional \
    mtr \
    curl \
    wget \
    traceroute \
    rsync \
    tcl build-essential pkg-config libssl-dev\
    && wget http://download.redis.io/redis-stable.tar.gz \
    && tar xzf redis-stable.tar.gz \
    && cd redis-stable \
    && make BUILD_TLS=yes MALLOC=libc install \
    && cd .. && rm -rf redis-stable && rm redis-stable.tar.gz \
    && rm /bin/sh && ln -s /bin/bash /bin/sh
