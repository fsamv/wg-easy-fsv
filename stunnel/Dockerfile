FROM alpine:3.6

COPY stunnel.conf /etc/stunnel/stunnel.conf

RUN set -ex &&\
    #echo "http://dl-3.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories &&\
    apk update && apk add --update stunnel &&\
    #chmod +x /opt/run-stunnel.sh &&\
    rm -rf /tmp/* \
           /var/cache/apk/*

EXPOSE 443

ENTRYPOINT ["/usr/bin/stunnel /etc/stunnel.d/stunnel.conf"]