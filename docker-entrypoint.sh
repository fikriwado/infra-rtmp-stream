#!/bin/sh

envsubst '${ON_PUBLISH_URL}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"
