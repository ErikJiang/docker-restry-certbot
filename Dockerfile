FROM openresty/openresty:1.25.3.2-5-alpine

RUN apk add --update certbot-nginx tzdata

COPY crontabs /var/spool/cron/crontabs

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
