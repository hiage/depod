FROM alpine

RUN apk fix && \
    apk add --no-cache \ 
    tzdata \
    bash \
    nmap \
    busybox-extras \
    curl \
    mysql-client \
    postgresql-client \
    openssh

ENV TZ=Asia/Jakarta