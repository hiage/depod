FROM alpine

RUN apk fix && \
    apk add --no-cache \ 
    tzdata \
    bash \
    nmap \
    busybox-extras \
    curl \
    openssh

ENV TZ=Asia/Jakarta