FROM alfg/nginx-rtmp:latest

RUN apk add --no-cache bash gettext

WORKDIR /etc/nginx

COPY nginx.conf.template nginx.conf.template

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 1935 8080

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
