FROM ubuntu

RUN apt-get update \
    && apt-get install -y postgresql-client \
    mysql-client \
    dnsutils \
    telnet \
    netcat-traditional \
    mtr \
    curl \
    wget \
    traceroute


