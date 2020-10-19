FROM ubuntu

ADD urldecode.sh .
RUN chmod u+x /urldecode.sh \
    && apt-get update \
    && apt-get install -y postgresql-client-12 \
    mysql-client \
    dnsutils \
    telnet \
    netcat-traditional \
    mtr \
    curl \
    wget \
    traceroute \
    rsync

CMD ["while true; do sleep 86400; done;"]
ENTRYPOINT [ "/bin/bash", "-c", "--" ]

