FROM ubuntu

ADD urldecode.sh .
RUN chmod u+x /urldecode.sh \
    && apt-get update \
    && apt-get install -y postgresql-client \
    mysql-client \
    dnsutils \
    telnet \
    netcat-traditional \
    mtr \
    curl \
    wget \
    traceroute


