#!/bin/sh

# Substitute environment variables in the NGINX config template and save to final config location
envsubst '$$SERVER_NAME' < /etc/nginx/conf.d/server.conf.template > /etc/nginx/conf.d/default.conf
envsubst '$$ARC' < /etc/nginx/conf.d/server.conf.template > /etc/nginx/conf.d/default.conf
envsubst '$$KEYCLOAK' < /etc/nginx/conf.d/server.conf.template > /etc/nginx/conf.d/default.conf

# Start NGINX
nginx -g 'daemon off;'